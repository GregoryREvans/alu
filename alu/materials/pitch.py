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
