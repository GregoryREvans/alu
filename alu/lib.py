import abjad
import baca
import evans
from fractions import Fraction

def measure_numbers(arg):
    return [_ - 1 for _ in arg]

# lily met

met_122 = abjad.MetronomeMark((1, 4), 122)

met_105 = abjad.MetronomeMark((1, 4), 105)

met_87 = abjad.MetronomeMark((1, 4), 87)

met_70 = abjad.MetronomeMark((1, 4), 70)

met_46 = abjad.MetronomeMark((1, 4), 46)

# markup met

met_46_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 46 + Fraction(2, 3), decimal=True)

met_46_mark =  abjad.Markup(string=r'\markup {\abjad-metronome-mark-markup #2 #0 #1 #"46" \fraction 2 3 }')

mark_46 = abjad.LilyPondLiteral( # 01
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_46_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

### 46 modulations

mod_46_87 = evans.metric_modulation( # 02 X
    metronome_mark=((1, 4), 46 + Fraction(2, 3)),
    left_note=(abjad.Tuplet(multiplier="15:8", components=[abjad.Note("c'16")])),
    right_note=(abjad.Note("c'16")),
    modulated_beat=(abjad.Note("c'4")),
)

### 70 modulations

mod_70_105 = evans.metric_modulation( # 09 X 14 X
    metronome_mark=((1, 4), 70),
    left_note=(abjad.Tuplet(multiplier="3:2", components=[abjad.Note("c'8")])),
    right_note=(abjad.Note("c'8")),
    modulated_beat=(abjad.Note("c'4")),
)

### 87 modulations

mod_87_122 = evans.metric_modulation( # 05 X
    metronome_mark=((1, 4), 87 + Fraction(1, 2)),
    left_note=(abjad.Tuplet(multiplier="7:5", components=[abjad.Note("c'8")])),
    right_note=(abjad.Note("c'8")),
    modulated_beat=(abjad.Note("c'4")),
)

mod_87_70 = evans.metric_modulation( # 08 X 13 X
    metronome_mark=((1, 4), 87 + Fraction(1, 2)),
    left_note=(abjad.Tuplet(multiplier="4:5", components=[abjad.Note("c'16")])),
    right_note=(abjad.Note("c'16")),
    modulated_beat=(abjad.Note("c'4")),
)

### 105 modulations

mod_105_87 = evans.metric_modulation( # 07 X 12 X
    metronome_mark=((1, 4), 105),
    left_note=(abjad.Tuplet(multiplier="5:6", components=[abjad.Note("c'16")])),
    right_note=(abjad.Note("c'16")),
    modulated_beat=(abjad.Note("c'4")),
)

mod_105_122 = evans.metric_modulation( # 10 X
    metronome_mark=((1, 4), 105),
    left_note=(abjad.Tuplet(multiplier="7:6", components=[abjad.Note("c'16")])),
    right_note=(abjad.Note("c'16")),
    modulated_beat=(abjad.Note("c'4")),
)

mod_105_70 = evans.metric_modulation( # 15 X
    metronome_mark=((1, 4), 105),
    left_note=(abjad.Tuplet(multiplier="2:3", components=[abjad.Note("c'8")])),
    right_note=(abjad.Note("c'8")),
    modulated_beat=(abjad.Note("c'4")),
)

### 122 modulations

mod_122_105 = evans.metric_modulation( # 06 X 11 X
    metronome_mark=((1, 4), 122 + Fraction(1, 2)),
    left_note=(abjad.Tuplet(multiplier="6:7", components=[abjad.Note("c'16")])),
    right_note=(abjad.Note("c'16")),
    modulated_beat=(abjad.Note("c'4")),
)



##
##
##


def zero_padding_glissando(selections):
    for run in abjad.select.runs(selections):
        leaves = abjad.select.leaves(run)
        for leaf in leaves[1:-1]:
            abjad.tweak(leaf.note_head, r"\tweak Accidental.stencil ##f")
            abjad.tweak(leaf.note_head, r"\tweak transparent ##t")
            abjad.tweak(leaf.note_head, r"\tweak X-extent #'(0 . 0)")
            if abjad.get.has_indicator(leaf, abjad.Tie):
                abjad.detach(abjad.Tie(), leaf)
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)


def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


def toggle_tuplet_prolation(selection):
    tuplet = selection[0]
    tuplet.toggle_prolation()
    tuplet.set_minimum_denominator(4)


start_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ":|."',
    ],
    site="after",
)


clef_whitespace = abjad.LilyPondLiteral(
    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
    site="absolute_before",
)

tremolo_handler = evans.ArticulationHandler(
    ["tremolo"],
)

### Transposition Handlers ###

