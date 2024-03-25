import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu

sieve_1a = abjad.index([0, 1, 7], 8)
sieve_1b = abjad.index([1, 3], 5)
sieve_1 = sieve_1a & sieve_1b
sieve_2a = abjad.index([0, 1, 2], 8)
sieve_2b = abjad.index([0], 5)
sieve_2 = sieve_2a & sieve_2b
sieve_3 = abjad.index([3], 8)
sieve_4 = abjad.index([4], 8)
sieve_5a = abjad.index([5, 6], 8)
sieve_5b = abjad.index([2, 3, 4], 5)
sieve_5 = sieve_5a & sieve_5b
sieve_6a = abjad.index([1], 8)
sieve_6b = abjad.index([2], 5)
sieve_6 = sieve_6a & sieve_6b
sieve_7a = abjad.index([6], 8)
sieve_7b = abjad.index([1], 5)
sieve_7 = sieve_7a & sieve_7b
sieve = sieve_1 | sieve_2 | sieve_3 | sieve_4 | sieve_5 | sieve_6 | sieve_7


source = evans.PitchClassSegment([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8])
row = evans.Sequence([int(_) for _ in source])
first_potamia = row.matrix().potamia(columns=True).flatten()
#
row_ri_3 = source.retrograde().invert().transpose(3)
proliferated_series = abjad.sequence.permute(
    [int(_) for _ in source],
    [int(row_ri_3.pitch_classes.index(int(_))) for _ in source],
)
row_2 = evans.Sequence([int(_) for _ in proliferated_series])
second_potamia = row_2.matrix().potamia().flatten()
#
row_ri_3_2 = (
    evans.PitchClassSegment([int(_) for _ in proliferated_series])
    .retrograde()
    .invert()
    .transpose(3)
)
proliferated_series_2 = abjad.sequence.permute(
    [int(_) for _ in proliferated_series],
    [int(row_ri_3_2.pitch_classes.index(int(_))) for _ in proliferated_series],
)
row_3 = evans.Sequence([int(_) for _ in proliferated_series_2])
third_potamia = row_3.matrix().potamia(columns=True).flatten()
#
fourth_potamia = row.matrix().potamia().flatten()
fifth_potamia = row_2.matrix().potamia(columns=True).flatten()
sixth_potamia = row_3.matrix().potamia().flatten()
seventh_potamia = row.matrix().potamia(retrograde=True).flatten()
eighth_potamia = row_2.matrix().potamia(columns=True, retrograde=True).flatten()
ninth_potamia = row_3.matrix().potamia(retrograde=True).flatten()
#
final_pitch_sequence = (
    first_potamia
    + second_potamia
    + third_potamia
    + fourth_potamia
    + fifth_potamia
    + sixth_potamia
    + seventh_potamia
    + eighth_potamia
    + ninth_potamia
)

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
    fermata_measures=alu.fermata_measures_04,
    commands=[
        # PREFIX
        evans.attach(
            "bassoon voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "trumpet voice",
            abjad.Dynamic("f"),
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
        # evans.MusicCommand(
        #     ("flute voice", alu.measure_numbers([_ for _ in range(1, 27)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=0, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 5)])),
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
            evans.loop([_ + 0 for _ in [0, 1, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [3], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [3],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [3]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([5, 6])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=29, rotation=-29, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Flute().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # # alu.D_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(7, 12)])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [3], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [3],
                padding=5 + 2,
                id=1,
            ),
            evans.hairpin("p < f >", [3]),
            lambda _: abjad.detach(
                abjad.StartSlur(),
                abjad.select.note(_, -1),
            ),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([12, 13, 14, 15])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=30, rotation=-30, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Flute().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # # alu.D_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(16, 21)])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [3], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [3],
                padding=5 + 2,
                id=1,
            ),
            evans.hairpin("p < f >", [3]),
            lambda _: abjad.detach(
                abjad.StartSlur(),
                abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([21])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=31, rotation=-31, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Flute().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([22])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [3], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [3],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [3]),
            lambda _: abjad.detach(
                abjad.StartSlur(),
                abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([23])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=32, rotation=-32, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Flute().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([24])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [3], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [3],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [3]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([25, 26])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=33, rotation=-33, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Flute().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([27])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [3], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [3],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [3]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(28, 36)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -15
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 15),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Flute().pitch_range,
                        rotation=7,
                        random_seed=14,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=22),
            # # alu.B_color,
        ),
        # OBOE
        # evans.MusicCommand(
        #     ("oboe voice", alu.measure_numbers([_ for _ in range(1, 27)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=1, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([2, 3, 4, 5, 6])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2, 1]], [1, 2, -1, 3, -1]),
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
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([7])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=34, rotation=-34, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Oboe().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([8, 9, 10, 11, 12])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2, 1]], [1, 2, -1, 3, -1]),
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
                padding=5 + 2,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([13, 14, 15, 16])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=35, rotation=-35, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Oboe().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([17, 18, 19, 20, 21])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2, 1]], [1, 2, -1, 3, -1]),
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
                padding=5 + 2,
                id=1,
            ),
            evans.hairpin("p < f >", [4]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([22, 23])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=36, rotation=-36, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Oboe().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([24, 25])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 6 for _ in [0, 1, 2, 1]], [1, 2, -1, 3, -1]),
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
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([26])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=37, rotation=-37, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Oboe().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([27, 28, 29, 30, 31, 32, 33, 34, 35])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -16
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 16),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Oboe().pitch_range,
                        rotation=6,
                        random_seed=15,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=23),
            # # alu.B_color,
        ),
        # CLARINET
        # evans.MusicCommand(
        #     ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 25)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=2, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([3, 4, 5, 6, 7])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 3, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 8 for _ in [0, 1, 2, 1, 3]], [1, 2, -1, 3, -1]),
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
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([8])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=38, rotation=-38, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.BassClarinet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([9, 10, 11, 12, 13])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 3, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 8 for _ in [0, 1, 2, 1, 3]], [1, 2, -1, 3, -1]),
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
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([14, 15, 16, 17])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=39, rotation=-39, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.BassClarinet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([18, 19, 20, 21, 22])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 3, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 8 for _ in [0, 1, 2, 1, 3]], [1, 2, -1, 3, -1]),
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
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([23, 24])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=40, rotation=-40, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.BassClarinet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([25])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 3, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 8 for _ in [0, 1, 2, 1, 3]], [1, 2, -1, 3, -1]),
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
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "bass clarinet voice",
                alu.measure_numbers([26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
            ),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -17
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 17),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.BassClarinet().pitch_range,
                        rotation=5,
                        random_seed=16,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=24),
            # # alu.B_color,
        ),
        # BASSOON
        # evans.MusicCommand(
        #     ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 25)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=3, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([1, 2, 3, 4, 5])),
            evans.even_division(
                [16],
                extra_counts=[2, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 11 for _ in [0, 1, 2, 1, 3, 2]], [1, 2, -1, 3, -1]),
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
            evans.hairpin("p < f >", [6]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([6, 7, 8, 9])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=5,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=41, rotation=-41, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Bassoon().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([10, 11, 12, 13, 14])),
            evans.even_division(
                [16],
                extra_counts=[2, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 11 for _ in [0, 1, 2, 1, 3, 2]], [1, 2, -1, 3, -1]),
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
            evans.hairpin("p < f >", [6]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([15, 16, 17, 18])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=5,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=42, rotation=-42, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Bassoon().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([19, 20, 21, 22, 23])),
            evans.even_division(
                [16],
                extra_counts=[2, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 11 for _ in [0, 1, 2, 1, 3, 2]], [1, 2, -1, 3, -1]),
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
            evans.hairpin("p < f >", [6]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([24])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=5,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=43, rotation=-43, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Bassoon().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            (
                "bassoon voice",
                alu.measure_numbers([25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
            ),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -18
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 18),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Bassoon().pitch_range,
                        rotation=4,
                        random_seed=17,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=25),
            # # alu.B_color,
        ),
        # HORN
        # evans.MusicCommand(
        #     ("french horn voice", alu.measure_numbers([_ for _ in range(1, 24)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=4, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([8, 9, 10, 11, 12, 13, 14, 15])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=6,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=44, rotation=-44, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([16, 17, 18])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 6 for _ in [0, 1, 2, 1, 3, 2, 0]], [1, 2, -1, 3, -1]),
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
            evans.hairpin("p < f >", [7]),
            lambda _: abjad.detach(abjad.StartSlur(), abjad.select.note(_, -1)),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([19])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=6,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=45, rotation=-45, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([20, 21, 22])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([23])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=6,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=46, rotation=-46, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            (
                "french horn voice",
                alu.measure_numbers([24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
            ),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -19
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 19),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.FrenchHorn().pitch_range,
                        rotation=3,
                        random_seed=18,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=26),
            # # alu.B_color,
        ),
        # TRUMPET
        # evans.MusicCommand(
        #     ("trumpet voice", alu.measure_numbers([_ for _ in range(1, 33)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=5, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([8, 9, 10, 11, 12, 13, 14])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=47, rotation=-47, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([15])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 6 for _ in [0, 1, 2, 1, 3, 2, 0]], [1, 2, -1, 3, -1]),
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
            evans.hairpin("p < f >", [7]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([16])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=48, rotation=-48, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([17, 18, 19])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([20])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=49, rotation=-49, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([21, 22, 23])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 2 for _ in [0, 1, 2, 1, 3, 2, 0, 4]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [8], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [8],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [8]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([24])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=50, rotation=-50, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([25, 26, 27])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -20
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 20),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Trumpet().pitch_range,
                        rotation=2,
                        random_seed=19,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=27),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([28])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=51, rotation=-51, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([29, 30])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -20
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 20),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Trumpet().pitch_range,
                        rotation=2,
                        random_seed=20,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=28),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([31])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 2 for _ in [0, 1, 2, 1, 3, 2, 0, 4]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [8], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [8],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [8]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([32])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=52, rotation=-52, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([33, 34, 35])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 2, 3, 2, 2, 1, 4, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ + 2 for _ in [0, 1, 2, 1, 3, 2, 0, 4]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [8], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [8],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [8]),
            # alu.E_color,
        ),
        # TROMBONE
        # evans.MusicCommand(
        #     ("tenor trombone voice", alu.measure_numbers([_ for _ in range(1, 36)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=6, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([8, 9, 10, 11, 12, 13, 14])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=53, rotation=-53, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([15, 16])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 2, 1, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 2, 3, 2, 2, 1, 4, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 9 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [9], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [9],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [9]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([17])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=54, rotation=-54, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([18])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 2, 1, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 2, 3, 2, 2, 1, 4, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 9 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [9], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [9],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [9]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([19, 20])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([21])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=55, rotation=-55, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([22, 23, 24])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([25])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=56, rotation=-56, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([26])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 2, 1, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 2, 3, 2, 2, 1, 4, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 9 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [9], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [9],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [9]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([27])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=57, rotation=-57, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([28])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 2, 1, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 2, 3, 2, 2, 1, 4, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 9 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [9], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [9],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [9]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([29])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=58, rotation=-58, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([30])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -21
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 21),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.TenorTrombone().pitch_range,
                        rotation=1,
                        random_seed=21,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=29),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([31])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=59, rotation=-59, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([32])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 2, 1, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 2, 3, 2, 2, 1, 4, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 9 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [9], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [9],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [9]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([33])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=60, rotation=-60, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([34])),
            evans.even_division(
                [16],
                extra_counts=[3, 4, 2, 1, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 2, 3, 2, 2, 1, 4, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop([_ - 9 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3]], [1, 2, -1, 3, -1]),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [9], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [9],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [9]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([35])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=61, rotation=-61, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        # TUBA
        # evans.MusicCommand(
        #     ("tuba voice", alu.measure_numbers([_ for _ in range(1, 35)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=7, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([8, 9, 10, 11, 12, 13, 14])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=62, rotation=-62, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([15, 16, 17])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([18])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=63, rotation=-63, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([19, 20, 21])),
            evans.even_division(
                [16],
                extra_counts=[4, 2, 1, 2, 3],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 2, 1, 2, 3, 2, 2, 1, 4, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 13 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [10],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [10]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([22])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=64, rotation=-64, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([23])),
            evans.even_division(
                [16],
                extra_counts=[4, 2, 1, 2, 3],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 2, 1, 2, 3, 2, 2, 1, 4, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 13 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [10],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [10]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([24, 25])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -22
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 22),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Tuba().pitch_range,
                        rotation=0,
                        random_seed=22,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=30),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([26])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=65, rotation=-65, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([27, 28, 29])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([30])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=66, rotation=-66, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([31, 32, 33])),
            evans.even_division(
                [16],
                extra_counts=[4, 2, 1, 2, 3],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 2, 1, 2, 3, 2, 2, 1, 4, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 13 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [10],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [10]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([34])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=9,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=67, rotation=-67, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([35])),
            evans.even_division(
                [16],
                extra_counts=[4, 2, 1, 2, 3],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 2, 1, 2, 3, 2, 2, 1, 4, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 13 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [10], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [10],
                padding=5,
                id=1,
            ),
            evans.hairpin("p < f >", [10]),
            # alu.E_color,
        ),
        # PERCUSSION 1
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([_ for _ in range(1, 27)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=8, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([13, 14])),
            evans.make_tied_notes(),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "bass drum + superball" #1'),
            abjad.Dynamic("mp"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([15, 16, 17, 18, 19])),
            evans.even_division(
                [16],
                extra_counts=[2, 1, 2, 3, 4],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[3, 2, 2, 2, 1, 2, 3, 2, 2, 1, 4]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([-3, -1, 1, 3, 1, -1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=6,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Clef("percussion"), selector=lambda _: abjad.select.leaf(_, 0)
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [14]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([20, 21, 22])),
            evans.make_tied_notes(),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "bass drum + superball" #1'),
            abjad.Dynamic("mp"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([23, 24])),
            evans.even_division(
                [16],
                extra_counts=[2, 1, 2, 3, 4],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[3, 2, 2, 2, 1, 2, 3, 2, 2, 1, 4]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([-3, -1, 1, 3, 1, -1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=7,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [14]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([25, 26])),
            evans.make_tied_notes(),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "bass drum + superball" #1'),
            abjad.Dynamic("mp"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([27, 28])),
            evans.even_division(
                [16],
                extra_counts=[2, 1, 2, 3, 4],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[3, 2, 2, 2, 1, 2, 3, 2, 2, 1, 4]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([-3, -1, 1, 3, 1, -1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=8,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [14]),
            # alu.E_color,
        ),
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([29, 30, 31, 32, 33, 34, 35])),
        #     evans.make_tied_notes(),
        #     lambda _: baca.hairpin(_, "ff -- niente"),
        #     # # alu.B_color,
        # ),
        # PERCUSSION 2
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([_ for _ in range(1, 29)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=9, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([12, 13])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "snare" #1'),
            abjad.Dynamic("f"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([14, 15, 16, 17, 18])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[4, 3, 2, 2, 2, 1, 2, 3, 2, 2, 1]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=9,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Clef("percussion"), selector=lambda _: abjad.select.leaf(_, 0)
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [15]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([19, 20, 21])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "snare" #1'),
            abjad.Dynamic("f"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([22])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[4, 3, 2, 2, 2, 1, 2, 3, 2, 2, 1]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=10,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [15]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([23])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "snare" #1'),
            abjad.Dynamic("f"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([24])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[4, 3, 2, 2, 2, 1, 2, 3, 2, 2, 1]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=11,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [15]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([25])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "snare" #1'),
            abjad.Dynamic("f"),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([26, 27])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[4, 3, 2, 2, 2, 1, 2, 3, 2, 2, 1]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=12,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [15]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([28])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #1"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Markup(r'\boxed-markup "snare" #1'),
            abjad.Dynamic("f"),
            # # alu.D_color,
        ),
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([29, 31, 32, 33, 34, 35])),
        #     evans.talea(
        #         abjad.sequence.rotate([_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -23),
        #         16,
        #         extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 23),
        #         rewrite=-1,
        #         preprocessor=evans.make_preprocessor(quarters=True),
        #     ),
        #     lambda _: alu.center_swell(_, random_seed=31),
        #     # # alu.B_color,
        # ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([_ for _ in range(13, 36)])),
            alu.make_figures(
                thread="d",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 1, 1, 1, 1, 2, 1, 2, 3, 1, 3, 1, 2, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 12, 13, 15, 23], 24),
            ),
            # lambda _: evans.label_logical_ties(_),
            lambda _: abjad.attach(
                abjad.Dynamic("ff"),
                abjad.select.note(_, 0),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("mp"),
                abjad.select.note(_, 8),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("f"),
                abjad.select.note(_, 12),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("mf"),
                abjad.select.note(_, 17),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("ff"),
                abjad.select.note(_, 24),
            ),
            # alu.F_color,
        ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([_ for _ in range(13, 36)])),
            alu.make_figures(
                thread="d",
                rotation=-2,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[
                        1,
                        1,
                        1,
                        2,
                        1,
                        2,
                        3,
                        1,
                        3,
                        1,
                        2,
                        2,
                        3,
                        1,
                        1,
                    ],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([0, 1, 5, 7, 8, 9, 14, 24], 30),
            ),
            # lambda _: evans.label_logical_ties(_),
            # alu.F_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 36)])),
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
            evans.PitchHandler(
                [evans.JIPitch("fqs,,", "7/1", with_quarter_tones=True)]
            ),
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
            lambda _: alu.center_swell(_, random_seed=32),
            # # alu.B_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 36)])),
            evans.make_tied_notes(),
            evans.PitchHandler(
                [evans.JIPitch("fqs,,", "5/1", with_quarter_tones=True)]
            ),
            # lambda _: baca.text_spanner(
            #     _,
            #     r"norm. -> scr.",
            #     abjad.Tweak(r"\tweak staff-padding 5.5"),
            #     abjad.Tweak(r"\tweak bound-details.right.padding 2"),
            #     final_piece_spanner=r"\stopTextSpanOne",
            #     autodetect_right_padding=False,
            #     bookend=False,
            #     leak_spanner_stop=True,
            #     lilypond_id=2,
            #     # pieces=lambda _: abjad.select.partition_by_counts(abjad.select.logical_ties(_), [2, 3, 2, 1], cyclic=True, overhang=True),
            # ),
            # lambda _: baca.text_spanner(
            #     _,
            #     r"T -> P",
            #     abjad.Tweak(r"\tweak staff-padding 4.5"),
            #     abjad.Tweak(r"\tweak bound-details.right.padding 2"),
            #     final_piece_spanner=r"\stopTextSpanTwo",
            #     autodetect_right_padding=False,
            #     bookend=False,
            #     leak_spanner_stop=True,
            #     lilypond_id=2,
            #     # pieces=lambda _: abjad.select.partition_by_counts(abjad.select.logical_ties(_), [2, 3, 2, 1], cyclic=True, overhang=True),
            # ),
            evans.Attachment(
                abjad.Markup(r"\markup {scratch poco a poco}"),
                direction=abjad.UP,
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Markup(r"\markup {T->P poco a poco}"),
                direction=abjad.UP,
                selector=lambda _: abjad.select.note(_, 0),
            ),
            lambda _: baca.hairpin(_, "niente o< fff"),
            # # alu.B_color,
        ),
        # VIOLA
        # evans.MusicCommand(
        #     ("viola voice", alu.measure_numbers([_ for _ in range(1, 31)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=10, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([5, 6, 7, 8, 9])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[1, 4, 3, 2, 2, 2, 1, 2, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 10 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [11], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [11],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [11]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([10])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=68, rotation=-68, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Viola().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([11, 12, 13, 14, 15])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[1, 4, 3, 2, 2, 2, 1, 2, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 10 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [11], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [11],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [11]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([16, 17, 18, 19])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=69, rotation=-69, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Viola().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([20])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[1, 4, 3, 2, 2, 2, 1, 2, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 10 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [11], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [11],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [11]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([21])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=70, rotation=-70, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Viola().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([22, 23])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -24
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 24),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Viola().pitch_range,
                        rotation=-1,
                        random_seed=23,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=33),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([24, 25, 26, 27, 28])),
            evans.even_division(
                [16],
                extra_counts=[2, 3, 4, 2, 1],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[1, 4, 3, 2, 2, 2, 1, 2, 3, 2, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 10 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4]], [1, 2, -1, 3, -1]
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [11], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [11],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [11]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([29, 30])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=8,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=71, rotation=-71, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Viola().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([31, 32, 33, 34, 35])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -24
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 24),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_4,
                        instrument_range=abjad.Viola().pitch_range,
                        rotation=-2,
                        random_seed=24,
                        step_list=[2, 1, 1, 2, 1],
                        length=60,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=34),
            # # alu.B_color,
        ),
        # CELLO
        # evans.MusicCommand(
        #     ("cello voice", alu.measure_numbers([_ for _ in range(1, 23)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=11, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([6, 7, 8, 9, 10])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 4, 3, 2, 2, 2, 1, 2, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 15 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [12], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [12],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [12]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([11])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=72, rotation=-72, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Cello().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([12, 13, 14, 15, 16])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 4, 3, 2, 2, 2, 1, 2, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 15 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [12], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [12],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [12]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([17, 18, 19, 20])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=73, rotation=-73, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Cello().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([21])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 4, 3, 2, 2, 2, 1, 2, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 15 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [12], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [12],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [12]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([22])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=7,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=74, rotation=-74, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Cello().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([23, 24, 25])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 3, 4, 2],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 1, 4, 3, 2, 2, 2, 1, 2, 3, 2]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 15 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [12], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [12],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [12]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "cello voice",
                alu.measure_numbers([26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
            ),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        # BASS
        # evans.MusicCommand(
        #     ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 24)])),
        #     alu.exchanging_rhythms(number_of_voices=53, voice_number=12, extra_counts=[0, 1, 2, 1], basic_rest_period=16, rewrite=-1, preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None)),
        #     lambda _: alu.faberge_swells(_),
        #     # # alu.D_color,
        # ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([4, 5, 6, 7, 8])),
            evans.even_division(
                [16],
                extra_counts=[2, 1, 2, 3, 4],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 4, 3, 2, 2, 2, 1, 2, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 18 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1, 2]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [13], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [13],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [13]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([9, 10, 11, 12])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=6,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=75, rotation=-75, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Contrabass().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([13, 14, 15, 16, 17])),
            evans.even_division(
                [16],
                extra_counts=[2, 1, 2, 3, 4],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 4, 3, 2, 2, 2, 1, 2, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 18 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1, 2]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [13], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [13],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [13]),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([18, 19, 20, 21])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=6,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=76, rotation=-76, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Contrabass().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([22])),
            evans.even_division(
                [16],
                extra_counts=[2, 1, 2, 3, 4],
                preprocessor=evans.make_preprocessor(
                    eighths=True, fuse_counts=[2, 2, 1, 4, 3, 2, 2, 2, 1, 2, 3]
                ),
            ),
            # evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.loop(
                [_ - 18 for _ in [0, 1, 2, 1, 3, 2, 0, 4, 3, 2, 4, 1, 2]],
                [1, 2, -1, 3, -1],
            ),
            lambda _: [
                baca.slur(x)
                for x in abjad.select.partition_by_counts(
                    abjad.select.notes(_), [13], cyclic=True, overhang=True
                )
            ],
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [13],
                padding=2 + 3,
                id=1,
            ),
            evans.text_span([r"norm.", r"scr."], "=>", padding=4 + 3, id=2),
            evans.text_span([r"clt."], "=|", padding=6 + 3, id=3),
            evans.hairpin("p < f >", [13]),
            lambda _: abjad.detach(abjad.StartSlur(), abjad.select.note(_, -1)),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([23])),
            alu.exchanging_rhythms(
                number_of_voices=5,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=6,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=77, rotation=-77, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("up", "previous alteration", "octave below")),
                starting_range=abjad.Contrabass().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            (
                "contrabass voice",
                alu.measure_numbers([24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
            ),
            evans.make_tied_notes(),
            evans.PitchHandler(["b"]),
            lambda _: baca.hairpin(_, "ff -- niente"),
            # # alu.B_color,
        ),
        # SUFFIX
        evans.call(
            "Staff Group",
            evans.PitchHandler(
                final_pitch_sequence,
                chord_boolean_vector=[0, 0, 0]
                + sieve.get_boolean_vector(total_length=40),
                chord_groups=[3, 2, 3, 3, 2, 2, 2, 4, 2, 3, 2, 3, 2, 2, 2, 3],
                forget=False,
                to_ties=False,
            ),
            selector=evans.select_measures(
                logical_ties=True,
                voice_name_measure_pairs=[
                    ("piano 1 voice", [_ - 1 for _ in range(13, 36)]),
                    ("piano 2 voice", [_ - 1 for _ in range(13, 36)]),
                ],
            ),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                ([9, 10], evans.Lapidary("up", "previous alteration", "octave above")),
                (
                    [11, 12, 13, 14],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                (
                    [15, 16, 17],
                    evans.Lapidary("up", "previous alteration", "octave below"),
                ),
                ([20, 21], evans.Lapidary("up", "previous alteration", "octave above")),
                (
                    [24, 25, 26, 27],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [36, 37, 38],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [40, 41],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [44, 45, 46],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [51, 52, 53],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [59, 60, 61, 62],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [64, 65, 66],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [94, 95, 96],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [98, 99, 100],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [103, 104, 105],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [110, 111],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [114, 115, 116],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [124, 125, 126],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[C4, C8]"),
            ),
            evans.select_measures([_ - 1 for _ in range(13, 36)]),
        ),
        evans.call(
            "piano 2 voice",
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                (
                    [3, 4, 5],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [5, 6, 7],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [7, 8, 9],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [14, 15, 16, 17],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [23, 24, 25, 26],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [26, 27],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [32, 33],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [51, 52, 53, 54],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [56, 57],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [63, 64],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [77, 78, 79],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [84, 85],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [88, 89],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [96, 97, 98, 99],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                (
                    [121, 122, 123, 124],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [131, 132],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[A0, C4]"),
            ),
            evans.select_measures([_ - 1 for _ in range(13, 36)]),
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
    ],
    score_template=alu.score,
    transpose_from_sounding_pitch=True,
    transpose_first=True,
    color_out_of_range=False,
    time_signatures=alu.signatures_04,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="04",
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
