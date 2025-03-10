import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu


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
    fermata_measures=alu.fermata_measures_16,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=39),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=40),
            lambda _: abjad.select.leaf(_, 10),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=41),
            lambda _: abjad.select.leaf(_, 19),
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
            abjad.Dynamic("f"),
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
            "violin 2 voice",
            abjad.Dynamic("pp"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "viola voice",
            abjad.Clef("alto"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "viola voice",
            abjad.Dynamic("f"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "cello voice",
            abjad.Dynamic("f"),
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
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 15 // 2)])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([0 - 0 + 1], [1, -0.5, 1]),
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
            ("flute voice", alu.measure_numbers([_ for _ in range(15 // 2, 15)])),
            evans.make_tied_notes(),
            lambda _: evans.PitchHandler(
                [abjad.get.leaf(abjad.select.leaf(_, 0), -1).written_pitch.name]
            )(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "sfp < ff"),
            # alu.G_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(1, 15 // 2)])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([1 - 0 + 1], [1, -0.5, 1, 0.5]),
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
            ("oboe voice", alu.measure_numbers([_ for _ in range(15 // 2, 15)])),
            evans.make_tied_notes(),
            lambda _: evans.PitchHandler(
                [abjad.get.leaf(abjad.select.leaf(_, 0), -1).written_pitch.name]
            )(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "sfp < ff"),
            # alu.G_color,
        ),
        # CLARINET
        evans.MusicCommand(
            (
                "bass clarinet voice",
                alu.measure_numbers([_ for _ in range(1, 15 // 2)]),
            ),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([2 - 12 + 1], [1, -0.5, 1, 0.5, -1]),
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
            (
                "bass clarinet voice",
                alu.measure_numbers([_ for _ in range(15 // 2, 15)]),
            ),
            evans.make_tied_notes(),
            lambda _: evans.PitchHandler(
                [abjad.get.leaf(abjad.select.leaf(_, 0), -1).written_pitch.name]
            )(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "sfp < ff"),
            # alu.G_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 15 // 2)])),
            evans.tuplet([(2, 1, 1)]),
            evans.loop([3 - 12 + 1], [1, -0.5, 1, 0.5, -1, 0.5]),
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
            ("bassoon voice", alu.measure_numbers([_ for _ in range(15 // 2, 15)])),
            evans.make_tied_notes(),
            lambda _: evans.PitchHandler(
                [abjad.get.leaf(abjad.select.leaf(_, 0), -1).written_pitch.name]
            )(_),
            abjad.StartTrillSpan(),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
            lambda _: baca.hairpin(_, "sfp < ff"),
            # alu.G_color,
        ),
        # HORN
        # TRUMPET
        # TROMBONE
        # TUBA
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(11, 20)])),
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
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(11, 20)])),
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
        # PIANO 1
        # PIANO 2
        # VIOLIN 1
        # evans.MusicCommand(
        #     ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 5)])),
        #     evans.make_tied_notes(),
        #     # alu.G_color,
        # ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(5, 15)])),
            evans.talea(
                [2, 2, 2, 14],
                16,
                extra_counts=[0, 1, 2, 3],
                rewrite=-1,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 2, 1, 1],
                    split_at_measure_boundaries=True,
                ),
            ),
            evans.loop([8, 7, 9, 5], [-1]),
            evans.text_span(
                ["P", "1/2 P", "T", "1/2 T", "T", "XT"], "=>", [8], padding=11, id=2
            ),
            # evans.text_span(
            #     [
            #         r"\diamond-notehead-markup",
            #         r"\default-notehead-markup",
            #         r"\half-diamond-notehead-markup",
            #     ],
            #     "=>",
            #     [7],
            #     padding=12,
            #     id=3,
            # ),
            evans.zero_padding_glissando,
            evans.bcp(
                [
                    "0/9",
                    "1/9",
                    "2/9",
                    "3/9",
                    "2/9",
                    "4/9",
                    "9/9",
                    "8/9",
                    "7/9",
                    "4/9",
                    "5/9",
                    "3/9",
                    "2/9",
                ],
                padding=5,
            ),
            abjad.Dynamic("p"),
            evans.Callable(
                lambda _: baca.hairpin(_, "p >o niente"),
                selector=lambda _: abjad.select.get(
                    abjad.select.leaves(_), [-5, -4, -3, -2, -1]
                ),
            ),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(15, 33)])),
            evans.talea([1], 8),
            evans.PitchHandler([["e'", "bf'"]]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            evans.Attachment(
                abjad.StopHairpin(leak=True),
                selector=lambda _: abjad.select.chord(_, -1),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.chord(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        # VIOLIN 2
        # evans.MusicCommand(
        #     ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 5)])),
        #     evans.make_tied_notes(),
        #     # alu.G_color,
        # ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(5, 15)])),
            evans.talea(
                [2, 2, 2, 14],
                16,
                extra_counts=[0, 1, 2, 3],
                rewrite=-1,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[3, 1, 2, 2, 1, 4, 1, 1],
                    split_at_measure_boundaries=True,
                ),
            ),
            evans.loop([_ - 12 for _ in [8, 9, 7, 11]], [1]),
            evans.text_span(
                ["P", "1/2 P", "T", "1/2 T", "T", "XT"], "=>", [8], padding=11, id=2
            ),
            # evans.text_span(
            #     [
            #         r"\diamond-notehead-markup",
            #         r"\default-notehead-markup",
            #         r"\half-diamond-notehead-markup",
            #     ],
            #     "=>",
            #     [8],
            #     padding=12,
            #     id=3,
            # ),
            evans.zero_padding_glissando,
            evans.bcp(
                [
                    "0/9",
                    "1/9",
                    "2/9",
                    "3/9",
                    "2/9",
                    "4/9",
                    "9/9",
                    "8/9",
                    "7/9",
                    "4/9",
                    "5/9",
                    "3/9",
                    "2/9",
                ],
                padding=5,
            ),
            abjad.Dynamic("p"),
            evans.Callable(
                lambda _: baca.hairpin(_, "p >o niente"),
                selector=lambda _: abjad.select.get(
                    abjad.select.leaves(_), [-5, -4, -3, -2, -1]
                ),
            ),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(15, 33)])),
            evans.talea([1], 8),
            evans.PitchHandler(["f'"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            evans.Attachment(
                abjad.StopHairpin(leak=True),
                selector=lambda _: abjad.select.note(_, -1),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        # VIOLA
        # evans.MusicCommand(
        #     ("viola voice", alu.measure_numbers([_ for _ in range(1, 5)])),
        #     evans.make_tied_notes(),
        #     # alu.G_color,
        # ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(5, 14)])),
            evans.talea(
                [2, 2, 2, 14],
                16,
                extra_counts=[0, 1, 2, 3],
                rewrite=-1,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 1, 1, 2],
                    split_at_measure_boundaries=True,
                ),
            ),
            evans.loop([5, 4, 6, 2], [-1]),
            evans.text_span(
                ["P", "1/2 P", "T", "1/2 T", "T", "XT"], "=>", [8], padding=11, id=2
            ),
            # evans.text_span(
            #     [
            #         r"\diamond-notehead-markup",
            #         r"\default-notehead-markup",
            #         r"\half-diamond-notehead-markup",
            #     ],
            #     "=>",
            #     [9],
            #     padding=12,
            #     id=3,
            # ),
            evans.zero_padding_glissando,
            evans.bcp(
                [
                    "0/9",
                    "1/9",
                    "2/9",
                    "3/9",
                    "2/9",
                    "4/9",
                    "9/9",
                    "8/9",
                    "7/9",
                    "4/9",
                    "5/9",
                    "3/9",
                    "2/9",
                ],
                padding=5,
            ),
            abjad.Dynamic("p"),
            evans.Callable(
                lambda _: baca.hairpin(_, "p >o niente"),
                selector=lambda _: abjad.select.get(
                    abjad.select.leaves(_), [-5, -4, -3, -2, -1]
                ),
            ),
            abjad.Clef("alto"),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(14, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(["b"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            evans.Attachment(
                abjad.StopHairpin(leak=True),
                selector=lambda _: abjad.select.note(_, -1),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        # CELLO
        # evans.MusicCommand(
        #     ("cello voice", alu.measure_numbers([_ for _ in range(1, 5)])),
        #     evans.make_tied_notes(),
        #     # alu.G_color,
        # ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(5, 13)])),
            evans.talea(
                [2, 2, 2, 14],
                16,
                extra_counts=[0, 1, 2, 3],
                rewrite=-1,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 4, 1, 1, 3, 1, 2, 2],
                    split_at_measure_boundaries=True,
                ),
            ),
            evans.loop([_ - 24 for _ in [5, 6, 4, 8]], [1]),
            evans.text_span(
                ["P", "1/2 P", "T", "1/2 T", "T", "XT"], "=>", [8], padding=11.5, id=2
            ),
            # evans.text_span(
            #     [
            #         r"\diamond-notehead-markup",
            #         r"\default-notehead-markup",
            #         r"\half-diamond-notehead-markup",
            #     ],
            #     "=>",
            #     [10],
            #     padding=12,
            #     id=3,
            # ),
            evans.zero_padding_glissando,
            evans.bcp(
                [
                    "0/9",
                    "1/9",
                    "2/9",
                    "3/9",
                    "2/9",
                    "4/9",
                    "9/9",
                    "8/9",
                    "7/9",
                    "4/9",
                    "5/9",
                    "3/9",
                    "2/9",
                ],
                padding=5,
            ),
            abjad.Dynamic("p"),
            evans.Callable(
                lambda _: baca.hairpin(_, "p >o niente"),
                selector=lambda _: abjad.select.get(
                    abjad.select.leaves(_), [-5, -4, -3, -2, -1]
                ),
            ),
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(13, 27)])),
            evans.talea([1], 8),
            evans.PitchHandler(["f"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            evans.Attachment(
                abjad.StopHairpin(leak=True),
                selector=lambda _: abjad.select.note(_, -1),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        # BASS
        # evans.MusicCommand(
        #     ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 5)])),
        #     evans.make_tied_notes(),
        #     # alu.G_color,
        # ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(5, 12)])),
            evans.talea(
                [2, 2, 2, 14],
                16,
                extra_counts=[3, 2, 1, 0],
                rewrite=-1,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[2, 2, 1, 3, 1, 1, 4, 1],
                    split_at_measure_boundaries=True,
                ),
            ),
            evans.loop([_ - 20 for _ in [5, 6, 4, 8]], [1]),
            evans.text_span(
                ["P", "1/2 P", "T", "1/2 T", "T", "XT"], "=>", [8], padding=10, id=2
            ),
            # evans.text_span(
            #     [
            #         r"\diamond-notehead-markup",
            #         r"\default-notehead-markup",
            #         r"\half-diamond-notehead-markup",
            #     ],
            #     "=>",
            #     [10],
            #     padding=12,
            #     id=3,
            # ),
            evans.zero_padding_glissando,
            evans.bcp(
                [
                    "0/9",
                    "1/9",
                    "2/9",
                    "3/9",
                    "2/9",
                    "4/9",
                    "9/9",
                    "8/9",
                    "7/9",
                    "4/9",
                    "5/9",
                    "3/9",
                    "2/9",
                ],
                padding=5,
            ),
            abjad.Dynamic("p"),
            evans.Callable(
                lambda _: baca.hairpin(_, "p >o niente"),
                selector=lambda _: abjad.select.get(
                    abjad.select.leaves(_), [-5, -4, -3, -2, -1]
                ),
            ),
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(12, 21)])),
            evans.talea([1], 8),
            evans.PitchHandler(["bf,"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            evans.Attachment(
                abjad.StopHairpin(leak=True),
                selector=lambda _: abjad.select.note(_, -1),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r'\markup "col legno battuto"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.A_color,
        ),
        # SUFFIX
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
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
            ),
            lambda _: abjad.select.leaf(_, -2),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r'\bar "|."', site="after"),
            lambda _: abjad.select.leaf(_, -2),
        ),
        evans.attach(
            "contrabass voice",
            abjad.Markup(r"\colophon"),
            lambda _: abjad.select.leaf(_, -3),  # leaf?
            direction=abjad.DOWN,
        ),
    ],
    score_template=alu.score,
    transpose_from_sounding_pitch=True,
    transpose_first=True,
    color_out_of_range=False,
    time_signatures=alu.signatures_16,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="16",
    current_directory=pathlib.Path(__file__).parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    barline="|.",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    with_layout=True,
    mm_rests=True,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
)

maker.build_segment()
