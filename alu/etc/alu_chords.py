from fractions import Fraction
from itertools import combinations

import abjad
import evans

preamble = r"""#(set-global-staff-size 16)

\layout {
    \accidentalStyle dodecaphonic
    \context {
        \Score
        \override BarLine.stencil = ##f
        \override BarNumber.stencil = ##f
        \override Beam.stencil = ##f
        \override Flag.stencil = ##f
        \override Rest.stencil = ##f
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpanBar.stencil = ##f
        \override Stem.stencil = ##f
        \override TimeSignature.transparent = ##t
        \override Glissando.breakable = ##t
        \override Glissando.thickness = #3
        proportionalNotationDuration = #(ly:make-moment 1 20)
    }
}
"""
#
# source = [0, 1, 8, 4, 2, 7]
# seq = evans.Sequence(source).derive_added_sequences(source).flatten()
#
# notes = [abjad.Note(_, (1, 4)) for _ in seq]
# score = abjad.illustrators.make_piano_score(notes)
# leaves = abjad.select.leaves(score)
# groups = abjad.select.partition_by_counts(leaves, [len(source)], cyclic=True, overhang=True)
# for i, group in zip(source, groups):
#     first_leaf = abjad.select.leaf(group, 0)
#     bundle = abjad.bundle(abjad.Markup(rf"\markup {i}"), r"- \tweak color #blue")
#     abjad.attach(bundle, first_leaf, direction=abjad.UP)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# def make_transpositions(row):
#     transpositions = []
#     for pitch_class in row.invert():
#         n = pitch_class.number - row[0].number
#         transposition = row.transpose(n)
#         transpositions.append(transposition)
#     return transpositions
#
# def make_score(row):
#     score = abjad.Score(name="Score")
#     transpositions = make_transpositions(row)
#     for i, transposition in enumerate(transpositions):
#         notes = [abjad.Note(_, (1, 4)) for _ in transposition]
#         voice = abjad.Voice(notes, name=f"Voice_{i}")
#         staff = abjad.Staff([voice], name=f"Staff_{i}")
#         score.append(staff)
#         number = notes[0].written_pitch.number
#         string = r"\markup \larger \with-color #blue"
#         string = string + r" { T \hspace #-0.75 \sub" + str(number) + "}"
#         markup = abjad.Markup(string)
#         instrument_name = abjad.InstrumentName(markup)
#         abjad.attach(instrument_name, notes[0])
#     for note in score["Voice_0"]:
#         number = note.written_pitch.number
#         string = r"\markup \larger { IT \hspace #-0.75 \sub "
#         string += str(number)
#         string += " }"
#         markup = abjad.Markup(string)
#         abjad.attach(markup, note, direction=abjad.UP)
#     note = abjad.select.note(score, 0)
#     time_signature = abjad.TimeSignature((12, 4))
#     abjad.attach(time_signature, note)
#     return score
#
# preamble = r"""#(set-global-staff-size 14)
#
# \layout {
#     \context {
#         \Staff
#         \override VerticalAxisGroup.staff-staff-spacing.minimum-distance = 11
#     }
#     \context {
#         \Score
#         \override BarLine.stencil = ##f
#         \override Clef.stencil = ##f
#         \override SpacingSpanner.strict-spacing = ##t
#         \override SystemStartBar.stencil = ##f
#         \override Stem.stencil = ##f
#         \override TextScript.color = #blue
#         \override TextScript.staff-padding = 5
#         \override TimeSignature.transparent = ##t
#         proportionalNotationDuration = #(ly:make-moment 1 16)
#     }
# }
# """
#
# row = abjad.PitchSegment([0, 1, 8, 4, 2, 7])
# score = make_score(row)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###


# source = [0, 1, 8, 4, 2, 7]
# seq = evans.Sequence(source).matrix().potamia().flatten()
#
# notes = [abjad.Note(_, (1, 4)) for _ in seq]
# score = abjad.illustrators.make_piano_score(notes)
# leaves = abjad.select.leaves(score)
# groups = abjad.select.partition_by_counts(leaves, [len(source)], cyclic=True, overhang=True)
# for i, group in zip(source, groups):
#     first_leaf = abjad.select.leaf(group, 0)
#     bundle = abjad.bundle(abjad.Markup(rf"\markup {i}"), r"- \tweak color #blue")
#     abjad.attach(bundle, first_leaf, direction=abjad.UP)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


