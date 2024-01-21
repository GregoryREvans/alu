import abjad
import evans
from abjadext import rmakers
import baca




divisions = [abjad.TimeSignature(_) for _ in [
    (4, 8),
    (2, 4), # was (2, 8),
    (3, 4), # was (3, 8),
    (5, 12),
    (3, 24),
    (6, 24), # was (3, 24),
    (5, 12),
    (3, 8),
    (3, 8),
    (10, 12), # was (5, 12),
    (3, 24),
    (5, 8),
    (3, 24),
]]

maker = evans.unsichtbare_farben(
    subdivisions_range=(1, 7),
    proportions_range=(1, 12),
    reproportioning_range=(1, 4),
    motives_per_figure_range=(1, 5),
    number_of_voices=6,
    measurewise_voice_indices=[0, 1, 0, 5, 2, 4, 4],
    cyclic_voice_indices=False,
    proportions_from_combinations=False,
    subdivide_both_proportions=False,
    seed=1,
    preprocessor=None,
    rewrite=None,
    treat_tuplets=False,
)

music = maker(divisions)

signature_context = abjad.Staff(rmakers.multiplied_duration(divisions, abjad.Skip), lilypond_type="TimeSignatureContext")
for division, leaf in zip(divisions, abjad.select.leaves(signature_context)):
    abjad.attach(division, leaf)
staff = abjad.Staff(music,lilypond_type="RhythmicStaff")

score = abjad.Score([signature_context, staff])

evans.long_beam(
    staff, beam_rests=True, beam_lone_notes=False # fix
)
file = abjad.LilyPondFile(
    items=[
        r'#(set-default-paper-size "11x17landscape")',
        r'#(set-global-staff-size 18)',
        r'\include "/Users/gregoryevans/abjad/abjad/scm/abjad.ily"',
        abjad.Block(
            "layout",
            items=[
                r"""
                    indent = 0
                      ragged-bottom = ##t
                      ragged-last = ##t
                      ragged-right = ##t
                    %\context {
                    %    \name TimeSignatureContext
                    %    \type Engraver_group
                    %    \consists Time_signature_engraver
                	%	\override TimeSignature.X-extent = ##f
                    %    \override TimeSignature.break-align-symbol = #'left-edge
                    %    \override TimeSignature.break-visibility = #end-of-line-invisible
                    %    \override TimeSignature.font-size = 5 % was 8 for Bell MT
                    %    \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
                    %    \override TimeSignature.style = #'numbered
                	%	\override TimeSignature.whiteout-style = #'outline
                	%	\override TimeSignature.whiteout = ##t
                    %}
                    \context {
                        \Score
                        \remove Metronome_mark_engraver
                        \remove Mark_engraver
                        \remove Bar_number_engraver
                    %    \accepts TimeSignatureContext
                        \override BarLine.bar-extent = #'(-2 . 2)
                        \override BarLine.hair-thickness = 0.5
                        \override BarLine.X-extent = #'(0 . 0)
                        \override BarLine.thick-thickness = #8
                        \override Beam.breakable = ##t
                        \override Beam.damping = #+inf.0 % was 99
                        \override Beam.concaveness = #10000 % just trying this out
                        \override Beam.beam-thickness = #1.15 % just trying this out
                        \override Beam.length-fraction = #1.84 % just trying this out
                        \override NoteColumn.ignore-collision = ##t % can cause bad merging!
                        \override PaperColumn.used = ##t % just trying this out
                        \override SpacingSpanner.spacing-increment = 1.25
                        \override SpacingSpanner.uniform-stretching = ##t % trevor
                        \override Stem.stemlet-length = #1.66
                        \override Tie.height-limit = 6 % experimental
                        \override Tie.thickness = 1.5 % experimental
                        \override TupletBracket.breakable = ##t
                          \override TupletBracket.full-length-to-extent = ##t
                          \override TupletNumber.font-size = 1 % was 0.5
                        \override TupletBracket.bracket-visibility = ##t
                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                          \override TupletNumber.layer = 11
                          \override TupletNumber.whiteout = ##t
                        \override TupletBracket.stencil = % just trying this out
                          #(lambda (grob)
                             (let* ((pos (ly:grob-property grob 'positions))
                                    (dir (ly:grob-property grob 'direction))
                                    (new-pos (if (= dir 1)
                                                 (max (car pos)(cdr pos))
                                                 (min (car pos)(cdr pos)))))
                               (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                               (ly:tuplet-bracket::print grob)))
                        autoBeaming = ##f
                        tupletFullLength = ##t
                          \override TupletBracket.edge-text = #(cons
                              (markup #:arrow-head X LEFT #f)
                              (markup #:arrow-head X RIGHT #f)
                          )
                          proportionalNotationDuration = #(ly:make-moment 1 35)

                    }
                    \context {
                        \Voice
                        \remove Forbid_line_break_engraver
                    }
                      \context {
                          \RhythmicStaff
                        \override Beam.breakable = ##t
                        fontSize = #-1
                    %    \remove Time_signature_engraver
                      }
                """
            ]
        ),
        abjad.Block(
            "score",
            items=[score]
        ),
    ],
)

abjad.show(file)




# a = evans.CyclicList([3, 2, 4, 4, 3, 6, 6, 3, 5, 7, 5, 6], forget=False)
# b = abjad.sequence.flatten(baca.sequence.helianthate([[8, 7, 6], [6, 5], [3, 2]], -1, 1))
# a = a(r=len(b))
#
# a_sig = [abjad.TimeSignature((_, 8)) for _ in a]
# b_sig = [abjad.TimeSignature((_, 8)) for _ in b]
#
# a_b_sig = evans.intersect_time_signature_lists(a_sig, b_sig, translation=(3, 8))
#
# reduced_a_b = evans.fuse_signatures_below_threshold(a_b_sig)
#
# all_sig = [a_sig, b_sig, a_b_sig, reduced_a_b]
#
# for sigs in all_sig:
#     maker = rmakers.note(sigs)
#     s = abjad.Staff(maker)
#     for sig, tie in zip(sigs, abjad.select.logical_ties(s)):
#         abjad.attach(sig, tie[0])
#     abjad.show(s)
