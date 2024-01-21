import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

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
        # PREFIX
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
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 1 voice",
            abjad.Markup(r"\boxed-markup woodblocks #1"),
            lambda _: abjad.select.leaf(_, 0),
            direction=abjad.UP,
        ),
        evans.attach(
            "percussion 2 voice",
            abjad.Clef("percussion"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 2 voice",
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 2 voice",
            abjad.Markup(r'\boxed-markup "slit drum" #1'),
            lambda _: abjad.select.leaf(_, 0),
            direction=abjad.UP,
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
        # MUSIC
        # FLUTE
        # OBOE
        # CLARINET
        # evans.MusicCommand(
        #     ("clarinet in b flat voice", [0, 1]),
        #     evans.accelerando(
        #         [(1, 8), (1, 4), (1, 16)],
        #         preprocessor=evans.make_preprocessor(sum=True)
        #     ),
        #     evans.Callable(
        #         rmakers.force_rest,
        #         selector=lambda _: abjad.select.get(abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)),
        #     ),
        #     evans.PitchHandler(["cs'", "df'"]),
        # ),
        # BASSOON
        # HORN
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([3])),
            evans.note(),
            alu.A_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([5])),
            evans.note(),
            alu.A_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([3])),
            evans.note(),
            alu.A_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([5])),
            evans.note(),
            alu.A_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([3])),
            evans.note(),
            alu.A_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([5])),
            evans.note(),
            alu.A_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", [_ - 1 for _ in [1, 2, 3, 4, 5, 6, 7]]),
            evans.accelerando(
                [(1, 8), (1, 4), (1, 16)],
                preprocessor=evans.make_preprocessor(fuse_counts=[2, 1, 1, 3, 2])
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)),
            ),
            evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            alu.A_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", [_ - 1 for _ in [1, 2, 3, 4, 5, 6, 7]]),
            evans.accelerando(
                [(1, 4), (1, 8), (1, 16)],
                [(1, 9), (1, 3), (1, 16)],
                # preprocessor=None,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)),
            ),
            evans.PitchHandler(abjad.sequence.reverse([-1, 1, -1, 1, 3, -1, 1, -3]), staff_positions=True),
            alu.A_color,
        ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([1, 2])),
            evans.note(),
            alu.A_color,
        ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([1, 2])),
            evans.note(),
            alu.A_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([1, 2])),
            evans.note(),
            alu.A_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([5, 6, 7])),
            evans.note(),
            alu.C_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([5, 6, 7])),
            evans.note(),
            alu.C_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([4, 5, 6])),
            evans.note(),
            alu.B_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([7])),
            evans.note(),
            alu.C_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([1, 2])),
            evans.note(),
            alu.A_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([3, 4, 5])),
            evans.note(),
            alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([6, 7])),
            evans.note(),
            alu.C_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([3, 4])),
            evans.note(),
            alu.B_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([5, 6, 7])),
            evans.note(),
            alu.C_color,
        ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.lib.mark_46,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.lib.met_46,
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
    mm_rests=True,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
)

maker.build_segment()
