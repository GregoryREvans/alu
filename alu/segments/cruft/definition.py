import pathlib

import abjad
import baca
import evans

import alu

maker = evans.SegmentMaker(
    instruments=alu.instruments,
    names=[
        '"Flute"',
        '"Oboe"',
        r'"Clarinet"',
        '"Bassoon"',
        '"Horn"',
        '"Trumpet"',
        '"Trombone"',
        '"Tuba"',
        '"Percussion 1"',
        '"Percussion 2"',
        r'\with-color #white "Piano LH"',
        r'\with-color #white "Piano RH"',
        '"Violin I"',
        '"Violin II"',
        '"Viola"',
        '"Violoncello"',
        '"Contrabass"',
    ],
    abbreviations=[
        '"fl"',
        '"ob"',
        r'"cl"',
        '"bs"',
        '"hn"',
        '"tp"',
        '"tbn"',
        '"tba"',
        '"pc 1"',
        '"pc 2"',
        r'\with-color #white "LH"',
        r'\with-color #white "RH"',
        '"vn I"',
        '"vn II"',
        '"va"',
        '"vc"',
        '"cb"',
    ],
    name_staves=True,
    fermata_measures=alu.fermata_measures_02,
    commands=[
        evans.call(
            "Global Context",
            lambda _: evans.wrap_in_repeats(_, number_of_repeats=3),
            evans.select_measures([1, 2], leaves=[0, 1, 2]),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1-2"))""", site="before"
            ),
            lambda _: abjad.select.leaf(_, 2),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f) (volta "3"))""",
                site="before",
            ),
            lambda _: abjad.select.leaf(_, 3),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="before",
            ),
            lambda _: abjad.select.leaf(_, 4),
        ),
        evans.attach(
            "tenor trombone voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "tuba voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 1 voice",
            abjad.Clef("percussion"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 1 voice",
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 2 voice",
            abjad.Clef("percussion"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 2 voice",
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "piano 2 voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "viola voice",
            abjad.Clef("alto"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "contrabass voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.MusicCommand(
            ("percussion 1 voice", 1),
            evans.Skeleton(
                evans.figure(
                    [[0, 0, 0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0, 0, 0]],
                    [1],
                    16,
                    tsd=16,
                    treatments=["rit", "rit", "accel", "rit"],
                )
            ),
        ),
        evans.MusicCommand(
            ("percussion 2 voice", 1),
            evans.accelerando(
                [(1, 20), (1, 32), (1, 16)],
                [(1, 20), (1, 16), (1, 16)],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
        ),
        evans.MusicCommand(
            ("piano 1 voice", 0),
            evans.Skeleton(
                r"c'8. c'16 c'4 \times 2/3 {c'16 c'16 c'16} c'16 c'16 c'16 c'8 c'16"
            ),
            evans.loop([16, 15, 16, 14], [-1, -2]),
            evans.ArticulationHandler(["staccato"]),
            evans.IntermittentVoiceHandler(
                evans.talea(
                    [1, 2, 3],
                    16,
                    extra_counts=[1, 0, 2],
                    preprocessor=evans.make_preprocessor(quarters=True),
                ),
                direction=abjad.UP,
                voice_name="piano 1 intermittent_voice_1",
            ),
        ),
        evans.call(
            "piano 1 intermittent_voice_1",
            evans.loop([17, 18, 17, 19], [1, 2]),
            lambda _: _,
        ),
        evans.call(
            "piano 1 intermittent_voice_1",
            evans.ArticulationHandler([">"]),
            lambda _: _,
        ),
        evans.MusicCommand(
            ("piano 1 voice", 1),
            evans.Skeleton(
                evans.figure(
                    [
                        [12, 11, 10, 9, 8, 7],
                        [12, 11, 10, 9, 8, 7, 6, 5, 4],
                        [12, 11, 10, 9, 8, 7, 6, 5],
                        [8, 7, 6, 5, 4, 3],
                    ],
                    [1],
                    32,
                    # affix=baca.rests_before([2]),
                    affix=baca.rests_around([2], [4]),
                    treatments=[(1, 4)],
                )
            ),
        ),
        evans.MusicCommand(
            ("piano 1 voice", 2),
            evans.Skeleton(
                r"c'8. c'16 c'4 c'16 c'16 c'16 c'16 \times 2/3 {c'16 c'8} c'16 c'16"
            ),
            evans.loop([16, 15, 16, 14], [-1, -2]),
            evans.ArticulationHandler(["portato"]),
            evans.IntermittentVoiceHandler(
                evans.talea(
                    [1],
                    16,
                    extra_counts=[1, 0, 2],
                    preprocessor=evans.make_preprocessor(quarters=True),
                ),
                direction=abjad.UP,
                voice_name="piano 1 intermittent_voice_2",
            ),
        ),
        evans.call(
            "piano 1 intermittent_voice_2",
            evans.loop([17, 18, 17, 19], [1, 2]),
            lambda _: _,
        ),
        evans.call(
            "piano 1 intermittent_voice_2",
            evans.ArticulationHandler(["marcato"]),
            lambda _: _,
        ),
        evans.MusicCommand(
            ("piano 1 voice", 3),
            evans.Skeleton(
                evans.figure(
                    [[0, 1], [5, 4, 3, 2], [6, 7, 8, 9]],
                    [1],
                    16,
                    # affix=baca.rests_before([2]),
                    affix=baca.rests_around([2], [4]),
                    treatments=[1, 0, -1],
                ),
            ),
        ),
        evans.MusicCommand(
            ("piano 2 voice", (0, 3)),
            evans.talea(
                [7, 6, 5, 4],
                16,
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.loop([0, -6, -2, -1, -3], [-2, 1, -3, 2]),
        ),
        # evans.attach(
        #     "piano 2 voice",
        #     abjad.BeforeGraceContainer("c'8", command=r'\acciacatura'),
        #     lambda _: abjad.select.note(_, 4),
        # ),
        evans.attach(
            "piano 2 voice",
            abjad.AfterGraceContainer("c'8"),
            lambda _: abjad.select.note(_, 9),
        ),
        evans.MusicCommand(
            ("cello voice", 0),
            evans.talea([1], 16),
            evans.PitchHandler(["c", "cqf", "cf", "ctqf", "cqs", "ctqs", "cs"]),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.imbricate(
                _, [7, 4, 5, 3], "piano 1 voice imbrication 1", articulation="accent"
            ),
            selector=evans.select_measures([1], leaves=True),
        ),
        evans.call(
            "piano 1 voice imbrication 1",
            lambda _: baca.beam_positions(_, 6),
            selector=lambda _: abjad.select.leaves(_),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.imbricate(
                _, [1, 5, 4, 6, 8], "imbrication 1", articulation="marcato"
            ),
            selector=evans.select_measures([3], leaves=True),
        ),
        evans.call(
            "imbrication 1",
            lambda _: baca.beam_positions(_, 6),
            selector=lambda _: abjad.select.leaves(_),
        ),
        evans.call(
            "sub group 4",
            lambda _: evans.make_anchor_skips_from_voices(
                _, name="anchor voice", destination="piano 2 voice"
            ),
            selector=lambda _: abjad.select.components(_, abjad.Voice),
        ),
        evans.call(
            "anchor voice",
            evans.hairpin(
                "p < f",
                [2, 3, 4, 5, 4, 3],
                cyclic=True,
                pitched=False,
                final_hairpin=False,
                remove_length_1_spanner_start=False,
            ),
            lambda _: abjad.select.leaves(_),
        ),
        evans.call(
            "anchor voice",
            evans.sustain_pedal(
                counts=[10, 6, 9, 5, 8, 4],
                cyclic=True,
                pitched=False,
                alternating=False,
                lifts=True,
            ),
            lambda _: abjad.select.leaves(_),
        ),
        evans.attach(
            "anchor voice",
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.direction = #UP",
                site="before",
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.lib.mark_48,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.lib.met_48,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=alu.score,
    transpose_from_sounding_pitch=True,
    time_signatures=alu.signatures_02,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="02",
    current_directory=pathlib.Path(__file__).parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    barline="||",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    with_layout=True,
    mm_rests=False,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
)

maker.build_segment()
