import abjad
import evans

# time_signature_series = dict()
#
# numerators = evans.Sequence([[5, 4, 4], [2, 3, 3], [3, 5]])
# groups = numerators.helianthate(-1, 1)
# numerators = evans.Sequence(groups).flatten(depth=-1)
# _time_signatures = [abjad.TimeSignature((_, 4)) for _ in numerators]
# groups = evans.Sequence(_time_signatures)
# time_signature_series["A"] = groups  # -1 cycles
#
# numerators = evans.Sequence([[8, 7], [6, 5, 4], [9, 8, 10], [8, 7, 6]])
# groups = numerators.helianthate(-2, 3)
# numerators = evans.Sequence(groups).flatten(depth=-1)
# _time_signatures = [abjad.TimeSignature((_, 8)) for _ in numerators]
# groups = evans.Sequence(_time_signatures)
# groups = groups.reduce_time_signatures_in_list()
# time_signature_series["B"] = groups  # -2 cycles
#
# numerators = evans.Sequence([[18, 16, 15], [12, 12, 11, 10], [8, 7]])
# groups = numerators.helianthate(-6, 4)
# numerators = evans.Sequence(groups).flatten(depth=-1)
# _time_signatures = [abjad.TimeSignature((_, 16)) for _ in numerators]
# groups = evans.Sequence(_time_signatures)
# groups = groups.reduce_time_signatures_in_list()
# time_signature_series["C"] = groups  # -3 cycles

# (A, B, C) 1
# (A, C, B) 4
# (B, A, C) 6
# (B, C, A) 5
# (C, A, B) 3
# (C, B, A) 2
# B C B A C A B A

##
## 01 ##
##

signatures_01 = [abjad.TimeSignature((4, 4)) for _ in range(19)]

signatures_01.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_01 = []

reduced_signatures_01 = evans.reduce_fermata_measures(
    signatures_01, fermata_measures_01
)


##
## total ##
##

all_signatures = evans.join_time_signature_lists(
    [
        reduced_signatures_01,
    ]
)
