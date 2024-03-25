import abjad
import baca
import evans
from abjadext import rmakers


def make_lilypond_file(
    music,
    signatures=None,
    beam=True,
    pitch=False,
    spacing=10,
    replace_silent_tuplets=False,
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
            "print-page-number = ##f",
        ],
    )

    header = abjad.Block(
        "header",
        items=["tagline = ##f"],
    )

    if pitch is False:
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
                \override TupletBracket.padding = #2
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

    file = abjad.LilyPondFile(
        items=[
            r'\version "2.23.81"',
            r'\language "english"',
            r'\include "/Users/gregoryevans/abjad/abjad/scm/abjad.ily"',
            """#(set-default-paper-size "a5")""",
            """#(set-global-staff-size 13)""",
            header,
            block,
            paper,
            score,
        ]
    )
    abjad.show(file)


demo_numerators = baca.sequence.helianthate([[4, 4, 4, 3], [4, 4], [5, 4, 4]], -1, 1)
flat_numerators = abjad.sequence.flatten(demo_numerators)
signatures = [abjad.TimeSignature((_, 4)) for _ in flat_numerators]


def make_shell_exchange_rhythm(
    time_signatures,
    total_parts,
    this_part,
    *,
    extra_counts_rotation=None,
    rotation=None,
):
    assert total_parts in (2, 3, 4), repr(total_parts)
    if isinstance(this_part, int):
        this_part = (this_part,)
    assert isinstance(this_part, tuple), repr(this_part)
    assert all(_ in (0, 1, 2, 3) for _ in this_part), repr(this_part)
    counts_ = [
        [1, 1, -1],
        [1, 1, 1, -2],
        [1, 1, -2],
        [1, 1, 1, -1],
        [1, 1, -2],
        [1, 1, 1, -2],
        [1, -2],
        [1, -2],
        [1, 1, -2],
        [1, 1, 1, -2],
        [1, -2],
        [1, 1, -1],
        [1, 1, 1, -1],
        [1, 1, -1],
        [1, 1, 1, -2],
        [1, -2],
        [1, -2],
        [1, 1, -2],
        [1, -2],
        [1, 1, -1],
        [1, 1, 1, -2],
        [1, 1, -1],
        [1, 1, -1],
        [1, 1, 1, -2],
        [1, 1, -1],
        [1, -2],
        [1, 1, 1, -2],
        [1, 1, -2],
        [1, 1, 1, -1],
    ]
    counts = abjad.sequence.rotate(counts_, n=rotation)
    counts = abjad.sequence.flatten(counts)
    if total_parts == 2:
        interaction_series_ = [0, 1]
    elif total_parts == 3:
        interaction_series_ = [
            0,
            1,
            2,
            0,
            1,
            0,
            1,
            2,
            0,
            2,
            0,
            1,
            2,
        ]
    elif total_parts == 4:
        interaction_series_ = [
            0,
            1,
            2,
            3,
            0,
            1,
            2,
            1,
            2,
            3,
            0,
            1,
            2,
            3,
            2,
            3,
            0,
            1,
            0,
            1,
            2,
            3,
            0,
            3,
            0,
            1,
        ]
    else:
        raise ValueError(total_parts)
    interaction_series = abjad.CyclicTuple(interaction_series_)
    filtered_counts = []
    positive_count_index = -1
    for count in counts:
        if 0 < count:
            positive_count_index += 1
            current_part = interaction_series[positive_count_index]
            if current_part in this_part:
                filtered_counts.append(count)
            else:
                filtered_counts.append(-count)
        else:
            filtered_counts.append(count)
    assert len(filtered_counts) == len(counts)
    assert abjad.math.weight(filtered_counts) == abjad.math.weight(counts)
    counts = filtered_counts
    grouped_counts = baca.sequence.group_by_sign(counts)
    grouped_rests = []
    for group in grouped_counts:
        if 0 < group[0]:
            grouped_rests.extend(group)
        else:
            rest_count = sum(group)
            grouped_rests.append(rest_count)
    assert abjad.math.weight(grouped_rests) == abjad.math.weight(counts)
    counts = grouped_rests
    extras_ = [0, 0, -1, 0, 0, -1, -1]
    extras = abjad.sequence.rotate(extras_, n=extra_counts_rotation)
    durations = [_.duration for _ in time_signatures]
    tuplets = rmakers.talea(
        durations,
        counts,
        8,
        extra_counts=extras,
    )
    voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
    lt = baca.select.lt(voice, -1)
    rmakers.force_rest(
        lt,
    )
    rmakers.beam(
        voice,
    )
    rmakers.rewrite_rest_filled(
        voice,
    )
    rmakers.trivialize(voice)
    rmakers.extract_trivial(voice)
    music = abjad.mutate.eject_contents(voice)
    return music


