import abjad
import evans
from abjadext import rmakers


def make_lilypond_file(
    music,
    signatures=None,
    beam=True,
    pitch=False,
    spacing=10,
    replace_silent_tuplets=False,
    shorten_pairs=None,
    fuse_inside=True,
    hide_signatures=False,
):

    score = abjad.Score()
    if pitch is False:
        skips = rmakers.multiplied_duration(signatures, abjad.Skip)
        for sig, skip in zip(signatures, skips):
            abjad.attach(sig, skip)
        ts_c = abjad.Staff(
            skips, lilypond_type="TimeSignatureContext", name="Global Context"
        )
        score.append(ts_c)

    if not isinstance(music[0], list):
        group = abjad.StaffGroup(name="Staff Group")
        if pitch is False:
            type = "RhythmicStaff"
        else:
            type = "Staff"
        staff = abjad.Staff([abjad.Voice(music)], lilypond_type=type)
        group.append(staff)
        score.append(group)
    else:
        group = abjad.StaffGroup(name="Staff Group")
        for m in music:
            if pitch is False:
                type = "RhythmicStaff"
            else:
                type = "Staff"
            staff = abjad.Staff([abjad.Voice(m)], lilypond_type=type)
            group.append(staff)
        score.append(group)
    if beam is True:
        evans.segmentmaker.SegmentMaker.beam_score(score)

    moment = f"#(ly:make-moment 1 {spacing})"
    abjad.setting(score).proportional_notation_duration = moment

    paper = abjad.Block(
        "paper",
        items=[
            "system-system-spacing = #'((basic-distance . 16) (minimum-distance . 16) (padding . 4))",
            "indent = 20\mm",
        ],
    )

    if pitch is False:
        if hide_signatures is False:
            block = abjad.Block(
                "layout",
                items=[
                    r"""
                indent = #0
                \context {
                    \Score
                    \remove Bar_number_engraver
            		\remove Mark_engraver
                    %{ \remove Metronome_mark_engraver %}
                    \accepts TimeSignatureContext
                    \override Beam.breakable = ##t
            		\override Beam.concaveness = #10000
            		\override Glissando.breakable = ##t
                    \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 0))
                    \override TupletBracket.bracket-visibility = ##t
                    \override TupletBracket.minimum-length = #3
                    \override TupletBracket.staff-padding = #4
                    \override TupletBracket.padding = #1
                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                    \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
                    \override TimeSignature.break-visibility = #end-of-line-invisible
            		%{ proportionalNotationDuration = #(ly:make-moment 1 7) %}
                    autoBeaming = ##f
                    tupletFullLength = ##t
                }

                \context {
                    \name TimeSignatureContext
                    \type Engraver_group
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }


                \context {
                    \Voice
                    \consists Horizontal_bracket_engraver
                    \override HorizontalBracket.direction = #UP
                    \override HorizontalBracket.staff-padding = 7.5
                    \override HorizontalBracket.bracket-flare = #'(0 . 0)
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }
                \context {
                    \Staff
                    \numericTimeSignature
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }
                \context {
                    \RhythmicStaff
                    \numericTimeSignature
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }
                """,
                ],
            )
        else:
            block = abjad.Block(
                "layout",
                items=[
                    r"""
                indent = #0
                \context {
                    \Score
                    \remove Bar_number_engraver
            		\remove Mark_engraver
                    %{ \remove Metronome_mark_engraver %}
                    \accepts TimeSignatureContext
                    \override Beam.breakable = ##t
            		\override Beam.concaveness = #10000
            		\override Glissando.breakable = ##t
                    \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 0))
                    \override TupletBracket.bracket-visibility = ##t
                    \override TupletBracket.minimum-length = #3
                    \override TupletBracket.staff-padding = #4
                    \override TupletBracket.padding = #1
                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                    \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                    \override TimeSignature.stencil = ##f
            		%{ proportionalNotationDuration = #(ly:make-moment 1 7) %}
                    autoBeaming = ##f
                    tupletFullLength = ##t
                }

                \context {
                    \name TimeSignatureContext
                    \type Engraver_group
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }


                \context {
                    \Voice
                    \consists Horizontal_bracket_engraver
                    \override HorizontalBracket.direction = #UP
                    \override HorizontalBracket.staff-padding = 7.5
                    \override HorizontalBracket.bracket-flare = #'(0 . 0)
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }
                \context {
                    \Staff
                    \numericTimeSignature
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }
                \context {
                    \RhythmicStaff
                    \numericTimeSignature
                    \override TimeSignature.break-visibility = #end-of-line-invisible
                }
                """,
                ],
            )
    else:
        block = abjad.Block(
            "layout",
            items=[
                r"""
            indent = #0
            \accidentalStyle dodecaphonic
            \context {
                \Score
                \remove Bar_number_engraver
        		\remove Mark_engraver
                %{ \remove Metronome_mark_engraver %}
                \accepts TimeSignatureContext
                \override Beam.breakable = ##t
        		\override Beam.concaveness = #10000
        		\override Glissando.breakable = ##t
                \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 0))
                \override TupletBracket.bracket-visibility = ##t
                \override TupletBracket.minimum-length = #3
                \override TupletBracket.padding = #2
                \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                \override TupletNumber.text = #tuplet-number::calc-fraction-text
                \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
                \override TimeSignature.stencil = ##f
        		%{ proportionalNotationDuration = #(ly:make-moment 1 7) %}
                \override BarLine.stencil = ##f
                autoBeaming = ##f
                tupletFullLength = ##t
            }

            \context {
                \name TimeSignatureContext
                \type Engraver_group
                \override TimeSignature.stencil = ##f
            }


            \context {
                \Voice
                \consists Horizontal_bracket_engraver
                \override HorizontalBracket.direction = #UP
                \override HorizontalBracket.staff-padding = 7.5
                \override HorizontalBracket.bracket-flare = #'(0 . 0)
                \override TimeSignature.stencil = ##f
                \override BarLine.stencil = ##f
            }
            \context {
                \Staff
                \numericTimeSignature
                \override TimeSignature.stencil = ##f
                \override BarLine.stencil = ##f
                \override Flag.stencil = ##f
                \override Stem.stencil = ##f
            }
            """,
            ],
        )

    if replace_silent_tuplets is True:
        rmakers.rewrite_rest_filled(score)
        rmakers.rewrite_sustained(score)
        rmakers.extract_trivial(score)
        tuplets = abjad.select.tuplets(score)
        for tuplet in tuplets:
            rests = abjad.select.rests(tuplet)
            groups = abjad.select.group_by_contiguity(rests)
            if fuse_inside is True:
                for group in groups:
                    abjad.mutate.fuse(group)

    if shorten_pairs is not None:
        voices = abjad.select.components(score, abjad.Voice)
        for pair in shorten_pairs:
            voice = voices[pair[0]]
            tuplet = abjad.select.tuplet(voice, pair[1])
            tweak = abjad.Tweak(r"\tweak shorten-pair #'(0 . 0.7)")
            abjad.tweak(tuplet, tweak)

    file = abjad.LilyPondFile(
        items=[
            r'\version "2.23.81"',
            r'\language "english"',
            r'\include "/Users/gregoryevans/abjad/abjad/scm/abjad.ily"',
            """#(set-default-paper-size "a5")""",
            """#(set-global-staff-size 13)""",
            block,
            paper,
            score,
        ]
    )
    abjad.show(file)


