import abjad
import evans


def sigs(series, rotation, count):
    if series == "A":
        numerators = evans.Sequence([[4, 4, 4], [4, 4, 3], [4, 3, 2], [4, 3]])
        groups = numerators.helianthate(-1, 1)
        numerators = evans.Sequence(groups).rotate(rotation).flatten(depth=-1)
        _time_signatures = [abjad.TimeSignature((_, 4)) for _ in numerators]
        cyc_sigs = evans.CyclicList(_time_signatures)
        return cyc_sigs(r=count)

    if series == "B":
        numerators = evans.Sequence([[4, 5], [4, 4, 4], [4, 4, 5], [3, 4, 4, 5]])
        groups = numerators.helianthate(1, -1)
        numerators = evans.Sequence(groups).rotate(rotation).flatten(depth=-1)
        _time_signatures = [abjad.TimeSignature((_, 4)) for _ in numerators]
        cyc_sigs = evans.CyclicList(_time_signatures)
        return cyc_sigs(r=count)


##
## 01 ##
##

signatures_01 = sigs(
    series="A",
    rotation=0,
    count=7,
)

signatures_01.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_01 = []

reduced_signatures_01 = evans.reduce_fermata_measures(
    signatures_01, fermata_measures_01
)

##
## 02 ##
##

signatures_02 = sigs(
    series="B",
    rotation=0,
    count=58,
)

signatures_02.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_02 = []

reduced_signatures_02 = evans.reduce_fermata_measures(
    signatures_02, fermata_measures_02
)

##
## 03 ##
##

signatures_03 = sigs(
    series="A",
    rotation=2,
    count=38,
)

signatures_03.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_03 = []

reduced_signatures_03 = evans.reduce_fermata_measures(
    signatures_03, fermata_measures_03
)

##
## 04 # #
##

signatures_04 = sigs(
    series="B",
    rotation=3,
    count=35,
)

signatures_04.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_04 = []

reduced_signatures_04 = evans.reduce_fermata_measures(
    signatures_04, fermata_measures_04
)

##
## 05 ##
##

signatures_05 = sigs(
    series="A",
    rotation=4,
    count=4,
)

signatures_05.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_05 = []

reduced_signatures_05 = evans.reduce_fermata_measures(
    signatures_05, fermata_measures_05
)

##
## 06 ##
##

signatures_06 = sigs(
    series="B",
    rotation=6,
    count=38,
)

signatures_06.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_06 = []

reduced_signatures_06 = evans.reduce_fermata_measures(
    signatures_06, fermata_measures_06
)

##
## 07 ##
##

signatures_07 = sigs(
    series="A",
    rotation=6,
    count=26,
)

signatures_07.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_07 = []

reduced_signatures_07 = evans.reduce_fermata_measures(
    signatures_07, fermata_measures_07
)

##
## 08 ##
##

signatures_08 = sigs(
    series="B",
    rotation=9,
    count=21,
)

signatures_08.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_08 = []

reduced_signatures_08 = evans.reduce_fermata_measures(
    signatures_08, fermata_measures_08
)

##
## 09 ##
##

signatures_09 = sigs(
    series="A",
    rotation=8,
    count=24,
)

signatures_09.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_09 = []

reduced_signatures_09 = evans.reduce_fermata_measures(
    signatures_09, fermata_measures_09
)

##
## 10 ##
##

signatures_10 = sigs(
    series="B",
    rotation=12,
    count=4,
)

signatures_10.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_10 = []

reduced_signatures_10 = evans.reduce_fermata_measures(
    signatures_10, fermata_measures_10
)

##
## 11 ##
##

signatures_11 = sigs(
    series="A",
    rotation=10,
    count=38,
)

signatures_11.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_11 = []

reduced_signatures_11 = evans.reduce_fermata_measures(
    signatures_11, fermata_measures_11
)

##
## 12 ##
##

signatures_12 = sigs(
    series="B",
    rotation=15,
    count=26,
)

signatures_12.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_12 = []

reduced_signatures_12 = evans.reduce_fermata_measures(
    signatures_12, fermata_measures_12
)

##
## 13 ##
##

signatures_13 = sigs(
    series="A",
    rotation=12,
    count=21,
)

signatures_13.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_13 = []

reduced_signatures_13 = evans.reduce_fermata_measures(
    signatures_13, fermata_measures_13
)

##
## 14 ##
##

signatures_14 = sigs(
    series="B",
    rotation=18,
    count=24,
)

signatures_14.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_14 = []

reduced_signatures_14 = evans.reduce_fermata_measures(
    signatures_14, fermata_measures_14
)

##
## 15 ##
##

signatures_15 = sigs(
    series="A",
    rotation=14,
    count=33,
)

signatures_15.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_15 = []

reduced_signatures_15 = evans.reduce_fermata_measures(
    signatures_15, fermata_measures_15
)

##
## 16 ##
##

signatures_16 = sigs(
    series="B",
    rotation=21,
    count=33,
)

signatures_16.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_16 = [32]

reduced_signatures_16 = evans.reduce_fermata_measures(
    signatures_16, fermata_measures_16
)


##
## total ##
##

all_signatures = evans.join_time_signature_lists(
    [
        reduced_signatures_01,
        reduced_signatures_02,
        reduced_signatures_03,
        reduced_signatures_04,
        reduced_signatures_05,
        reduced_signatures_06,
        reduced_signatures_07,
        reduced_signatures_08,
        reduced_signatures_09,
        reduced_signatures_10,
        reduced_signatures_11,
        reduced_signatures_12,
        reduced_signatures_13,
        reduced_signatures_14,
        reduced_signatures_15,
        reduced_signatures_16,
    ]
)