### Faberge swells
# music_1 = make_shell_exchange_rhythm(
#         signatures,
#         total_parts=4,
#         this_part=0,
#     )
# music_2 = make_shell_exchange_rhythm(
#         signatures,
#         total_parts=4,
#         this_part=1,
#     )
# music_3 = make_shell_exchange_rhythm(
#         signatures,
#         total_parts=4,
#         this_part=2,
#     )
# music_4 = make_shell_exchange_rhythm(
#         signatures,
#         total_parts=4,
#         this_part=3,
#     )
# music = [music_1, music_2, music_3, music_4]
# make_lilypond_file(music, signatures)

### MORE FABERGE JUNK
# def make_airtone_chain_rhythm(
#     time_signatures,
#     total_events,
#     my_event_indices,
#     *,
#     counts=(4, 8, 6, 4, 8, 8, 6),
#     do_not_overlap_counts=False,
#     prolong_last_count=False,
# ):
#     assert isinstance(total_events, int), repr(total_events)
#     assert isinstance(my_event_indices, (list, tuple)), repr(my_event_indices)
#     counts_ = abjad.CyclicTuple(counts)
#     for index in my_event_indices:
#         if total_events <= index:
#             message = f"only {total_events} total events (not {index} + 1)."
#             raise Exception(message)
#     my_counts = []
#     if not prolong_last_count:
#         upper_bound = total_events
#     else:
#         upper_bound = total_events - 1
#     for event_index in range(upper_bound):
#         count = counts_[event_index]
#         if event_index in my_event_indices:
#             my_counts.append(count)
#         elif not do_not_overlap_counts and my_counts and 0 < my_counts[-1]:
#             tied_over_part = 2
#             following_rest = count - tied_over_part
#             my_counts[-1] += tied_over_part
#             my_counts.append(-following_rest)
#         else:
#             my_counts.append(-count)
#     penultimate_event_index = total_events - 2
#     last_event_index = total_events - 1
#     if not prolong_last_count:
#         # extend last count
#         if not do_not_overlap_counts and last_event_index in my_event_indices:
#             my_counts[-1] += 2
#     else:
#         # extend penultimate count
#         if (
#             not do_not_overlap_counts
#             and (penultimate_event_index in my_event_indices)
#             and (last_event_index not in my_event_indices)
#         ):
#             my_counts[-1] += 2
#     if prolong_last_count and (last_event_index in my_event_indices):
#         my_counts.append(1000)
#     else:
#         my_counts.append(-1000)
#     if not prolong_last_count:
#         my_counts = [_ for _ in my_counts if _ != 0]
#     assert all(_ != 0 for _ in my_counts), repr(my_counts)
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.talea(
#         durations, my_counts, 16, read_talea_once_only=True,
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.extract_trivial(voice)
#     rmakers.rewrite_meter(voice, )
#     rmakers.force_repeat_tie(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music_1 = make_airtone_chain_rhythm(signatures[:6], total_events=8, my_event_indices=[0, 3, 4])
# music_2 = make_airtone_chain_rhythm(signatures[:6], total_events=8, my_event_indices=[1, 2, 6])
# music_3 = make_airtone_chain_rhythm(signatures[:6], total_events=8, my_event_indices=[5, 7])
# music = [music_1, music_2, music_3]
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)


