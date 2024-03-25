import random


def randomize_orchestrations(
    available_instruments,
    allowable_sizes=[_ for _ in range(1, 5 + 1)],
    seed=1,
):
    random.seed(seed)
    out = []
    used = []
    unused = available_instruments
    while any([inst not in used for inst in available_instruments]):
        temp = []
        size = random.choice(allowable_sizes)
        if size < len(unused):
            for i in range(size):
                random_instrument = random.choice(unused)
                temp.append(random_instrument)
                used.append(random_instrument)
                unused.remove(random_instrument)
        else:
            temp.extend(unused)
            used.extend(unused)
            unused = []
        out.append(temp)
    return out


orch = randomize_orchestrations(
    available_instruments=[
        "flute",
        "oboe",
        "bass clarinet",
        "bassoon",
        "horn",
        "trumpet",
        "trombone",
        "tuba",
        "percussion 1",
        "percussion 2",
        "piano",
        "violin 1",
        "violin 2",
        "viola",
        "cello",
        "contrabass",
    ],
    allowable_sizes=[_ for _ in range(2, 4 + 1)],
    seed=3,
)

for _ in orch:
    print(_)
