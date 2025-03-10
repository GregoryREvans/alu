import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

import alu

melodic_sequence = [11, 9, 4, 10, 2, 3, 1, 0, 6, 7, 5, 8]
source_chord = ["b", "ds'", "fs'", "bf'", "ef''", "a''", "c'''", "g'''"]
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
    fermata_measures=alu.fermata_measures_05,
    commands=[
        # PREFIX
        evans.attach(
            "Global Context",
            abjad.RehearsalMark(number=12),
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
            alu.C_rhythms(stage=3, rotation=0, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([2], [0.5, 1, 0.5, 1.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # OBOE
        evans.MusicCommand(
            ("oboe voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-1, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([0], [0.5, 1, 1, 1.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # CLARINET
        evans.MusicCommand(
            ("bass clarinet voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-2, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-13], [0.5, 1, 1.5, 1.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # BASSOON
        evans.MusicCommand(
            ("bassoon voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-3, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-15], [0.5, 1.5, 1.5, 1.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # HORN
        evans.MusicCommand(
            ("french horn voice", alu.measure_numbers([1, 2, 3])),
            # alu.C_rhythms(stage=3, rotation=-4, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.make_tied_notes(),
            # evans.loop([-14], [1, 1.5, 1.5, 1.5]),
            evans.PitchHandler([-14]),
            # evans.upward_gliss,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # TRUMPET
        evans.MusicCommand(
            ("trumpet voice", alu.measure_numbers([1, 2, 3])),
            # alu.C_rhythms(stage=3, rotation=-5, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.make_tied_notes(),
            # evans.loop([2], [1, 1.5, 1.5, 2]),
            evans.PitchHandler([2]),
            # evans.upward_gliss,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # TROMBONE
        evans.MusicCommand(
            ("tenor trombone voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-6, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-17], [1, 1.5, 2, 2]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # TUBA
        evans.MusicCommand(
            ("tuba voice", alu.measure_numbers([1, 2, 3])),
            # alu.C_rhythms(stage=3, rotation=-7, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.make_tied_notes(),
            # evans.loop([-18], [1, 2, 2, 2]),
            evans.PitchHandler([-18]),
            # evans.upward_gliss,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # PERCUSSION 1
        evans.MusicCommand(
            ("percussion 1 voice", alu.measure_numbers([1, 2, 3])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "seashell windchime (damped)" #1'),
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # PERCUSSION 2
        evans.MusicCommand(
            ("percussion 2 voice", alu.measure_numbers([1, 2, 3])),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            abjad.LilyPondLiteral(r"\staff-line-count #1"),
            abjad.Markup(r'\boxed-markup "snare" #1'),
            abjad.Dynamic("mf"),
            # alu.C_color,
        ),
        # PIANO 1
        evans.MusicCommand(
            ("piano 1 voice", alu.measure_numbers([4])),
            alu.make_figures(
                thread="d",
                rotation=-3,
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
        # PIANO 2
        evans.MusicCommand(
            ("piano 2 voice", alu.measure_numbers([4])),
            alu.make_figures(
                thread="c",
                rotation=3,
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
            ("violin 1 voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-10, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-5], [1.5, 2, 2, 2]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # VIOLIN 2
        evans.MusicCommand(
            ("violin 2 voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-11, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([2], [1.5, 2, 2, 2.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            evans.Attachment(
                abjad.Markup(r"\markup {(normale)}"),
                direction=abjad.UP,
                selector=lambda _: abjad.select.note(_, 0),
            ),
            # alu.C_color,
        ),
        # VIOLA
        evans.MusicCommand(
            ("viola voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-12, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-12], [2, 2, 2, 2.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # CELLO
        evans.MusicCommand(
            ("cello voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-13, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-24], [2, 2, 2.5, 2.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
        ),
        # BASS
        evans.MusicCommand(
            ("contrabass voice", alu.measure_numbers([1, 2, 3])),
            alu.C_rhythms(stage=3, rotation=-14, extra_counts=[0, 1, 2, 3, 2, 1]),
            evans.loop([-20 - 12], [2, 2.5, 2.5, 2.5]),
            # evans.upward_gliss,
            abjad.glissando,
            abjad.Dynamic("ff"),
            # alu.C_color,
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
                    ("piano 1 voice", [3]),
                    ("piano 2 voice", [3]),
                ],
            ),
        ),
        evans.call(
            "piano 1 voice",
            lambda _: evans.contour(
                _,
                # ([0, 1, 2, 3], evans.Lapidary("up", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[C4, C8]"),
            ),
            evans.select_measures([3]),
        ),
        evans.call(
            "piano 2 voice",
            lambda _: evans.contour(
                _,
                # ([0, 1], evans.Lapidary("down", "previous alteration", "octave below")),
                starting_range=abjad.PitchRange("[A0, C4]"),
            ),
            evans.select_measures([3]),
        ),
        evans.attach(
            "Global Context",
            alu.mod_87_122,
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
    time_signatures=alu.signatures_05,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="05",
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
