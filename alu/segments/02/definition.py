import pathlib
import random

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
    fermata_measures=alu.fermata_measures_02,
    commands=[
        # PREFIX
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
        evans.attach(
            "percussion 2 voice",
            abjad.Clef("percussion"),
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
        # MUSIC
        # FLUTE
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 56)])),
            evans.talea(
                [7, 8, 9, 11, 12, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                [evans.JIPitch("ef,,", "12/1", with_quarter_tones=True)]
            ),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            evans.Attachment(
                abjad.Markup(r"\markup {rigid, mechanical: keep dynamic static}"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            # # alu.B_color,
        ),
        evans.call(
            "flute voice",
            evans.TranspositionHandler(["+A1"]),
            selector=evans.select_measures([_ for _ in range(56 // 2, 56)]),
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([7, 8])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], 0
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 0),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["d''", "bf'", "f''"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.Oboe().pitch_range,
                        rotation=4,
                        random_seed=0,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=0),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([15])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([0, 1, 2, 3], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [4], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [4],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([20, 21])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([0, 1, 2, 3], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [4], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [4],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(26, 33)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], 0
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 0),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["ef''", "d''", "a'", "g'", "cs'"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.Oboe().pitch_range,
                        rotation=4,
                        random_seed=0,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            evans.ArticulationHandler(["accent"]),
            lambda _: alu.center_swell(_, random_seed=0),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([39])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([0, 1, 2, 3], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [4], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [4],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([41])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([0, 1, 2, 3], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [4], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [4],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(52, 56)])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([0, 1, 2, 3], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [4], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [4],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # # alu.E_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 53)])),
            evans.talea(
                [13, 7, 9, 10, 12, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                [evans.JIPitch("ef,,", "10/1", with_quarter_tones=True)]
            ),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            evans.Attachment(
                abjad.Markup(r"\markup {rigid, mechanical: keep dynamic static}"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            # # alu.B_color,
        ),
        evans.call(
            "bass clarinet voice",
            evans.TranspositionHandler(["+m2"]),
            selector=evans.select_measures([_ for _ in range(56 // 2, 56)]),
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([56, 57, 58])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b,"]),
            abjad.Markup(r'\boxed-markup "son fendu" #1'),
            # # alu.I_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([7, 8])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -1
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 1),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["b", "g", "af", "a,"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.Bassoon().pitch_range,
                        rotation=4,
                        random_seed=1,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=1),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([19, 20])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 2, 3, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 14 for _ in [0, 1, 2, 1, 3]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [5], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [5],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [5]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([27, 28, 29, 30, 31])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -1
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 1),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["fs", "d", "fs", "b", "cs'"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.Bassoon().pitch_range,
                        rotation=4,
                        random_seed=1,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=2),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([38, 39])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 2, 3, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 14 for _ in [0, 1, 2, 1, 3]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [5], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [5],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [5]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([51, 52, 53, 54, 55])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 2, 3, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 14 for _ in [0, 1, 2, 1, 3]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [5], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [5],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [5]),
            # # alu.E_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([6, 7, 8, 9])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -2
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 2),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["g", "af", "b", "af"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.FrenchHorn().pitch_range,
                        rotation=4,
                        random_seed=2,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=3),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([28, 29, 30])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -2
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 2),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["fs", "d", "d", "fs", "b"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.FrenchHorn().pitch_range,
                        rotation=4,
                        random_seed=2,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=4),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(33, 42)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=0, rotation=0, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[B2, F4]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-off", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(50, 56)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=2,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=1, rotation=-1, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[B2, F4]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-on", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(6, 10)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -3
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 3),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["af", "b", "af", "g"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.Trumpet().pitch_range,
                        rotation=5,
                        random_seed=3,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=5),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(22, 26)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=0,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=2, rotation=-2, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[F#4, D5]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([29])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -3
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 3),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["g'", "a'", "cs'", "b", "fs"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.Trumpet().pitch_range,
                        rotation=5,
                        random_seed=3,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=6),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(33, 42)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=3, rotation=-3, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[F#4, D5]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-off", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(50, 56)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=3,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=4, rotation=-4, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[F#4, D5]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-on", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(6, 10)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -4
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 4),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["g", "a,", "g", "af"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.TenorTrombone().pitch_range,
                        rotation=2,
                        random_seed=4,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=7),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(11, 19)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=0,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=5, rotation=-5, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[E3, Eb4]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-on", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(22, 26)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=1,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=6, rotation=-6, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[E3, Eb4]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(28, 31)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -4
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 4),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["d", "d", "fs"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.TenorTrombone().pitch_range,
                        rotation=2,
                        random_seed=4,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=8),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(33, 42)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=2,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=7, rotation=-7, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[E3, Eb4]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-off", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(50, 56)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=4,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=8, rotation=-8, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[E3, Eb4]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-on", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(5, 11)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -5
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 5),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["e,", "a,", "e,", "a,", "g"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.Tuba().pitch_range,
                        rotation=1,
                        random_seed=5,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=9),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(11, 19)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=1,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=9, rotation=-9, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[D2, F3]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-on", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(22, 26)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=2,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=10, rotation=-10, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[D2, F3]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(27, 32)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -5
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 5),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["c,", "d", "c,", "fs"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.Tuba().pitch_range,
                        rotation=1,
                        random_seed=5,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=10),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(33, 42)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=3,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=11, rotation=-11, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[D2, F3]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-off", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(50, 56)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=5,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=12, rotation=-12, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[D2, F3]"),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\kiss-on", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.D_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(  # modulation
            ("percussion 1 voice", 0),
            evans.even_division([16]),
            evans.PitchHandler([-3, -1, 1, -1, 1, 3, -1, 1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([4])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "bass drum + superball" #1'),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(11, 19)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=2,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(22, 26)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=3,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(33, 42)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=4,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(47, 56)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([4])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "tam tam + superball" #1'),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(11, 19)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=3,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(22, 26)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=4,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(33, 42)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=5,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(47, 56)])),
            alu.exchanging_rhythms(
                number_of_voices=6,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([21])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 4 for _ in [0, 1, 2, 1, 3, 0, 2, 3]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [8], cyclic=True, overhang=True
                )
            ],
            evans.hairpin("p < f >", [8]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([37, 38, 39])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 4 for _ in [0, 1, 2, 1, 3, 0, 2, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [8], cyclic=True, overhang=True
                )
            ],
            evans.hairpin("p < f >", [8]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([53, 54, 55])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 4 for _ in [0, 1, 2, 1, 3, 0, 2, 3]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [8], cyclic=True, overhang=True
                )
            ],
            evans.hairpin("p < f >", [8]),
            # # alu.E_color,
        ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([22])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 19 for _ in [0, 1, 2, 1, 3, 0, 2, 3, 1, 0]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.hairpin("p < f >", [10]),
            lambda _: abjad.detach(
                abjad.StartSlur(),
                abjad.select.note(_, -1),
            ),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([42])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[1, 1, 1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 19 for _ in [0, 1, 2, 1, 3, 0, 2, 3, 1, 0]], [1, 2, 1, -3, 1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.hairpin("p < f >", [10]),
            lambda _: abjad.detach(
                abjad.StartSlur(),
                abjad.select.note(_, -1),
            ),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([55])),
            evans.even_division(
                [16, 32, 16],
                extra_counts=[1, 1, 2, 1, 0, 1],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[2, 1, 1, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 19 for _ in [0, 1, 2, 1, 3, 0, 2, 3, 1, 0]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.hairpin("p < f >", [10]),
            # # alu.E_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(6, 10)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -6
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 6),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["f''", "d''", "bf'", "ef'", "bf'"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.Violin().pitch_range,
                        rotation=6,
                        random_seed=6,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=11),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(27, 32)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -6
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 6),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["af''", "ef''", "d''", "a'", "g'", "cs'"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.Violin().pitch_range,
                        rotation=6,
                        random_seed=6,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=12),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(35, 41)])),
            evans.even_division(
                [16, 32],
                extra_counts=[0, -1, 1, 0, -1, 1],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2, 1, 3, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [6], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [6],
                padding=5,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=7, id=2),
            evans.text_span([r"clt."], "=|", padding=9, id=3),
            evans.hairpin("p < f >", [6]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(49, 56)])),
            evans.even_division(
                [16, 32],
                extra_counts=[0, -1, 1, 0, -1, 1],
                preprocessor=evans.make_preprocessor(
                    quarters=True, fuse_counts=[1, 2, 1]
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2, 1, 3, 2]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [6], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [6],
                padding=5,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=7, id=2),
            evans.text_span([r"clt."], "=|", padding=9, id=3),
            evans.hairpin("p < f >", [6]),
            # # alu.E_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(5, 11)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -7
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 7),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["ef'", "d''", "bf'", "f''"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_1,
                        instrument_range=abjad.Violin().pitch_range,
                        rotation=3,
                        random_seed=7,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=13),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(26, 33)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -7
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 7),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(["g'", "a'", "d''", "ef''"], forget=False),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_2,
                        instrument_range=abjad.Violin().pitch_range,
                        rotation=3,
                        random_seed=7,
                        step_list=[1, 1, 2, 1],
                        length=20,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=14),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(36, 40)])),
            evans.even_division(
                [32, 16],
                extra_counts=[0, -1, 1, 0, -1, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 3 for _ in [0, 1, 2, 1, 3, 2, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [7], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [7],
                padding=5,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=7, id=2),
            evans.text_span([r"clt."], "=|", padding=9, id=3),
            evans.hairpin("p < f >", [7]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([43])),
            evans.even_division(
                [32, 16],
                extra_counts=[0, -1, 1, 0, -1, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 3 for _ in [0, 1, 2, 1, 3, 2, 3]], [1, 2, 1, -3, 1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [7], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [7],
                padding=5,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=7, id=2),
            evans.text_span([r"clt."], "=|", padding=9, id=3),
            evans.hairpin("p < f >", [7]),
            lambda _: abjad.detach(
                abjad.StartSlur(),
                abjad.select.note(_, -1),
            ),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(50, 56)])),
            evans.even_division(
                [32, 16],
                extra_counts=[0, -1, 1, 0, -1, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 3 for _ in [0, 1, 2, 1, 3, 2, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [7], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [7],
                padding=5,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=7, id=2),
            evans.text_span([r"clt."], "=|", padding=9, id=3),
            evans.hairpin("p < f >", [7]),
            # # alu.E_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(1, 56)])),
            evans.talea(
                [6, 12, 12, 12, 7, 6, 6, 8, 1, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, -1, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                [evans.JIPitch("ef,,", "11/1", with_quarter_tones=True)]
            ),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            evans.Attachment(
                abjad.Markup(r"\markup {rigid, mechanical: keep dynamic static}"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            # # alu.B_color,
        ),
        evans.call(
            "viola voice",
            evans.TranspositionHandler(["+m2"]),
            selector=lambda _: evans.select_measures([_ for _ in range(56 // 2, 56)]),
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(1, 56 // 2)])),
            evans.talea(
                [
                    7,
                    8,
                    9,
                    11,
                    12,
                    1,
                    1,
                    1,
                    13,
                    7,
                    9,
                    10,
                    12,
                    1,
                    1,
                    1,
                    1,
                    6,
                    12,
                    12,
                    12,
                    7,
                    6,
                    6,
                    8,
                    1,
                    1,
                    1,
                    1,
                    1,
                ],
                8,
                extra_counts=[0, -1, 0, 1, 0, -1, -1, 0, 1, 0, -1, -1, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([evans.JIPitch("ef,,", "7/1", with_quarter_tones=True)]),
            evans.Attachment(
                abjad.Glissando(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            lambda _: baca.text_spanner(
                _,
                r"\trem-one-markup -> \trem-three-markup -> \trem-two-markup -> \trem-five-markup -> \trem-four-markup ->",
                abjad.Tweak(r"\tweak staff-padding 4.5"),
                abjad.Tweak(r"\tweak bound-details.right.padding 2"),
                final_piece_spanner=r"\stopTextSpanOne",
                autodetect_right_padding=False,
                bookend=False,
                leak_spanner_stop=True,
                lilypond_id=1,
                pieces=lambda _: abjad.select.partition_by_counts(
                    abjad.select.logical_ties(_), [1], cyclic=True, overhang=True
                ),
            ),
            lambda _: baca.text_spanner(
                _,
                r"T -> P -> N -> P ->",
                abjad.Tweak(r"\tweak staff-padding 7.5"),
                abjad.Tweak(r"\tweak bound-details.right.padding 2"),
                final_piece_spanner=r"\stopTextSpanTwo",
                autodetect_right_padding=False,
                bookend=False,
                leak_spanner_stop=True,
                lilypond_id=2,
                pieces=lambda _: abjad.select.partition_by_counts(
                    abjad.select.logical_ties(_),
                    [2, 3, 2, 1],
                    cyclic=True,
                    overhang=True,
                ),
            ),
            evans.Attachment(
                abjad.Markup(r"\markup {opalescent}"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            lambda _: alu.alternate_swells(_, [2, 2, 3, 3]),
            # lambda _: abjad.tie(_),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([56 // 2])),
            evans.make_tied_notes(),
            evans.PitchHandler([evans.JIPitch("e,,", "7/1", with_quarter_tones=True)]),
            evans.Attachment(
                abjad.Glissando(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            lambda _: alu.alternate_swells(_, [2, 2, 3, 3]),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(56 // 2 + 1, 56)])),
            evans.talea(
                [
                    7,
                    8,
                    9,
                    11,
                    12,
                    1,
                    1,
                    1,
                    13,
                    7,
                    9,
                    10,
                    12,
                    1,
                    1,
                    1,
                    1,
                    6,
                    12,
                    12,
                    12,
                    7,
                    6,
                    6,
                    8,
                    1,
                    1,
                    1,
                    1,
                    1,
                ],
                8,
                extra_counts=[0, -1, 0, 1, 0, -1, -1, 0, 1, 0, -1, -1, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([evans.JIPitch("e,,", "9/1", with_quarter_tones=True)]),
            lambda _: baca.text_spanner(
                _,
                r"\trem-one-markup -> \trem-three-markup -> \trem-two-markup -> \trem-five-markup -> \trem-four-markup",
                abjad.Tweak(r"\tweak staff-padding 5.5"),
                abjad.Tweak(r"\tweak bound-details.right.padding 2"),
                final_piece_spanner=r"\stopTextSpanOne",
                autodetect_right_padding=False,
                bookend=False,
                leak_spanner_stop=True,
                lilypond_id=1,
                pieces=lambda _: abjad.select.partition_by_counts(
                    abjad.select.logical_ties(_), [1], cyclic=True, overhang=True
                ),
            ),
            lambda _: baca.text_spanner(
                _,
                r"T -> P -> N -> P ->",
                abjad.Tweak(r"\tweak staff-padding 8.5"),
                abjad.Tweak(r"\tweak bound-details.right.padding 2"),
                final_piece_spanner=r"\stopTextSpanTwo",
                autodetect_right_padding=False,
                bookend=False,
                leak_spanner_stop=True,
                lilypond_id=2,
                pieces=lambda _: abjad.select.partition_by_counts(
                    abjad.select.logical_ties(_),
                    [2, 3, 2, 1],
                    cyclic=True,
                    overhang=True,
                ),
            ),
            lambda _: alu.alternate_swells(_, [2, 2, 3, 3]),
            # lambda _: abjad.tie(_),
            # # alu.B_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 56 // 2)])),
            evans.make_tied_notes(),
            evans.PitchHandler(["ef,"]),
            evans.Attachment(
                abjad.Glissando(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            evans.Attachment(
                abjad.Markup(
                    r"\markup {glowing, warm: the foundation of an unbelievably large structure}"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            lambda _: alu.alternate_swells(_, [4, 4, 6, 6, 8, 8]),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(56 // 2, 56)])),
            evans.make_tied_notes(),
            evans.PitchHandler(["e,"]),
            lambda _: alu.alternate_swells(_, [4, 4, 6, 6, 8, 8]),
            # # alu.B_color,
        ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.mod_46_87,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.met_87,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        # evans.call(
        #     "bass clarinet voice",
        #     evans.IntermittentVoiceHandler(
        #         [abjad.Chord("<e' f'>2"), abjad.Chord("<e' f''>2."), abjad.Chord("<e' g'>2."), abjad.Chord("<e' d''>2"), abjad.Chord("<e' f''>2")],
        #         direction=abjad.UP,
        #         voice_name="bass clarinet intermittent_voice_1",
        #         cluster=True,
        #         from_components=True,
        #     ),
        #     evans.select_measures([55, 56, 57], leaves=True),
        # ),
    ],
    score_template=alu.score,
    transpose_from_sounding_pitch=True,
    transpose_first=True,
    color_out_of_range=False,
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
    mm_rests=True,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
)

maker.build_segment()
