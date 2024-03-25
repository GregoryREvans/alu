\version "2.22.1" %2.23.6
\language "english"
#(set-default-paper-size "11x17portrait")
#(set-global-staff-size 11) % was 13

%{ \include "/Users/gregoryevans/ekmelily/ly/ekmel-24.ily" % just trying this out %}
%{ \ekmelicStyle evans-alt-one % just trying this out %}

\include "baca.ily"
\include "/Users/gregoryevans/evans/lilypond/evans-markups.ily"
\include "/Users/gregoryevans/evans/lilypond/evans-spanners.ily"
\include "../../lib.ily"
\include "evans.ily"
\include "evans-accidentals-markups.ily"

afterGraceFraction = #(cons 15 16)
%{ \pointAndClickOff %}
\header {
	tagline = ##f
	breakbefore = ##t
	%{ dedication = \markup \override #'(font-name . "Bell MT") \fontsize #5.4 \center-column { \line{A L U}} %}
	title =  \markup \center-column {
			\line {
				\override #'(font-name . "Bell MT")
				\fontsize #3.4 "A    L     U "
			}
            \override #'(font-name . "Futhark")
            \fontsize #14
            \line {
                \concat {
                A
                \hspace #1
                L
                \hspace #1
                U
                \hspace #1
                }
            }
			" "
            \override #'(font-name . "Bell MT Regular")
            \fontsize #1
			\line{
				\override #'(font-name . "Bell MT Regular")
				"n i s   s o l u   s o t t"
			}
            %{ \line {
                \override #'(font-name . "Noto Sans Runic")
				"ᚾ ᛁ ᛋ ᛋ ᛟ ᛚ ᚢ ᛋ ᛟ ᛏ"
            } %}
			\line {
                \override #'(font-name . "Futhark")
				"N I S S O L U S O T"
            }
			\line{
				\override #'(font-name . "Bell MT Regular")
				"... it is not touched by the sun ..."
			}
            " "
            \override #'(font-name . "Bell MT Italic")
            \fontsize #3
            \line {
                f o r \hspace #2.75
                s i n f o n i e t t a
            }
    }
	composer = \markup \override #'(font-name . "Bell MT") \fontsize #5 {"Gregory Rowland Evans (*1995)"}
	tagline = \markup { "" }
}

\layout {
	\accidentalStyle neo-modern % was forget
	%{ accidentals are printed like with modern,
	but they are printed again if the same note appears later in the same measure
	– except if the note is immediately repeated. %}
	indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
	\context {
		\name LayoutContext
		\type Engraver_group
		\consists #Measure_attached_spanner_engraver
		%{ \consists Text_engraver
		\consists Text_spanner_engraver %}
	}
	\context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        \consists Time_signature_engraver
		%{ \consists Mark_engraver %}
		%{ \consists Metronome_mark_engraver %}
		\consists "Measure_grouping_engraver"
		\consists Text_engraver
		\consists Text_spanner_engraver
		\accepts LayoutContext

		\override MetronomeMark.stencil = ##f
		\override RehearsalMark.X-extent = #'(0 . 0)
		\override RehearsalMark.X-offset = 6
		\override RehearsalMark.Y-offset = -2.5
		\override RehearsalMark.break-align-symbols = #'(time-signature)
		\override RehearsalMark.break-visibility = #end-of-line-invisible
		\override RehearsalMark.font-name = "Bell MT"
		\override RehearsalMark.font-size = 3
		\override RehearsalMark.outside-staff-priority = 500
		\override RehearsalMark.self-alignment-X = #center
		\override TextScript.font-size = 6
        \override TextSpanner.font-size = 6

		\override TimeSignature.X-extent = ##f
        \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 5 % was 8 for Bell MT
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered
		\override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t

		%{ \consists #Measure_attached_spanner_engraver %}
		\override MeasureCounter.font-encoding = #'latin1
		\override MeasureCounter.font-size = 4
		\override MeasureCounter.outside-staff-padding = 0
		\override MeasureCounter.outside-staff-horizontal-padding = #0

    }
	\context {
		\Score
		\remove Metronome_mark_engraver
		\remove Mark_engraver
		%{ \remove Volta_engraver %}
		%{ \remove Bar_number_engraver %}
		%{ \consists Measure_counter_engraver %}
		\accepts TimeSignatureContext
		%{ \consists #interrupt_heads_engraver %}
		%{ \override Accidental.X-extent = ##f % experimental %}
		\override Accidental.X-extent = #'(0 . 0.5)
		\override AccidentalSuggestion.avoid-slur = #'outside % just trying this out
		%{ \override BarLine.bar-extent = #'(-2 . 2) %}
		\override BarLine.hair-thickness = 0.5
		\override BarLine.X-extent = #'(0 . 0)
		\override BarLine.thick-thickness = #8

		\override BarNumber.Y-extent = ##f
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . -4)
        \override BarNumber.font-size = 1
		\override BarNumber.padding = 4

		\override Beam.breakable = ##t
		\override Beam.damping = #+inf.0 % was 99
		\override Beam.concaveness = #10000 % just trying this out
		\override Beam.beam-thickness = #0.8 % just trying this out
		\override Beam.length-fraction = #1.5 % just trying this out
		%{ \override Clef.whiteout-style = #'outline
		\override Clef.whiteout = 1 %}
		\override DynamicText.font-size = #-2
		\override DynamicLineSpanner.staff-padding = 5 %was 4.5
		\override DurationLine.breakable = ##t
		\override DurationLine.thickness = 2.5
		\override Glissando.breakable = ##t
		\override Glissando.thickness = #3 %was 1.8
		\override Hairpin.to-barline = ##f
		%{ \override Staff.thickness = #0.5 %}
		\override MetronomeMark.font-size = 3
		\override NoteCollision.merge-differently-dotted = ##t % experimental
		\override NoteCollision.merge-differently-headed = ##t % experimental for piano
		\override NoteColumn.ignore-collision = ##t % can cause bad merging!
		% consider merging rests?
		\shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
		\override RepeatTie.X-extent = ##f
		\override PaperColumn.used = ##t % just trying this out
		%{ \override SpacingSpanner.spacing-increment = 1.25 %}
		\override SpacingSpanner.strict-grace-spacing = ##t % trevor
		\override SpacingSpanner.strict-note-spacing = ##t % trevor
		\override SpacingSpanner.uniform-stretching = ##t % trevor
		\override GraceSpacing.spacing-increment = #1.5 %?? does this collaborate with afterGraceFraction?
		\override GraceSpacing.shortest-duration-space = #1.6
		\override Stem.stemlet-length = #1.15
		\override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5
		\override TextSpanner.breakable = ##t
		\override Tie.stencil = #flare-tie % experimental
		\override Tie.height-limit = 6 % experimental
		\override Tie.thickness = 1.5 % experimental

		\override TrillSpanner.bound-details.right.padding = #2 % experimental

		\override TupletBracket.breakable = ##t
        \override TupletBracket.full-length-to-extent = ##t
        \override TupletNumber.font-size = 1 % was 0.5
		%{ \override TupletBracket.padding = #1.5 % experimental %} % remove when using flat bracket function
		%{ \override TupletBracket.staff-padding = #3 % experimental %} % remove when using flat bracket function
        %{ \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods % experimental %}
		\override TupletBracket.bracket-visibility = ##t
		%{ \override TupletBracket.direction = #down %} % try removing?
		\override TupletNumber.text = #tuplet-number::calc-fraction-text
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
		pedalSustainStyle = #'mixed
		barNumberFormatter = #oval-bar-numbers
		tupletFullLength = ##t
		%{ tupletFullLengthNote = ##t % makes grace notes stand out %}
		%{ subdivideBeams = ##t % just trying this out %}

		\override VoltaBracketSpanner.Y-offset = #6 %?
		\override MeasureCounter.Y-offset = #6 %?

		%{ \override Clef.stencil = \old-clefs %}
        \override Accidental.stencil = \alt-accidentals
        \override TupletBracket.edge-text = #(cons
            (markup #:arrow-head X LEFT #f)
            (markup #:arrow-head X RIGHT #f)
        )

	}
	\context {
		\Voice
		\remove Forbid_line_break_engraver
		\consists "Horizontal_bracket_engraver"
		\override HorizontalBracket.direction = #UP
		\override HorizontalBracket.staff-padding = 7.5
		\override HorizontalBracket.bracket-flare = #'(0 . 0)
		%{ \consists Duration_line_engraver %}
		\override Accidental.font-size = 1
		%{ #(define afterGraceFraction (cons 1 4)) %}
		%{ \tupletSpan 4 %}
	}
	\context {
		\Staff
		%{ \consists Volta_engraver %}
		\consists Duration_line_engraver
		\numericTimeSignature
		\remove Time_signature_engraver
		\remove Separating_line_group_engraver % just trying this out
		fontSize = #-1
		explicitClefVisibility = #end-of-line-invisible
	}
	\context {
		\RhythmicStaff
		\remove Time_signature_engraver
	}

	\context {
        \Staff
        \name InterruptStaff
        \type Engraver_group
        \alias Staff
		\hide BarLine
		\RemoveEmptyStaves
    }

	\context {
        \Staff
        \name VocalStaff
        \type Engraver_group
        \alias Staff
		\RemoveEmptyStaves
		%{ \staff-line-count #3 %}
    }
	% make context for interruption and voice stuff. grandstaff?
	\context {
		\GrandStaff
		\name RemoveableStaffGroup
		\type Engraver_group
		\alias GrandStaff
		%{ \consists #interrupt_heads_engraver %}
		\accepts InterruptStaff
		\accepts VocalStaff

	}

	\context {
		\PianoStaff
		%{ \consists #interrupt_heads_engraver %}

	}

}

\paper {
	system-separator-markup = \markup { \slashSeparator }

    left-margin = 20\mm
    right-margin = 15\mm

	oddHeaderMarkup = \markup ""
	evenHeaderMarkup = \markup ""
	oddFooterMarkup = \markup
        \fill-line {
			\override #'(font-name . "Bell MT")
			\concat {
			\fontsize #3
			\override #'(font-name . "Futhark") "ALU" \hspace #1.5 — \hspace #1.5 \fontsize #3 GR \hspace #1 \fontsize #3 Evans
			}
	        \concat {
	            \fontsize #3
	            \fromproperty #'page:page-number-string
		    }
        }

    evenFooterMarkup = \markup
        \fill-line {
            \concat {
                \fontsize #3
                \fromproperty #'page:page-number-string
        	}
			\override #'(font-name . "Bell MT")
			\concat {
			\fontsize #3
        	 \override #'(font-name . "Futhark") "ALU" \hspace #1.5 — \hspace #1.5 \fontsize #3 GR \hspace #1 \fontsize #3 Evans
			}
    	}
	print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 60)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 30) % space after each system
        (padding . 0)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 18)
        (padding . 0)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 26)
        (padding . 0)
        (stretchability . 0)
    )
    top-margin = 0\mm
	bottom-margin = 5\mm
	right-margin = 10\mm
	left-margin = 20\mm

	% experimental

	%{ #(define fonts
      (set-global-fonts
       #:roman "Bell MT"
       #:factor (/ staff-height pt 20)
      )) %}

}
