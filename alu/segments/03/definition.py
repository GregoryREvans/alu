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
    fermata_measures=alu.fermata_measures_03,
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
            "percussion 2 voice",
            abjad.Clef("percussion"),
            lambda _: abjad.select.leaf(_, 0),
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
        # evans.attach(
        #     "cello voice",
        #     abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
        #     lambda _: abjad.select.leaf(_, 0),
        # ),
        evans.attach(
            "contrabass voice",
            abjad.Clef("bass"),
            lambda _: abjad.select.leaf(_, 0),
        ),
        # MUSIC
        # FLUTE
        evans.MusicCommand(
            ("flute voice", alu.measure_numbers([_ for _ in range(19, 23)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -8
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 8),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.Flute().pitch_range,
                        rotation=0,
                        random_seed=8,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=15),
            # # alu.B_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([_ for _ in range(20, 22)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -9
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 9),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.Oboe().pitch_range,
                        rotation=1,
                        random_seed=9,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=16),
            # # alu.B_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([_ for _ in range(20, 22)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -10
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 10),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.BassClarinet().pitch_range,
                        rotation=2,
                        random_seed=10,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=17),
            # # alu.B_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([_ for _ in range(19, 23)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -11
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 11),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.Bassoon().pitch_range,
                        rotation=3,
                        random_seed=11,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=18),
            # # alu.B_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(7, 10)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=13, rotation=-13, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(14, 18)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=14, rotation=-14, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(24, 27)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=15, rotation=-15, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([_ for _ in range(30, 39)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=0,
                extra_counts=[0, 1, 2, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=16, rotation=-16, columns=False, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.FrenchHorn().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(7, 10)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=17, rotation=-17, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("up", "previous alteration", "octave above")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(14, 18)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=18, rotation=-18, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("up", "previous alteration", "octave above")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(24, 27)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=19, rotation=-19, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("up", "previous alteration", "octave above")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([_ for _ in range(30, 39)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=1,
                extra_counts=[1, 2, 1, 0],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=20, rotation=-20, columns=True, retrograde=False
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("up", "previous alteration", "octave above")),
                starting_range=abjad.Trumpet().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(7, 10)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=2,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=21, rotation=-21, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(14, 18)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=2,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=22, rotation=-22, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(24, 27)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=2,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=23, rotation=-23, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([_ for _ in range(30, 39)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=2,
                extra_counts=[2, 1, 0, 1],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=24, rotation=-24, columns=False, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.TenorTrombone().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(7, 10)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=3,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=25, rotation=-25, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(14, 18)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=3,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=26, rotation=-26, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(24, 27)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=3,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=27, rotation=-27, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([_ for _ in range(30, 39)])),
            alu.exchanging_rhythms(
                number_of_voices=4,
                voice_number=3,
                extra_counts=[1, 0, 1, 2],
                basic_rest_period=4,
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=None),
            ),
            alu.barraque_potamia(
                transposition=28, rotation=-28, columns=True, retrograde=True
            ),
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.Tuba().pitch_range,
            ),
            lambda _: alu.faberge_swells(_),
            evans.ArticulationHandler(["tremolo"], forget=False),
            # # alu.D_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(1, 4)])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([-3, -1, 1, 3, 1, -1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=1,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Clef("percussion"), selector=lambda _: abjad.select.leaf(_, 0)
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [4]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([15])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([-3, -1, 1, 3, 1, -1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=2,
                    )
                ],
                staff_positions=True,
            ),
            evans.hairpin("p < f >", [5]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([_ for _ in range(25, 32)])),
            evans.even_division(
                [16],
                extra_counts=[1, 2, 1, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([-3, -1, 1, 3, 1, -1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=3,
                    )
                ],
                staff_positions=True,
            ),
            evans.hairpin("p < f >", [6]),
            # # alu.E_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(1, 4)])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[2, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=4,
                    )
                ],
                staff_positions=True,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\staff-line-count #4"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Clef("percussion"), selector=lambda _: abjad.select.leaf(_, 0)
            ),
            abjad.Markup(r'\boxed-markup "toms" #1'),
            evans.hairpin("p < f >", [7]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([15])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[2, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=5,
                    )
                ],
                staff_positions=True,
            ),
            evans.hairpin("p < f >", [8]),
            # # alu.E_color,
        ),
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([_ for _ in range(25, 32)])),
            evans.even_division(
                [16, 16, 32],
                extra_counts=[2, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.Callable(
                rmakers.force_rest,
                selector=lambda _: abjad.select.get(
                    abjad.select.notes(_), abjad.index([0, -1])
                ),
            ),
            evans.PitchHandler(
                [
                    _
                    for _ in evans.Sequence([3, 1, -1, -3, -1, 1]).random_walk(
                        length=400,
                        step_list=[1, 1, 1, 1, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 3, 2],
                        random_seed=6,
                    )
                ],
                staff_positions=True,
            ),
            evans.hairpin("p < f >", [9]),
            # # alu.E_color,
        ),
        # PIANO 1
        # PIANO 2
        # VIOLIN 1
        evans.MusicCommand(
            ("violin 1 voice", alu.measure_numbers([_ for _ in range(1, 39)])),
            evans.talea(
                [
                    7,
                    8,
                    9,
                    11,
                    12,
                    1,
                    1,
                    1,
                    13,
                    7,
                    9,
                    10,
                    12,
                    1,
                    1,
                    1,
                    1,
                    6,
                    12,
                    12,
                    12,
                    7,
                    6,
                    6,
                    8,
                    1,
                    1,
                    1,
                    1,
                    1,
                ],
                8,
                extra_counts=[0, -1, 0, 1, 0, -1, -1, 0, 1, 0, -1, -1, 1, 0, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler([evans.JIPitch("f,,", "7/1", with_quarter_tones=True)]),
            evans.Attachment(
                abjad.Glissando(), selector=lambda _: abjad.select.leaf(_, -1)
            ),
            lambda _: baca.text_spanner(
                _,
                r"\trem-one-markup -> \trem-three-markup -> \trem-two-markup -> \trem-five-markup -> \trem-four-markup ->",
                abjad.Tweak(r"\tweak staff-padding 4.5"),
                abjad.Tweak(r"\tweak bound-details.right.padding 2"),
                final_piece_spanner=r"\stopTextSpanOne",
                autodetect_right_padding=False,
                bookend=False,
                leak_spanner_stop=True,
                lilypond_id=1,
                pieces=lambda _: abjad.select.partition_by_counts(
                    abjad.select.logical_ties(_), [1], cyclic=True, overhang=True
                ),
            ),
            lambda _: baca.text_spanner(
                _,
                r"T -> P -> N -> P ->",
                abjad.Tweak(r"\tweak staff-padding 7.5"),
                abjad.Tweak(r"\tweak bound-details.right.padding 2"),
                final_piece_spanner=r"\stopTextSpanTwo",
                autodetect_right_padding=False,
                bookend=False,
                leak_spanner_stop=True,
                lilypond_id=2,
                pieces=lambda _: abjad.select.partition_by_counts(
                    abjad.select.logical_ties(_),
                    [2, 3, 2, 1],
                    cyclic=True,
                    overhang=True,
                ),
            ),
            lambda _: alu.alternate_swells(_, [2, 2, 3, 3]),
            # # alu.B_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([_ for _ in range(1, 39)])),
            evans.make_tied_notes(),
            evans.PitchHandler([evans.JIPitch("f,,", "5/1", with_quarter_tones=True)]),
            # lambda _: baca.text_spanner(
            #     _,
            #     r"norm. -> scr.",
            #     abjad.Tweak(r"\tweak staff-padding 5.5"),
            #     abjad.Tweak(r"\tweak bound-details.right.padding 2"),
            #     final_piece_spanner=r"\stopTextSpanOne",
            #     autodetect_right_padding=False,
            #     bookend=False,
            #     leak_spanner_stop=True,
            #     lilypond_id=2,
            #     # pieces=lambda _: abjad.select.partition_by_counts(abjad.select.logical_ties(_), [2, 3, 2, 1], cyclic=True, overhang=True),
            # ),
            evans.Attachment(
                abjad.Markup(r"\markup {scratch poco a poco}"),
                direction=abjad.UP,
                selector=lambda _: abjad.select.note(_, 0),
            ),
            # lambda _: baca.text_spanner(
            #     _,
            #     r"T -> P",
            #     abjad.Tweak(r"\tweak staff-padding 4.5"),
            #     abjad.Tweak(r"\tweak bound-details.right.padding 2"),
            #     final_piece_spanner=r"\stopTextSpanTwo",
            #     autodetect_right_padding=False,
            #     bookend=False,
            #     leak_spanner_stop=True,
            #     lilypond_id=2,
            #     # pieces=lambda _: abjad.select.partition_by_counts(abjad.select.logical_ties(_), [2, 3, 2, 1], cyclic=True, overhang=True),
            # ),
            evans.Attachment(
                abjad.Markup(r"\markup {T->P poco a poco}"),
                direction=abjad.UP,
                selector=lambda _: abjad.select.note(_, 0),
            ),
            lambda _: baca.hairpin(_, "niente o< fff"),
            # lambda _: alu.alternate_swells(_, [4, 4, 6, 6, 8, 8]),
            # # alu.B_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([_ for _ in range(18, 24)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -12
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 12),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.Viola().pitch_range,
                        rotation=4,
                        random_seed=12,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=19),
            # # alu.B_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([_ for _ in range(19, 23)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -13
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 13),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.Cello().pitch_range,
                        rotation=7,
                        random_seed=13,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=20),
            # # alu.B_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([_ for _ in range(20, 22)])),
            evans.talea(
                abjad.sequence.rotate(
                    [_ * 2 for _ in [20, 21, 19, 22, 18, 23, 17, 24, 16, 25, 15]], -14
                ),
                16,
                extra_counts=abjad.sequence.rotate([0, 0, 2, 0, 0, 3], 14),
                rewrite=-1,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    abjad.NumberedPitch(_).number
                    for _ in alu.constrained_random_walk_from_source(
                        source=alu.constructed_chord_3,
                        instrument_range=abjad.Contrabass().pitch_range,
                        rotation=6,
                        random_seed=14,
                        step_list=[1, 1, 1, 2],
                        length=30,
                        remove_repeats=True,
                    )
                ],
                forget=False,
            ),
            lambda _: alu.center_swell(_, random_seed=21),
            # # alu.B_color,
        ),
        # SUFFIX
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
    time_signatures=alu.signatures_03,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="03",
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
