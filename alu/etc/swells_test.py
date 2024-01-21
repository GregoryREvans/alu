import abjad
import baca
import evans
from abjadext import rmakers

def make_lilypond_file(music, signatures=None, beam=True, pitch=False, spacing=10, replace_silent_tuplets=False):

    score = abjad.Score()
    skips = rmakers.multiplied_duration(signatures, abjad.Skip)
    for sig, skip in zip(signatures, skips):
        abjad.attach(sig, skip)
    ts_c = abjad.Staff(skips, lilypond_type="TimeSignatureContext", name="Global Context")
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
            "print-page-number = ##f"
        ],
    )

    header = abjad.Block(
        "header",
        items=[
            "tagline = ##f"
        ],
    )

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


extra_counts = baca.sequence.boustrophedon([0, 1, 2, 3])

def my_exchanging_rhythms(number_of_voices=4, voice_number=0, extra_counts=None, basic_rest_period=9, preprocessor=None, rewrite=None):

    out = []

    numerators = baca.sequence.helianthate([[4, 4, 5], [4, 5, 6], [4, 6, 7]], -1, 1)

    index_patterns = [_ for _ in range(basic_rest_period)]

    voices = [[] for _ in range(number_of_voices)]

    cyc_voices = evans.CyclicList(voices, forget=False)

    for group in zip(*[iter(index_patterns)]*4):
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
    ties = abjad.select.get(ties, ~abjad.index(voice, len(index_patterns)+voice_number))
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
music_1 = abjad.Staff(music_1)
music_2 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=1,
    # extra_counts=abjad.sequence.rotate(extra_counts, -1),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_2 = abjad.Staff(music_2)
music_3 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=2,
    # extra_counts=abjad.sequence.rotate(extra_counts, -2),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_3 = abjad.Staff(music_3)
music_4 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=3,
    # extra_counts=abjad.sequence.rotate(extra_counts, -3),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_4 = abjad.Staff(music_4)
music_5 = my_exchanging_rhythms(
    number_of_voices=5,
    voice_number=4,
    # extra_counts=abjad.sequence.rotate(extra_counts, -4),
    basic_rest_period=9,
    # preprocessor=None,
    # rewrite=-1,
)
music_5 = abjad.Staff(music_5)


melodic_sequence = [int(_) for _ in evans.Sequence([11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]).matrix().potamia(columns=False, retrograde=False).flatten()]

source_chord = ["b", "ds'", "fs'", "bf'", "ef''", "a''", "c'''", "g'''"]

reordering_row = evans.PitchClassSegment([abjad.NumberedPitch(_).number for _ in ["af'", "g'", "cs'", "ef'", "d'", "e'", "bf'", "c'", "b'", "a'", "fs'", "f'"]])

reordering_series = evans.Sequence([abjad.NumberedPitch(int(_)) for _ in reordering_row])

pitches_1 = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
)

melodic_sequence = [int(_) for _ in evans.Sequence([11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]).matrix().potamia(columns=True, retrograde=False).flatten()]

reordering_series = evans.Sequence([abjad.NumberedPitch(int(_)) for _ in reordering_row.invert(8)])

pitches_2 = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
)

melodic_sequence = [int(_) for _ in evans.Sequence([11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]).matrix().potamia(columns=False, retrograde=True).flatten()]

reordering_series = evans.Sequence([abjad.NumberedPitch(int(_)) for _ in reordering_row.retrograde()])

pitches_3 = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
)

melodic_sequence = [int(_) for _ in evans.Sequence([11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]).matrix().potamia(columns=True, retrograde=True).flatten()]

reordering_series = evans.Sequence([abjad.NumberedPitch(int(_)) for _ in reordering_row.invert(8).retrograde()])

pitches_4 = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
)

melodic_sequence = [int(_) for _ in evans.Sequence([11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]).matrix().potamia(columns=False, retrograde=False).flatten()]

reordering_series = evans.Sequence([abjad.NumberedPitch(int(_)) for _ in reordering_row.retrograde().alpha(1)])

pitches_5 = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
)

handler_1 = evans.PitchHandler(evans.Sequence(abjad.sequence.rotate(pitches_1, 0)).transpose(-12))
handler_1(music_1)
music_1 = abjad.mutate.eject_contents(music_1)

handler_2 = evans.PitchHandler(evans.Sequence(abjad.sequence.rotate(pitches_2, -2)).transpose(-36))
handler_2(music_2)
music_2 = abjad.mutate.eject_contents(music_2)

handler_3 = evans.PitchHandler(evans.Sequence(abjad.sequence.rotate(pitches_3, -4)).transpose(-24))
handler_3(music_3)
music_3 = abjad.mutate.eject_contents(music_3)

handler_4 = evans.PitchHandler(evans.Sequence(abjad.sequence.rotate(pitches_4, -6)).transpose(-24))
handler_4(music_4)
music_4 = abjad.mutate.eject_contents(music_4)

handler_5 = evans.PitchHandler(evans.Sequence(abjad.sequence.rotate(pitches_5, -8)).transpose(-24))
handler_5(music_5)
music_5 = abjad.mutate.eject_contents(music_5)

music = [music_1, music_2, music_3, music_4, music_5]
make_lilypond_file(music, signatures, replace_silent_tuplets=True, pitch=True)
