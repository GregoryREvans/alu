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
    fermata_measures=alu.fermata_measures_14,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=34),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=35),
            lambda _: abjad.select.leaf(_, 14),
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
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 25-10)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
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
                selector=lambda _: get_tuplets(_, abjad.index([1, 3, 4], 7)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 6, 24 + 6)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(25-10, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(46)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 6, 24 + 6)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=46, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(1, 25-11)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
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
                selector=lambda _: get_tuplets(_, abjad.index([2, 4, 5], 8)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 5, 24 + 5)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(25-11, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(47)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 5, 24 + 5)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=47, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 25-12)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
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
                selector=lambda _: get_tuplets(_, abjad.index([3, 5, 6], 9)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 4 - 12, 24 + 4 - 12)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(25-12, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(48)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 4 - 12, 24 + 4 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=48, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 25-13)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
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
                selector=lambda _: get_tuplets(_, abjad.index([4, 6, 7], 10)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 3 - 12, 24 + 3 - 12)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(25-13, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(49)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 3 - 12, 24 + 3 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=49, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            # evans.even_division(
            #     [16],
            #     extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
            #     .mirror(sequential_duplicates=False)
            #     .rotate(50),
            #     preprocessor=evans.make_preprocessor(
            #         quarters=True,
            #         # fuse_counts=evans.Sequence(
            #         #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
            #         # ).rotate(-50),
            #         # split_at_measure_boundaries=True,
            #     ),
            #     treat_tuplets=False,
            # ),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(50)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: abjad.select.get(
            #         abjad.select.notes(_),
            #         abjad.index(
            #             [
            #                 1,
            #                 1 + 5,
            #                 1 + 5 + 7,
            #                 1 + 5 + 7 + 11,
            #                 1 + 5 + 7 + 11 + 9,
            #                 1 + 5 + 7 + 11 + 9 + 6,
            #             ],
            #             1 + 5 + 7 + 11 + 9 + 6 + 1,
            #         ),
            #     ),
            # ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: get_tuplets(_, abjad.index([5, 7, 8], 11)),
            # ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 2 - 12, 24 + 2 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=50, step_list=[1], length=1000)
                .remove_repeats()
                # .stutter(
                #     counts=evans.Sequence([_ + 2 for _ in range(6)])
                #     .rotate(50)
                #     .josephus(0)
                #     .flatten()
                # )
            ),
            # lambda _: alu.add_brackets(
            #     _,
            #     partitions=evans.Sequence([_ + 2 for _ in range(6)])
            #     .rotate(50)
            #     .josephus(0)
            #     .flatten(),
            #     hide_heads=True,
            #     padding=4,
            #     direction="DOWN",
            #     label=True,
            # ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            # evans.even_division(
            #     [16],
            #     extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
            #     .mirror(sequential_duplicates=False)
            #     .rotate(51),
            #     preprocessor=evans.make_preprocessor(
            #         quarters=True,
            #         # fuse_counts=evans.Sequence(
            #         #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
            #         # ).rotate(-51),
            #         # split_at_measure_boundaries=True,
            #     ),
            #     treat_tuplets=False,
            # ),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(51)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: abjad.select.get(
            #         abjad.select.notes(_),
            #         abjad.index(
            #             [
            #                 1,
            #                 1 + 5,
            #                 1 + 5 + 7,
            #                 1 + 5 + 7 + 11,
            #                 1 + 5 + 7 + 11 + 9,
            #                 1 + 5 + 7 + 11 + 9 + 6,
            #             ],
            #             1 + 5 + 7 + 11 + 9 + 6 + 1,
            #         ),
            #     ),
            # ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: get_tuplets(_, abjad.index([6, 8, 9], 12)),
            # ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 1 - 0, 24 + 1 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=51, step_list=[1], length=1000)
                .remove_repeats()
                # .stutter(
                #     counts=evans.Sequence([_ + 2 for _ in range(6)])
                #     .rotate(51)
                #     .josephus(0)
                #     .flatten()
                # )
            ),
            # lambda _: alu.add_brackets(
            #     _,
            #     partitions=evans.Sequence([_ + 2 for _ in range(6)])
            #     .rotate(51)
            #     .josephus(0)
            #     .flatten(),
            #     hide_heads=True,
            #     padding=4,
            #     direction="DOWN",
            #     label=True,
            # ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            # evans.even_division(
            #     [16],
            #     extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
            #     .mirror(sequential_duplicates=False)
            #     .rotate(52),
            #     preprocessor=evans.make_preprocessor(
            #         quarters=True,
            #         # fuse_counts=evans.Sequence(
            #         #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
            #         # ).rotate(-52),
            #         # split_at_measure_boundaries=True,
            #     ),
            #     treat_tuplets=False,
            # ),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(52)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: abjad.select.get(
            #         abjad.select.notes(_),
            #         abjad.index(
            #             [
            #                 1,
            #                 1 + 5,
            #                 1 + 5 + 7,
            #                 1 + 5 + 7 + 11,
            #                 1 + 5 + 7 + 11 + 9,
            #                 1 + 5 + 7 + 11 + 9 + 6,
            #             ],
            #             1 + 5 + 7 + 11 + 9 + 6 + 1,
            #         ),
            #     ),
            # ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: get_tuplets(_, abjad.index([5, 7, 8], 11)),
            # ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 0 - 12, 24 + 0 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=52, step_list=[1], length=1000)
                .remove_repeats()
                # .stutter(
                #     counts=evans.Sequence([_ + 2 for _ in range(6)])
                #     .rotate(52)
                #     .josephus(0)
                #     .flatten()
                # )
            ),
            # lambda _: alu.add_brackets(
            #     _,
            #     partitions=evans.Sequence([_ + 2 for _ in range(6)])
            #     .rotate(52)
            #     .josephus(0)
            #     .flatten(),
            #     hide_heads=True,
            #     padding=4,
            #     direction="DOWN",
            #     label=True,
            # ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(1, 25)])),
            # evans.even_division(
            #     [16],
            #     extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
            #     .mirror(sequential_duplicates=False)
            #     .rotate(53),
            #     preprocessor=evans.make_preprocessor(
            #         quarters=True,
            #         # fuse_counts=evans.Sequence(
            #         #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
            #         # ).rotate(-53),
            #         # split_at_measure_boundaries=True,
            #     ),
            #     treat_tuplets=False,
            # ),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(53)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: abjad.select.get(
            #         abjad.select.notes(_),
            #         abjad.index(
            #             [
            #                 1,
            #                 1 + 5,
            #                 1 + 5 + 7,
            #                 1 + 5 + 7 + 11,
            #                 1 + 5 + 7 + 11 + 9,
            #                 1 + 5 + 7 + 11 + 9 + 6,
            #             ],
            #             1 + 5 + 7 + 11 + 9 + 6 + 1,
            #         ),
            #     ),
            # ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: get_tuplets(_, abjad.index([4, 6, 7], 10)),
            # ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 1 - 12, 24 - 1 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=53, step_list=[1], length=1000)
                .remove_repeats()
                # .stutter(
                #     counts=evans.Sequence([_ + 2 for _ in range(6)])
                #     .rotate(53)
                #     .josephus(0)
                #     .flatten()
                # )
            ),
            # lambda _: alu.add_brackets(
            #     _,
            #     partitions=evans.Sequence([_ + 2 for _ in range(6)])
            #     .rotate(53)
            #     .josephus(0)
            #     .flatten(),
            #     hide_heads=True,
            #     padding=4,
            #     direction="DOWN",
            #     label=True,
            # ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # # PERCUSSION 1
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
        #     evans.make_tied_notes(),
        #     # alu.H_color,
        # ),
        # # PERCUSSION 2
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([_ for _ in range(1, 25)])),
        #     evans.make_tied_notes(),
        #     # alu.H_color,
        # ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([_ for _ in range(25-8, 25)])),
            evans.note(
                rewrite=-1,
                pre_commands=[
                    lambda _: rmakers.force_rest(abjad.select.get(abjad.select.logical_ties(_), ~abjad.index([0], 2))),
                ],
            ),
            abjad.Dynamic("mf"),
            # alu.H_color,
        ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([_ for _ in range(25-8, 25)])),
            evans.note(
                rewrite=-1,
                pre_commands=[
                    lambda _: rmakers.force_rest(abjad.select.get(abjad.select.logical_ties(_), ~abjad.index([0], 2))),
                ],
            ),
            abjad.Dynamic("mf"),
            # alu.H_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 25-18)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(54),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-54),
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
                selector=lambda _: get_tuplets(_, abjad.index([3, 5, 6], 9)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 2 - 0, 24 - 2 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=54, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(54)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(54)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(25-18, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(54)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 2 - 0, 24 - 2 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=54, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 25-17)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(55),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-55),
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
                selector=lambda _: get_tuplets(_, abjad.index([2, 4, 5], 8)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 3 - 0, 24 - 3 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=55, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(55)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(55)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(25-17, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(55)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 3 - 0, 24 - 3 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=55, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(1, 25-16)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(56),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-56),
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
                selector=lambda _: get_tuplets(_, abjad.index([1, 3, 4], 7)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 4 - 0, 24 - 4 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=56, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(56)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(56)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(25-16, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(56)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 4 - 0, 24 - 4 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=56, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(1, 25-15)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(57),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-57),
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
                selector=lambda _: get_tuplets(_, abjad.index([2, 4, 5], 8)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 5 - 12, 24 - 5 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=57, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(57)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(57)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(25-15, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(57)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 5 - 12, 24 - 5 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=57, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 25-14)])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(58),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-58),
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
                selector=lambda _: get_tuplets(_, abjad.index([3, 5, 6], 9)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6 - 12, 24 - 6 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=58, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(58)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(58)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(25-14, 25)])),
            evans.talea(
                evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(58)
                .josephus(0)
                .flatten(),
                8,
                rewrite=-1,
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6 - 12, 24 - 6 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=58, step_list=[1], length=1000)
                .remove_repeats()
            ),
            lambda _: baca.hairpin(_, "pp < fff"),
            evans.Attachment(
                abjad.Markup(r'\markup "cresc poco a poco (a ff)"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.H_color,
        ),
        # SUFFIX
        evans.call(
            "Staff Group",
            evans.PitchHandler(
                final_pitch_sequence.rotate(30),
                chord_boolean_vector=[1,],
                chord_groups=[3, 3, 4, 3, 3, 2, 2, 2, 4, 2, 3, 2, 3, 2, 2, 2],
                forget=False,
                to_ties=False,
            ),
            selector=evans.select_measures(
                logical_ties=True,
                voice_name_measure_pairs=[
                    ("piano 1 voice", [_ - 1 for _ in range(25-8, 25)]),
                    ("piano 2 voice", [_ - 1 for _ in range(25-8, 25)]),
                ],
            ),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, C8]"),
            ),
            evans.select_measures([_ - 1 for _ in range(25-8, 25)]),
        ),
        evans.call(
            "piano 2 voice",
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[A0, C4]"),
            ),
            evans.select_measures([_ - 1 for _ in range(25-8, 25)]),
        ),
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
    time_signatures=alu.signatures_14,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="14",
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
