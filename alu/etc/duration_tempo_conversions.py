from fractions import Fraction

root_tempo = 70

tempo_ratios = [
    Fraction(2, 3),
    Fraction(1, 1),
    Fraction(5, 4),
    Fraction(3, 2),
    Fraction(7, 4),
]

available_tempi = [root_tempo * _ for _ in tempo_ratios]

tempo_progression = [
    available_tempi[0],
    available_tempi[2],
    available_tempi[4],
    available_tempi[3],
    available_tempi[2],
    available_tempi[1],
    available_tempi[3],
    available_tempi[1],
]

durations_in_seconds = [36, 361, 9, 87, 70, 70, 54, 226]

common_time_measures = [round(duration / 4) for duration in durations_in_seconds]

assert len(tempo_progression) == len(durations_in_seconds)

tempo_adjusted_measures = []

for tempo, measures in zip(tempo_progression, common_time_measures):
    tempo_ratio = tempo / Fraction(60, 1)
    adjusted_measures = round(float(tempo_ratio * measures))
    tempo_adjusted_measures.append(adjusted_measures)

for tempo, old_measure, new_measure in zip(
    tempo_progression, common_time_measures, tempo_adjusted_measures
):
    print(
        f"{old_measure} measures at quarter = {float(tempo)} becomes {new_measure} measures\n"
    )
