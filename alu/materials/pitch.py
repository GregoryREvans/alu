import abjad
import evans

### materials ###


def potamia_pitches(transposition=0, columns=False, retrograde=False):
    source = evans.PitchSegment([0, 2, 1, 4, 8, 7]).transpose(transposition)
    alpha = source.alpha(1)
    compression = alpha.multiply(0.5)
    inversion = source.invert(source[0])
    interleaved_sequence = []
    for i in range(len(source)):
        interleaved_sequence.append(inversion[i])
        interleaved_sequence.append(compression[i])
    matrix = evans.Sequence(interleaved_sequence).matrix()
    river = matrix.potamia(columns=columns, retrograde=retrograde)
    flattened_river = river.flatten()
    river_pitch_classes = evans.PitchClassSegment(flattened_river)
    returned_handler = evans.PitchHandler(river_pitch_classes, forget=False)
    return returned_handler


def barraque_potamia(transposition=0, rotation=0, columns=False, retrograde=False):
    source = (
        evans.PitchSegment(
            [
                abjad.NumberedPitchClass(_).number
                for _ in [
                    "b",
                    "a",
                    "e",
                    "bf",
                    "d",
                    "ef",
                    "cs",
                    "c",
                    "fs",
                    "g",
                    "f",
                    "af",
                ]
            ]
        )
        .transpose(transposition)
        .rotate(rotation)
    )
    matrix = evans.Sequence(source).matrix()
    river = matrix.potamia(columns=columns, retrograde=retrograde)
    flattened_river = river.flatten()
    river_pitch_classes = evans.PitchClassSegment(flattened_river)
    returned_handler = evans.PitchHandler(river_pitch_classes, forget=False)
    return returned_handler


### demo?
constructed_chord_1 = ["e,", "a,", "g", "af", "b", "ef'", "bf'", "d''", "f''"]
constructed_chord_2 = ["c,", "d", "fs", "b", "cs'", "ef'", "g'", "a'", "d''", "af''"]
constructed_chord_3 = ["bf,", "f", "b", "e'", "f'", "bf'"]
constructed_chord_4 = ["g,", "bf,", "c", "ef", "b", "d'", "f'", "af'", "cs''", "e''"]
constructed_chord_5 = ["d,", "c", "e'", "af'", "a'", "b'", "bf''"]


def constrained_random_walk_from_source(
    source=["c,,", "fs'", "f''"],
    instrument_range=abjad.AltoFlute().pitch_range,
    rotation=0,
    random_seed=0,
    step_list=[1],
    length=10,
    remove_repeats=True,
):
    constrained_source = evans.Sequence(
        [_ if abjad.NamedPitch(_) in instrument_range else None for _ in source]
    )
    constrained_source = constrained_source.remove_none()
    mirrored_source = constrained_source.mirror(sequential_duplicates=False)
    rotated_mirror = mirrored_source.rotate(rotation)
    walk = rotated_mirror.random_walk(
        random_seed=random_seed, step_list=step_list, length=length
    )
    final_sequence = walk.remove_repeats()
    return [_ for _ in final_sequence]
