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

# def note_swells(selections):
#     notes = abjad.select.notes(selections)
#     cyc_dyns = evans.CyclicList(["pp", "p", "mp", "mf", "f"], forget=False)
#     hit_f = False
#     first_notes = notes[:-1]
#     for i, note in enumerate(first_notes):
#         if i % 2 == 0:
#             if hit_f is False:
#                 dyn = cyc_dyns(r=1)[0]
#             else:
#                 dyn = "f"
#             if dyn == "f":
#                 hit_f = True
#             abjad.attach(abjad.Dynamic(dyn), note)
#             abjad.attach(abjad.StartHairpin("<"), note)
#         else:
#             abjad.attach(abjad.Dynamic("ff"), note)
#             abjad.attach(abjad.StartHairpin(">"), note)
#         abjad.detach(abjad.get.indicator(notes[-1], abjad.StartHairpin), notes[-1])
#         abjad.attach(abjad.StartHairpin(">o"), notes[-2])
#         abjad.attach(abjad.StopHairpin(), notes[-1])


def get_tuplets(selections, abjad_index):
    leaves = abjad.select.leaves(selections)
    top_level = evans.get_top_level_components_from_leaves(leaves)
    tuplets = abjad.select.tuplets(top_level)
    return abjad.select.get(tuplets, abjad_index)


def treat_tuplets(container):
    command_target = abjad.select.tuplets(container)
    rmakers.trivialize(command_target)
    command_target = abjad.select.tuplets(container)
    rmakers.rewrite_rest_filled(command_target)
    command_target = abjad.select.tuplets(container)
    rmakers.rewrite_sustained(command_target)
    rmakers.extract_trivial(container)


