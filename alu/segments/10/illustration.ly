  %! abjad.LilyPondFile._get_format_pieces()
\version "2.25.16"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "abjad.ily"
\include "../../build/segment_stylesheet.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<

        \context Score = "Score"
        <<
      { \include "layout.ly" }
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=122
                \mark #24
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 4/4
                s1 * 1
                ^ \markup {
                  \huge
                  \concat {
                      \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"122" #"1" #"2"
                      \hspace #1
                      \upright [
                      \abjad-metric-modulation-tuplet-lhs #4 #0 #6 #7 #4 #0 #'(0.6 . 0.6)
                      \hspace #0.5
                      \upright ]
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

            }

            \tag #'group1
            {

                \context StaffGroup = "Staff Group"
                <<

                    \tag #'group2
                    {

                        \context StaffGroup = "sub group 1"
                        <<

                            \tag #'voice1
                            {

                                \context Staff = "flute staff"
                                {

                                    \context Voice = "flute voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Flute" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "fl" }
                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopGroup

                                            r16

                                            cs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            \stopGroup
                                            [

                                            d'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32
                                            \stopGroup

                                            c'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 2]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopGroup

                                            cs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopGroup

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32
                                            \stopGroup

                                            c'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'32
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 4]
                                        g'''2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice2
                            {

                                \context Staff = "oboe staff"
                                {

                                    \context Voice = "oboe voice"
                                    {

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Oboe" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "ob" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            cs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'16
                                        \stopGroup

                                        d'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            cs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d'16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        ef'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'16
                                            \stopGroup

                                            r16

                                            d'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16
                                            \stopGroup

                                            cs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'16
                                        \stopGroup

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        \stopGroup
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "1"
                                        \startGroup

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 4]
                                        f'''2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice3
                            {

                                \context Staff = "bass clarinet staff"
                                {

                                    \context Voice = "bass clarinet voice"
                                    {

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Bass Clarinet" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bcl" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32
                                            \stopGroup

                                            ds'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ds'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            \stopGroup
                                            [

                                            ds'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        \stopGroup
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16
                                            \stopGroup

                                            fs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 4]
                                        cs''2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice4
                            {

                                \context Staff = "bassoon staff"
                                {

                                    \context Voice = "bassoon voice"
                                    {

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Bassoon" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bs" }
                                            \clef "bass"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            r32

                                            b,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b,32
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        \stopGroup
                                        [

                                        b,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b,16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b,16
                                        \stopGroup
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            c16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b,16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 3]
                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,16
                                        \stopGroup
                                        [

                                        c16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            b,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b,32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            \stopGroup
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "1"
                                            \startGroup

                                        }

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 4]
                                        af2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice5
                            {

                                \context Staff = "french horn staff"
                                {

                                    \context Voice = "french horn voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Horn" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "hn" }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32
                                            \stopGroup

                                            fs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            \stopGroup
                                            [

                                            gs16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 2]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16
                                            \stopGroup

                                            bf16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16
                                            \stopGroup

                                            b16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 3]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16
                                            \stopGroup

                                            a16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            gs16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs16
                                            \stopGroup

                                            a16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a16
                                        \stopGroup

                                        gs16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        gs16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
                                        a2.
                                        - \bendAfter #'2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                        >>

                    }

                    \tag #'group3
                    {

                        \context StaffGroup = "sub group 2"
                        <<

                            \tag #'voice6
                            {

                                \context Staff = "trumpet staff"
                                {

                                    \context Voice = "trumpet voice"
                                    {

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Trumpet" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tp" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16
                                            \stopGroup

                                            b16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16
                                            \stopGroup

                                            c'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopGroup

                                            cs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'16
                                        \stopGroup
                                        [

                                        d'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16
                                            \stopGroup

                                            r16

                                            ef'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16
                                            \stopGroup

                                            r16

                                            ef'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]

                                        }

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'16
                                        \stopGroup
                                        [

                                        e'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        ]

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'16
                                            \stopGroup

                                            f'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 4]
                                        a2.
                                        - \bendAfter #'2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice7
                            {

                                \context Staff = "tenor trombone staff"
                                {

                                    \context Voice = "tenor trombone voice"
                                    {

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Trombone" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tbn" }
                                            \clef "bass"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16
                                            \stopGroup

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            bf,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a,16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a,16
                                        ]

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16
                                            \stopGroup

                                            af,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16
                                            \stopGroup

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            r32

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16
                                            \stopGroup

                                            r16

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16
                                            \stopGroup

                                            af,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af,16
                                        \stopGroup
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16
                                            \stopGroup

                                            af,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                        ef,2.
                                        - \bendAfter #'2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice8
                            {

                                \context Staff = "tuba staff"
                                {

                                    \context Voice = "tuba voice"
                                    {

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Tuba" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tba" }
                                            \clef "bass"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            g,16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g,16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g,16
                                        \stopGroup
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            \stopGroup
                                            [

                                            g,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g,16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,32
                                            \stopGroup
                                            [

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16
                                        \stopGroup

                                        g,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g,16
                                        \stopGroup
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,32
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,16
                                            \stopGroup
                                            [

                                            af,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16
                                        \stopGroup

                                        a,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a,16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                            \stopGroup
                                            ]

                                        }

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 4]
                                        cs,2.
                                        - \bendAfter #'2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                        >>

                    }

                    \tag #'group4
                    {

                        \context PianoStaff = "sub group 3"
                        <<

                            \tag #'voice9
                            {

                                \context Staff = "percussion 1 staff"
                                {

                                    \context Voice = "percussion 1 voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 1" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 1" }
                                        \clef "percussion"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \staff-line-count #4
                                        g16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        - \boxed-markup "toms" #1
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        r16

                                        g16

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            r16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            b16

                                            g16

                                            g16

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g32
                                            [

                                            g32

                                            g32

                                            b32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [

                                        b16

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g32
                                            [

                                            g32

                                            b32

                                            b32

                                            b32

                                            d'32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            d'16

                                            d'16

                                            b16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            b16

                                            r16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 3]
                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            d'16

                                            d'16

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            b16

                                            b16

                                            b16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            b32

                                            d'32

                                            d'32

                                            f'32

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        [

                                        f'16

                                        d'16

                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 4]
                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            d'16

                                            r16

                                            d'16

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            b16

                                            b16

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]
                                            \bar "||"

                                        }

                                    }

                                }

                            }

                            \tag #'voice10
                            {

                                \context Staff = "percussion 2 staff"
                                {

                                    \context Voice = "percussion 2 voice"
                                    {

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 2" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 2" }
                                            \clef "percussion"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \staff-line-count #4
                                            g16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            - \boxed-markup "toms" #1
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            g16

                                            g16

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            r16

                                            b16

                                            b16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            b32

                                            r32

                                            d'32

                                            d'32

                                            d'32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [

                                        d'16

                                        d'16

                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            d'32

                                            r32

                                            d'32

                                            d'32

                                            f'32

                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            [

                                            f'16

                                            d'16

                                            d'16

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            d'16

                                            b16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            b16

                                            r16

                                            b16

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            d'16

                                            d'16

                                            d'16

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            d'32

                                            b32

                                            b32

                                            g32

                                            g32

                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [

                                        b16

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            b16

                                            b16

                                            d'16

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            d'16

                                            r16

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [

                                        b16

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        ]
                                        \bar "||"

                                    }

                                }

                            }

                        >>

                    }

                    \tag #'group5
                    {

                        \context PianoStaff = "sub group 4"
                        \with
                        {
                            instrumentName = \markup { \hcenter-in #14 "Piano" }
                            shortInstrumentName = \markup { \hcenter-in #12 "pn" }
                        }
                        <<

                            \tag #'voice11
                            {

                                \context Staff = "piano 1 staff"
                                {

                                    \context Voice = "piano 1 voice"
                                    {

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 1 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 \with-color #white "Piano LH" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 \with-color #white "LH" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32
                                            \stopGroup

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'32
                                            \stopGroup
                                            [

                                            af'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 1 voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'16
                                            \stopGroup

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            af'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            \stopGroup
                                            [

                                            a'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16
                                            \stopGroup

                                            r16

                                            af'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 1 voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'16
                                            \stopGroup

                                            a'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            af'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            \stopGroup
                                            [

                                            a'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16
                                            \stopGroup

                                            bf'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 1 voice measure 4]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16
                                            \stopGroup

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        \stopGroup
                                        ]

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice12
                            {

                                \context Staff = "piano 2 staff"
                                {

                                    \context Voice = "piano 2 voice"
                                    {

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 2 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 \with-color #white "Piano RH" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 \with-color #white "RH" }
                                            \clef "bass"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32
                                            \stopGroup

                                            r32

                                            f32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16
                                            \stopGroup

                                            fs16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            f16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 2 voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16
                                            \stopGroup

                                            fs16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16
                                            \stopGroup

                                            f16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 2 voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            f32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16
                                            \stopGroup

                                            e16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef16
                                            \stopGroup

                                            e16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e16
                                        \stopGroup
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            \stopGroup
                                            ]
                                            \bar "||"

                                        }

                                    }

                                }

                            }

                        >>

                    }

                    \tag #'group6
                    {

                        \context StaffGroup = "sub group 5"
                        <<

                            \tag #'voice13
                            {

                                \context Staff = "violin 1 staff"
                                {

                                    \context Voice = "violin 1 voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin I" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn I" }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            \stopGroup
                                            [

                                            bf'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16
                                            \stopGroup

                                            bf'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16
                                            \stopGroup

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            c''32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 3]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c''16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16
                                            \stopGroup

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16
                                            \stopGroup

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'16
                                        \stopGroup

                                        bf'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 4]
                                        <c''' f'''>2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice14
                            {

                                \context Staff = "violin 2 staff"
                                {

                                    \context Voice = "violin 2 voice"
                                    {

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin II" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn II" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            fs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            \stopGroup
                                            [

                                            fs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            af'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            \stopGroup
                                            [

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            af'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            \stopGroup
                                            [

                                            a'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf'16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf'16
                                        \stopGroup
                                        ]

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 4]
                                        <bf' fs''>2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice15
                            {

                                \context Staff = "viola staff"
                                {

                                    \context Voice = "viola voice"
                                    {

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Viola" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "va" }
                                            \clef "alto"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16
                                            \stopGroup

                                            g16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            fs16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs32
                                            \stopGroup
                                            [

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g16
                                        \stopGroup

                                        af16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        \stopGroup
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16
                                            \stopGroup

                                            af16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af16
                                            \stopGroup

                                            g16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        fs16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 4]
                                        <b bf'>2.
                                        - \bendAfter #'-2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice16
                            {

                                \context Staff = "cello staff"
                                {

                                    \context Voice = "cello voice"
                                    {

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Violoncello" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vc" }
                                            \clef "bass"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16
                                            \stopGroup

                                            af,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16
                                            \stopGroup

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            r32

                                            bf,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf,32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf,16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,16
                                            \stopGroup
                                            [

                                            r16

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            af,16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,16
                                            \stopGroup

                                            r16

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a,16
                                        \stopGroup

                                        bf,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf,16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16
                                            \stopGroup

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            \stopGroup
                                            ]

                                        }

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        <cs,>2.
                                        - \bendAfter #'2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice17
                            {

                                \context Staff = "contrabass staff"
                                {

                                    \context Voice = "contrabass voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Contrabass" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "cb" }
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        ef16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef16
                                            \stopGroup
                                            [

                                            e16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e32
                                            \stopGroup
                                            [

                                            ef32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef32
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32
                                            \stopGroup

                                            f32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ef16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 3]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        ef16
                                        \stopGroup
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f32
                                            \stopGroup
                                            ]

                                        }

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 4]
                                        e,2.
                                        - \bendAfter #'2
                                        \mf
                                        \bar "||"

                                    }

                                }

                            }

                        >>

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}