thread_a = [
    (2, 1),
    (3, 1),
    (2, -1, 1),
    (2, -1),
    (5, 1),
    (4, -2),
    (4, 2),
    (1, 1, -1, 1),
]  # no 5's
# for _ in thread_a:
#     temp = [abs(x) for x in _]
#     print(sum(temp))
# print("")
thread_b = [
    (1, -1, 1, 1, -1),
    (1, -1, 2, -1),
    (1, -1, 2, 1),
    (1, -1, 3),
    (1, 1, -3),
    (-2, 1, 1, 1),
    (-1, 1, 1, 1),
    (-3, 1, 1, -1),
    (3, 1, 1, -1),
    (3, 1, 2, 1),
]  # all 5's
# for _ in thread_b:
#     temp = [abs(x) for x in _]
#     print(sum(temp))
# print("")
thread_c = [
    (1, 1, 1, 1, -1),
    (1, 1, 1, -2),
    (1, 1, -3),
    (1, -4),
    (1, -3, 1),
    (1, -2, 1, 1),
    (1, -1, 1, 1, 1),
    (-1, 1, 1, 1, 1),
    (-1, 2, 1, 1),
    (-1, 2, 2),
]  # all 5's?
# for _ in thread_c:
#     temp = [abs(x) for x in _]
#     print(sum(temp))
# print("")
thread_d = [
    (1, 1, 1),
    (2, 1),
    (-1, 1, 1, 1),
    (1, 1, 1),
    (2, 1, 1),
    (4, 1, 1, -1),
    (1, 1, 1),
    (1, 1, 1, 4),
    (6, 2, 3),
    (4, 2, 3),
    (3, 1, 2),
    (2, 2, 1, 1, -1),
]  # all 3's?
# for _ in thread_d:
#     temp = [abs(x) for x in _]
#     print(sum(temp))
# raise Exception("ALL SUMS GIVEN")
thread_e = [
    "(1((1(-1 1)) (1(-2 1))))",
    "(1((2(-2 1)) (1(-2 1))))",
    "(1((3(1)) (2(1 1 1))))",
    "(1((5(1)) (4(1 1))))",
    "(1((1(-1 2)) (1(1 1))))",
    "(1((3(-1 2)) (2(1 -1 1))))",
    "(1((2(-2 1)) (6(1 1))))",
    "(1((3(-2 1)) (4(2 1))))",
]  # replace with full-measure figures?