def note_swells(selections):
    notes = abjad.select.notes(selections)
    hairpins = cyc_dyns = evans.CyclicList(["<", ">"], forget=False)
    cyc_dyns = evans.CyclicList(
        [
            "pp",
            "mp",
            "p",
            "mf",
            "mp",
            "f",
            "mf",
            "ff",
            "mp",
            "ff",
            "p",
            "ff",
            "pp",
            "ff",
        ],
        forget=False,
    )
    vamp = evans.CyclicList(["p", "ff"], forget=False)
    first_notes = notes[:-1]
    for i, note in enumerate(first_notes):
        if 13 < i:
            dyn = abjad.Dynamic(vamp(r=1)[0])
        else:
            dyn = abjad.Dynamic(cyc_dyns(r=1)[0])
        pin = abjad.StartHairpin(hairpins(r=1)[0])
        abjad.attach(dyn, note)
        abjad.attach(pin, note)
    abjad.detach(abjad.get.indicator(notes[-1], abjad.StartHairpin), notes[-1])
    abjad.attach(abjad.StartHairpin(">o"), notes[-2])
    abjad.attach(abjad.StopHairpin(), notes[-1])


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
    fermata_measures=alu.fermata_measures_12,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=29),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=30),
            lambda _: abjad.select.leaf(_, 5),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=31),
            lambda _: abjad.select.leaf(_, 15),
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
        evans.attach(
            "percussion 1 voice",
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            lambda _: abjad.select.leaf(_, 0),
        ),
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
        evans.attach(
            "percussion 2 voice",
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            lambda _: abjad.select.leaf(_, 0),
        ),
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
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 12)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Flute().pitch_range,
                    rotation=0,
                    random_seed=0,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(12, 17)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(34),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-34),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([1, 5, 6, 9], 10)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 3, 24 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=34, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(34)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(34)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=0, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(17, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Flute().pitch_range,
                    rotation=1,
                    random_seed=1,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Oboe().pitch_range,
                    rotation=3,
                    random_seed=3,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(13, 27)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(35),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-35),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([2, 6, 7, 10], 11)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 4, 24 + 4)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=35, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(35)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(35)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=1, niente=False),
            # alu.H_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 11)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.BassClarinet().pitch_range,
                    rotation=4,
                    random_seed=4,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(11, 18)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(36),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-36),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([3, 7, 8, 11], 12)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 5, 24 - 5)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=36, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(36)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(36)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=2, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(18, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.BassClarinet().pitch_range,
                    rotation=5,
                    random_seed=5,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 10)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Bassoon().pitch_range,
                    rotation=3,
                    random_seed=6,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(10, 23)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(37),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-37),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([4, 8, 9, 12], 13)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6, 24 - 6)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=37, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(37)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(37)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=3, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(23, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Bassoon().pitch_range,
                    rotation=4,
                    random_seed=7,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(1, 8)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.FrenchHorn().pitch_range,
                    rotation=3,
                    random_seed=8,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(8, 16)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(38),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-38),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([5, 9, 10, 13], 14)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 7, 24 - 7)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=38, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(38)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(38)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=4, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(16, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.FrenchHorn().pitch_range,
                    rotation=4,
                    random_seed=9,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(1, 9)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Trumpet().pitch_range,
                    rotation=10,
                    random_seed=10,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(9, 26)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(39),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-39),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([4, 8, 9, 12], 13)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 8, 24 + 8)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=39, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(39)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(39)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=5, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(26, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Trumpet().pitch_range,
                    rotation=11,
                    random_seed=11,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.TenorTrombone().pitch_range,
                    rotation=13,
                    random_seed=13,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(7, 20)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(40),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-40),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([3, 7, 8, 11], 12)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 9, 24 - 9)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=40, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(40)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(40)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=6, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(20, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.TenorTrombone().pitch_range,
                    rotation=14,
                    random_seed=14,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(1, 6)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Tuba().pitch_range,
                    rotation=15,
                    random_seed=15,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(6, 15)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(41),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-41),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([2, 6, 7, 10], 11)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 10, 24 - 10)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=41, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(41)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(41)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=7, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(15, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Tuba().pitch_range,
                    rotation=16,
                    random_seed=16,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(7, 15)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(42),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-42),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([1, 5, 6, 9], 10)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([-3, -1, 1, 3]).mirror(sequential_duplicates=False).random_walk(random_seed=42, step_list=[1], length=1000).remove_repeats().stutter(counts=evans.Sequence([_ + 2 for _ in range(6)]).rotate(42).josephus(0).flatten()),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(42)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=8, niente=False),
            abjad.Markup(r"\boxed-markup woodblocks #1"),
            # alu.H_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(7, 21)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(43),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-43),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([0, 4, 5, 8], 9)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([-3, -1, 1, 3]).mirror(sequential_duplicates=False).random_walk(random_seed=43, step_list=[1], length=1000).remove_repeats().stutter(counts=evans.Sequence([_ + 2 for _ in range(6)]).rotate(43).josephus(0).flatten()),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(43)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=9, niente=False),
            # alu.H_color,
            abjad.Markup(r'\boxed-markup "slit drum" #1'),
        ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.note(
                rewrite=-1,
                pre_commands=[
                    lambda _: rmakers.force_rest(abjad.select.get(abjad.select.logical_ties(_), ~abjad.index([0], 2))),
                ],
            ),
            abjad.Dynamic("mf"),
        ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([_ for _ in range(7, 13)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(44),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-44),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([1, 5, 6, 9], 10)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 11, 24 + 11)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=44, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(44)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(44)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=10, niente=False),
            # alu.H_color,
        ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.note(
                rewrite=-1,
                pre_commands=[
                    lambda _: rmakers.force_rest(abjad.select.get(abjad.select.logical_ties(_), ~abjad.index([0], 2))),
                ],
            ),
            # evans.PitchHandler(
            #     [
            #         ["c,", "e,", "g,"],
            #     ],
            # ),
            abjad.Dynamic("mf"),
        ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([_ for _ in range(7, 16)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(45),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-45),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([2, 6, 7, 10], 11)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 12, 24 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=45, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(45)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(45)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=11, niente=False),
            # alu.H_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=17,
                    random_seed=17,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(7, 12)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(46),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-46),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([3, 7, 8, 11], 12)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 13, 24 + 13)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=46, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(46)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(46)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=12, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(12, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=18,
                    random_seed=18,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 9)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=19,
                    random_seed=19,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(9, 21)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(47),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-47),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([4, 8, 9, 12], 13)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 14, 24 + 14)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=47, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(47)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(47)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=13, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(21, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=20,
                    random_seed=20,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(1, 10)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Viola().pitch_range,
                    rotation=21,
                    random_seed=21,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(10, 13)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(48),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-48),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([5, 9, 10, 13], 14)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0, 24)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=48, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(48)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(48)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=14, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(13, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Viola().pitch_range,
                    rotation=22,
                    random_seed=22,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(1, 12)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Cello().pitch_range,
                    rotation=3,
                    random_seed=23,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(12, 20)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(49),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-49),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([6, 10, 11, 14], 15)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 15, 24 - 15)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=49, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(49)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(49)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=15, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(20, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Cello().pitch_range,
                    rotation=4,
                    random_seed=24,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 11)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_1,
                    instrument_range=abjad.Contrabass().pitch_range,
                    rotation=10,
                    random_seed=25,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(11, 17)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(50),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-50),
                    # split_at_measure_boundaries=True,
                ),
                treat_tuplets=False,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_),
                    abjad.index(
                        [
                            1,
                            1 + 5,
                            1 + 5 + 7,
                            1 + 5 + 7 + 11,
                            1 + 5 + 7 + 11 + 9,
                            1 + 5 + 7 + 11 + 9 + 6,
                        ],
                        1 + 5 + 7 + 11 + 9 + 6 + 1,
                    ),
                ),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: get_tuplets(_, abjad.index([7, 11, 12, 15], 16)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 16, 24 - 16)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=50, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(50)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(50)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=16, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(17, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_2,
                    instrument_range=abjad.Contrabass().pitch_range,
                    rotation=11,
                    random_seed=26,
                    length=0,
                )[0:1],
            ),
            lambda _: note_swells(_),
            # alu.A_color,
        ),
        # SUFFIX
        evans.call(
            "Staff Group",
            evans.PitchHandler(
                final_pitch_sequence.rotate(20),
                chord_boolean_vector=[1,],
                chord_groups=[3, 3, 2, 3, 3, 2, 2, 2, 4, 2, 3, 2, 3, 2, 2, 2],
                forget=False,
                to_ties=False,
            ),
            selector=evans.select_measures(
                logical_ties=True,
                voice_name_measure_pairs=[
                    ("piano 1 voice", [_ - 1 for _ in range(1, 7)]),
                    ("piano 2 voice", [_ - 1 for _ in range(1, 7)]),
                ],
            ),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, C8]"),
            ),
            evans.select_measures([_ - 1 for _ in range(1, 7)]),
        ),
        evans.call(
            "piano 2 voice",
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[A0, C4]"),
            ),
            evans.select_measures([_ - 1 for _ in range(1, 7)]),
        ),
        evans.attach(
            "Global Context",
            alu.mod_105_87,
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
    ],
    score_template=alu.score,
    transpose_from_sounding_pitch=True,
    transpose_first=True,
    color_out_of_range=False,
    time_signatures=alu.signatures_12,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="12",
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
