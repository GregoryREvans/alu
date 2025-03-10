import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu


def force_stutter(selections, threshold_written_duration=(1, 16)):
    notes = abjad.select.notes(selections)
    filtered_notes = abjad.select.filter(
        notes,
        lambda _: _.written_duration == abjad.Duration(threshold_written_duration),
    )
    grouped_notes = abjad.select.group_by_contiguity(filtered_notes)
    for group in grouped_notes:
        start = group[0]
        pitch = start.written_pitch
        # number = abjad.NumberedPitch(pitch).number
        for leaf in group:
            leaf.written_pitch = pitch


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
    fermata_measures=alu.fermata_measures_07,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=17),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=18),
            lambda _: abjad.select.leaf(_, 5),
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
            ("flute voice", alu.measure_numbers([_ for _ in range(1, 12)])),
            evans.talea(
                [7, 8, 9, 11, 12, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(  # reconsider THE SHORT NOTES ONLY. Maybe try heterophony?
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Flute().pitch_range,
                    rotation=0,
                    random_seed=0,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(12, 17)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([19], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(17, 27)])),
            evans.talea(
                [7, 8, 9, 11, 12, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Flute().pitch_range,
                    rotation=0,
                    random_seed=1,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(1, 13)])),
            evans.talea(
                [7, 7, 8, 9, 11, 12, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Oboe().pitch_range,
                    rotation=0,
                    random_seed=2,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(13, 27)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([18], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(1, 11)])),
            evans.talea(
                [6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[C3, G4]'),
                    rotation=0,
                    random_seed=3,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(11, 18)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([6], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(18, 27)])),
            evans.talea(
                [6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[C3, G4]'),
                    rotation=0,
                    random_seed=4,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(1, 10)])),
            evans.talea(
                [5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[Bb1, Eb3]'),
                    rotation=0,
                    random_seed=5,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(10, 23)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([5], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(23, 27)])),
            evans.talea(
                [5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[Bb1, Eb3]'),
                    rotation=0,
                    random_seed=6,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(1, 8)])),
            evans.talea(
                [6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[B2, Bb3]'),
                    rotation=0,
                    random_seed=7,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # evans.Attachment(
            #     abjad.Clef("bass"),
            #     selector=lambda _: abjad.select.note(_, 0),
            # ),
            evans.Attachment(
                abjad.Clef("treble"),
                selector=lambda _: abjad.select.note(_, 4),
            ),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(8, 16)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1], slow=True),
            evans.loop([7], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(_, zero_padding=False, basic_glissando=True),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(16, 27)])),
            evans.talea(
                [6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[B2, Bb3]'),
                    rotation=0,
                    random_seed=8,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # evans.Attachment(
            #     abjad.Clef("bass"),
            #     selector=lambda _: abjad.select.note(_, 0),
            # ),
            # evans.Attachment(
            #     abjad.Clef("treble"),
            #     selector=lambda _: abjad.select.note(_, 32),
            # ),
            # evans.Attachment(
            #     abjad.Clef("bass"),
            #     selector=lambda _: abjad.select.note(_, 43),
            # ),
            # alu.B_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(1, 9)])),
            evans.talea(
                [6, 6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Trumpet().pitch_range,
                    rotation=0,
                    random_seed=9,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(9, 26)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1], slow=True),
            evans.loop([20], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(26, 27)])),
            evans.talea(
                [6, 6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Trumpet().pitch_range,
                    rotation=0,
                    random_seed=10,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.talea(
                [7, 6, 6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[E2, G3]'),
                    rotation=0,
                    random_seed=11,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(7, 20)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([4], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(20, 27)])),
            evans.talea(
                [7, 6, 6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[E2, G3]'),
                    rotation=0,
                    random_seed=12,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(1, 6)])),
            evans.talea(
                [5, 7, 6, 6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Tuba().pitch_range,
                    rotation=0,
                    random_seed=13,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(6, 15)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1], slow=True),
            evans.loop([3], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(_, zero_padding=False, basic_glissando=True),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(15, 27)])),
            evans.talea(
                [5, 7, 6, 6, 5, 6, 7, 7, 8, 9, 11, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Tuba().pitch_range,
                    rotation=0,
                    random_seed=14,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.talea(
                [6, 5, 6, 7, 7, 8, 1, 1],
                16,
                extra_counts=[2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            # evans.PitchHandler([evans.JIPitch("ef,,", "12/1", with_quarter_tones=True)]),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "bass drum" #1'),
            abjad.Clef("percussion"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(7, 15)])),
            evans.talea(abjad.sequence.rotate([3, 5, 8, 13, 8, 5], -5), 8, rewrite=-1),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_), abjad.index([0, 2, 3, 4], 5)
                )
            ),
            evans.PitchHandler([["e'", "af'", "a'", "b'"]]),
            abjad.Dynamic("f"),
            abjad.LilyPondLiteral(r"\staff-line-count #5"),
            abjad.Markup(r'\boxed-markup "vibraphone" #1'),
            abjad.Clef("treble"),
            lambda _: [
                abjad.attach(abjad.Arpeggio(direction=abjad.DOWN), logical_tie[0])
                for logical_tie in abjad.select.logical_ties(_, pitched=True)
            ],
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(15, 27)])),
            evans.talea(
                [6, 5, 6, 7, 7, 8, 1, 1],
                16,
                extra_counts=[2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            # evans.PitchHandler([evans.JIPitch("ef,,", "12/1", with_quarter_tones=True)]),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "bass drum" #1'),
            abjad.Clef("percussion"),
            # alu.B_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.talea(
                [5, 6, 7, 7, 8, 1, 1, 1],
                16,
                extra_counts=[2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            # evans.PitchHandler([evans.JIPitch("ef,,", "12/1", with_quarter_tones=True)]),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "tam tam" #1'),
            abjad.Clef("percussion"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(7, 21)])),
            evans.talea(abjad.sequence.rotate([3, 5, 8, 13, 8, 5], -6), 8, rewrite=-1),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_), abjad.index([0, 1, 3, 4], 5)
                )
            ),
            evans.PitchHandler([["c", "e'", "af'"]]),
            abjad.Dynamic("f"),
            abjad.LilyPondLiteral(r"\staff-line-count #5"),
            abjad.Markup(r'\boxed-markup "marimba" #1'),
            abjad.Clef("bass"),
            lambda _: [
                abjad.attach(abjad.Arpeggio(direction=abjad.UP), logical_tie[0])
                for logical_tie in abjad.select.logical_ties(_, pitched=True)
            ],
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(21, 27)])),
            evans.talea(
                [5, 6, 7, 7, 8, 1, 1, 1],
                16,
                extra_counts=[2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            # evans.PitchHandler([evans.JIPitch("ef,,", "12/1", with_quarter_tones=True)]),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "tam tam" #1'),
            abjad.Clef("percussion"),
            # alu.B_color,
        ),
        # PIANO 1
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([_ for _ in range(7, 13)])),
            evans.talea(abjad.sequence.rotate([3, 5, 8, 13, 8, 5], -7), 8, rewrite=-1),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_), abjad.index([0, 1, 2, 4], 5)
                )
            ),
            evans.PitchHandler([["a'", "b'", "bf''"]]),
            abjad.Dynamic("f"),
            lambda _: [
                abjad.attach(abjad.Arpeggio(direction=abjad.DOWN), logical_tie[0])
                for logical_tie in abjad.select.logical_ties(_, pitched=True)
            ],
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("piano 1 voice", alu.measure_numbers([_ for _ in range(13, 27)])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        # PIANO 2
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([_ for _ in range(7, 16)])),
            evans.talea(abjad.sequence.rotate([3, 5, 8, 13, 8, 5], -8), 8, rewrite=-1),
            lambda _: rmakers.force_rest(
                abjad.select.get(
                    abjad.select.logical_ties(_), abjad.index([0, 1, 2, 3], 5)
                )
            ),
            evans.PitchHandler([["d,", "c", "e'"]]),
            abjad.Dynamic("f"),
            lambda _: [
                abjad.attach(abjad.Arpeggio(direction=abjad.UP), logical_tie[0])
                for logical_tie in abjad.select.logical_ties(_, pitched=True)
            ],
            # alu.C_color,
        ),
        # evans.MusicCommand(
        #     ("piano 2 voice", alu.measure_numbers([_ for _ in range(16, 27)])),
        #     evans.make_tied_notes(),
        #     # alu.B_color,
        # ),
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 7)])),
            evans.talea(
                [6, 7, 7, 8, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=0,
                    random_seed=15,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(7, 12)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([10], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(12, 27)])),
            evans.talea(
                [6, 7, 7, 8, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=0,
                    random_seed=16,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 9)])),
            evans.talea(
                [7, 7, 8, 1, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=0,
                    random_seed=17,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(9, 21)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([16], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(21, 27)])),
            evans.talea(
                [7, 7, 8, 1, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Violin().pitch_range,
                    rotation=0,
                    random_seed=18,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(1, 10)])),
            evans.talea(
                [7, 8, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Viola().pitch_range,
                    rotation=0,
                    random_seed=19,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(10, 13)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([8], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(13, 27)])),
            evans.talea(
                [7, 8, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.Viola().pitch_range,
                    rotation=0,
                    random_seed=20,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(1, 12)])),
            evans.talea(
                [8, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[C2, Eb3]'),
                    rotation=0,
                    random_seed=21,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(12, 20)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([2], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(20, 27)])),
            evans.talea(
                [8, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[-2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5,
                    instrument_range=abjad.PitchRange(range_string='[C2, Eb3]'),
                    rotation=0,
                    random_seed=22,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(1, 11)])),
            evans.talea(
                [11, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[3, -2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5[0:2],
                    instrument_range=abjad.Contrabass().pitch_range,
                    rotation=0,
                    random_seed=23,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(11, 17)])),
            alu.C_rhythms(stage=2, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-11], [-0.5, -1, -0.5, -1.5, 3]),
            lambda _: evans.downward_gliss(
                _,
                zero_padding=False,
                # basic_glissando=True,
            ),
            lambda _: baca.hairpin(_, "p < f"),
            # alu.C_color,
        ),
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(17, 27)])),
            evans.talea(
                [11, 1, 1, 1, 1, 1, 1, 1],
                16,
                extra_counts=[3, -2, 2, 1, 0, -1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                alu.constrained_random_walk_from_source(
                    source=alu.constructed_chord_5[0:2],
                    instrument_range=abjad.Contrabass().pitch_range,
                    rotation=0,
                    random_seed=24,
                    step_list=[1],
                    length=100,
                    remove_repeats=False,
                )
            ),
            lambda _: force_stutter(_),
            lambda _: evans.ArticulationHandler(["accent"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) > abjad.Duration((1, 4))
                ]
            ),
            lambda _: evans.ArticulationHandler(["tenuto"])(
                [
                    x
                    for x in abjad.select.logical_ties(_)
                    if abjad.get.duration(x) < abjad.Duration((1, 4))
                ]
            ),
            abjad.Dynamic("ff"),
            # alu.B_color,
        ),
        # SUFFIX
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
    time_signatures=alu.signatures_07,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="07",
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
