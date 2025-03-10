import abjad
import baca
import evans
from abjadext import rmakers

##
## Motions
##


def exchanging_rhythms(
    number_of_voices=4,
    voice_number=0,
    extra_counts=None,
    basic_rest_period=9,
    preprocessor=None,
    rewrite=None,
    default_rests=True,
    pre_commands=None,
):
    def returned_function(signatures):

        # out = []

        numerators = baca.sequence.helianthate([[4, 4, 5], [4, 5, 6], [4, 6, 7]], -1, 1)

        index_patterns = [_ for _ in range(basic_rest_period)]

        voices = [[] for _ in range(number_of_voices)]

        cyc_voices = evans.CyclicList(voices, forget=False)

        for group in zip(*[iter(index_patterns)] * 4):
            for item in group:
                voice = cyc_voices(r=1)[0]
                voice.append(item)

        voice = voices[voice_number]
        rotated_numerators = abjad.sequence.rotate(numerators, -voice_number)
        flat_numerators = abjad.sequence.flatten(rotated_numerators)
        maker = evans.talea(
            flat_numerators,
            16,
            extra_counts=extra_counts,
            preprocessor=preprocessor,
            rewrite=rewrite,
            treat_tuplets=False,
            pre_commands=pre_commands,
        )
        music = maker(signatures)
        music = abjad.Staff(music)
        if default_rests is True:
            ties = abjad.select.logical_ties(music)
            ties = abjad.select.get(
                ties, ~abjad.index(voice, len(index_patterns) + voice_number)
            )
            rmakers.force_rest(ties)
        music = abjad.mutate.eject_contents(music)

        container = abjad.Container()
        for component in music:
            if isinstance(component, list):
                container.extend(component)
            else:
                container.append(component)
        command_target = abjad.select.tuplets(container)
        rmakers.trivialize(command_target)
        command_target = abjad.select.tuplets(container)
        rmakers.rewrite_rest_filled(command_target)
        command_target = abjad.select.tuplets(container)
        rmakers.rewrite_sustained(command_target)
        rmakers.extract_trivial(container)  # ?
        meter_command = evans.RewriteMeterCommand(boundary_depth=rewrite)
        metered_staff = rmakers.wrap_in_time_signature_staff(container[:], signatures)
        meter_command(metered_staff)
        music = abjad.mutate.eject_contents(metered_staff)
        # out.append(music)

        return music

    return returned_function


def C_rhythms(
    stage=1, rotation=0, number_of_voices=5, denominator=8, extra_counts=None, slow=False,
):
    global_numerators = [3, 2, 3, 5, 4, 3, 2, 3, 1, 2, 1, 2, 3, 2]
    if stage == 1:
        numerators = [_ + 1 for _ in global_numerators]
        numerators = abjad.sequence.rotate(numerators, rotation)
        maker = evans.talea(
            numerators,
            16,
            extra_counts=extra_counts,
            preprocessor=evans.make_preprocessor(quarters=True),
        )
        return maker  # guerrero rises (nyctivoe) segment 06
    if stage == 2:
        numerators = [_ - 1 if 1 < _ else _ for _ in global_numerators]
        numerators = abjad.sequence.rotate(numerators, rotation)
        if slow is True:
            denominator = 8
        else:
            denominator = 16
        maker = evans.talea(
            numerators,
            denominator,
            extra_counts=extra_counts,
            preprocessor=evans.make_preprocessor(quarters=True),
        )
        return maker  # guerrero falls (nyctivoe)
    if stage == 3:
        numerators = global_numerators
        numerators = abjad.sequence.rotate(numerators, rotation)
        maker = evans.talea(
            numerators,
            8,
            extra_counts=extra_counts,
            preprocessor=evans.make_preprocessor(quarters=True),
        )
        return maker  # long rise segment 05
    if stage == 4:
        return evans.talea(
            abjad.sequence.rotate(
                [2, 3, 2, 1, 2, 3, 4, 3, 2, 3, 4, 5, 4, 3, 4], rotation
            ),
            4,
        )
    if stage == 5:
        return evans.talea(
            abjad.sequence.rotate(
                [1, 1, 2, 1, 2, 3, 2, 1, 2, 1, 1, 2, 1, 1, 2, 3], rotation
            ),
            4,
        )
    if stage == 6:
        basic_numerators = [2, 2, 3, 1, 2, 3, 4, 2, 1, 3, 1, 4, 5, 3, 6, 2, 1]
        relevant_numerators = basic_numerators[:number_of_voices]
        rotated_numerators = abjad.sequence.rotate(relevant_numerators, rotation)
        constructed_maker = evans.talea(
            rotated_numerators, denominator, extra_counts=extra_counts
        )
        return constructed_maker
    if stage == 7:
        pass  # rise hold vibrato
    if stage == 8:
        numerators = abjad.sequence.rotate([4, 4, 3, 4, 2, 2, 2, 1, 2], rotation)
        maker = evans.talea(
            numerators,
            16,
            preprocessor=evans.make_preprocessor(quarters=True),
            extra_counts=extra_counts,
        )
        return maker
    if stage == 9:
        pass  # undae gliss in segment 16!


