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
    print(itemized[-1])


def note_swells(selections):
    notes = abjad.select.notes(selections)
    cyc_dyns = evans.CyclicList(["pp", "p", "mp", "mf", "f"], forget=False)
    hit_f = False
    first_notes = notes[:-1]
    for i, note in enumerate(first_notes):
        if i % 2 == 0:
            if hit_f is False:
                dyn = cyc_dyns(r=1)[0]
            else:
                dyn = "f"
            if dyn == "f":
                hit_f = True
            abjad.attach(abjad.Dynamic(dyn), note)
            abjad.attach(abjad.StartHairpin("<"), note)
        else:
            abjad.attach(abjad.Dynamic("ff"), note)
            abjad.attach(abjad.StartHairpin(">"), note)
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
    fermata_measures=alu.fermata_measures_15,
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
            "percussion 1 voice",
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 1 voice",
            abjad.Markup(r'\boxed-markup "bass drum" #1'),
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
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "percussion 2 voice",
            abjad.Markup(r'\boxed-markup "bass drum" #1'),
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
        # evans.MusicCommand(
        #     ("flute voice", alu.measure_numbers([_ for _ in range(1, 34)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        # OBOE
        # evans.MusicCommand(
        #     ("oboe voice", alu.measure_numbers([_ for _ in range(1, 34)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        # CLARINET
        # evans.MusicCommand(
        #     ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 34)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        # BASSOON
        # evans.MusicCommand(
        #     ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 34)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        # HORN
        # evans.MusicCommand(
        #     ("french horn voice", alu.measure_numbers([_ for _ in range(1, 23)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(23, 34)])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(59),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-59),
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
                evans.Sequence([_ for _ in range(0 - 7 - 0, 24 - 7 - 0)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=59, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(59)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(59)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, 0, niente=False),
            # alu.H_color,
        ),
        # TRUMPET
        # evans.MusicCommand(
        #     ("trumpet voice", alu.measure_numbers([_ for _ in range(1, 23)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(23, 34)])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(60),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-60),
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
                evans.Sequence([_ for _ in range(0 - 8 + 12, 24 - 8 + 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=60, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(60)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(60)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, -1, niente=False),
            # alu.H_color,
        ),
        # TROMBONE
        # evans.MusicCommand(
        #     ("tenor trombone voice", alu.measure_numbers([_ for _ in range(1, 23)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(23, 34)])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(61),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-61),
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
                evans.Sequence([_ for _ in range(0 - 9 - 12, 24 - 9 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=61, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(61)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(61)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, -2, niente=False),
            # alu.H_color,
        ),
        # TUBA
        # evans.MusicCommand(
        #     ("tuba voice", alu.measure_numbers([_ for _ in range(1, 23)])),
        #     evans.talea([1], 8),
        #     lambda _: note_swells(_),
        #     # alu.A_color,
        # ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(23, 34)])),
            evans.even_division(
                [32],
                extra_counts=evans.Sequence([-4, -3, -2, -1, 0, 1, 2, 3, 4])
                .mirror(sequential_duplicates=False)
                .rotate(62),
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=evans.Sequence(
                        [1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 4]
                    ).rotate(-62),
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
                evans.Sequence([_ for _ in range(0 - 10 - 12, 24 - 10 - 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(random_seed=62, step_list=[1], length=1000)
                .remove_repeats()
                .stutter(
                    counts=evans.Sequence([_ + 2 for _ in range(6)])
                    .rotate(62)
                    .josephus(0)
                    .flatten()
                )
            ),
            lambda _: alu.add_brackets(
                _,
                partitions=evans.Sequence([_ + 2 for _ in range(6)])
                .rotate(62)
                .josephus(0)
                .flatten(),
                hide_heads=True,
                padding=5,
                direction="DOWN",
                label=True,
            ),
            lambda _: alu.center_swell(_, -3, niente=False),
            # alu.H_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(1, 23)])),
            evans.note(),
            abjad.Dynamic("f"),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(23, 34)])),
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
            # alu.D_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(1, 23)])),
            evans.note(),
            abjad.Dynamic("f"),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(23, 34)])),
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
            # alu.D_color,
        ),
        # # PIANO 1
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([_ for _ in range(1, 34)])),
        #     evans.make_tied_notes(),
        #     # alu.A_color,
        # ),
        # # PIANO 2
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([_ for _ in range(1, 34)])),
        #     evans.make_tied_notes(),
        #     # alu.A_color,
        # ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea([1], 8),
            evans.PitchHandler([["e'", "bf'"]]),
            abjad.Dynamic("f"),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.chord(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(13, 34)])),
            alu.C_rhythms(
                stage=6,
                rotation=5,
                number_of_voices=10,
                denominator=16,
                extra_counts=None,
            ),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_, pitched=True),
                    abjad.index(
                        abjad.math.cumulative_sums([5, 4, 5, 6, 4, 7])[1:],
                        period=sum(abjad.math.cumulative_sums([5, 4, 5, 6, 4, 7])) + 1,
                    ),
                )
            ),
            evans.PitchHandler(
                [
                    int(_)
                    for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
                    .mod(9)
                    .transpose(-4)
                ],
                staff_positions=True,
                clef="treble",
            ),
            alu.alternate_full_bows(0),
            lambda _: abjad.glissando(_),
            evans.Attachment(
                abjad.Markup(r'\markup "arco"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            lambda _: dynamic_runs(_, 0),
            # alu.C_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea([1], 8),
            evans.PitchHandler(["f'"]),
            abjad.Dynamic("f"),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(13, 34)])),
            alu.C_rhythms(
                stage=6,
                rotation=6,
                number_of_voices=11,
                denominator=16,
                extra_counts=None,
            ),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_, pitched=True),
                    abjad.index(
                        abjad.math.cumulative_sums([4, 5, 6, 4, 7])[1:],
                        period=sum(abjad.math.cumulative_sums([4, 5, 6, 4, 7])) + 1,
                    ),
                )
            ),
            evans.PitchHandler(
                [
                    int(_)
                    for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
                    .invert(0)
                    .mod(9)
                    .transpose(-4)
                ],
                staff_positions=True,
                clef="treble",
            ),
            alu.alternate_full_bows(1),
            lambda _: abjad.glissando(_),
            evans.Attachment(
                abjad.Markup(r'\markup "arco"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            lambda _: dynamic_runs(_, -1),
            # alu.C_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea([1], 8),
            evans.PitchHandler(["b"]),
            abjad.Dynamic("f"),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(13, 34)])),
            alu.C_rhythms(
                stage=6,
                rotation=7,
                number_of_voices=12,
                denominator=8,
                extra_counts=None,
            ),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_, pitched=True),
                    abjad.index(
                        abjad.math.cumulative_sums([5, 6, 4, 7])[1:],
                        period=sum(abjad.math.cumulative_sums([5, 6, 4, 7])) + 1,
                    ),
                )
            ),
            evans.PitchHandler(
                [
                    int(_)
                    for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
                    .invert(1)
                    .retrograde()
                    .mod(9)
                    .transpose(-4)
                ],
                staff_positions=True,
                clef="alto",
            ),
            alu.alternate_full_bows(2),
            lambda _: abjad.glissando(_),
            evans.Attachment(
                abjad.Markup(r'\markup "arco"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            lambda _: dynamic_runs(_, -2),
            # alu.C_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea([1], 8),
            evans.PitchHandler(["f"]),
            abjad.Dynamic("f"),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(13, 34)])),
            alu.C_rhythms(
                stage=6,
                rotation=8,
                number_of_voices=13,
                denominator=8,
                extra_counts=None,
            ),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_, pitched=True),
                    abjad.index(
                        abjad.math.cumulative_sums([6, 4, 7])[1:],
                        period=sum(abjad.math.cumulative_sums([6, 4, 7])) + 1,
                    ),
                )
            ),
            evans.PitchHandler(
                [
                    int(_)
                    for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
                    .invert(2)
                    .retrograde()
                    .multiply(2)
                    .mod(9)
                    .transpose(-4)
                ],
                staff_positions=True,
                clef="bass",
            ),
            alu.alternate_full_bows(3),
            lambda _: abjad.glissando(_),
            evans.Attachment(
                abjad.Markup(r'\markup "arco"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            lambda _: dynamic_runs(_, -3),
            # alu.C_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea([1], 8),
            evans.PitchHandler(["bf,"]),
            abjad.Dynamic("f"),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(13, 34)])),
            alu.C_rhythms(
                stage=6,
                rotation=9,
                number_of_voices=14,
                denominator=4,
                extra_counts=None,
            ),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_, pitched=True),
                    abjad.index(
                        abjad.math.cumulative_sums([4, 7])[1:],
                        period=sum(abjad.math.cumulative_sums([4, 7])) + 1,
                    ),
                )
            ),
            evans.PitchHandler(
                [
                    int(_)
                    for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
                    .invert(2)
                    .retrograde()
                    .multiply(3)
                    .mod(9)
                    .transpose(-4)
                ],
                staff_positions=True,
                clef="bass_8",
            ),
            alu.alternate_full_bows(4),
            lambda _: abjad.glissando(_),
            evans.Attachment(
                abjad.Markup(r'\markup "arco"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            lambda _: dynamic_runs(_, -4),
            # alu.C_color,
        ),
        # SUFFIX
        evans.attach(
            "Global Context",
            alu.mod_105_70,
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
    time_signatures=alu.signatures_15,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="15",
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
