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
    fermata_measures=alu.fermata_measures_01,
    commands=[
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
                voice_name="piano 1 intermittent_voice_1"
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
                    [[12, 11, 10, 9, 8, 7], [12, 11, 10, 9, 8, 7, 6, 5, 4], [12, 11, 10, 9, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3]],
                    [1],
                    32,
                    # affix=baca.rests_before([2]),
                    affix=baca.rests_around([2], [4]),
                    treatments=[(1, 4)]
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
                voice_name="piano 1 intermittent_voice_2"
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
            ("piano 2 voice", (0, 3)),
            evans.talea([7, 6, 5, 4], 16, extra_counts=[0, 1, 2, 3, 2, 1], preprocessor=evans.make_preprocessor(quarters=True)),
            evans.loop([0, -6, -2, -1, -3], [-2, 1, -3, 2]),
        ),
        evans.MusicCommand(
            ("percussion 1 voice", 1),
            evans.Skeleton(
                evans.figure(
                    [[0, 0, 0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0, 0, 0]],
                    [1],
                    16,
                    treatments=["rit", "rit", "accel", "rit"],
                )
            ),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
            lambda _: abjad.select.components(_, abjad.Score),
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
    time_signatures=alu.signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="01",
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
