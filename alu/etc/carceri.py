import abjad, evans


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

# # original chord (Including Ferneyhough's mistakes)
# s = evans.Sequence(
#     [abjad.NumberedPitch(abjad.NamedPitch(_)).number for _ in ["b", "ds'", "fs'", "bf'", "ef''", "a''", "c'''", "g'''"]]
# )
# staff_1 = abjad.Staff([abjad.Note() for _ in range(len(s))])
# h = evans.PitchHandler(s, forget=False)
# h(staff_1)
#
# # reorder elements of chord by order of appearance in tone row (return pitch classes for later stacking operation)
# order = s.order_pitch_sequence_by_tonerow(
#     [abjad.NumberedPitch(abjad.NamedPitch(_)).number for _ in ["af'", "g'", "cs'", "ef'", "d'", "e'", "bf'", "c'", "b'", "a'", "fs'", "f'"]]
# )
# staff_2 = abjad.Staff([abjad.Note() for _ in range(len(order))])
# h = evans.PitchHandler(order, forget=False)
# h(staff_2)
#
# # reverse reordered elements
# order = order.reverse()
# staff_3 = abjad.Staff([abjad.Note() for _ in range(len(order))])
# h = evans.PitchHandler(order, forget=False)
# h(staff_3)
# abjad.attach(abjad.Markup(r"\markup REVERSED"), staff_3[0], direction=abjad.UP)
#
# # stack reversed-reordered elements into new vertical sonority
# vertical_stack = order.stack_pitches()
# staff_4 = abjad.Staff([abjad.Note() for _ in range(len(vertical_stack))])
# h = evans.PitchHandler(vertical_stack, forget=False)
# h(staff_4)
#
# # make melody by mapping tone row values to octavated position in stacked chord (don't return pitch classes, preserve octavation)
# # only return pitches in vertical chord. Can handle duplicate pitches but only uses lowest or highest
# melody = vertical_stack.order_pitch_sequence_by_tonerow(
#     [11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8],
#     return_pitch_classes=False,
#     prefer_lowest_pitch=True,
# )
# staff_5 = abjad.Staff([abjad.Note() for _ in range(len(melody))])
# h = evans.PitchHandler(melody, forget=False)
# h(staff_5)
#
# staff_group = abjad.StaffGroup([staff_1, staff_2, staff_3, staff_4, staff_5])
#
# abjad.show(staff_group)


# melodic_sequence = evans.Sequence([11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]).matrix().potamia().flatten()
melodic_sequence = [11, 10, 4, 6, 5, 7, 1, 3, 2, 0, 9, 8]
s_1 = abjad.Staff([abjad.Note(_, abjad.Duration((1, 4))) for _ in melodic_sequence])

source_chord = ["b", "ds'", "fs'", "bf'", "ef''", "a''", "c'''", "g'''"]
score_1 = abjad.illustrators.make_piano_score([abjad.Chord(source_chord, abjad.Duration((1, 4)))])

reordering_series = evans.Sequence([abjad.NumberedPitch(_) for _ in ["af'", "g'", "cs'", "ef'", "d'", "e'", "bf'", "c'", "b'", "a'", "fs'", "f'"]])
vertical_stack_1 = reordering_series.stack_pitches()
score_2 = abjad.illustrators.make_piano_score([abjad.Chord(vertical_stack_1, abjad.Duration((1, 4)))])

reversed_reordering = evans.Sequence([abjad.NumberedPitch(_) for _ in ["af'", "g'", "cs'", "ef'", "d'", "e'", "bf'", "c'", "b'", "a'", "fs'", "f'"]]).reverse()
vertical_stack_2 = reversed_reordering.stack_pitches()
score_3 = abjad.illustrators.make_piano_score([abjad.Chord(vertical_stack_2, abjad.Duration((1, 4)))])

pitches = evans.carceri_pitches(
    melodic_sequence,
    source_chord=source_chord,
    reordering_series=reordering_series,
    reverse_reordering_stack=True,
)

handler = evans.PitchHandler(pitches)
s = abjad.Staff([abjad.Note() for _ in melodic_sequence])
handler(s)
# notes = abjad.mutate.eject_contents(s)
# score_4 = abjad.illustrators.make_piano_score(notes)


group_1 = abjad.mutate.eject_contents(score_1)
group_1[0].name = "Group 1"
group_2 = abjad.mutate.eject_contents(score_2)
group_2[0].name = "Group 2"
group_3 = abjad.mutate.eject_contents(score_3)
group_3[0].name = "Group 3"

score = abjad.Score([s_1, group_1, group_2, group_3, s])

lilypond_file = abjad.LilyPondFile([preamble, score])
abjad.show(lilypond_file)
