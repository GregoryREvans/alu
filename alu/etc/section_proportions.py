reference_size = 8

phi = 1.6

desired_duration = 20 * 60

proportions = [1, (reference_size*2)/phi, reference_size, reference_size, ((reference_size*2)/phi)/phi]

durations_in_seconds = []

for proportion in proportions:
    current_dur = round((proportion * desired_duration) / sum(proportions))
    durations_in_seconds.append(current_dur)

for i, duration in enumerate(durations_in_seconds):
    print(f"D{i + 1}={duration}")

subsection_durations = []

for proportion in proportions:
    current_dur = round((proportion * durations_in_seconds[2]) / sum(proportions))
    subsection_durations.append(current_dur)

for i, duration in enumerate(subsection_durations):
    print(f"d{i + 1}={duration}")
