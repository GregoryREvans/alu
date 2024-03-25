import abjad
import evans

# instrument_one = abjad.Violin(pitch_range=abjad.PitchRange("[G3, +inf]"))
# instrument_one_range = instrument_one.pitch_range
# instrument_one_range_lowest = abjad.NumberedPitch(instrument_one_range.start_pitch)
# instrument_one_range_highest = abjad.NumberedPitch(instrument_one_range.stop_pitch)
#
# instrument_two = abjad.Violin(pitch_range=abjad.PitchRange("[G3, +inf]"))
# instrument_two_range = instrument_two.pitch_range
# instrument_two_range_lowest = abjad.NumberedPitch(instrument_two_range.start_pitch)
# instrument_two_range_highest = abjad.NumberedPitch(instrument_two_range.stop_pitch)
#
# instrument_three = abjad.Viola(pitch_range=abjad.PitchRange("[C3, +inf]"))
# instrument_three_range = instrument_three.pitch_range
# instrument_three_range_lowest = abjad.NumberedPitch(instrument_three_range.start_pitch)
# instrument_three_range_highest = abjad.NumberedPitch(instrument_three_range.stop_pitch)
#
# instrument_four = abjad.Cello(pitch_range=abjad.PitchRange("[C2, +inf]"))
# instrument_four_range = instrument_four.pitch_range
# instrument_four_range_lowest = abjad.NumberedPitch(instrument_four_range.start_pitch)
# instrument_four_range_highest = abjad.NumberedPitch(instrument_four_range.stop_pitch)

instruments = [
    abjad.Flute(),
    abjad.Oboe(),
    abjad.BassClarinet(),
    abjad.Bassoon(),
    abjad.FrenchHorn(),
    abjad.Trumpet(),
    abjad.TenorTrombone(),
    abjad.Tuba(),
    abjad.Percussion(),
    abjad.Percussion(),
    abjad.Piano(),
    abjad.Piano(),
    abjad.Violin(),
    abjad.Violin(),
    abjad.Viola(),
    abjad.Cello(),
    abjad.Contrabass(),
]