octave_up = evans.TranspositionHandler([abjad.NumberedInterval(12)])
octave_down = evans.TranspositionHandler([abjad.NumberedInterval(-12)])
two_octaves_up = evans.TranspositionHandler([abjad.NumberedInterval(24)])
two_octaves_down = evans.TranspositionHandler([abjad.NumberedInterval(-24)])
three_octaves_up = evans.TranspositionHandler([abjad.NumberedInterval(36)])
three_octaves_down = evans.TranspositionHandler([abjad.NumberedInterval(-36)])

quarter_up = evans.TranspositionHandler([abjad.NumberedInterval(0.5)])
quarter_down = evans.TranspositionHandler([abjad.NumberedInterval(-0.5)])

half_up = evans.TranspositionHandler([abjad.NumberedInterval(1)])
half_down = evans.TranspositionHandler([abjad.NumberedInterval(-1)])

trill_handler = evans.TrillHandler(boolean_vector=[1], only_chords=True)

bis_handler = evans.BisbigliandoHandler(
    fingering_list=[
        r"\double-diamond-parenthesized-top-markup",
        r"\diamond-parenthesized-double-diamond-markup",
        r"\double-diamond-parenthesized-top-markup",
    ],
    boolean_vector=[1],
    staff_padding=1,
    forget=False,
)

start_damp_indicator = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\damp-markup"),
    style="dashed-line-with-hook",
    command=r"\startTextSpanOne",
)

start_damp = abjad.bundle(start_damp_indicator, r"- \tweak staff-padding #3.5")

stop_damp = abjad.StopTextSpan(command=r"\stopTextSpanOne")


def fireworks(selections):
    for run in abjad.Selection(selections).runs():
        first_leaf = abjad.Selection(run).leaf(0)
        last_leaf = abjad.Selection(run).leaf(-1)
        abjad.attach(abjad.Dynamic("sfp"), first_leaf)
        abjad.attach(abjad.StartHairpin("<"), first_leaf)
        abjad.attach(abjad.Dynamic("fff", leak=True), last_leaf)


def sforzandi(selections):
    ties = abjad.Selection(selections).logical_ties(pitched=True)
    for tie in ties:
        abjad.attach(abjad.Dynamic("sfz"), tie[0])


start_scratch_indicator = abjad.StartTextSpan(
    left_text=abjad.Markup(r"poco \hspace #1 gridato"),
    right_text=abjad.Markup("molto gridato"),
    style="solid-line-with-arrow",
    command=r"\startTextSpanTwo",
)
start_scratch = abjad.bundle(start_scratch_indicator, r"- \tweak staff-padding #7")

stop_scratch = abjad.StopTextSpan(command=r"\stopTextSpanTwo")


# Preprocessors


def fuse_preprocessor(divisions):
    return [abjad.sequence.sum(divisions)]


