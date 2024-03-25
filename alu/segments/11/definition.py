import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu


def dynamic_runs(selections, rotation, percussion=False):
    sequence = abjad.sequence.rotate(
        [
            "p < f",
            "pp <| f",
            "sfp -- niente",
            "mp > p",
            "mp < mf",
            "fff |> p",
            "ff -- niente",
            "mf < f",
            "mp < f",
            "p <| f",
            "f > ppp",
            "f > pp",
            "f > p",
            "f > mf",
            "f -- niente",
        ],
        rotation,
    )
    cyc_seq = evans.CyclicList([_ for _ in sequence], forget=False)
    runs = abjad.select.runs(selections)
    for run in runs:
        trajectory = cyc_seq(r=1)[0]
        itemized = trajectory.split()
        abjad.attach(abjad.Dynamic(itemized[0]), abjad.select.leaf(run, 0))
        abjad.attach(abjad.StartHairpin(itemized[1]), abjad.select.leaf(run, 0))
        if itemized[2] == "niente":
            if percussion is False:
                abjad.attach(
                    abjad.StopHairpin(), abjad.get.leaf(abjad.select.leaf(run, -1), 1)
                )
            else:
                if 1 < len(run):
                    abjad.attach(abjad.StopHairpin(), abjad.select.leaf(run, -1))
                else:
                    abjad.detach(
                        abjad.StartHairpin(itemized[1]), abjad.select.leaf(run, 0)
                    )
        else:
            if percussion is False:
                abjad.attach(
                    abjad.Dynamic(itemized[2]),
                    abjad.get.leaf(abjad.select.leaf(run, -1), 1),
                )
            else:
                if 1 < len(run):
                    abjad.attach(abjad.Dynamic(itemized[2]), abjad.select.leaf(run, -1))
                else:
                    abjad.detach(
                        abjad.StartHairpin(itemized[1]), abjad.select.leaf(run, 0)
                    )
        if 1 < len(run):
            abjad.slur(run)


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
    fermata_measures=alu.fermata_measures_11,
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
        # MUSIC !
        # FLUTE
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([1, 2, 3, 4, 5, 6])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(17),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-17),
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
                evans.Sequence([_ for _ in range(0 - 0, 24 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=17, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(17)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(17)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("flute voice", alu.measure_numbers([10, 11, 12])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(17),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-17),
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
                evans.Sequence([_ for _ in range(0 + 1, 24 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=17, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(17)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(17)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([13, 14])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=0, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([15, 16, 17, 18])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(17),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-17),
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
                evans.Sequence([_ for _ in range(0 + 2, 24 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=17, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(17)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(17)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([19, 20, 21, 22, 23, 24, 25, 26, 27])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=0, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([28, 29, 30, 31])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(17),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-17),
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
                .random_walk(random_seed=17, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(17)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(17)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([32, 33, 34, 35, 36])),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=0, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C6, B6]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(18),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-18),
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
                evans.Sequence([_ for _ in range(0 - 1, 24 - 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=18, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(18)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(18)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("oboe voice", alu.measure_numbers([10, 11, 12])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(18),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-18),
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
                evans.Sequence([_ for _ in range(0 - 0, 24 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=18, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(18)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(18)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([13, 14])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=2, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([15, 16, 17, 18])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(18),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-18),
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
                evans.Sequence([_ for _ in range(0 + 1, 24 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=18, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(18)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(18)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([19, 20, 21, 22, 23, 24, 25, 26, 27])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-2, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([28, 29, 30, 31])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(18),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-18),
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
                evans.Sequence([_ for _ in range(0 + 2, 24 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=18, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(18)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(18)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([32, 33, 34, 35, 36])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-2, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(19),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-19),
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
                evans.Sequence([_ for _ in range(0 - 1, 24 - 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=19, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(19)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(19)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([8, 9, 10])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b,"]),
            abjad.Dynamic("fff"),
            abjad.Markup(r'\boxed-markup "son fendu" #1'),
            # alu.I_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([13, 14, 15, 16])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b,"]),
            abjad.Dynamic("ff"),
            abjad.Markup(r'\boxed-markup "son fendu + bisbigliando" #1'),
            # alu.I_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([26, 27, 28, 29])),
            evans.make_tied_notes(),
            evans.PitchHandler(["b,"]),
            abjad.Dynamic("f"),
            abjad.Markup(r'\boxed-markup "son fendu + bisbigliando" #1'),
            evans.ArticulationHandler(["tremolo"]),
            # alu.I_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([35, 36, 37])),
            evans.make_tied_notes(),
            abjad.Dynamic("mf"),
            abjad.Markup(r'\boxed-markup "bisbigliando" #1'),
            evans.ArticulationHandler(["tremolo"]),
            # alu.I_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(20),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-20),
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
                evans.Sequence([_ for _ in range(0 - 20, 24 - 20)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=20, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(20)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(20)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("bassoon voice", alu.measure_numbers([10, 11, 12])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(20),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-20),
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
                evans.Sequence([_ for _ in range(0 - 20 + 1, 24 - 20 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=20, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(20)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(20)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([13, 14])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=1, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([15, 16, 17, 18])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(20),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-20),
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
                evans.Sequence([_ for _ in range(0 - 20 + 2, 24 - 20 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=20, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(20)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(20)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            (
                "bassoon voice",
                alu.measure_numbers([19, 20, 21, 22, 23, 24, 25, 26, 27]),
            ),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=1, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([28, 29, 30, 31])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(20),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-20),
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
                evans.Sequence([_ for _ in range(0 - 20 + 3, 24 - 20 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=20, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(20)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(20)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([32, 33, 34, 35, 36])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-1, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7, 8])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(21),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-21),
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
                evans.Sequence([_ for _ in range(0 - 8, 24 - 8)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=21, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(21)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(21)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("french horn voice", alu.measure_numbers([13, 14, 15])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=4, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([16, 17])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(21),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-21),
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
                evans.Sequence([_ for _ in range(0 - 8 + 1, 24 - 8 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=21, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(21)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(21)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([18, 19, 20, 21])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-4, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "french horn voice",
                alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(21),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-21),
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
                evans.Sequence([_ for _ in range(0 - 8 + 2, 24 - 8 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=21, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(21)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(21)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([31, 32, 33, 34])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-4, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([35, 36, 37, 38])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(21),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-21),
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
                evans.Sequence([_ for _ in range(0 - 8 + 3, 24 - 8 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=21, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(21)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(21)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7, 8])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(22),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-22),
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
                evans.Sequence([_ for _ in range(0 + 2, 24 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=22, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(22)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(22)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("trumpet voice", alu.measure_numbers([13, 14, 15])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=8, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([16, 17])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(22),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-22),
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
                evans.Sequence([_ for _ in range(0 + 2 + 1, 24 + 2 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=22, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(22)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(22)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([18, 19, 20, 21])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-8, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "trumpet voice",
                alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(22),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-22),
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
                evans.Sequence([_ for _ in range(0 + 2 + 3, 24 + 2 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=22, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(22)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(22)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([31, 32, 33, 34])),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=2, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([35, 36, 37, 38])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(22),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-22),
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
                evans.Sequence([_ for _ in range(0 + 2 + 4, 24 + 2 + 4)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=22, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(22)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(22)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7, 8])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(23),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-23),
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
                .random_walk(random_seed=23, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(23)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(23)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("tenor trombone voice", alu.measure_numbers([13, 14, 15])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=7, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C2, B2]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([16, 17])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(23),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-23),
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
                evans.Sequence([_ for _ in range(0 - 6 + 1, 24 - 6 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=23, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(23)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(23)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([18, 19, 20, 21])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-7, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "tenor trombone voice",
                alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(23),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-23),
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
                evans.Sequence([_ for _ in range(0 - 6 + 2, 24 - 6 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=23, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(23)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(23)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([31, 32, 33, 34])),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=1, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([35, 36, 37, 38])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(23),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-23),
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
                evans.Sequence([_ for _ in range(0 - 6 + 3, 24 - 6 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=23, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(23)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(23)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7, 8])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(24),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-24),
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
                evans.Sequence([_ for _ in range(0 - 22, 24 - 22)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=24, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(24)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(24)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("tuba voice", alu.measure_numbers([13, 14, 15])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-2, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C2, B2]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([16, 17])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(24),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-24),
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
                evans.Sequence([_ for _ in range(0 - 22 + 1, 24 - 22 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=24, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(24)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(24)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([18, 19, 20, 21])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=-2, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C2, B2]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(24),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-24),
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
                evans.Sequence([_ for _ in range(0 - 22 + 2, 24 - 22 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=24, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(24)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(24)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([31, 32, 33, 34])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            alu.potamia_pitches(transposition=2, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([35, 36, 37, 38])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(24),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-24),
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
                evans.Sequence([_ for _ in range(0 - 22 + 3, 24 - 22 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=24, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(24)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(24)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7, 8])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(25),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-25),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=25, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(25)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(25)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("percussion 1 voice", alu.measure_numbers([11, 12, 13])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            evans.PitchHandler(
                evans.Sequence([-2, 0, 2])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=1, step_list=[1], length=1000),
                staff_positions=True,
            ),
            lambda _: dynamic_runs(_, 0, percussion=True),
            abjad.Markup(r"\boxed-markup almglocken #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #3"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(25),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-25),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=25, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(25)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(25)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([16, 17, 18, 19])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 4, 6], 9),
            ),
            evans.PitchHandler(
                evans.Sequence([-2, 0, 2])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=2, step_list=[1], length=1000),
                staff_positions=True,
            ),
            lambda _: dynamic_runs(_, 0, percussion=True),
            abjad.Markup(r"\boxed-markup almglocken #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #3"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "percussion 1 voice",
                alu.measure_numbers([20, 21, 22, 23, 24, 25, 26, 27, 28]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(25),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-25),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=25, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(25)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(25)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([29, 30, 31, 32])),
            alu.make_figures(
                thread="d",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            evans.PitchHandler(
                evans.Sequence([-2, 0, 2])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=3, step_list=[1], length=1000),
                staff_positions=True,
            ),
            lambda _: dynamic_runs(_, 0, percussion=True),
            abjad.Markup(r"\boxed-markup almglocken #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #3"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([33, 34, 35, 36, 37])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(25),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-25),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=25, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(25)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(25)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(26),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-26),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=26, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(26)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(26)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("percussion 2 voice", alu.measure_numbers([11, 12, 13])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            evans.PitchHandler(
                evans.Sequence([-2, 0, 2])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=4, step_list=[1], length=1000),
                staff_positions=True,
            ),
            lambda _: dynamic_runs(_, 0, percussion=True),
            abjad.Markup(r"\boxed-markup gongs #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #3"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(26),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-26),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=26, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(26)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(26)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([16, 17, 18, 19])),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            evans.PitchHandler(
                evans.Sequence([-2, 0, 2])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=5, step_list=[1], length=1000),
                staff_positions=True,
            ),
            lambda _: dynamic_runs(_, 0, percussion=True),
            abjad.Markup(r"\boxed-markup gongs #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #3"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            (
                "percussion 2 voice",
                alu.measure_numbers([20, 21, 22, 23, 24, 25, 26, 27, 28]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(26),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-26),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=26, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(26)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(26)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([29, 30, 31, 32])),
            alu.make_figures(
                thread="d",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([3, 4, 6], 9),
            ),
            evans.PitchHandler(
                evans.Sequence([-2, 0, 2])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=6, step_list=[1], length=1000),
                staff_positions=True,
            ),
            lambda _: dynamic_runs(_, 0, percussion=True),
            abjad.Markup(r"\boxed-markup gongs #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #3"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([33, 34, 35, 36, 37])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(26),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-26),
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
                evans.Sequence([-3, -1, 1, 3])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=26, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(26)
                    .josephus(0)
                    .flatten()
                ),
                staff_positions=True,
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(26)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Markup(r"\boxed-markup toms #1"),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            # alu.H_color,
        ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(27),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-27),
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
                evans.Sequence([_ for _ in range(0 + 7, 24 + 7)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=27, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(27)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(27)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([12, 13, 14])),
        #     alu.make_figures(
        #         thread="a",
        #         rotation=0,
        #         preprocessor=evans.make_preprocessor(eighths=True, fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3], split_at_measure_boundaries=True),
        #         rewrite=-1,
        #         treat_tuplets=True,
        #         tuplet_rest_selector=abjad.index([2, 4, 7], 10),
        #     ),
        #     lambda _: dynamic_runs(_, 0),
        #     # alu.E_color,
        # ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([15, 16])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(27),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-27),
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
                evans.Sequence([_ for _ in range(0 + 7 + 1, 24 + 7 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=27, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(27)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(27)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([17, 18, 19, 20])),
        #     alu.make_figures(
        #         thread="a",
        #         rotation=1,
        #         preprocessor=evans.make_preprocessor(eighths=True, fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3], split_at_measure_boundaries=True),
        #         rewrite=-1,
        #         treat_tuplets=True,
        #         tuplet_rest_selector=abjad.index([3, 4, 6], 9),
        #     ),
        #     lambda _: dynamic_runs(_, 1),
        #     # alu.E_color,
        # ),
        evans.MusicCommand(
            (
                "piano 1 voice",
                alu.measure_numbers([21, 22, 23, 24, 25, 26, 27, 28, 29]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(27),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-27),
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
                evans.Sequence([_ for _ in range(0 + 7 + 2, 24 + 7 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=27, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(27)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(27)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([30, 31, 32, 33])),
        #     alu.make_figures(
        #         thread="a",
        #         rotation=2,
        #         preprocessor=evans.make_preprocessor(eighths=True, fuse_counts=[2, 2, 3, 2, 2, 4, 3, 2, 3], split_at_measure_boundaries=True),
        #         rewrite=-1,
        #         treat_tuplets=True,
        #         tuplet_rest_selector=abjad.index([3, 4, 6], 9),
        #     ),
        #     lambda _: dynamic_runs(_, 2),
        #     # alu.E_color,
        # ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([34, 35, 36, 37, 38])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(27),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-27),
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
                evans.Sequence([_ for _ in range(0 + 7 + 3, 24 + 7 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=27, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(27)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(27)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(28),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-28),
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
                evans.Sequence([_ for _ in range(0 - 15, 24 - 15)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=28, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(28)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(28)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([12, 13, 14])),
        #     alu.make_figures(
        #         thread="a",
        #         rotation=0,
        #         preprocessor=evans.make_preprocessor(eighths=True, fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3], split_at_measure_boundaries=True),
        #         rewrite=-1,
        #         treat_tuplets=True,
        #         tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
        #     ),
        #     lambda _: dynamic_runs(_, 0),
        #     # alu.E_color,
        # ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([15, 16])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(28),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-28),
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
                evans.Sequence([_ for _ in range(0 - 15 - 1, 24 - 15 - 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=28, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(28)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(28)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([17, 18, 19, 20])),
        #     alu.make_figures(
        #         thread="a",
        #         rotation=-1,
        #         preprocessor=evans.make_preprocessor(eighths=True, fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3], split_at_measure_boundaries=True),
        #         rewrite=-1,
        #         treat_tuplets=True,
        #         tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
        #     ),
        #     lambda _: dynamic_runs(_, -1),
        #     # alu.E_color,
        # ),
        evans.MusicCommand(
            (
                "piano 2 voice",
                alu.measure_numbers([21, 22, 23, 24, 25, 26, 27, 28, 29]),
            ),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(28),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-28),
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
                evans.Sequence([_ for _ in range(0 - 15 - 2, 24 - 15 - 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=28, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(28)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(28)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([30, 31, 32, 33])),
        #     alu.make_figures(
        #         thread="a",
        #         rotation=-2,
        #         preprocessor=evans.make_preprocessor(eighths=True, fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3], split_at_measure_boundaries=True),
        #         rewrite=-1,
        #         treat_tuplets=True,
        #         tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
        #     ),
        #     lambda _: dynamic_runs(_, -2),
        #     # alu.E_color,
        # ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([34, 35, 36, 37, 38])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(28),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-28),
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
                evans.Sequence([_ for _ in range(0 - 15 - 3, 24 - 15 - 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=28, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(28)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(28)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(29),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-29),
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
                evans.Sequence([_ for _ in range(0 + 10, 24 + 10)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=29, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(29)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(29)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("violin 1 voice", alu.measure_numbers([8, 9, 10, 11, 12])),
            alu.make_figures(
                thread="a",
                rotation=-2,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-1, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, -2),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([13, 14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(29),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-29),
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
                evans.Sequence([_ for _ in range(0 + 10 + 1, 24 + 10 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=29, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(29)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(29)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([16, 17])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=1, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([18, 19, 20, 21])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(29),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-29),
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
                evans.Sequence([_ for _ in range(0 + 10 + 2, 24 + 10 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=29, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(29)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(29)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            (
                "violin 1 voice",
                alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30]),
            ),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=4, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([31, 32, 33, 34])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(29),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-29),
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
                evans.Sequence([_ for _ in range(0 + 10 + 3, 24 + 10 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=29, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(29)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(29)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([35, 36, 37, 38])),
            alu.make_figures(
                thread="d",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=0, columns=False, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            evans.Attachment(
                abjad.StopHairpin(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            # alu.E_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([1, 2, 3, 4, 5, 6, 7])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(30),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-30),
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
                evans.Sequence([_ for _ in range(0 + 9, 24 + 9)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=30, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(30)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(30)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("violin 2 voice", alu.measure_numbers([8, 9, 10, 11, 12])),
            alu.make_figures(
                thread="a",
                rotation=-2,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-4, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, -2),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([13, 14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(30),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-30),
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
                evans.Sequence([_ for _ in range(0 + 9 - 1, 24 + 9 - 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=30, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(30)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(30)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([16, 17])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=4, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([18, 19, 20, 21])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(30),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-30),
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
                evans.Sequence([_ for _ in range(0 + 9 - 2, 24 + 9 - 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=30, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(30)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(30)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            (
                "violin 2 voice",
                alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30]),
            ),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=8, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([31, 32, 33, 34])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(30),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-30),
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
                evans.Sequence([_ for _ in range(0 + 9 - 3, 24 + 9 - 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=30, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(30)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(30)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([35, 36, 37, 38])),
            alu.make_figures(
                thread="d",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=2, columns=False, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            evans.Attachment(
                abjad.StopHairpin(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            # alu.E_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([1, 2, 3, 4, 5, 6])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(31),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-31),
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
                .random_walk(random_seed=31, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(31)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(31)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("viola voice", alu.measure_numbers([7, 8, 9, 10, 11, 12])),
            alu.make_figures(
                thread="a",
                rotation=-1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-8, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, -1),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([13, 14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(31),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-31),
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
                evans.Sequence([_ for _ in range(0 + 4 + 1, 24 + 4 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=31, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(31)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(31)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([16, 17])),
            alu.make_figures(
                thread="b",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=8, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([18, 19, 20, 21])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(31),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-31),
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
                evans.Sequence([_ for _ in range(0 + 4 + 2, 24 + 4 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=31, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(31)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(31)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30])),
            alu.make_figures(
                thread="c",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=7, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([31, 32, 33, 34])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(31),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-31),
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
                evans.Sequence([_ for _ in range(0 + 4 + 3, 24 + 4 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=31, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(31)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(31)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([35, 36, 37, 38])),
            alu.make_figures(
                thread="d",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=~abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=1, columns=False, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 0),
            evans.Attachment(
                abjad.StopHairpin(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            # alu.E_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([1, 2, 3, 4, 5, 6])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(32),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-32),
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
                evans.Sequence([_ for _ in range(0 - 13, 24 - 13)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=32, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(32)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(32)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("cello voice", alu.measure_numbers([7, 8, 9, 10, 11, 12])),
            alu.make_figures(
                thread="a",
                rotation=-1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-7, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C2, B2]"),
            ),
            lambda _: dynamic_runs(_, -1),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([13, 14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(32),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-32),
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
                evans.Sequence([_ for _ in range(0 - 13 + 1, 24 - 13 + 1)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=32, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(32)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(32)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([16, 17])),
            alu.make_figures(
                thread="b",
                rotation=1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=7, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 1),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([18, 19, 20, 21])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(32),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-32),
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
                evans.Sequence([_ for _ in range(0 - 13 + 2, 24 - 13 + 2)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=32, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(32)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(32)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30])),
            alu.make_figures(
                thread="c",
                rotation=1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-2, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C4, B4]"),
            ),
            lambda _: dynamic_runs(_, 1),
            abjad.Clef("tenor"),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([31, 32, 33, 34])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(32),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-32),
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
                evans.Sequence([_ for _ in range(0 - 13 + 3, 24 - 13 + 3)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=32, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(32)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(32)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            abjad.Clef("bass"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([35, 36, 37, 38])),
            alu.make_figures(
                thread="c",
                rotation=1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-1, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C5, B5]"),
            ),
            lambda _: dynamic_runs(_, 1),
            abjad.Clef("treble"),
            # alu.E_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([1, 2, 3, 4, 5])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(33),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-33),
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
                evans.Sequence([_ for _ in range(0 - 14 - 12, 24 - 14 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=33, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(33)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(33)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(  #
            ("contrabass voice", alu.measure_numbers([6, 7, 8, 9, 10, 11, 12])),
            alu.make_figures(
                thread="a",
                rotation=0,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-9, columns=False, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([13, 14, 15])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(33),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-33),
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
                evans.Sequence([_ for _ in range(0 - 14 - 1 - 12, 24 - 14 - 1 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=33, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(33)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(33)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([16, 17])),
            alu.make_figures(
                thread="b",
                rotation=1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=9, columns=True, retrograde=False),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 1),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([18, 19, 20, 21])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(33),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-33),
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
                evans.Sequence([_ for _ in range(0 - 14 - 2 - 12, 24 - 14 - 2 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=33, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(33)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(33)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            (
                "contrabass voice",
                alu.measure_numbers([22, 23, 24, 25, 26, 27, 28, 29, 30]),
            ),
            alu.make_figures(
                thread="c",
                rotation=1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-4, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 1),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([31, 32, 33, 34])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(33),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-33),
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
                evans.Sequence([_ for _ in range(0 - 14 - 3 - 12, 24 - 14 - 3 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=33, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(33)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(33)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: baca.hairpin(_, "ff > mf"),
            # alu.H_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([35, 36, 37, 38])),
            alu.make_figures(
                thread="c",
                rotation=1,
                preprocessor=evans.make_preprocessor(
                    eighths=True,
                    fuse_counts=[2, 2, 3, 4, 2, 4, 3, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([2, 4, 7], 10),
            ),
            alu.potamia_pitches(transposition=-8, columns=True, retrograde=True),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange("[C3, B3]"),
            ),
            lambda _: dynamic_runs(_, 1),
            # alu.E_color,
        ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.mod_122_105,
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
    time_signatures=alu.signatures_11,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="11",
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