##
# def make_back_incised_divisions(time_signatures):
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.incised(
#         durations,
#         suffix_talea=[-1],
#         suffix_counts=[1],
#         talea_denominator=4,
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.extract_trivial(voice)
#     music = abjad.mutate.eject_contents(voice)
#     return music
# music = make_back_incised_divisions(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)
##
# def make_bcl_color_fingering_rhythm(
#     time_signatures, *, force_rest_lts=None, rotation=None
# ):
#     counts = [1, 1, 2, 3, 1, 3, 1, 1, 1, 1, 2, 3]
#     counts = abjad.sequence.rotate(counts, n=rotation)
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.talea(durations, counts, 8, extra_counts=[2], )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     if force_rest_lts is not None:
#         lts = baca.select.lts(voice)
#         lts = abjad.select.get(lts, force_rest_lts)
#         rmakers.force_rest(lts, )
#     rmakers.beam(voice, )
#     rmakers.denominator(voice, (1, 4))
#     rmakers.force_fraction(voice)
#     rmakers.trivialize(voice)
#     rmakers.rewrite_dots(voice, )
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.force_diminution(voice)
#     rmakers.extract_trivial(voice)
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_bcl_color_fingering_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_clb_rhythm(
#     time_signatures, *, extra_counts=(), fuse_counts=None, rotation=None
# ):
#     extra_counts = extra_counts or (2, 6, 2, 0, 4)
#     extra_counts = abjad.sequence.rotate(extra_counts, n=rotation)
#     durations = [_.duration for _ in time_signatures]
#     if fuse_counts is not None:
#         durations = abjad.sequence.partition_by_counts(
#             durations, fuse_counts, cyclic=True, overhang=True
#         )
#         durations = [sum(_) for _ in durations]
#     tuplets = rmakers.talea(durations, [1], 8, extra_counts=extra_counts, )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.denominator(voice, (1, 8))
#     rmakers.force_fraction(voice)
#     rmakers.trivialize(voice)
#     rmakers.rewrite_dots(voice, )
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.force_diminution(voice)
#     rmakers.extract_trivial(voice)
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_clb_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_eh_trill_rhythm(
#     time_signatures,
#     counts,
#     *,
#     division_fuse_counts=None,
#     extra_counts=(),
#     force_rest_tuplets=None,
# ):
#     counts = list(counts) + [-1000]
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.talea(
#         durations,
#         counts,
#         16,
#         extra_counts=extra_counts,
#         read_talea_once_only=True,
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     if force_rest_tuplets is not None:
#         tuplets = abjad.select.tuplets(voice)
#         tuplets = abjad.select.get(tuplets, force_rest_tuplets)
#         rmakers.force_rest(tuplets, )
#     rmakers.beam(voice, )
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.trivialize(voice)
#     rmakers.extract_trivial(voice)
#     rmakers.force_repeat_tie(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_eh_trill_rhythm(signatures[:6], counts=[1, 2, 3, 2])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_end_of_cell_attack(time_signatures, *, denominator=4):
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.incised(
#         durations,
#         fill_with_rests=True,
#         suffix_talea=[1],
#         suffix_counts=[1],
#         talea_denominator=denominator,
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.extract_trivial(voice)
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_end_of_cell_attack(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##

# def make_even_tuplet_rhythm(time_signatures, *, denominator=4, extra_counts=(0,)):
#     assert denominator in (2, 4, 8), repr(denominator)
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.talea(
#         durations, [1], denominator, extra_counts=extra_counts,
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.denominator(voice, (1, denominator))
#     rmakers.force_fraction(voice)
#     rmakers.trivialize(voice)
#     rmakers.rewrite_dots(voice, )
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.extract_trivial(voice)
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_even_tuplet_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def _postprocess_glow_rhythm(voice):
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.rewrite_sustained(voice, )
#     rmakers.trivialize(voice)
#     rmakers.beam(voice, )
#     rmakers.extract_trivial(voice)
#     rmakers.rewrite_meter(voice, )
#     rmakers.force_repeat_tie(voice, threshold=(1, 4), )
#
def _tuplet_ratios_a():
    return (
        (1, 1, 1, 1, 1),
        (1, 1, 1, 1, 1),
        (1, 1),
        (1, 2),
        (1, 1, 3),
        (1, 4),
        (2, 1),
        (2, 1, 1),
        (1, 1, 1, 1, 1),
    )


#
# def _make_glow_rhythm(time_signatures, *, tuplet_ratio_rotation=0):
#     tuplet_ratios = _tuplet_ratios_a()
#     tuplet_ratios_ = abjad.sequence.rotate(tuplet_ratios, n=tuplet_ratio_rotation)
#     durations = [_.duration for _ in time_signatures]
#     durations = [sum(durations)]
#     durations = baca.sequence.quarters(durations)
#     tuplets = rmakers.tuplet(durations, tuplet_ratios_, )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     tuplets = abjad.select.tuplets(voice)[:-1]
#     pleaves = [baca.select.pleaf(_, -1) for _ in tuplets]
#     rmakers.tie(pleaves, )
#     return voice
#
# def make_glow_rhythm_a(time_signatures):
#     voice = _make_glow_rhythm(time_signatures, )
#     tuplets = abjad.select.tuplets(voice)
#     tuplets = abjad.select.get(tuplets, ~abjad.Pattern([6, 7], period=18))
#     leaves = [abjad.select.leaves(_)[:-1] for _ in tuplets]
#     rmakers.tie(leaves, )
#     _postprocess_glow_rhythm(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# def make_glow_rhythm_b(
#     time_signatures,
#     *,
#     pattern=~abjad.Pattern([2, 3, 6], period=9),
#     tag=None,
#     tuplet_ratio_rotation=0,
# ):
#     voice = _make_glow_rhythm(
#         time_signatures, tuplet_ratio_rotation=tuplet_ratio_rotation
#     )
#     tuplets = abjad.select.tuplets(voice)
#     tuplets = abjad.select.get(tuplets, pattern)
#     rmakers.force_note(tuplets, )
#     leaves = [abjad.select.leaves(_)[:-1] for _ in tuplets]
#     rmakers.untie(leaves)
#     rmakers.tie(leaves, )
#     tuplets = abjad.select.tuplets(voice)
#     tuplets = abjad.select.get(tuplets, [0, -2])
#     rmakers.force_note(tuplets, )
#     leaves = [abjad.select.leaves(_)[:-1] for _ in tuplets]
#     rmakers.untie(leaves)
#     rmakers.tie(leaves, )
#     tuplets = abjad.select.tuplets(voice)
#     tuplets = abjad.select.get(tuplets, ([10], 11))
#     rmakers.force_rest(tuplets, )
#     tuplets = abjad.select.tuplets(voice)
#     tuplets = abjad.select.get(tuplets, ([9, 11], 11))
#     rmakers.force_note(tuplets, )
#     leaves = [abjad.select.leaves(_)[:-1] for _ in tuplets]
#     rmakers.untie(leaves)
#     rmakers.tie(leaves, )
#     tuplet = abjad.select.tuplet(voice, -1)
#     rmakers.force_rest(tuplet, )
#     _postprocess_glow_rhythm(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
#
# def make_glow_rhythm_c(time_signatures, *, tuplet_ratio_rotation=0):
#     return make_glow_rhythm_b(
#         time_signatures,
#         pattern=~abjad.Pattern([0, 6, 7], period=9),
#         tuplet_ratio_rotation=tuplet_ratio_rotation,
#     )
#
# music_1 = make_glow_rhythm_a(signatures[:6])
# music_2 = make_glow_rhythm_b(signatures[:6])
# music_3 = make_glow_rhythm_c(signatures[:6])
# music = [music_1, music_2, music_3]
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_halves_rhythm(time_signatures, *, tuplet_ratios=[(1, 1)]):
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.tuplet(durations, tuplet_ratios, )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.denominator(voice, (1, 4))
#     rmakers.force_fraction(voice)
#     rmakers.trivialize(voice)
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.extract_trivial(voice)
#     rmakers.rewrite_meter(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_halves_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_keynoise_rhythm(
#     time_signatures,
#     *,
#     force_rest_tuplets=None,
#     tuplet_ratios=None,
#     tuplet_ratio_rotation=None,
# ):
#     if tuplet_ratios is None:
#         tuplet_ratios = _tuplet_ratios_a()
#     negated_tuplet_ratios = []
#     for tuplet_ratio in tuplet_ratios:
#         assert isinstance(tuplet_ratio, tuple)
#         numbers = list(tuplet_ratio)
#         numbers[0] = -abs(numbers[0])
#         negated_tuplet_ratio = tuple(numbers)
#         negated_tuplet_ratios.append(negated_tuplet_ratio)
#     tuplet_ratios = negated_tuplet_ratios
#     tuplet_ratios_ = abjad.sequence.rotate(tuplet_ratios, n=tuplet_ratio_rotation)
#     durations = [_.duration for _ in time_signatures]
#     durations = [sum(durations)]
#     durations = baca.sequence.quarters(durations)
#     tuplets = rmakers.tuplet(durations, tuplet_ratios_, )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     if force_rest_tuplets is not None:
#         tuplets = abjad.select.tuplets(voice)
#         tuplets = abjad.select.get(tuplets, force_rest_tuplets)
#         rmakers.force_rest(tuplets, )
#     rmakers.beam(voice, )
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.trivialize(voice)
#     rmakers.extract_trivial(voice)
#     rmakers.rewrite_meter(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_keynoise_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_spazzolati_rhythm(
#     time_signatures,
#     *,
#     counts_rotation=None,
#     denominator=16,
#     extra_counts=(),
#     force_rest_tuplets=None,
# ):
#     counts_ = eval(
#         """[[1, 1, 1], [-2], [1, 1], [-2], [1, 1, 1],
#         [-2], [1, 1, 1, 1], [-2], [1, 1], [-2]]"""
#     )
#     counts = abjad.sequence.rotate(counts_, n=counts_rotation)
#     counts = abjad.sequence.flatten(counts)
#     durations = [_.duration for _ in time_signatures]
#     durations = [sum(durations)]
#     durations = baca.sequence.quarters(durations)
#     tuplets = rmakers.talea(
#         durations, counts, denominator, extra_counts=extra_counts,
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     if force_rest_tuplets is not None:
#         tuplets = abjad.select.tuplets(voice)
#         tuplets = abjad.select.get(tuplets, force_rest_tuplets)
#         rmakers.force_rest(tuplets, )
#     rmakers.beam(voice, )
#     rmakers.rewrite_rest_filled(voice, )
#     rmakers.extract_trivial(voice)
#     rmakers.rewrite_meter(voice, )
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_spazzolati_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##
# def make_suffixed_colortrill_rhythm(time_signatures):
#     durations = [_.duration for _ in time_signatures]
#     tuplets = rmakers.incised(
#         durations,
#         extra_counts=[1],
#         prefix_counts=[2],
#         prefix_talea=[1],
#         suffix_counts=[1],
#         suffix_talea=[1],
#         talea_denominator=4,
#
#     )
#     voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
#     rmakers.beam(voice, )
#     rmakers.force_fraction(voice)
#     rmakers.extract_trivial(voice)
#     rmakers.untie(voice)
#     music = abjad.mutate.eject_contents(voice)
#     return music
#
# music = make_suffixed_colortrill_rhythm(signatures[:6])
# make_lilypond_file(music, signatures[:6], replace_silent_tuplets=True)

##

### helianthation swells NEW for ALU
extra_counts = baca.sequence.boustrophedon([0, 1, 2, 3])


def my_exchanging_rhythms(
    number_of_voices=4,
    voice_number=0,
    extra_counts=None,
    basic_rest_period=9,
    preprocessor=None,
    rewrite=None,
):

    out = []

    numerators = baca.sequence.helianthate([[4, 4, 5], [4, 5, 6], [4, 6, 7]], -1, 1)

    index_patterns = [_ for _ in range(basic_rest_period)]

    voices = [[] for _ in range(number_of_voices)]

    cyc_voices = evans.CyclicList(voices, forget=False)

    for group in zip(*[iter(index_patterns)] * 4):
        for item in group:
            voice = cyc_voices(r=1)[0]
            voice.append(item)

    voice = voices[voice_number]
    rotated_numerators = abjad.sequence.rotate(numerators, -voice_number)
    flat_numerators = abjad.sequence.flatten(rotated_numerators)
    maker = evans.talea(
        flat_numerators,
        16,
        extra_counts=extra_counts,
        preprocessor=preprocessor,
        rewrite=rewrite,
    )
    music = maker(signatures)
    music = abjad.Staff(music)
    ties = abjad.select.logical_ties(music)
    ties = abjad.select.get(
        ties, ~abjad.index(voice, len(index_patterns) + voice_number)
    )
    rmakers.force_rest(ties)
    music = abjad.mutate.eject_contents(music)
    out.append(music)

    return out


music_1 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=0,
    # extra_counts=abjad.sequence.rotate(extra_counts, 0),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_2 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=1,
    # extra_counts=abjad.sequence.rotate(extra_counts, -1),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_3 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=2,
    # extra_counts=abjad.sequence.rotate(extra_counts, -2),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_4 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=3,
    # extra_counts=abjad.sequence.rotate(extra_counts, -3),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_5 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=4,
    # extra_counts=abjad.sequence.rotate(extra_counts, -4),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music = [music_1, music_2, music_3, music_4, music_5]
make_lilypond_file(music, signatures, replace_silent_tuplets=True)
