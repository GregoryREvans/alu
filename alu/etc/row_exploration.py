import abjad
import evans

prime_row = evans.PitchClassSegment([4, 6, 11, 5, 1, 0, 2, 3, 9, 8, 10, 7])

row_6 = prime_row.transpose(2)

row_i_11 = prime_row.invert(4).transpose(7)

row_2 = prime_row.transpose(-2)

row_ri_3 = prime_row.invert(4).transpose(-1).retrograde()


# #### RESOURCE 1 ####
# partitions = [prime_row[0:3], prime_row[3:8], prime_row[8:10], prime_row[10:]]
# multiplications_1 = evans.Sequence([_ - partitions[0][0] for _ in partitions[0]]).derive_added_sequences(partitions[1])
# multiplications_2 = evans.Sequence([_ - partitions[2][0] for _ in partitions[2]]).derive_added_sequences(partitions[3])
# derived_chord_1 = multiplications_1.flatten(depth=-1)
# derived_chord_2 = multiplications_2.flatten(depth=-1)
#
# staff_1 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in prime_row])
# staff_2 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_1])
# staff_3 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_2])
# staff_4 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))])
# staff_5 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_2], (1, 4))])
#
# group = abjad.StaffGroup([
#     staff_1,
#     staff_2,
#     staff_4,
#     staff_3,
#     staff_5
# ])
# abjad.show(group)

# #### RESOURCE 2 ####
# partitions = [row_6[0:3], row_6[3:8], row_6[8:10], row_6[10:]]
# multiplications_1 = evans.Sequence([_ - partitions[3][0] for _ in partitions[3]]).derive_added_sequences(partitions[0])
# multiplications_2 = evans.Sequence([_ - partitions[2][0] for _ in partitions[2]]).derive_added_sequences(partitions[1])
# derived_chord_1 = multiplications_1.flatten(depth=-1)
# derived_chord_2 = multiplications_2.flatten(depth=-1)
#
# staff_1 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in row_6])
# staff_2 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_1])
# staff_3 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_2])
# staff_4 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))])
# staff_5 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_2], (1, 4))])
#
# group = abjad.StaffGroup([
#     staff_1,
#     staff_2,
#     staff_4,
#     staff_3,
#     staff_5
# ])
# abjad.show(group)

# #### RESOURCE 3 ####
# proliferated_series = abjad.sequence.permute([int(_) for _ in row_i_11], [int(row_ri_3.pitch_classes.index(int(_))) for _ in row_i_11])
# partitions = [row_i_11[0:1], row_i_11[1:6], row_i_11[6:9], row_i_11[9:]]
# partitions_ = [proliferated_series[0:2], proliferated_series[2:6], proliferated_series[6:8], proliferated_series[8:]]
# multiplications_1 = evans.Sequence([_ - partitions[0][0] for _ in partitions[0]]).derive_added_sequences(partitions_[0])
# multiplications_2 = evans.Sequence([_ - partitions[1][0] for _ in partitions[1]]).derive_added_sequences(partitions_[1])
# multiplications_3 = evans.Sequence([_ - partitions[2][0] for _ in partitions[2]]).derive_added_sequences(partitions_[2])
# multiplications_4 = evans.Sequence([_ - partitions[3][0] for _ in partitions[3]]).derive_added_sequences(partitions_[3])
# derived_chord_1 = multiplications_1.flatten(depth=-1)
# derived_chord_2 = multiplications_2.flatten(depth=-1)
# derived_chord_3 = multiplications_3.flatten(depth=-1)
# derived_chord_4 = multiplications_4.flatten(depth=-1)
#
# staff_1 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in row_i_11])
# staff_11 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in row_ri_3])
# staff_10 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in proliferated_series])
# staff_2 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_1])
# staff_3 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_2])
# staff_4 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_3])
# staff_5 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_4])
# staff_6 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))])
# staff_7 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_2], (1, 4))])
# staff_8 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_3], (1, 4))])
# staff_9 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_4], (1, 4))])
#
# group = abjad.StaffGroup([
#     staff_1,
#     staff_11,
#     staff_10,
#     staff_2,
#     staff_6,
#     staff_3,
#     staff_7,
#     staff_4,
#     staff_8,
#     staff_5,
#     staff_9,
# ])
# abjad.show(group)

# #### RESOURCE 4 ####
# partitions = [prime_row[0:4], prime_row[4:11], prime_row[11:]]
# multiplications_1 = evans.Sequence([_ - partitions[0][0] for _ in partitions[0]]).derive_added_sequences(partitions[1])
# derived_chord_1 = multiplications_1.flatten(depth=-1)
#
# staff_1 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in prime_row])
# staff_2 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_1])
# staff_4 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))])
#
# group = abjad.StaffGroup([
#     staff_1,
#     staff_2,
#     staff_4,
# ])
# abjad.show(group)

# #### RESOURCE 5 ####
# partitions = [prime_row[10:], prime_row[0:10]]
# multiplications_1 = evans.Sequence([_ - partitions[0][0] for _ in partitions[0]]).derive_added_sequences(partitions[1])
# derived_chord_1 = multiplications_1.flatten(depth=-1)
#
# staff_1 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in prime_row])
# staff_2 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_1])
# staff_4 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))])
#
# group = abjad.StaffGroup([
#     staff_1,
#     staff_2,
#     staff_4,
# ])
# abjad.show(group)

# #### RESOURCE 6 ####
# partitions = [[prime_row[11], prime_row[0], prime_row[1]], prime_row[1:11]]
# multiplications_1 = evans.Sequence([_ - partitions[0][0] for _ in partitions[0]]).derive_added_sequences(partitions[1])
# derived_chord_1 = multiplications_1.flatten(depth=-1)
#
# staff_1 = abjad.Staff([abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in prime_row])
# staff_2 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4)) for _ in multiplications_1])
# staff_4 = abjad.Staff([abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))])
#
# group = abjad.StaffGroup([
#     staff_1,
#     staff_2,
#     staff_4,
# ])
# abjad.show(group)

#### RESOURCE 7 ####
partitions = [
    [prime_row[11], prime_row[10], prime_row[9]],
    [
        prime_row[8],
        prime_row[7],
        prime_row[6],
        prime_row[5],
        prime_row[4],
        prime_row[3],
        prime_row[2],
        prime_row[1],
        prime_row[0],
    ],
]
multiplications_1 = evans.Sequence(
    [_ - partitions[0][0] for _ in partitions[0]]
).derive_added_sequences(partitions[1])
derived_chord_1 = multiplications_1.flatten(depth=-1)

staff_1 = abjad.Staff(
    [abjad.Note(abjad.NumberedPitch(int(_)), (1, 4)) for _ in prime_row]
)
staff_2 = abjad.Staff(
    [
        abjad.Chord([abjad.NumberedPitch(int(x)) for x in _], (1, 4))
        for _ in multiplications_1
    ]
)
staff_4 = abjad.Staff(
    [abjad.Chord([abjad.NumberedPitch(int(x)) for x in derived_chord_1], (1, 4))]
)

group = abjad.StaffGroup(
    [
        staff_1,
        staff_2,
        staff_4,
    ]
)
abjad.show(group)
