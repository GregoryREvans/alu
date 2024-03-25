import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu

melodic_sequence = [
    abjad.NumberedPitch(abjad.NamedPitch(_)).number
    for _ in ["b", "ds'", "fs'", "bf'", "ef''", "a''", "c'''", "g'''"]
]
source_chord = [
    abjad.NamedPitch(abjad.NumberedPitch(_)).name
    for _ in [11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8]
]
reordering_series = evans.Sequence(
    [
        abjad.NumberedPitch(_)
        for _ in [
            "af'",
            "g'",
            "cs'",
            "ef'",
            "d'",
            "e'",
            "bf'",
            "c'",
            "b'",
            "a'",
            "fs'",
            "f'",
        ]
    ]
)

pitches = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
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
    fermata_measures=alu.fermata_measures_08,
    commands=[
        # PREFIX
        evans.attach(
            "bassoon voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "french horn voice",
            abjad.Clef("treble"),
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
            alu.C_rhythms(stage=8, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C4, C5]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            # rests?
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("flute voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("flute voice", alu.measure_numbers([10])), # no gliss, just shrill tones while strings gliss
        #     alu.C_rhythms(stage=5, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.PitchHandler([0, 13, 0]),
        #     # abjad.glissando,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([24]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([15])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 0 for _ in [3, 9, 8, 10, 7, 4, 6, 11]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [5, 6, 7],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[C4, B4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[4, 2, 1.5, 0.5, 0.5, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([34]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([17, 18, 19])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 0 for _ in [0, 6, 5, 3, 4, 8, 2, 9, 7]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [5, 6, 7],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[C4, B4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 5, 0.5, 1.5, 4, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-1, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C4, C5]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("oboe voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-1, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("oboe voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-1, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([13])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(["fs", "b", "f", "cs", "c", "d", "ef", "a", "af", "bf"]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                (
                    [6, 7, 8],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[Bb3, A4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 2, 0.5, 7, 0.5, 1.5],
                wavelengths=[1.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([17]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([1])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1, 1],
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 7 for _ in [8, 7, 9, 10, 4, 3, 5]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3, 4],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                ([5, 6], evans.Lapidary("down", "previous alteration", "octave below")),
                ([6, 7], evans.Lapidary("up", "previous alteration", "octave above")),
                (
                    [7, 8, 9, 10],
                    evans.Lapidary("down", "previous alteration", "octave below"),
                ),
                starting_range=abjad.PitchRange(range_string="[Bb3, A4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 0.5, 0.5, 1, 3, 5],
                wavelengths=[1],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-2, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C4, C5]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("bass clarinet voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-2, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("bass clarinet voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-2, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-4]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-5]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([1])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1, 1, 1],
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 6 for _ in [8, 7, 9, 10, 4, 3, 5]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3, 4],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                ([5, 6], evans.Lapidary("down", "previous alteration", "octave below")),
                ([6, 7], evans.Lapidary("up", "previous alteration", "octave above")),
                (
                    [7, 8, 9, 10],
                    evans.Lapidary("down", "previous alteration", "octave below"),
                ),
                ([10, 11], evans.Lapidary("up", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange(range_string="[Bb1, A2]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 0.5, 1, 3, 5, 0.5],
                wavelengths=[1],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-3, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C3, C4]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("bassoon voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-3, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("bassoon voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-3, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-4]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-4, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C3, C4]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("french horn voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-4, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("french horn voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-4, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([13])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[0, 1, 2, 3, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(["f", "bf", "e", "c", "b", "cs", "d", "af", "g", "a"]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [3, 4, 5],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[B3, Bb4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 2, 0.5, 7, 0.5, 1.5],
                wavelengths=[1.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-5]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-5, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C4, C5]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("trumpet voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-5, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("trumpet voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-5, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("trumpet voice", alu.measure_numbers([14])),
        #     evans.make_tied_notes(),
        #     evans.PitchHandler([-32, -22, -15, -9, -5, -4, 6, 17, 23, 24, 34, 37]),
        #     # alu.B_color,
        # ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([15])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1],
                end_counts=[1, 1, 1, 1],
                extra_counts=[1, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 3 for _ in [3, 9, 8, 10, 7, 4, 6, 11]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                ([3, 4], evans.Lapidary("down", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange(range_string="[C4, B4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[2, 4, 1.5, 0.5, 0.5, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([1])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[1, 0, 1, 2, 3, 2],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 5 for _ in [8, 7, 9, 10, 4, 3, 5]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [3, 4, 5],
                    evans.Lapidary("down", "previous alteration", "octave below"),
                ),
                starting_range=abjad.PitchRange(range_string="[Bb2, A3]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 1, 3, 5, 0.5, 0.5],
                wavelengths=[1],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-6, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C3, C4]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("tenor trombone voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-6, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("tenor trombone voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-6, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C2, C3]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([4])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[2, 1, 0, 1, 2, 3],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(["e", "fs", "b", "f", "cs", "c", "d", "ef", "a", "af"]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [4, 5, 6],
                    evans.Lapidary("down", "previous alteration", "octave below"),
                ),
                starting_range=abjad.PitchRange(range_string="[D2, C#3]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 0.5, 0.5, 1.5, 0.5, 7],
                wavelengths=[1.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        # evans.MusicCommand(
        #     ("tuba voice", alu.measure_numbers([5, 6])),
        #     alu.C_rhythms(stage=5, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("tuba voice", alu.measure_numbers([10])),
        #     alu.C_rhythms(stage=5, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
        #     # evans.loop([14], [-0.5, -1, -0.5, -1.5, 3]),
        #     # evans.downward_gliss,
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([17, 18, 19])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[2, 1, 0, 1, 2, 3],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 2 for _ in [0, 6, 5, 3, 4, 8, 2, 9, 7]]),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("up", "previous alteration", "octave above")),
                ([5, 6], evans.Lapidary("down", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange(range_string="[D2, C#3]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 5, 0.5, 1.5, 4, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        # PERCUSSION 1
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([2, 3])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([5, 6])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("percussion 1 voice", alu.measure_numbers([10])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([17, 18, 19])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1],
                end_counts=[1, 1],
                extra_counts=[3, 2, 1, 0, 1, 2],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                [-3, -1, 1, 3, 1, 3, 3, 3, 1, -1, -3, -3, -3], staff_positions=True
            ),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            abjad.Markup(r'\boxed-markup "woodblocks" #1'),
            lambda _: evans.ArticulationHandler(["tremolo"])(
                abjad.select.filter(
                    abjad.select.logical_ties(_),
                    lambda x: abjad.Duration((1, 16)) < x.written_duration,
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        # PERCUSSION 2
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([2, 3])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([5, 6])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("percussion 2 voice", alu.measure_numbers([10])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([17, 18, 19])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1],
                extra_counts=[2, 3, 2, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                [-3, -1, 1, 3, 1, 3, 3, 3, 1, -1, -3, -3, -3], staff_positions=True
            ),
            abjad.LilyPondLiteral(r"\staff-line-count #4"),
            abjad.Markup(r'\boxed-markup "slit drum" #1'),
            lambda _: evans.ArticulationHandler(["tremolo"])(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        # PIANO 1
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([2, 3])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([5, 6])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([7, 8, 9])),
            alu.make_figures(
                thread="c",
                rotation=-4,
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
            abjad.Dynamic("mf"),
            # alu.F_color,
        ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([10])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([11, 12])),
            alu.make_figures(
                thread="b",
                rotation=-5,
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
            # alu.F_color,
        ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([[17, 24, 37]]),
            abjad.Dynamic("mp"),
            abjad.Arpeggio(direction=abjad.UP),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([[6, 23, 34]]),
            abjad.Dynamic("mp"),
            abjad.Arpeggio(direction=abjad.UP),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([20, 21])),
            alu.make_figures(
                thread="a",
                rotation=-6,
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
            # abjad.Dynamic("mf"),
            # alu.F_color,
        ),
        # PIANO 2
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([2, 3])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([5, 6])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([7, 8, 9])),
            alu.make_figures(
                thread="c",
                rotation=4,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 1, 1, 1, 1, 2, 1, 2, 3, 1, 3, 1, 2, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 12, 13, 15, 23], 24),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.F_color,
        ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([10])),
        #     evans.make_tied_notes(),
        #     # alu.C_color,
        # ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([11, 12])),
            alu.make_figures(
                thread="b",
                rotation=5,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 1, 1, 1, 1, 2, 1, 2, 3, 1, 3, 1, 2, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 12, 13, 15, 23], 24),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.F_color,
        ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([[-22, -9, -4]]),
            # abjad.Dynamic("mp"),
            abjad.Arpeggio(direction=abjad.DOWN),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([[-32, -15, -5]]),
            abjad.Arpeggio(direction=abjad.DOWN),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([20, 21])),
            alu.make_figures(
                thread="a",
                rotation=6,
                preprocessor=evans.make_preprocessor(
                    quarters=True,
                    fuse_counts=[1, 1, 1, 1, 1, 2, 1, 2, 3, 1, 3, 1, 2, 2, 3],
                    split_at_measure_boundaries=True,
                ),
                rewrite=-1,
                treat_tuplets=True,
                tuplet_rest_selector=abjad.index([3, 12, 13, 15, 23], 24),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            # alu.F_color,
        ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C5, C6]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([5, 6])),
            alu.C_rhythms(stage=5, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([0], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([10])),
            alu.C_rhythms(stage=5, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([0], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([24]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([15])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[1, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 4 for _ in [3, 9, 8, 10, 7, 4, 6, 11]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                ([8, 9], evans.Lapidary("down", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange(range_string="[C4, B4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[2, 4, 1.5, 0.5, 0.5, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([23]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-8, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C4, C5]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([5, 6])),
            alu.C_rhythms(stage=5, rotation=-8, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([0], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([10])),
            alu.C_rhythms(stage=5, rotation=-8, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([0], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([17]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([15])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[1, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 5 for _ in [3, 9, 8, 10, 7, 4, 6, 11]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "centroid octave"),
                ),
                ([8, 9], evans.Lapidary("down", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange(range_string="[C4, B4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[2, 1.5, 4, 0.5, 0.5, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([6]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-9, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C3, C4]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([5, 6])),
            alu.C_rhythms(stage=5, rotation=-8, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([-12], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([10])),
            alu.C_rhythms(stage=5, rotation=-8, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([-12], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([13])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[1, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(["ef", "af", "d", "bf", "a", "b", "c", "fs", "f", "g"]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3, 4, 5, 6],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [7, 8, 9],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[C3, B4]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 2, 0.5, 7, 0.5, 1.5],
                wavelengths=[1.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-4]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-5]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([1])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[1, 4, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 0 for _ in [8, 7, 9, 10, 4, 3, 5]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3, 4],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                ([5, 6], evans.Lapidary("down", "previous alteration", "octave below")),
                ([6, 7], evans.Lapidary("up", "previous alteration", "octave above")),
                (
                    [7, 8, 9],
                    evans.Lapidary("down", "previous alteration", "octave below"),
                ),
                starting_range=abjad.PitchRange(range_string="[C2, B2]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[1, 3, 5, 0.5, 0.5, 0.5],
                wavelengths=[1],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-9, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C3, C4]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([5, 6])),
            alu.C_rhythms(stage=5, rotation=-9, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([-24], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([10])),
            alu.C_rhythms(stage=5, rotation=-9, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([-24], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([18], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-9]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-15]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([17, 18, 19])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1, 1, 1, 1],
                end_counts=[1, 1, 1],
                extra_counts=[1, 4, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([_ - 3 for _ in [0, 6, 5, 3, 4, 8, 2, 9, 7]]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [7, 8, 9],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[C2, B2]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 5, 0.5, 1.5, 4, 0.5],
                wavelengths=[2.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([2, 3])),
            alu.C_rhythms(stage=8, rotation=-10, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8], [1, 3, 2, 4, 3, 5, 4]),
            lambda _: evans.contour(
                _,
                starting_range=abjad.PitchRange(range_string="[C3, C4]"),
            ),
            evans.BendHandler([1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1]),
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([4])),
            evans.talea(
                [100],
                16,
                preamble=[1, 1, 1],
                end_counts=[1, 1, 1, 1, 1, 1, 1],
                extra_counts=[1, 4, 2, 3, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(["cs", "ef", "af", "d", "bf", "a", "b", "c", "fs", "f"]),
            lambda _: evans.contour(
                _,
                (
                    [0, 1, 2, 3],
                    evans.Lapidary("up", "previous alteration", "octave above"),
                ),
                (
                    [4, 5, 6],
                    evans.Lapidary("down", "previous alteration", "octave above"),
                ),
                starting_range=abjad.PitchRange(range_string="[C2, B3]"),
            ),
            lambda _: evans.vibrato_spanner(
                peaks=[0.5, 2, 0.5, 0.5, 0.5, 7],
                wavelengths=[1.5],
                thickness=0.2,
                divisions=[6],
                padding=2,
            )(
                abjad.select.logical_ties(
                    abjad.select.filter(
                        abjad.select.notes(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    )
                )
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.get(
                    abjad.select.filter(
                        abjad.select.logical_ties(_),
                        lambda x: abjad.Duration((1, 16)) < x.written_duration,
                    ),
                    [0],
                )[0][0],
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            # alu.E_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([5, 6])),
            alu.C_rhythms(stage=5, rotation=-10, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([-31], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([-12], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([10])),
            alu.C_rhythms(stage=5, rotation=-10, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.Callable(
                evans.loop([-31], [6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    : len(abjad.select.logical_ties(_, pitched=True)) // 2
                ],
            ),
            evans.Callable(
                evans.loop([-12], [-6]),
                selector=lambda _: abjad.select.logical_ties(_, pitched=True)[
                    len(abjad.select.logical_ties(_, pitched=True)) // 2 :
                ],
            ),
            abjad.glissando,
            abjad.Dynamic("f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([14])),
            evans.make_tied_notes(),
            evans.PitchHandler([-22]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([16])),
            evans.make_tied_notes(),
            evans.PitchHandler([-32]),
            abjad.Dynamic("mp"),
            # alu.B_color,
        ),
        # SUFFIX
        evans.call(
            "Staff Group",
            evans.PitchHandler(
                pitches,
                chord_boolean_vector=[
                    0,
                    1,
                    0,
                    0,
                    0,
                    1,
                    1,
                    0,
                    1,
                    1,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                ],
                chord_groups=[3, 2, 2, 2, 2, 3, 2, 3, 3, 2, 2, 2, 2],
                forget=False,
                to_ties=False,
            ),
            selector=evans.select_measures(
                logical_ties=True,
                voice_name_measure_pairs=[
                    ("piano 1 voice", [_ - 1 for _ in [7, 8, 9, 11, 12, 20, 21]]),
                    ("piano 2 voice", [_ - 1 for _ in [7, 8, 9, 11, 12, 20, 21]]),
                ],
            ),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.contour(
                _,
                # ([0, 1, 2, 3], evans.Lapidary("up", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[C4, C6]"),
            ),
            evans.select_measures([_ - 1 for _ in [7, 8, 9, 11, 12, 20, 21]]),
        ),
        evans.call(
            "piano 2 voice",
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.PitchRange("[C2, C4]"),
            ),
            evans.select_measures([_ - 1 for _ in [7, 8, 9, 11, 12, 20, 21]]),
        ),
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
    time_signatures=alu.signatures_08,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="08",
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
