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
    fermata_measures=alu.fermata_measures_01,
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
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        # evans.attach(
        #     "percussion 1 voice",
        #     abjad.Markup(r"\boxed-markup woodblocks #1"),
        #     lambda _: abjad.select.leaf(_, 0),
        #     direction=abjad.UP,
        # ),
        evans.attach( # revision
            "percussion 1 voice",
            abjad.Markup(r"\boxed-markup toms #1"),
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
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        # evans.attach(
        #     "percussion 2 voice",
        #     abjad.Markup(r'\boxed-markup "slit drum" #1'),
        #     lambda _: abjad.select.leaf(_, 0),
        #     direction=abjad.UP,
        # ),
        evans.attach( # revision
            "percussion 2 voice",
            abjad.Markup(r'\boxed-markup "toms" #1'),
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
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([4, 5, 6, 7])),
            evans.talea([600], 16, end_counts=[1], rewrite=-1),
            abjad.Dynamic("sfp"),
            abjad.StartHairpin("<|"),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([4, 5, 6, 7])),
            evans.talea([600], 16, end_counts=[1], rewrite=-1),
            abjad.Dynamic("sfp"),
            abjad.StartHairpin("<|"),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([4, 5, 6, 7])),
            evans.talea([600], 16, preamble=[1], end_counts=[1, 1], rewrite=-1),
            abjad.Dynamic("sfp"),
            abjad.StartHairpin("<|"),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([4, 5, 6, 7])),
            evans.talea([600], 16, preamble=[1], end_counts=[1], rewrite=-1),
            abjad.Dynamic("sfp"),
            abjad.StartHairpin("<|"),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # HORN
        # evans.MusicCommand(
        #     ("french horn voice", alu.measure_numbers([1, 2, 3, 4])),
        #     evans.make_tied_notes(),
        #     abjad.Dynamic("pp"),
        #     # # alu.B_color,
        # ),
        evans.MusicCommand( # revision
            ("french horn voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.talea(evans.Sequence([2, 4, 3, 5]).rotate(0), 8),
            evans.ArticulationHandler(["tremolo"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([5, 6, 7])),
            evans.talea([600], 16, end_counts=[1], rewrite=-1),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # TRUMPET
        # evans.MusicCommand(
        #     ("trumpet voice", alu.measure_numbers([1, 2, 3, 4])),
        #     evans.make_tied_notes(),
        #     abjad.Dynamic("pp"),
        #     # # alu.B_color,
        # ),
        evans.MusicCommand( # revision
            ("trumpet voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.talea(evans.Sequence([2, 4, 3, 5]).rotate(1), 8),
            evans.ArticulationHandler(["tremolo"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([5, 6, 7])),
            evans.talea([600], 16, end_counts=[1], rewrite=-1),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # TROMBONE
        # evans.MusicCommand(
        #     ("tenor trombone voice", alu.measure_numbers([1, 2, 3, 4])),
        #     evans.make_tied_notes(),
        #     abjad.Dynamic("pp"),
        #     # # alu.B_color,
        # ),
        evans.MusicCommand( # revision
            ("tenor trombone voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.talea(evans.Sequence([2, 4, 3, 5]).rotate(2), 8),
            evans.ArticulationHandler(["tremolo"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([5, 6, 7])),
            evans.talea([600], 16, end_counts=[1], rewrite=-1),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # TUBA
        # evans.MusicCommand(
        #     ("tuba voice", alu.measure_numbers([1, 2, 3, 4])),
        #     evans.make_tied_notes(),
        #     abjad.Dynamic("pp"),
        #     # # alu.B_color,
        # ),
        evans.MusicCommand( # revision
            ("tuba voice", alu.measure_numbers([1, 2, 3, 4])),
            evans.talea(evans.Sequence([2, 4, 3, 5]).rotate(3), 8),
            evans.ArticulationHandler(["tremolo"]),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([5, 6, 7])),
            evans.talea([600], 16, end_counts=[1], rewrite=-1),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # # alu.B_color,
        ),
        # PERCUSSION 1
        # evans.MusicCommand(
        #     ("percussion 1 voice", [_ - 1 for _ in [1, 2, 3, 4, 5, 6]]),
        #     evans.accelerando(
        #         [(1, 8), (1, 4), (1, 16)],
        #         preprocessor=evans.make_preprocessor(fuse_counts=[2, 1, 1, 3, 2]),
        #     ),
        #     evans.Callable(
        #         rmakers.force_rest,
        #         selector=lambda _: abjad.select.get(
        #             abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
        #         ),
        #     ),
        #     evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
        #     abjad.Dynamic("mf"),
        #     # # alu.A_color,
        # ),
        evans.MusicCommand( # revision
            ("percussion 1 voice", [_ - 1 for _ in [1, 2, 3, 4, 5, 6]]),
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
            abjad.Dynamic("ff"),
            # # alu.A_color,
        ),
        evans.MusicCommand(  # modulation!
            ("percussion 1 voice", [_ - 1 for _ in [7]]),
            evans.Skeleton(
                [
                    abjad.Rest((2, 4)),
                    abjad.Tuplet(
                        "15:16",
                        "c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32 c'32",
                    ),
                ]
            ),
            # evans.Callable(
            #     rmakers.force_rest,
            #     selector=lambda _: abjad.select.get(abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)),
            # ),
            evans.PitchHandler([-1, 1, -1, 1, 3, -1, 1, -3], staff_positions=True),
            abjad.Dynamic("f"),
            # # alu.A_color,
        ),
        # PERCUSSION 2
        # evans.MusicCommand(
        #     ("percussion 2 voice", [_ - 1 for _ in [1, 2, 3, 4, 5, 6, 7]]),
        #     evans.accelerando(
        #         [(1, 4), (1, 8), (1, 16)],
        #         [(1, 9), (1, 3), (1, 16)],
        #         # preprocessor=None,
        #     ),
        #     evans.Callable(
        #         rmakers.force_rest,
        #         selector=lambda _: abjad.select.get(
        #             abjad.select.notes(_), ~abjad.index([0, 2, 3, 5, 6, 7], 9)
        #         ),
        #     ),
        #     evans.PitchHandler(
        #         abjad.sequence.reverse([-1, 1, -1, 1, 3, -1, 1, -3]),
        #         staff_positions=True,
        #     ),
        #     abjad.Dynamic("mf"),
        #     # # alu.A_color,
        # ),
        evans.MusicCommand( # revision
            ("percussion 2 voice", [_ - 1 for _ in [1, 2, 3, 4, 5, 6, 7]]),
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
                abjad.sequence.reverse([-1, 1, -1, 1, 3, -1, 1, -3]),
                staff_positions=True,
            ),
            abjad.Dynamic("ff"),
            # # alu.A_color,
        ),
        # PIANO 1
        # PIANO 2
        # VIOLIN 1
        # evans.MusicCommand(
        #     ("violin 1 voice", alu.measure_numbers([5, 6, 7])),
        #     alu.C_rhythms(
        #         stage=6,
        #         rotation=0,
        #         number_of_voices=5,
        #         denominator=8,
        #         extra_counts=None,
        #     ),
        #     evans.PitchHandler(
        #         [
        #             int(_)
        #             for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
        #             .mod(9)
        #             .transpose(-4)
        #         ],
        #         staff_positions=True,
        #         clef="treble",
        #     ),
        #     alu.alternate_full_bows(0),
        #     lambda _: abjad.glissando(_),
        #     abjad.Dynamic("mp"),
        #     abjad.StartHairpin("<"),
        #     evans.Attachment(
        #         abjad.Dynamic("fff"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     # # alu.C_color,
        # ),
        evans.MusicCommand( # revision
            ("violin 1 voice", alu.measure_numbers([5, 6, 7])),
            evans.talea(
                evans.Sequence([1, 2, 3, 4]).random_sequence(total_length=150, random_seed=1),
                16,
                extra_counts=evans.Sequence([0, 2, 1, 3, 1, 2]).rotate(0),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence(["g", "gqs", "gs", "gtqs", "a"]).random_sequence(total_length=150, random_seed=0).remove_repeats(),
            ),
            abjad.Dynamic("f"),
            # # alu.C_color,
        ),
        # VIOLIN 2
        # evans.MusicCommand(
        #     ("violin 2 voice", alu.measure_numbers([5, 6, 7])),
        #     alu.C_rhythms(
        #         stage=6,
        #         rotation=1,
        #         number_of_voices=6,
        #         denominator=8,
        #         extra_counts=None,
        #     ),
        #     evans.PitchHandler(
        #         [
        #             int(_)
        #             for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
        #             .invert(0)
        #             .mod(9)
        #             .transpose(-4)
        #         ],
        #         staff_positions=True,
        #         clef="treble",
        #     ),
        #     alu.alternate_full_bows(1),
        #     lambda _: abjad.glissando(_),
        #     abjad.Dynamic("mp"),
        #     abjad.StartHairpin("<"),
        #     evans.Attachment(
        #         abjad.Dynamic("fff"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     # # alu.C_color,
        # ),
        evans.MusicCommand( # revision
            ("violin 2 voice", alu.measure_numbers([5, 6, 7])),
            evans.talea(
                evans.Sequence([1, 2, 3, 4]).random_sequence(total_length=150, random_seed=2),
                16,
                extra_counts=evans.Sequence([0, 2, 1, 3, 1, 2]).rotate(1),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence(["g", "gqs", "gs", "gtqs", "a"]).random_sequence(total_length=150, random_seed=1).remove_repeats(),
            ),
            abjad.Dynamic("f"),
            # # alu.C_color,
        ),
        # VIOLA
        # evans.MusicCommand(
        #     ("viola voice", alu.measure_numbers([7])),
        #     alu.C_rhythms(
        #         stage=6,
        #         rotation=2,
        #         number_of_voices=7,
        #         denominator=8,
        #         extra_counts=None,
        #     ),
        #     evans.PitchHandler(
        #         [
        #             int(_)
        #             for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
        #             .invert(1)
        #             .retrograde()
        #             .mod(9)
        #             .transpose(-4)
        #         ],
        #         staff_positions=True,
        #         clef="alto",
        #     ),
        #     alu.alternate_full_bows(2),
        #     lambda _: abjad.glissando(_),
        #     abjad.Dynamic("mp"),
        #     abjad.StartHairpin("<"),
        #     evans.Attachment(
        #         abjad.Dynamic("fff"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     # # alu.C_color,
        # ),
        evans.MusicCommand( # revision
            ("viola voice", alu.measure_numbers([7])),
            evans.talea(
                evans.Sequence([1, 2, 3, 4]).random_sequence(total_length=150, random_seed=3),
                16,
                extra_counts=evans.Sequence([0, 2, 1, 3, 1, 2]).rotate(2),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence(["c", "cqs", "cs", "ctqs", "d"]).random_sequence(total_length=150, random_seed=2).remove_repeats(),
            ),
            abjad.Dynamic("f"),
            # # alu.C_color,
        ),
        # CELLO
        # evans.MusicCommand(
        #     ("cello voice", alu.measure_numbers([6, 7])),
        #     alu.C_rhythms(
        #         stage=6,
        #         rotation=3,
        #         number_of_voices=8,
        #         denominator=8,
        #         extra_counts=None,
        #     ),
        #     evans.PitchHandler(
        #         [
        #             int(_)
        #             for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
        #             .invert(2)
        #             .retrograde()
        #             .multiply(2)
        #             .mod(9)
        #             .transpose(-4)
        #         ],
        #         staff_positions=True,
        #         clef="bass",
        #     ),
        #     alu.alternate_full_bows(3),
        #     lambda _: abjad.glissando(_),
        #     abjad.Dynamic("mp"),
        #     abjad.StartHairpin("<"),
        #     evans.Attachment(
        #         abjad.Dynamic("fff"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     # # alu.C_color,
        # ),
        evans.MusicCommand( # revision
            ("cello voice", alu.measure_numbers([6, 7])),
            evans.talea(
                evans.Sequence([1, 2, 3, 4]).random_sequence(total_length=150, random_seed=4),
                16,
                extra_counts=evans.Sequence([0, 2, 1, 3, 1, 2]).rotate(3),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence(["c,", "cqs,", "cs,", "ctqs,", "d,"]).random_sequence(total_length=150, random_seed=3).remove_repeats(),
            ),
            abjad.Dynamic("f"),
            # # alu.C_color,
        ),
        # BASS
        # evans.MusicCommand(
        #     ("contrabass voice", alu.measure_numbers([5, 6, 7])),
        #     alu.C_rhythms(
        #         stage=6,
        #         rotation=4,
        #         number_of_voices=9,
        #         denominator=8,
        #         extra_counts=None,
        #     ),
        #     evans.PitchHandler(
        #         [
        #             int(_)
        #             for _ in evans.PitchSegment([0, 2, 0, 3, -1, 0, -1, -2])
        #             .invert(2)
        #             .retrograde()
        #             .multiply(3)
        #             .mod(9)
        #             .transpose(-4)
        #         ],
        #         staff_positions=True,
        #         clef="bass_8",
        #     ),
        #     alu.alternate_full_bows(4),
        #     lambda _: abjad.glissando(_),
        #     abjad.Dynamic("mp"),
        #     abjad.StartHairpin("<"),
        #     evans.Attachment(
        #         abjad.Dynamic("fff"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     # # alu.C_color,
        # ),
        evans.MusicCommand( # revision
            ("contrabass voice", alu.measure_numbers([5, 6, 7])),
            evans.talea(
                evans.Sequence([1, 2, 3, 4]).random_sequence(total_length=150, random_seed=5),
                16,
                extra_counts=evans.Sequence([0, 2, 1, 3, 1, 2]).rotate(4),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence(["e,,", "eqs,,", "f,,", "fqs,,", "fs,,"]).random_sequence(total_length=150, random_seed=4).remove_repeats(),
            ),
            abjad.Dynamic("f"),
            # # alu.C_color,
        ),
        # SUFFIX
        evans.call(
            "Staff Group",
            # evans.PitchHandler(
            #     evans.Sequence([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8])
            #     .matrix()
            #     .potamia()
            #     .flatten(),
            #     forget=False,
            #     to_ties=False,
            # ),
            evans.PitchHandler(
                evans.Sequence([9, 10, 8, 11, 7, 0, 6, 1, 5, 2, 4, 3])
                .matrix()
                .potamia()
                .flatten(),
                forget=False,
                to_ties=False,
            ),
            selector=evans.select_measures(
                logical_ties=True,
                voice_name_measure_pairs=[
                    ("flute voice", [3, 4, 5, 6]),
                    ("oboe voice", [3, 4, 5, 6]),
                    ("bass clarinet voice", [3, 4, 5, 6]),
                    ("bassoon voice", [3, 4, 5, 6]),
                    ("french horn voice", [0, 1, 2, 3, 4, 5, 6]),
                    ("trumpet voice", [0, 1, 2, 3, 4, 5, 6]),
                    ("tenor trombone voice", [0, 1, 2, 3, 4, 5, 6]),
                    ("tuba voice", [0, 1, 2, 3, 4, 5, 6]),
                ],
            ),
        ),
        evans.call(
            "flute voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.Flute().pitch_range,
            ),
            evans.select_measures([3, 4, 5, 6]),
        ),
        evans.call(
            "oboe voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.Oboe().pitch_range,
            ),
            evans.select_measures([3, 4, 5, 6]),
        ),
        evans.call(
            "bass clarinet voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange("[C3, C4]"),
            ),
            evans.select_measures([3, 4, 5, 6]),
        ),
        evans.call(
            "bassoon voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.PitchRange("[C3, C4]"),
            ),
            evans.select_measures([3, 4, 5, 6]),
        ),
        evans.call(
            "french horn voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            evans.select_measures([0, 1, 2, 3, 4, 5, 6]),
        ),
        evans.call(
            "trumpet voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            evans.select_measures([0, 1, 2, 3, 4, 5, 6]),
        ),
        evans.call(
            "tenor trombone voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("down", "previous alteration", "octave below"),
                ),
                starting_range=abjad.PitchRange("[C3, C4]"),
            ),
            evans.select_measures([0, 1, 2, 3, 4, 5, 6]),
        ),
        evans.call(
            "tuba voice",
            lambda _: evans.contour(
                _,
                (
                    [0, 1],
                    evans.Lapidary("down", "previous alteration", "centroid octave"),
                ),
                starting_range=abjad.Tuba().pitch_range,
            ),
            evans.select_measures([0, 1, 2, 3, 4, 5, 6]),
        ),
        evans.attach(
            "Global Context",
            alu.lib.mark_46,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            alu.lib.met_46,
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
    transpose_first=False,
    color_out_of_range=False,
    time_signatures=alu.signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="01",
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