# ###
# ###
# ###
#
# source = [0, 1, 8, 4, 2, 7]
# seq = evans.Sequence(source).matrix().potamia().flatten().partition_by_counts([3, 4, 5, 6, 7], cyclic=True, overhang=True)
# chords = [evans.Sequence(_).stack_pitches() for _ in seq]
#
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)

###
###
###

# source = [-24, abjad.NumberedPitch(evans.JIPitch(-24, "7/1", with_quarter_tones=True).name)]
# chords = [source]
# for i in range(3):
#     combination = evans.combination_tones(
#         pitches=source,
#         depth=i + 1,
#     )
#     combination = [_ for _ in combination if source[0] <= _]
#     chords.append(combination)
#
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)

###
###
###


# source = [8, 4, 2, 7, 0, 1]
# seq = evans.Sequence([sum(_) for _ in combinations(source, 2)])
# transposed = seq.transpose(4).transpose(-48)
# chords = [transposed.stack_pitches()]
# chords.append(seq.alpha(1).transpose(-60).stack_pitches())
# chords.append(seq.alpha(2).transpose(-48).stack_pitches())
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# abjad.attach(abjad.bundle(abjad.Markup(r"\markup source"), r"- \tweak color #blue"), abjad.select.leaf(score, 0), direction=abjad.UP)
# abjad.attach(abjad.bundle(abjad.Markup(r"\markup alpha-1"), r"- \tweak color #blue"), abjad.select.leaf(score, 1), direction=abjad.UP)
# abjad.attach(abjad.bundle(abjad.Markup(r"\markup alpha-2"), r"- \tweak color #blue"), abjad.select.leaf(score, 2), direction=abjad.UP)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# g_m = evans.Sequence(
#     [
#         "A-past",
#         "A-present",
#         "A-future",
#         "B-past",
#         "B-present",
#         "B-future",
#         "C-past",
#         "C-present",
#         "C-future",
#         "D-past",
#         "D-present",
#         "D-future",
#         "E-past",
#         "E-present",
#         "E-future",
#     ]
# ).guerrero_morales(4)
# for _ in g_m:
#     print(_)


###
###
###

# weights = [3, 17, 14, 9, 5]
# weights_A = evans.Sequence(weights).normalize_to_sum(1)
# weights_B = weights_A.rotate(2)
# weights_C = weights_A.rotate(4)
# weights_D = weights_A.rotate(6)
# weights_E = weights_A.rotate(8)
#
# prob = {
#     "A": {"A": weights_A[0], "B": weights_A[1], "C": weights_A[2], "D": weights_A[3], "E": weights_A[4]},
#     "B": {"A": weights_B[0], "B": weights_B[1], "C": weights_B[2], "D": weights_B[3], "E": weights_B[4]},
#     "C": {"A": weights_C[0], "B": weights_C[1], "C": weights_C[2], "D": weights_C[3], "E": weights_C[4]},
#     "D": {"A": weights_D[0], "B": weights_D[1], "C": weights_D[2], "D": weights_D[3], "E": weights_D[4]},
#     "E": {"A": weights_E[0], "B": weights_E[1], "C": weights_E[2], "D": weights_E[3], "E": weights_E[4]},
# }
# s = evans.Sequence.markov(
#     transition_prob=prob,
#     first_state="A",
#     length=28,
#     seed=1,
# )
#
# s = ["A"] + s
#
# print(s)

###
###
###