### E_rhythms
thread_a = [
    (2, 1),
    (3, 1),
    (2, -1, 1),
    (2, -1),
    (5, 1),
    (4, -2),
    (4, 2),
    (1, 1, -1, 1),
]  # no 5's

thread_b = [
    (1, -1, 1, 1, -1),
    (1, -1, 2, -1),
    (1, -1, 2, 1),
    (1, -1, 3),
    (1, 1, -3),
    (-2, 1, 1, 1),
    (-1, 1, 1, 1),
    (-3, 1, 1, -1),
    (3, 1, 1, -1),
    (3, 1, 2, 1),
]  # all 5's

thread_c = [
    (1, 1, 1, 1, -1),
    (1, 1, 1, -2),
    (1, 1, -3),
    (1, -4),
    (1, -3, 1),
    (1, -2, 1, 1),
    (1, -1, 1, 1, 1),
    (-1, 1, 1, 1, 1),
    (-1, 2, 1, 1),
    (-1, 2, 2),
]  # all 5's?

thread_d = [
    (1, 1, 1),
    (2, 1),
    (-1, 1, 1, 1),
    (1, 1, 1),
    (2, 1, 1),
    (4, 1, 1, -1),
    (1, 1, 1),
    (1, 1, 1, 4),
    (6, 2, 3),
    (4, 2, 3),
    (3, 1, 2),
    (2, 2, 1, 1, -1),
]  # all 3's?

thread_e = [
    "(1((1(-1 1)) (1(-2 1))))",
    "(1((2(-2 1)) (1(-2 1))))",
    "(1((3(1)) (2(1 1 1))))",
    "(1((5(1)) (4(1 1))))",
    "(1((1(-1 2)) (1(1 1))))",
    "(1((3(-1 2)) (2(1 -1 1))))",
    "(1((2(-2 1)) (6(1 1))))",
    "(1((3(-2 1)) (4(2 1))))",
]  # replace with full-measure figures?


def make_figures(
    thread="a",
    rotation=0,
    preprocessor=None,
    rewrite=None,
    treat_tuplets=True,
    tuplet_rest_selector=None,
):

    threads = {
        "a": thread_a,
        "b": thread_b,
        "c": thread_c,
        "d": thread_d,
        "e": thread_e,
    }

    selected_thread = threads[thread]
    rotated_thread = abjad.sequence.rotate(selected_thread, rotation)
    if thread == "e":
        maker = evans.RhythmHandler(evans.RTMMaker(rotated_thread), forget=False)
    else:

        def maker(divisions):
            music = rmakers.tuplet(divisions, rotated_thread)
            return music

    def returned_function(divisions, state=None, previous_state=None):
        time_signatures = [_ for _ in divisions]
        if preprocessor is not None:
            durations = [abjad.Duration(_.pair) for _ in divisions]
            divisions = preprocessor(durations)
        nested_music = maker(divisions)
        container = abjad.Container()
        for component in nested_music:
            if isinstance(component, list):
                container.extend(component)
            else:
                container.append(component)
        ###
        tuplets = abjad.select.tuplets(container)
        gotten_tuplets = abjad.select.get(tuplets, tuplet_rest_selector)
        for tuplet in gotten_tuplets:
            rmakers.force_rest(tuplet)
        ###
        if treat_tuplets is True:
            command_target = abjad.select.tuplets(container)
            rmakers.trivialize(command_target)
            command_target = abjad.select.tuplets(container)
            rmakers.rewrite_rest_filled(command_target)
            command_target = abjad.select.tuplets(container)
            rmakers.rewrite_sustained(command_target)
            rmakers.extract_trivial(container)  # ?
        if rewrite is not None:
            meter_command = evans.RewriteMeterCommand(boundary_depth=rewrite)
            metered_staff = rmakers.wrap_in_time_signature_staff(
                container[:], time_signatures
            )
            meter_command(metered_staff)
            music = abjad.mutate.eject_contents(metered_staff)
        else:
            music = abjad.mutate.eject_contents(container)

        return music

    return returned_function
