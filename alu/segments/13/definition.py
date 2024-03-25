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
    fermata_measures=alu.fermata_measures_13,
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
            ("flute voice", alu.measure_numbers([2, 3])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(34),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-34),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=17, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(35),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-35),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 3, 24 + 3)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=18, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([10, 11])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(36),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-36),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 3, 24 + 3)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=19, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([24]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([34]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([2, 3])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(37),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-37),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 4, 24 + 4)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=20, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(38),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-38),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 4, 24 + 4)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=21, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([10, 11])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(39),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-39),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 + 4, 24 + 4)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=22, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([17]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([2, 3])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(40),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-40),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 5, 24 - 5)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=23, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(41),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-41),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 5, 24 - 5)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=24, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([10, 11])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(42),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-42),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 5, 24 - 5)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=42, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(42)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(42)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=25, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-4]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-5]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([2, 3])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(43),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-43),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6, 24 - 6)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=43, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(43)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(43)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=26, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(44),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-44),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6, 24 - 6)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=27, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([10, 11])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(45),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-45),
                    split_at_measure_boundaries=True,
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
                selector=lambda _: alu.get_tuplets(_),
            ),
            lambda _: evans.treat_tuplets(alu.get_all_tuplets(_)),
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(0 - 6, 24 - 6)])
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
                padding=4,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, random_seed=28, niente=False),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-4]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-5]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([7, 8, 9])),
            evans.accelerando(
                [(1, 8), (1, 4), (1, 16)],
                preprocessor=evans.make_preprocessor(fuse_counts=[2, 1, 1, 3, 2]),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
                ),
            ),
            evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            abjad.Dynamic("mf"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            abjad.Markup(r"\boxed-markup woodblocks #1"),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([11, 12])),
            evans.accelerando(
                [(1, 8), (1, 4), (1, 16)],
                preprocessor=evans.make_preprocessor(fuse_counts=[1, 1, 3, 2, 2]),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
                ),
            ),
            evans.PitchHandler([-3, -1, 1, -1, 1, 3, -1, 1], staff_positions=True),
            abjad.Dynamic("mf"),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([20, 21])),
            evans.accelerando(
                [(1, 8), (1, 4), (1, 16)],
                preprocessor=evans.make_preprocessor(fuse_counts=[1, 3, 2, 2, 1]),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
                ),
            ),
            evans.PitchHandler([1, -3, -1, 1, -1, 1, 3, -1], staff_positions=True),
            abjad.Dynamic("mf"),
            # alu.A_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([7, 8, 9])),
            evans.accelerando(
                [(1, 4), (1, 8), (1, 16)],
                [(1, 9), (1, 3), (1, 16)],
                # preprocessor=None,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), ~abjad.index([0, 2, 3, 4, 5, 6, 7, 10], 11)
                ),
            ),
            evans.PitchHandler(
                abjad.sequence.reverse([-1, 1, -1, 1, 3, -1, 1, -3]),
                staff_positions=True,
            ),
            abjad.Dynamic("mf"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            abjad.Markup(r'\boxed-markup "slit drum" #1'),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([11, 12])),
            evans.accelerando(
                [(1, 4), (1, 8), (1, 16)],
                [(1, 9), (1, 3), (1, 16)],
                # preprocessor=None,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
                ),
            ),
            evans.PitchHandler(
                abjad.sequence.reverse([-3, -1, 1, -1, 1, 3, -1, 1]),
                staff_positions=True,
            ),
            abjad.Dynamic("mf"),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([20, 21])),
            evans.accelerando(
                [(1, 4), (1, 8), (1, 16)],
                [(1, 9), (1, 3), (1, 16)],
                # preprocessor=None,
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
                ),
            ),
            evans.PitchHandler(
                abjad.sequence.reverse([1, -3, -1, 1, -1, 1, 3, -1]),
                staff_positions=True,
            ),
            abjad.Dynamic("mf"),
            # alu.A_color,
        ),
        # PIANO 1
        # PIANO 2
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([1])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([7 - 10 + 1], [1, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([4])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([7 - 10 + 1], [1, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([13])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([7 - 10 + 1], [1, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([24]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([15])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([7 - 10 + 1], [1, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([23]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([17, 18, 19])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([7 - 10 + 1], [1, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([1])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1)]),
            evans.loop([6.5 - 10], [0.5, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([4])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1)]),
            evans.loop([6.5 - 10], [0.5, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([13])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1)]),
            evans.loop([6.5 - 10], [0.5, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([17]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([15])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1)]),
            evans.loop([6.5 - 10], [0.5, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([17, 18, 19])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1)]),
            evans.loop([6.5 - 10], [0.5, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([1])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1)]),
            evans.loop([6 - 10], [0, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([4])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1)]),
            evans.loop([6 - 10], [0, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([13])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1)]),
            evans.loop([6 - 10], [0, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-4]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([15])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1)]),
            evans.loop([6 - 10], [0, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-5]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([17, 18, 19])),
            evans.tuplet([(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1)]),
            evans.loop([6 - 10], [0, -0.5, 1]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([1])),
            evans.tuplet(
                [(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1), (3, 2, 1)]
            ),
            evans.loop([5.5 - 10], [-1, -0.5, 1, -0.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([4])),
            evans.tuplet(
                [(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1), (3, 2, 1)]
            ),
            evans.loop([5.5 - 10], [-1, -0.5, 1, -0.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([13])),
            evans.tuplet(
                [(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1), (3, 2, 1)]
            ),
            evans.loop([5.5 - 10], [-1, -0.5, 1, -0.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([15])),
            evans.tuplet(
                [(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1), (3, 2, 1)]
            ),
            evans.loop([5.5 - 10], [-1, -0.5, 1, -0.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([17, 18, 19])),
            evans.tuplet(
                [(2, 1, 1), (2, 1, 1), (1, 1, 1), (2, 1, 1), (3, 1, 1), (3, 2, 1)]
            ),
            evans.loop([5.5 - 10], [-1, -0.5, 1, -0.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([1])),
            evans.tuplet(
                [
                    (2, 1, 1),
                    (2, 1, 1),
                    (1, 1, 1),
                    (2, 1, 1),
                    (3, 1, 1),
                    (3, 2, 1),
                    (4, 2, 1),
                ]
            ),
            evans.loop([5 - 10], [-1, -1.5, 1, -1.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([4])),
            evans.tuplet(
                [
                    (2, 1, 1),
                    (2, 1, 1),
                    (1, 1, 1),
                    (2, 1, 1),
                    (3, 1, 1),
                    (3, 2, 1),
                    (4, 2, 1),
                ]
            ),
            evans.loop([5 - 10], [-1, -1.5, 1, -1.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([13])),
            evans.tuplet(
                [
                    (2, 1, 1),
                    (2, 1, 1),
                    (1, 1, 1),
                    (2, 1, 1),
                    (3, 1, 1),
                    (3, 2, 1),
                    (4, 2, 1),
                ]
            ),
            evans.loop([5 - 10], [-1, -1.5, 1, -1.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-22]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([15])),
            evans.tuplet(
                [
                    (2, 1, 1),
                    (2, 1, 1),
                    (1, 1, 1),
                    (2, 1, 1),
                    (3, 1, 1),
                    (3, 2, 1),
                    (4, 2, 1),
                ]
            ),
            evans.loop([5 - 10], [-1, -1.5, 1, -1.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-32]),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([17, 18, 19])),
            evans.tuplet(
                [
                    (2, 1, 1),
                    (2, 1, 1),
                    (1, 1, 1),
                    (2, 1, 1),
                    (3, 1, 1),
                    (3, 2, 1),
                    (4, 2, 1),
                ]
            ),
            evans.loop([5 - 10], [-1, -1.5, 1, -1.5]),
            lambda _: abjad.glissando(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "p < ff"),
            # alu.G_color,
        ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.mod_87_70,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.met_70,
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
    time_signatures=alu.signatures_13,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="13",
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