# tone_row = [8, 4, 2, 7, 0, 1]
# chords = []
# josephus = evans.Sequence(tone_row).transpose(-24).josephus(2)
# for chord in josephus:
#     chords.append(evans.Sequence(chord).stack_pitches())
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# pitch_dict = {
#     "A": 0,
#     "B": 1,
#     "C": 2,
#     "D": 4,
#     "E": 7,
#     "F": 8,
# }
# rule_dict = {"A": "BC", "B": "ABA", "C": "BDC", "D": "CE", "E": "FA", "F": "DEB"}
# lind_list = evans.Sequence.lindenmayer(seed="AB", rules=rule_dict, iters=5)
# converted_list = [pitch_dict[_] for _ in lind_list]
# partitions = evans.Sequence(converted_list).partition_by_counts([3, 4, 5, 6, 7], cyclic=True, overhang=True)
# chords = [evans.Sequence(_).stack_pitches() for _ in partitions]
# chords = [evans.Sequence(_).transpose(-12) for _ in chords]
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# source_intervals = [1,2,5,6,3,4,10,9,7,11,8]
# sonority = [-24]
# for interval in source_intervals:
#     sonority.append(sonority[-1] + interval)
# recaman = evans.Sequence([_ + 1 for _ in range(100)]).recaman_sequence()
# indices = [_ % len(sonority) for _ in recaman]
# seq = [sonority[_] for _ in indices]
# partitions = evans.Sequence(seq).partition_by_counts([3, 4, 5, 6, 7], cyclic=True, overhang=True)
# chords = [set(_) for _ in partitions]
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# source_intervals = [1,3,4,11,7,9,10,6,2,5,8]
# sonority = [-24]
# for interval in source_intervals:
#     sonority.append(sonority[-1] + interval)
# prism = evans.Sequence([_ for _ in range(100)]).prism_sequence()
# indices = [_ % len(sonority) for _ in prism]
# seq = [sonority[_] for _ in indices]
# partitions = evans.Sequence(seq).partition_by_counts([3, 4, 5, 6, 7], cyclic=True, overhang=True)
# chords = [set(_) for _ in partitions]
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# source_intervals = [1,3,7,11,5,4,2,8,9,6,10]
# sonority = [-24]
# for interval in source_intervals:
#     sonority.append(sonority[-1] + interval)
# hex = evans.Sequence([_ for _ in range(100)]).hexagonal_sequence()
# indices = [_ % len(sonority) for _ in hex]
# seq = [sonority[_] for _ in indices]
# partitions = evans.Sequence(seq).partition_by_counts([3, 4, 5, 6, 7], cyclic=True, overhang=True)
# chords = [set(_) for _ in partitions]
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)


###
###
###

# source_intervals = [1, 3, 7, 11, 5, 4, 2, 8, 9, 6, 10]
# sonority = [-24]
# for interval in source_intervals:
#     sonority.append(sonority[-1] + interval)
#
# chords = [sonority]
# command_sequence = [
#     "p",
#     "l",
#     "r",
#     "morris alpha",
#     "morris beta",
#     "morris gamma",
#     "morris delta",
#     "h1",
#     "h2",
#     "h3",
#     "h4",
#     "morris M5",
#     "morris M7",
#     "messiaen a",
#     "messiaen b",
# ]
# for command in command_sequence:
#     new_chord = evans.Sequence(chords[-1]).permutational_parsimony(command)
#     chords.append(new_chord)
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
#
# for s, n in zip(command_sequence, abjad.select.chords(score)[1:]):
#     m = abjad.Markup(rf'\markup \center-align "{s}"')
#     bundle = abjad.bundle(m, r"- \tweak color #blue")
#     abjad.attach(bundle, n, direction=abjad.UP)
#
# for chord in abjad.select.chords(score):
#     abjad.attach(abjad.Glissando(), chord)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)

###
### warbler stacks
###

# source_intervals = [1, 3, 7, 11, 5, 4, 2, 8, 9, 6, 10]
# sonority = [0]
# for interval in source_intervals:
#     sonority.append((sonority[-1] + interval) % 12)
#
# rows = [sonority, sonority[:4] + sonority[7:], sonority[2:9], sonority[1:5] + sonority[10:]]
# chords = [evans.Sequence(_).transpose(-24).stack_pitches() for _ in rows]
#
# notes = [abjad.Chord(_, (1, 4)) for _ in chords]
# score = abjad.illustrators.make_piano_score(notes)
#
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)

