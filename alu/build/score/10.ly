        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=122
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

                        \context PianoStaff = "sub group 1"
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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'32
                                        \f
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'32
                                        \stopGroup

                                        cs'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'32
                                        \stopGroup

                                        r32

                                        \revert Staff.Stem.stemlet-length
                                        d'32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \times 4/5
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
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
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
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32
                                            \stopGroup

                                            cs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 2]
                                        r4

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
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'32
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            cs'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        \times 4/5
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

                                            r32

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
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'32
                                            ]

                                        }

                                        \times 16/19
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'32
                                            \stopGroup
                                            [

                                            cs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32
                                            \stopGroup

                                            r32

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \stopGroup

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        r4

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'32
                                            \stopGroup
                                            [

                                            r32

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            \stopGroup
                                            ]

                                        }

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

                                        \times 16/29
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
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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

                                            d'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16

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
                                            d'16

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'16
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

                                            r16

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            r32

                                            cs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        r2

                                        \times 8/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 3]
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32
                                            \stopGroup

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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
                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \times 4/5
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
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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

                                            r32

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
                                            \revert Staff.Stem.stemlet-length
                                            ef'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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

                                            r32

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        \times 4/5
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            r32

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            \stopGroup
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "1"
                                            \startGroup

                                        }

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Bass Clarinet" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bcl" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ds'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 24/23
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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ds'32
                                            \stopGroup

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ds'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 2]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ds'32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ds'32
                                        \stopGroup

                                        e'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

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
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        f'32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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
                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            ]

                                        }

                                        \times 8/11
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
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'32
                                            \stopGroup
                                            [

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

                                        \times 8/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            r32

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            ]

                                        }

                                        r4

                                        \times 8/9
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

                                            r32

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

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

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs'32
                                        \stopGroup

                                        g'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g'32
                                        \stopGroup
                                        ]

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
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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
                                        c32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c32
                                        \stopGroup

                                        r32

                                        \revert Staff.Stem.stemlet-length
                                        b,32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \times 16/17
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,32
                                            [

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            b,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                            \revert Staff.Stem.stemlet-length
                                            b,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 2]
                                        r2

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,32
                                            [
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

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs32
                                            ]

                                        }

                                        \times 16/19
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            r32

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c32
                                            [

                                            r32

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

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            ]

                                        }

                                        r4

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

                                        cs32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        cs32
                                        \stopGroup
                                        ]

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
                                        f32
                                        \f
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        r32

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

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs32
                                            [
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
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            g32
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
                                            g32
                                            \stopGroup
                                            [

                                            gs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32
                                            \stopGroup

                                            a32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 6/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32
                                            \stopGroup

                                            b32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32
                                            \stopGroup

                                            bf32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32
                                            \stopGroup

                                            a32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32
                                            \stopGroup

                                            gs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32
                                            \stopGroup

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            a32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32
                                            \stopGroup

                                            gs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32
                                            \stopGroup

                                            bf32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 16/17
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf32
                                            \stopGroup
                                            [

                                            b32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32
                                            \stopGroup

                                            c'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32
                                            \stopGroup

                                            b32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b32
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
                                            b32
                                            \stopGroup
                                            [

                                            r32

                                            bf32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32
                                            \stopGroup

                                            a32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a32
                                            \stopGroup
                                            ]

                                        }

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

                        \context PianoStaff = "sub group 2"
                        <<

                            \tag #'voice6
                            {

                                \context Staff = "trumpet staff"
                                {

                                    \context Voice = "trumpet voice"
                                    {

                                        \times 8/9
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
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b32
                                            \stopGroup

                                            c'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32
                                            \stopGroup

                                            cs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \revert Staff.Stem.stemlet-length
                                            cs'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            r32

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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
                                            \revert Staff.Stem.stemlet-length
                                            ef'32
                                            ]

                                        }

                                        r4

                                        \times 32/35
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'32
                                            \stopGroup
                                            [

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
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
                                            e'32

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

                                            r32

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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
                                            - \tweak HorizontalBracketText.text "5"
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
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            r32

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            e'32
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
                                        e'32
                                        \stopGroup
                                        [

                                        ef'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef'32
                                        \stopGroup

                                        d'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        d'32
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d'32

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
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'32
                                        \stopGroup

                                        d'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        d'32
                                        \stopGroup
                                        ]

                                        r4

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 12/13
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
                                            af,32
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,32
                                            ]

                                        }

                                        \times 8/11
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
                                            af,32
                                            \stopGroup

                                            r32

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
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
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,32
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

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
                                            af,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            [

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

                                            r32

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
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
                                        [

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
                                        af,32
                                        \stopGroup

                                        a,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a,32
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,32
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
                                        a,32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a,32
                                        \stopGroup
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,32
                                        \stopGroup

                                        b,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b,32
                                        \stopGroup

                                        bf,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,32
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        b,32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b,32
                                            \stopGroup
                                            [

                                            r32

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs32
                                            \stopGroup
                                            ]

                                        }

                                        r4

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

                                        \times 8/11
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
                                            fs,32
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32
                                            \stopGroup

                                            g,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32
                                            \stopGroup

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 6/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            [

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

                                            g,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32
                                            \stopGroup

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
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \stopGroup

                                            g,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32
                                            \stopGroup

                                            af,32
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
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a,32
                                            \stopGroup
                                            ]

                                        }

                                        \times 8/11
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \stopGroup

                                            r32

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
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

                                        \times 8/9
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
                                            \stopGroup

                                            bf,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

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
                                        bf,32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,32
                                        \stopGroup

                                        b,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b,32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b,32
                                        \stopGroup

                                        c32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 32/31
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 3]
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

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            r32

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            r32

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            d32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d32
                                            \stopGroup

                                            cs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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

                                            b,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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

                                        \times 2/3
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
                                            g32
                                            \f
                                            - \boxed-markup "toms" #1
                                            [

                                            r32

                                            g32

                                            g32

                                            g32

                                            b32

                                            r32

                                            b32

                                            b32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g32
                                            [

                                            r32

                                            g32

                                            g32

                                            g32

                                            g32

                                            b32

                                            b32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            r32

                                            b32

                                            g32

                                            g32

                                            b32

                                            b32

                                            b32

                                            d'32

                                            d'32

                                            r32

                                            d'32

                                            d'32

                                            b32

                                            b32

                                            b32

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 2]
                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b32
                                        [

                                        d'32

                                        d'32

                                        r32

                                        d'32

                                        d'32

                                        d'32

                                        \revert Staff.Stem.stemlet-length
                                        d'32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            b32

                                            b32

                                            b32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            d'32

                                            d'32

                                            f'32

                                            f'32

                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            [

                                            d'16

                                            r16

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8
                                        \bar "||"

                                    }

                                }

                            }

                            \tag #'voice10
                            {

                                \context Staff = "percussion 2 staff"
                                {

                                    \context Voice = "percussion 2 voice"
                                    {

                                        \times 8/11
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
                                            g32
                                            \f
                                            - \boxed-markup "toms" #1
                                            [

                                            r32

                                            g32

                                            g32

                                            g32

                                            g32

                                            r32

                                            b32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            b32

                                            r32

                                            d'32

                                            d'32

                                            d'32

                                            d'32

                                            d'32

                                            d'32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            f'32

                                            d'32

                                            r32

                                            d'32

                                            d'32

                                            f'32

                                            f'32

                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 16/15
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            r32

                                            d'32

                                            r32

                                            d'32

                                            d'32

                                            d'32

                                            d'32

                                            r32

                                            b32

                                            b32

                                            b32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            d'32

                                            d'32

                                            d'32

                                            d'32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
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
                                            g16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
                                        [

                                        g32

                                        g32

                                        b32

                                        b32

                                        b32

                                        b32

                                        \revert Staff.Stem.stemlet-length
                                        b32
                                        ]

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 12/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            d'32

                                            r32

                                            d'32

                                            r32

                                            d'32

                                            d'32

                                            d'32

                                            b32

                                            r32

                                            b32

                                            b32

                                            b32

                                            b32

                                            b32

                                            b32

                                            r32

                                            d'32

                                            d'32

                                            b32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8
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

                                        \times 8/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 1 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 \with-color #white "Piano LH" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 \with-color #white "LH" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'32
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

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
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r32

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
                                            g'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'32
                                            [
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
                                            af'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            g'32
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
                                        g'32
                                        \stopGroup
                                        [

                                        af'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'32
                                        \stopGroup

                                        a'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a'32
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 2]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 12/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'32
                                            \stopGroup
                                            [

                                            af'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

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
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 1 voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'32
                                        \stopGroup
                                        [

                                        b'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'32

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
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

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

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16

                                            \revert Staff.Stem.stemlet-length
                                            r16
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
                                            c''32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32
                                            \stopGroup

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8
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

                                        \times 8/9
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
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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

                                            r32

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]

                                        }

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
                                        \revert Staff.Stem.stemlet-length
                                        f32
                                        ]

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f32
                                        \stopGroup

                                        fs32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs32
                                        \stopGroup

                                        f32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \revert Staff.Stem.stemlet-length
                                        r32
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
                                            \stopGroup

                                            fs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            f32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 2]
                                        r4

                                        \times 4/5
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
                                            \revert Staff.Stem.stemlet-length
                                            f16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f32
                                            \stopGroup
                                            [

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32
                                            \stopGroup

                                            f32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 2 voice measure 3]
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
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32
                                            \stopGroup

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e32
                                        \stopGroup

                                        f32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f32
                                        ]

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

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
                                            \stopGroup

                                            r32

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8
                                        \bar "||"

                                    }

                                }

                            }

                        >>

                    }

                    \tag #'group6
                    {

                        \context PianoStaff = "sub group 5"
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
                                        a'32
                                        \f
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32

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
                                        \revert Staff.Stem.stemlet-length
                                        a'32
                                        \stopGroup
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'32
                                            [
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
                                            bf'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'32
                                            \stopGroup
                                            [

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf'32
                                        \stopGroup

                                        b'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'32

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \times 4/5
                                        {

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

                                            c''16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 16/15
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32
                                            \stopGroup

                                            c''32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32
                                            \stopGroup

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32
                                            \stopGroup

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

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

                                        r4

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'32
                                            \stopGroup
                                            [

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'32
                                            \stopGroup
                                            [

                                            r32

                                            c''32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32
                                            \stopGroup

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32
                                            \stopGroup

                                            c''32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c''32
                                            \stopGroup
                                            ]

                                        }

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
                                        \times 32/31
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
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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
                                            \stopGroup

                                            r32

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            r32

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

                                        \times 4/5
                                        {

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
                                            \stopGroup

                                            r16

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        r2

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            \stopGroup
                                            [

                                            af'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \stopGroup

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a'32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'32
                                        [

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32
                                        \stopGroup

                                        af'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'32
                                        \stopGroup

                                        g'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'32
                                        [

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g'32
                                        \stopGroup

                                        af'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af'32
                                        \stopGroup
                                        ]

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            fs32
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            fs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            r32

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
                                            \stopGroup

                                            fs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 2]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g32
                                        [

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
                                        \stopGroup

                                        af32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af32
                                        \stopGroup

                                        r32

                                        \revert Staff.Stem.stemlet-length
                                        a32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32
                                            \stopGroup

                                            af32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af32
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
                                            af32
                                            \stopGroup

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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
                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
                                        [

                                        fs32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs32
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        g32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g32
                                            \stopGroup
                                            [

                                            af32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32
                                            \stopGroup

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \times 8/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            r32

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32
                                            \stopGroup

                                            fs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            fs32
                                            \stopGroup
                                            [

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

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
                                            \stopGroup

                                            fs32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            g32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            fs32
                                            \stopGroup
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "1"
                                            \startGroup

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
                                            \f
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,32
                                        [

                                        r32

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
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,32

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

                                        \times 8/13
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
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
                                            a,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,16
                                            \stopGroup

                                            bf,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        r2

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

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
                                        a,32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a,32
                                        \stopGroup
                                        ]

                                        \times 16/17
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            bf,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf,32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32
                                            \stopGroup

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a,32
                                            \stopGroup

                                            bf,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf,32
                                            \stopGroup

                                            b,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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
                                            b,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

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
                                        ef32
                                        \f
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

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
                                        \stopGroup

                                        e32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e32
                                        ]

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16
                                            \stopGroup

                                            ef16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

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
                                            e32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
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

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f32
                                        \stopGroup
                                        [

                                        e32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e32
                                        \stopGroup

                                        ef32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef32

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef32
                                        \stopGroup

                                        e32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

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
                                        \revert Staff.Stem.stemlet-length
                                        e32
                                        \stopGroup
                                        ]

                                        \times 8/9
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

                                            r32

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
                                            \stopGroup

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 3]
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32
                                            \stopGroup

                                            r32

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

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]

                                        }

                                        \times 16/19
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

                                            f32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32

                                            r32

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
                                            \stopGroup

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e32

                                            r32

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

                                            ef32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef32
                                            ]

                                        }

                                        r4

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef32
                                            [

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef32
                                            \stopGroup

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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
                                            ef32
                                            \stopGroup
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "1"
                                            \startGroup

                                        }

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
