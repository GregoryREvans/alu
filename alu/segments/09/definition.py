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
        r'"Bass Clarinet"',
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
        r'"bcl"',
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
    fermata_measures=alu.fermata_measures_09,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=21),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=22),
            lambda _: abjad.select.leaf(_, 10),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=23),
            lambda _: abjad.select.leaf(_, 20),
        ),
        evans.attach(
            "bassoon voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
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
        # evans.attach(
        #     "percussion 1 voice",
        #     abjad.LilyPondLiteral(r"\staff-line-count #4"),
        #     lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "percussion 1 voice",
        #     abjad.Markup(r"\boxed-markup woodblocks #1"),
        #     lambda _: abjad.select.leaf(_, 0),
        #     direction=abjad.UP,
        # ),
        evans.attach(
            "percussion 2 voice",
            abjad.Clef("percussion"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        # evans.attach(
        #     "percussion 2 voice",
        #     abjad.LilyPondLiteral(r"\staff-line-count #4"),
        #     lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "percussion 2 voice",
        #     abjad.Markup(r'\boxed-markup "slit drum" #1'),
        #     lambda _: abjad.select.leaf(_, 0),
        #     direction=abjad.UP,
        # ),
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
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=0),
            evans.loop([27], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-1),
            evans.loop([24], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-2),
            evans.loop([0], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-3),
            evans.loop([-3], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-4),
            evans.loop([3], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-5),
            evans.loop([15], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-6),
            evans.loop([-1], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-7),
            evans.loop([-9], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-8),
            lambda _: baca.hairpin(_, "mp < fff"),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "bass drum + superball" #1'),
            # alu.C_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-9),
            lambda _: baca.hairpin(_, "mp < fff"),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "tam tam + superball" #1'),
            # alu.C_color,
        ),
        # # PIANO 1
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
        #     alu.C_rhythms(stage=4, rotation=-10),
        #     # evans.loop([24], [-0.5, -1]),
        #     # abjad.glissando,
        #     # alu.C_color,
        # ),
        # # PIANO 2
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
        #     alu.C_rhythms(stage=4, rotation=-11),
        #     # evans.loop([24], [-0.5, -1]),
        #     # abjad.glissando,
        #     # alu.C_color,
        # ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-12),
            evans.loop([26], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-13),
            evans.loop([25], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-14),
            evans.loop([9], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-15),
            evans.loop([8], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            alu.C_rhythms(stage=4, rotation=-16),
            evans.loop([-11], [-0.5, -1, 0, -1, 0.5, -1.5, 1]),
            abjad.glissando,
            lambda _: baca.hairpin(_, "mp < fff"),
            # alu.C_color,
        ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.mod_70_105,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.met_105,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
            lambda _: abjad.select.components(_, abjad.Score),
        ),
    ],
    score_template=alu.score,
    transpose_from_sounding_pitch=True,
    transpose_first=True,
    color_out_of_range=False,
    time_signatures=alu.signatures_09,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="09",
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
