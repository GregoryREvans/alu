import abjad
import evans


def make_score(segment):
    treble_pitches, bass_pitches = [], []
    for pitch in segment:
        if pitch.number < 0:
            bass_pitches.append(pitch)
        else:
            treble_pitches.append(pitch)
    treble_chord = abjad.Chord(treble_pitches, (1, 1))
    bass_chord = abjad.Chord(bass_pitches, (1, 1))
    clef = abjad.Clef("bass")
    abjad.attach(clef, bass_chord)
    treble_staff = abjad.Staff([treble_chord], name="RH")
    bass_staff = abjad.Staff([bass_chord], name="LH")
    staves = [treble_staff, bass_staff]
    piano_staff = abjad.StaffGroup(staves, lilypond_type="PianoStaff")
    score = abjad.Score([piano_staff], name="Score")
    abjad.override(score).time_signature.transparent = True
    return score


constructed_chord_1 = ["e,", "a,", "g", "af", "b", "ef'", "bf'", "d''", "f''"]
constructed_chord_2 = ["c,", "d", "fs", "b", "cs'", "ef'", "g'", "a'", "d''", "af''"]
constructed_chord_3 = ["bf,", "f", "b", "e'", "f'", "bf'"]
constructed_chord_4 = ["g,", "bf,", "c", "ef", "b", "d'", "f'", "af'", "cs''", "e''"]

score = make_score([abjad.NumberedPitch(_) for _ in constructed_chord_1])
lilypond_file = abjad.LilyPondFile([score])
abjad.show(lilypond_file)

score = make_score([abjad.NumberedPitch(_) for _ in constructed_chord_2])
lilypond_file = abjad.LilyPondFile([score])
abjad.show(lilypond_file)

score = make_score([abjad.NumberedPitch(_) for _ in constructed_chord_3])
lilypond_file = abjad.LilyPondFile([score])
abjad.show(lilypond_file)

score = make_score([abjad.NumberedPitch(_) for _ in constructed_chord_4])
lilypond_file = abjad.LilyPondFile([score])
abjad.show(lilypond_file)