def fuse_preprocessor_2(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2,), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_3(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3,), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_2_1(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_3_1(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_3_2(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3, 2), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    return divisions


def fuse_quarters_preprocessor_2_1(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor_1_2(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (1, 2), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor_1_1_2(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (1, 1, 2), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor_2_2_5(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 2, 5), cyclic=False, overhang=True
    )
    return [sum(_) for _ in divisions]


def quarters_preprocessor_2_1(divisions):
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    temp = []
    for measure in divisions:
        partitions = abjad.sequence.flatten(measure, depth=-1)
        partitions = abjad.sequence.partition_by_counts(
            partitions,
            (2, 1),
            cyclic=True,
            overhang=True,
        )
        sums = [sum(_) for _ in partitions]
        temp.append(sums)
    divisions = abjad.sequence.flatten(temp, depth=-1)
    return divisions


def quarters_preprocessor_2(divisions):
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    temp = []
    for measure in divisions:
        partitions = abjad.sequence.flatten(measure, depth=-1)
        partitions = abjad.sequence.partition_by_counts(
            partitions,
            (2,),
            cyclic=True,
            overhang=True,
        )
        sums = [sum(_) for _ in partitions]
        temp.append(sums)
    divisions = abjad.sequence.flatten(temp, depth=-1)
    return divisions


# def pure_quarters_preprocessor(divisions):
#     divisions = [baca.sequence.quarters([_]) for _ in divisions]
#     divisions = abjad.sequence.flatten(divisions, depth=-1)
#     return divisions


def pure_quarters_preprocessor(divisions):
    divisions = [abjad.Duration(_) for _ in divisions]  # WARNING: must coerce type?
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    return divisions


def quarters_preprocessor_3_1_2(divisions):
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    temp = []
    for measure in divisions:
        partitions = abjad.sequence.flatten(measure, depth=-1)
        partitions = abjad.sequence.partition_by_counts(
            partitions,
            (3, 1, 2),
            cyclic=True,
            overhang=True,
        )
        sums = [sum(_) for _ in partitions]
        temp.append(sums)
    divisions = abjad.sequence.flatten(temp, depth=-1)
    return divisions


def fuse_quarters_preprocessor_3_1(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def quarters_preprocessor(divisions):
    divisions = [baca.sequence.quarters([_], compound=(3, 2)) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    return divisions


def fuse_quarters_preprocessor_2_20(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 20), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def select_all_first_leaves(selections):
    run_ties = abjad.Selection(selections).runs().logical_ties(pitched=True)
    ties_first_leaves = abjad.Selection([_[0] for _ in run_ties])
    return ties_first_leaves


def select_run_first_leaves(selections):
    runs = abjad.Selection(selections).runs()
    first_ties = abjad.Selection([abjad.Selection(run).logical_tie(0) for run in runs])
    first_leaves = abjad.Selection([abjad.Selection(tie).leaf(0) for tie in first_ties])
    return first_leaves


# Scordatura


def scordatura(staff_padding=8):
    handler = evans.ScordaturaHandler(
        string_number="IV", default_pitch="c,", new_pitch="bf,,", padding=staff_padding
    )
    return handler


# ANNOTATIONS
class MAS:
    def __init__(
        self,
        string,
        color,
        staff_padding,
    ):
        self.string = string
        self.color = color
        self.staff_padding = staff_padding

    def __call__(self, selections):
        first_leaf = selections.leaf(0)
        last_leaf = selections.leaves()[-1]
        start_indicator = abjad.StartTextSpan(
            left_text=rf'- \evans-text-spanner-left-text "{self.string}"',
            command=r"\evansStartTextSpanMaterialAnnotation",
            style="dashed-line-with-hook",
            right_padding=-1,
        )
        start = abjad.bundle(
            start_indicator,
            rf"- \tweak staff-padding #{self.staff_padding}",
            rf"- \ tweak color #{self.color}",
        )
        stop = abjad.StopTextSpan(
            command=r"\evansStopTextSpanMaterialAnnotation",
        )
        abjad.attach(start, first_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)
        abjad.attach(stop, last_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)


A = MAS(
    string="[A].",
    color=f"#(rgb-color {175/255} {160/255} {236/255})",
    staff_padding=5.5,
)


def A_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {175/255} {160/255} {236/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


B = MAS(
    string="[B].",
    color=f"#(rgb-color {255/255} {255/255} {170/255})",
    staff_padding=5.5,
)


def B_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {255/255} {255/255} {170/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


C = MAS(
    string="[C].",
    color=f"#(rgb-color {186/255} {253/255} {166/255})",
    staff_padding=5.5,
)


def C_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {186/255} {253/255} {166/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


D = MAS(
    string="[D].",
    color=f"#(rgb-color {245/255} {153/255} {145/255})",
    staff_padding=5.5,
)


def D_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {245/255} {153/255} {145/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


E = MAS(
    string="[E].",
    color=f"#(rgb-color {177/255} {211/255} {238/255})",
    staff_padding=5.5,
)


def E_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {177/255} {211/255} {238/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


F = MAS(
    string="[F].",
    color=f"#(rgb-color {247/255} {194/255} {156/255})",
    staff_padding=5.5,
)


def F_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {247/255} {194/255} {156/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


G = MAS(
    string="[G].",
    color=f"#(rgb-color {226/255} {226/255} {226/255})",
    staff_padding=5.5,
)


def G_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {226/255} {226/255} {226/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


H = MAS(
    string="[H].",
    color=f"#(rgb-color {186/255} {253/255} {254/255})",
    staff_padding=5.5,
)


def H_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {186/255} {253/255} {254/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)

I = MAS(
    string="[I].",
    color=f"#(rgb-color {197/255} {201/255} {251/255})",
    staff_padding=5.5,
)


def I_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        rf"\staffHighlight #(rgb-color {197/255} {201/255} {251/255})", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


def label_clock_time(selections):
    abjad.label.with_start_offsets(selections, clock_time=True)


def select_measures(
    index_list, leaf=None, leaves=None, logical_ties=None, note=None, notes=None
):
    if leaf is not None:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaf(sel_3, leaf)
            return sel_4

        return selector
    elif isinstance(leaves, list):

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaves(sel_3)
            sel_5 = abjad.select.get(sel_4, leaves)
            return sel_5

        return selector
    elif leaves is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaves(sel_3)
            return sel_4

        return selector
    elif logical_ties is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.logical_ties(sel_3)
            return sel_4

        return selector
    elif note is not None:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.note(sel_3, note)
            return sel_4

        return selector
    elif notes is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.notes(sel_3)
            return sel_4

        return selector
    else:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            return sel_3

        return selector


hairpins = evans.CyclicList(["<", "<|", "<", "<", "<", "<", "<|", "<"], forget=False)


def swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        next_hairpin = hairpins(r=1)[0]
        hairpin_string = "p " + next_hairpin + " f"
        hairpin = baca.hairpin(hairpin_string)
        hairpin(pair)


_hairpins = evans.CyclicList(["<", "<|"], forget=False)


def cello_swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 != 0:
            abjad.attach(abjad.Dynamic("mf"), abjad.Selection(pair).leaf(0))
        else:
            next_hairpin = _hairpins(r=1)[0]
            hairpin_string = "p " + next_hairpin + " f"
            hairpin = baca.hairpin(hairpin_string)
            hairpin(pair)


def alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        # abjad.attach(abjad.Glissando(), pair[0][-1])
        abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def cello_alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 == 0:
            # abjad.attach(abjad.Glissando(), pair[0][-1])
            abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def trill_ties(selections):
    abjad.trill_spanner(selections, selector=lambda _: abjad.Selection(_).notes())


start_bis_trill_one = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \double-diamond-parenthesized-top-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

start_bis_trill_two = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \diamond-parenthesized-double-diamond-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

stop_bis_trill = abjad.StopTrillSpan()


multi_stac = evans.ArticulationHandler(
    articulation_list=[
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #3",
        "tongue #3",
    ],
    articulation_boolean_vector=[1],
    vector_forget=False,
    forget=False,
)


def triple_swell(selections):
    triples = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([3], cyclic=True, overhang=False)
    )
    for triple in triples:
        abjad.attach(abjad.Dynamic("mp"), triple[0][0])
        abjad.attach(abjad.StartHairpin("<"), triple[0][0])
        abjad.attach(abjad.Dynamic("f"), triple[1][0])
        abjad.attach(abjad.StartHairpin(">"), triple[1][0])
        abjad.attach(abjad.Dynamic("mp"), triple[2][-1])
        span = baca.text_spanner(  # WARNING: double check this interface
            "T. => P.",
            (abjad.tweak(5).staff_padding, 0),
            lilypond_id=1,
        )
        span(triple)
        abjad.trill_spanner(triple)


bah = evans.BowAngleHandler([0, 45, 0, -45, 70, -70, 0, 25, -25, 0, 60])


def angles(selections):
    for run in abjad.Selection(selections).runs():
        bah(run)


def bis_trill(selections):
    first_leaf = selections.leaf(0)
    last_leaf = selections.leaf(-1)
    abjad.attach(start_bis_trill_one, first_leaf)
    abjad.attach(stop_bis_trill, last_leaf)


def special_hairpin(selections):
    leaves = selections.leaves()
    abjad.attach(abjad.Dynamic("p"), leaves[0])
    abjad.attach(abjad.StartHairpin("<|"), leaves[0])
    abjad.attach(abjad.Dynamic("f"), leaves[1])
    abjad.attach(abjad.Dynamic("p"), leaves[2])
    abjad.attach(abjad.StartHairpin("<"), leaves[2])
    abjad.attach(abjad.Dynamic("ff"), leaves[3])
    abjad.attach(abjad.StartHairpin("--"), leaves[3])
    abjad.attach(abjad.StartHairpin(">"), leaves[4])
    abjad.attach(abjad.Dynamic("mf"), leaves[5])
    abjad.attach(abjad.StartHairpin("<|"), leaves[5])
    abjad.attach(abjad.Dynamic("f"), leaves[6])


def substitute_time_signatures(leaves, new_signatures):
    out = []
    for time_signature in new_signatures:
        new_skip = abjad.Skip(1, multiplier=(time_signature))
        abjad.attach(time_signature, new_skip, tag=abjad.Tag("scaling time signatures"))
        out.append(new_skip)
    abjad.mutate.replace(leaves, out)


def replace_sigs(new_sigs):
    return lambda _: substitute_time_signatures(_, new_sigs)


def add_fancy_glisses(indices=[0]):
    def returned_function(selections):
        ties = abjad.select.logical_ties(selections, grace=False)
        targets = abjad.select.get(ties, indices)
        final_targets = [abjad.select.leaf(_, -1) for _ in targets]
        for target in final_targets:
            abjad.attach(
                abjad.Glissando(),
                target,
            )
            abjad.attach(
                evans.make_fancy_gliss(3, 2, 4, 2, 1, right_padding=0.5),
                target,
            )

    return returned_function