def make_figures(
    thread="a",
    rotation=0,
    preprocessor=None,
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=None,
):

    threads = {
        "a": thread_a,
        "b": thread_b,
        "c": thread_c,
        "d": thread_d,
        "e": thread_e,
    }

    selected_thread = threads[thread]
    rotated_thread = abjad.sequence.rotate(selected_thread, rotation)
    if thread == "e":
        maker = evans.RhythmHandler(evans.RTMMaker(rotated_thread), forget=False)
    else:

        def maker(divisions):
            music = rmakers.tuplet(divisions, rotated_thread)
            return music

    def returned_function(divisions, state=None, previous_state=None):
        time_signatures = [_ for _ in divisions]
        if preprocessor is not None:
            durations = [abjad.Duration(_.pair) for _ in divisions]
            divisions = preprocessor(durations)
        nested_music = maker(divisions)
        container = abjad.Container()
        for component in nested_music:
            if isinstance(component, list):
                container.extend(component)
            else:
                container.append(component)
        ###
        tuplets = abjad.select.tuplets(container)
        gotten_tuplets = abjad.select.get(tuplets, tuplet_rest_selector)
        for tuplet in gotten_tuplets:
            rmakers.force_rest(tuplet)
        ###
        if treat_tuplets is True:
            command_target = abjad.select.tuplets(container)
            rmakers.trivialize(command_target)
            command_target = abjad.select.tuplets(container)
            rmakers.rewrite_rest_filled(command_target)
            command_target = abjad.select.tuplets(container)
            rmakers.rewrite_sustained(command_target)
            rmakers.extract_trivial(container)  # ?
        if rewrite is not None:
            meter_command = RewriteMeterCommand(boundary_depth=rewrite)
            metered_staff = rmakers.wrap_in_time_signature_staff(
                container[:], time_signatures
            )
            meter_command(metered_staff)
            music = abjad.mutate.eject_contents(metered_staff)
        else:
            music = abjad.mutate.eject_contents(container)

        return music

    return returned_function


divisions = evans.Sequence([(5, 4), (4, 4), (4, 4), (5, 4), (3, 4)]).mirror(
    sequential_duplicates=True
)
divisions = [abjad.TimeSignature(_) for _ in divisions]
fusions = [2, 1, 2, 1, 2, 2, 3, 1, 1, 1, 2, 2, 2, 1, 2, 4]

maker_1 = make_figures(
    thread="a",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 0),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([2, 5, 6], 8),
)
music_1 = maker_1(divisions)

maker_2 = make_figures(
    thread="a",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 0),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([2, 5, 6], 8),
)
music_2 = maker_2(divisions)

maker_3 = make_figures(
    thread="a",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 0),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=~abjad.index([2, 5, 6], 8),
)
music_3 = maker_3(divisions)

maker_4 = make_figures(
    thread="a",
    rotation=-1,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, -1),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([2, 5, 6], 8),
)
music_4 = maker_4(divisions)

maker_5 = make_figures(
    thread="b",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 1),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([4, 5, 7], 10),
)
music_5 = maker_5(divisions)

maker_6 = make_figures(
    thread="b",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 1),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([4, 5, 7], 10),
)
music_6 = maker_6(divisions)

maker_7 = make_figures(
    thread="b",
    rotation=2,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 2),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=~abjad.index([4, 5, 7], 10),
)
music_7 = maker_7(divisions)

maker_8 = make_figures(
    thread="c",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 4),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([0, 1, 5, 8], 11),
)
music_8 = maker_8(divisions)

maker_9 = make_figures(
    thread="c",
    rotation=0,
    preprocessor=evans.make_preprocessor(
        quarters=True,
        fuse_counts=abjad.sequence.rotate(fusions, 4),
        split_at_measure_boundaries=True,
    ),
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=abjad.index([0, 1, 5, 8], 11),
)
music_9 = maker_9(divisions)

music = [
    music_1,
    music_2,
    music_3,
    music_4,
    music_5,
    music_6,
    music_7,
    music_8,
    music_9,
]
make_lilypond_file(music, divisions)

###
###

# maker_10 = make_figures(
#     thread="d",
#     rotation=0,
#     preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=abjad.sequence.rotate(fusions, 4), split_at_measure_boundaries=True),
#     rewrite=None,
#     treat_tuplets=True,
#     # tuplet_rest_selector=abjad.index([0, 1, 5, 8], 11),
# )
# music_10 = maker_10(divisions)
#
# maker_11 = make_figures(
#     thread="e",
#     rotation=0,
#     preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2, 3, 3, 3], split_at_measure_boundaries=True),
#     rewrite=None,
#     treat_tuplets=False,
#     # tuplet_rest_selector=abjad.index([0, 1, 5, 8], 11),
# )
# music_11 = maker_11(divisions)
#
# music = [music_10, music_11]
# make_lilypond_file(music, divisions)