###
### cartesian product ideas
###

# p = evans.Sequence([0, 1, 2])
# p = p.cartesian_product_sums([[3, 5, 7], [4, 6, 8]])
# p = p.mod(12).remove_duplications()
# p = p.stack_pitches()
# p = p.transpose(-7)
# notes = [abjad.Chord(p, abjad.Duration((1, 4)))]
#
# p = p.mod(12)
# p_max = len(p)
# mother_chord = [0, 11, 7, 4, 2, 9, 3, 8, 10, 1, 5, 6] # all interval tone row
# chord_map = [_ for _ in mother_chord if _ < p_max]
# permuted_p = p.permute(chord_map) # mother chord
# permuted_p = permuted_p.stack_pitches()
# permuted_p = permuted_p.transpose(-24)
# notes.append(abjad.Chord(permuted_p, abjad.Duration((1, 4))))
#
# permuted_p = permuted_p[:6]
# notes.append(abjad.Chord(permuted_p, abjad.Duration((1, 4))))
#
# ring_mod = evans.combination_tones(permuted_p, depth=1)
# notes.append(abjad.Chord(ring_mod, abjad.Duration((1, 4))))
#
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)

###
### sieves
###

pattern_1 = abjad.Pattern([0, 1, 6, 7, 9], 11)
pattern_2 = abjad.Pattern([0, 1, 6, 7, 9], 13)
pattern_union_1 = pattern_1 | pattern_2
pattern_3 = abjad.Pattern([0, 1, 6, 7, 9], 11)
pattern_4 = abjad.Pattern([0, 1, 6, 7, 9], 13)
pattern_union_2 = pattern_1 | pattern_2
pattern_intersection = pattern_union_1 & pattern_union_2
inverted_pattern = pattern_intersection
sieve = inverted_pattern
total_length = 60
vector = sieve.get_boolean_vector(total_length=total_length)
pitches = []
for i, bool in enumerate(vector):
    match = sieve.matches_index(i, total_length)
    if match is True:
        pitches.append(i)
p = evans.Sequence(pitches).transpose(-24)

notes = [abjad.Chord(p, abjad.Duration((1, 4)))]


score = abjad.illustrators.make_piano_score(notes)
lilypond_file = abjad.LilyPondFile([preamble, score])
abjad.show(lilypond_file)

##

# sieve_1a = abjad.index([0, 1, 7], 8) # psappha sieve
# sieve_1b = abjad.index([1, 3], 5)
# sieve_1 = sieve_1a & sieve_1b
# sieve_2a = abjad.index([0, 1, 2], 8)
# sieve_2b = abjad.index([0], 5)
# sieve_2 = sieve_2a & sieve_2b
# sieve_3 = abjad.index([3], 8)
# sieve_4 = abjad.index([4], 8)
# sieve_5a = abjad.index([5, 6], 8)
# sieve_5b = abjad.index([2, 3, 4], 5)
# sieve_5 = sieve_5a & sieve_5b
# sieve_6a = abjad.index([1], 8)
# sieve_6b = abjad.index([2], 5)
# sieve_6 = sieve_6a & sieve_6b
# sieve_7a = abjad.index([6], 8)
# sieve_7b = abjad.index([1], 5)
# sieve_7 = sieve_7a & sieve_7b
# sieve = sieve_1 | sieve_2 | sieve_3 | sieve_4 | sieve_5 | sieve_6 | sieve_7
# total_length = 40
# vector = sieve.get_boolean_vector(total_length=total_length)
# pitches = []
# for i, bool in enumerate(vector):
#     match = sieve.matches_index(i, total_length)
#     if match is True:
#         pitches.append(i)
# p = evans.Sequence(pitches).transpose(-15)
#
# notes = [abjad.Chord(p, abjad.Duration((1, 4)))]
#
#
# score = abjad.illustrators.make_piano_score(notes)
# lilypond_file = abjad.LilyPondFile([preamble, score])
# abjad.show(lilypond_file)
