import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu


def treat_tuplets(container):
    command_target = abjad.select.tuplets(container)
    rmakers.trivialize(command_target)
    command_target = abjad.select.tuplets(container)
    rmakers.rewrite_rest_filled(command_target)
    command_target = abjad.select.tuplets(container)
    rmakers.rewrite_sustained(command_target)
    rmakers.extract_trivial(container)


def get_tuplets(selections, abjad_index):
    leaves = abjad.select.leaves(selections)
    top_level = evans.get_top_level_components_from_leaves(leaves)
    tuplets = abjad.select.tuplets(top_level)
    return abjad.select.get(tuplets, abjad_index)


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
    fermata_measures=alu.fermata_measures_10,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=24),
            lambda _: abjad.select.leaf(_, 0),
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
            ("flute voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(0),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(0),
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
                selector=lambda _: get_tuplets(_, abjad.index([0, 5, 9], 10)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 0, 24 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=0, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(0)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(0)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([39 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(1),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-1),
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
                selector=lambda _: get_tuplets(_, abjad.index([1, 6, 10], 11)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - -1, 24 - -1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=1, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(1)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(1)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([37 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(2),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-2),
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
                selector=lambda _: get_tuplets(_, abjad.index([2, 7, 11], 12)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 12, 24 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=2, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(2)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(2)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([7 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(3),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-3),
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
                selector=lambda _: get_tuplets(_, abjad.index([3, 8, 12], 13)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 13, 24 - 13)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=3, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(3)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(3)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([4 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(4),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-4),
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
                selector=lambda _: get_tuplets(_, abjad.index([4, 9, 13], 14)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 14, 24 - 14)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=4, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(4)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(4)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([-2 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(5),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-5),
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
                selector=lambda _: get_tuplets(_, abjad.index([5, 10, 14], 15)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 2, 24 - 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=5, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(5)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(5)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([5 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(6),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-6),
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
                selector=lambda _: get_tuplets(_, abjad.index([6, 11, 15], 16)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 16, 24 - 16)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=6, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(6)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(6)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([-13 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(7),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-7),
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
                selector=lambda _: get_tuplets(_, abjad.index([7, 12, 16], 17)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 18, 24 - 18)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=7, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(7)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(7)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(8),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-8),
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
                selector=lambda _: get_tuplets(_, abjad.index([8, 13, 17], 18)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=8, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(8)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([4])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(9),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-9),
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
                selector=lambda _: get_tuplets(_, abjad.index([7, 12, 16], 17)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=9, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(9)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([4])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(10),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-10),
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
                selector=lambda _: get_tuplets(_, abjad.index([6, 11, 15], 16)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - -7, 24 - -7)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=8, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(8)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(8)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([4])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(11),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-11),
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
                selector=lambda _: get_tuplets(_, abjad.index([5, 10, 14], 15)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 9, 24 - 9)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=9, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(9)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(9)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([4])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(12),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-12),
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
                selector=lambda _: get_tuplets(_, abjad.index([4, 9, 13], 14)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - -9, 24 - -9)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=10, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(10)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(10)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([[_ + 4 - 12 for _ in [32, 37]]]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.chord(_, -1),
            ),
            # alu.B_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(13),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-13),
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
                selector=lambda _: get_tuplets(_, abjad.index([3, 8, 12], 13)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - -6, 24 - -6)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=11, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(11)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(11)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([[_ + 4 - 12 for _ in [18, 26]]]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.chord(_, -1),
            ),
            # alu.B_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(14),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-14),
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
                selector=lambda _: get_tuplets(_, abjad.index([2, 7, 11], 12)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6, 24 - 6)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=12, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(12)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(12)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([[_ + 4 - 12 for _ in [7, 18]]]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(-2),
                selector=lambda _: abjad.select.chord(_, -1),
            ),
            # alu.B_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(15),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-15),
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
                selector=lambda _: get_tuplets(_, abjad.index([1, 6, 10], 11)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 16, 24 - 16)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=13, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(13)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(13)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([[_ + 4 - 12 for _ in [-15]]]),
            abjad.Dynamic("mf"),
            # evans.Attachment(
            #     abjad.BendAfter(2),
            #     selector=lambda _: abjad.select.note(_, -1),
            # ),
            evans.BendHandler([2]),
            # alu.B_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([1, 2, 3])),
            evans.even_division(
                [16],
                extra_counts=evans.Sequence([0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(16),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    # fuse_counts=evans.Sequence(
                    #     [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    # ).rotate(-16),
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
                selector=lambda _: get_tuplets(_, abjad.index([1, 6, 10], 11)),
            ),
            lambda _: treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 21, 24 - 21)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=14, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(14)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(14)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([4])),
            evans.make_tied_notes(),
            evans.PitchHandler([-24 + 4 - 12]),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.BendAfter(2),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.B_color,
        ),
        ###
        # evans.attach(
        #     "contrabass voice",
        #     abjad.Clef("bass"),
        #     selector=lambda _: abjad.select.note(_, 0),
        # ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.mod_105_122,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.met_122,
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
    time_signatures=alu.signatures_10,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="10",
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
