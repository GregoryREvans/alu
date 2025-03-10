        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=105
                \mark #34
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4
                ^ \markup {
                  \huge
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"105"
                      \hspace #1
                      \upright [
                      \abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #3 #0 #'(0.6 . 0.6)
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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                \mark #35
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
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
                                        fs'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        ]

                                        r4

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs'16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        [

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
                                        r16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
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
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'32
                                            [
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
                                            af'32
                                            \stopGroup

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            g'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        r4

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
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
                                            g'16
                                            \stopGroup

                                            af'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
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

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 4]
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
                                            af'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
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
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 5]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [

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
                                        \stopGroup
                                        ]

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

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
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
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

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [
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
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 7]
                                        r4

                                        r4

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
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16
                                            \stopGroup

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
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 8]
                                        r4

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        ]

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 9]
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
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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
                                        \revert Staff.Stem.stemlet-length
                                        bf'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 10]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            \stopGroup
                                            [

                                            c''16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]

                                        }

                                        r4

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16
                                            \stopGroup

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
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

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 11]
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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            c''32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

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
                                            \stopGroup
                                            [

                                            r16

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            r16

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 12]
                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        \stopGroup
                                        [

                                        bf'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 13]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
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
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        \stopGroup
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
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

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            bf'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [
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
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 15]
                                        fs'2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 16]
                                        g'2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 17]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        g'4

                                        af'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 18]
                                        g'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        ]
                                        ~

                                        af'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        a'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 20]
                                        bf'4

                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        ]
                                        ~

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        g'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 22]
                                        af'2.

                                        a'4

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 23]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        a'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 24]
                                        bf'2.

                                        b'4

                                        c''4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Oboe" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "ob" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                            ^ \markup "cresc poco a poco (a ff)"
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                            ]

                                        }

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

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

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
                                        \stopGroup

                                        fs'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 2]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            \stopGroup
                                            [

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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
                                            af'16
                                            \stopGroup

                                            a'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af'16

                                        r16

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
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'16

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

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 4]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf'16
                                        \stopGroup

                                        b'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 5]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            \stopGroup
                                            [

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            c''16
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

                                        \revert Staff.Stem.stemlet-length
                                        cs''16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs''16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs''16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        cs''16
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 6]
                                        r4

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            d''16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d''16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d''16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d''16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d''16
                                            \stopGroup

                                            cs''16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs''16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d''32
                                            \stopGroup

                                            cs''32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs''32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs''32
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''16
                                            \stopGroup

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 8]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
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
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'16
                                        \stopGroup
                                        [

                                        b'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 9]
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
                                        \stopGroup
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'16

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

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 10]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            [

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
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

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

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

                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 11]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        \stopGroup
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'16

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
                                            r16
                                            ]

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 12]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [

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
                                        \stopGroup
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 13]
                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'16
                                        \stopGroup

                                        af'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        \stopGroup
                                        ]

                                        r4

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 14]
                                        f'2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 15]
                                        g'4

                                        af'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 16]
                                        a'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        ]
                                        ~

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 17]
                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        a'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 18]
                                        a'4

                                        bf'4

                                        b'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        ]
                                        ~

                                        c''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs''8
                                        ]
                                        ~

                                        cs''2

                                        d''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 20]
                                        d''2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs''8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 21]
                                        d''4

                                        cs''2

                                        c''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 22]
                                        c''2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                        bf'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 23]
                                        b'2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                        b'2
                                        ~

                                        b'4

                                        bf'4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Bass Clarinet" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bcl" }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
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
                                        fs'16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        \stopGroup
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 2]
                                        r4

                                        r4

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

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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
                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'16
                                        \stopGroup
                                        [

                                        g'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g'16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 3]
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

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            g'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            fs'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 4]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        r4

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 5]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g'16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        gs'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        gs'16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        gs'16
                                        \stopGroup
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            gs'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        gs'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        gs'16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'16
                                            \stopGroup

                                            gs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gs'16
                                            ]

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 7]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs'32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

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

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gs'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'16
                                            \stopGroup

                                            r16

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

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            \stopGroup
                                            [

                                            r16

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
                                            g'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g'16
                                        \stopGroup

                                        gs'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 8]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs'16
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
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 9]
                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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
                                        bf'16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf'16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 10]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            \stopGroup
                                            [

                                            b'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16

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
                                            b'16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]

                                        }

                                        r4

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 11]
                                        r4

                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16
                                            \stopGroup

                                            r16

                                            c''16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf'16

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

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

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \fff
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 13]
                                        fs'4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        g'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        fs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        g'2

                                        fs'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 15]
                                        fs'4

                                        g'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 16]
                                        g'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        g'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 17]
                                        fs'2

                                        g'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 18]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gs'8
                                        ]
                                        ~

                                        gs'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gs'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 19]
                                        gs'4

                                        g'2

                                        gs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 20]
                                        gs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gs'8
                                        ]
                                        ~

                                        gs'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 21]
                                        g'2

                                        fs'4

                                        g'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gs'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                        bf'4

                                        a'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 23]
                                        a'4

                                        bf'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 24]
                                        b'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        ]
                                        ~

                                        c''2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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
                                        \times 4/3
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
                                            ef16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                            ^ \markup "cresc poco a poco (a ff)"
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
                                            \revert Staff.Stem.stemlet-length
                                            ef16
                                            ]

                                        }

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
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            f16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            \stopGroup
                                            [

                                            fs16
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

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs32
                                            \stopGroup

                                            f32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

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

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 3]
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
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e16
                                            \stopGroup
                                            [

                                            f16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            r16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs16
                                        [
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \revert Staff.Stem.stemlet-length
                                            f16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 4]
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
                                        \stopGroup

                                        fs16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        fs16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 5]
                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
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
                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 6]
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
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 2/3
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
                                            \stopGroup

                                            r16

                                            ef16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef32
                                            \stopGroup
                                            [

                                            e32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
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
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 7]
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
                                            \stopGroup

                                            fs16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f16
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            \stopGroup
                                            ]

                                        }

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

                                        \revert Staff.Stem.stemlet-length
                                        e16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

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
                                            \revert Staff.Stem.stemlet-length
                                            e16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 9]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        \stopGroup
                                        [

                                        f16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        \stopGroup
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 10]
                                        r4

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f32
                                            \stopGroup

                                            fs32
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
                                            \revert Staff.Stem.stemlet-length
                                            fs32
                                            ]

                                        }

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
                                        \stopGroup

                                        f16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

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
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 11]
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e16

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
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef16
                                            \stopGroup

                                            e16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 12]
                                        ef4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        e4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 13]
                                        f4

                                        fs2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 14]
                                        f2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 15]
                                        f4

                                        fs2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 16]
                                        f2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        fs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 17]
                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 18]
                                        f4

                                        e4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef8
                                        ]
                                        ~

                                        ef4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 19]
                                        e2

                                        f2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 20]
                                        f4

                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        e2

                                        ef4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        e4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f4

                                        e4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 23]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        fs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 24]
                                        fs4

                                        f2
                                        ~

                                        f4

                                        e4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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
                                        a2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        bf4
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 2]
                                        b2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 3]
                                        bf2

                                        b4

                                        c'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 5]
                                        c'2

                                        cs'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 6]
                                        cs'4

                                        c'2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 8]
                                        cs'4

                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 9]
                                        cs'2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 10]
                                        d'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 11]
                                        d'2.

                                        cs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 12]
                                        cs'4

                                        c'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                        a4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 14]
                                        a4

                                        bf2
                                        ~

                                        bf4

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 15]
                                        b2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 16]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'4

                                        c'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 17]
                                        b2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 18]
                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 19]
                                        c'4

                                        b2

                                        c'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 20]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 22]
                                        b2

                                        bf4
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 23]
                                        a2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                        a2

                                        bf2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Trumpet" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tp" }
                                        cs'2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 3]
                                        d'4

                                        cs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 5]
                                        d'2.

                                        cs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 6]
                                        cs'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 7]
                                        ef'4

                                        e'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                        f'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 8]
                                        f'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        fs'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 9]
                                        fs'4

                                        f'4

                                        fs'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                        f'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 11]
                                        fs'2.

                                        g'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 12]
                                        g'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        fs'4
                                        ~

                                        fs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 13]
                                        f'2

                                        e'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                        f'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        ]
                                        ~

                                        e'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 15]
                                        e'2

                                        f'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 16]
                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                        f'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 17]
                                        fs'2

                                        g'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 18]
                                        g'4

                                        fs'2
                                        ~

                                        fs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        fs'4

                                        g'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 20]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]
                                        ~

                                        fs'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 21]
                                        g'2.

                                        af'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 22]
                                        a'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                        bf'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 23]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                        b'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 24]
                                        c''2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                        b'2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Trombone" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tbn" }
                                        \clef "bass"
                                        c2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        cs2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 2]
                                        cs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                        cs4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 3]
                                        c2

                                        cs2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                        cs2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 6]
                                        c4

                                        cs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                        cs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                        ~

                                        d4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 8]
                                        d2

                                        cs4

                                        d4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef8
                                        ]
                                        ~

                                        ef2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 10]
                                        e2.

                                        f4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 11]
                                        fs2.

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 12]
                                        g2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        af2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                        g2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 14]
                                        af2.

                                        g4

                                        fs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 16]
                                        e2

                                        ef2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 17]
                                        ef4

                                        d2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 18]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c4

                                        cs2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 19]
                                        c2.

                                        cs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 20]
                                        cs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 21]
                                        cs4

                                        d2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 22]
                                        cs2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 23]
                                        cs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 24]
                                        c2

                                        cs2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Tuba" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tba" }
                                        \clef "bass"
                                        b,2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 2]
                                        cs4

                                        c2

                                        cs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 3]
                                        cs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                        ~

                                        d2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef8
                                        ]
                                        ~

                                        ef2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 5]
                                        ef4

                                        e4

                                        f4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 6]
                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 7]
                                        e2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 8]
                                        fs4

                                        f2

                                        fs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 9]
                                        fs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 10]
                                        e4

                                        ef2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                        cs2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 12]
                                        cs4

                                        d2
                                        ~

                                        d4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                        ~

                                        d4

                                        ef2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 14]
                                        e2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef8
                                        ]
                                        ~

                                        ef2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                        ~

                                        d2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 16]
                                        d4

                                        cs4

                                        d4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 17]
                                        cs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 18]
                                        b,2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 19]
                                        cs4

                                        c2

                                        cs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 20]
                                        cs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b,8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 21]
                                        b,4

                                        c2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b,8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 23]
                                        cs2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b,8
                                        ]
                                        ~

                                        b,4

                                        c4
                                        ~

                                        c4

                                        cs4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 1" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 1" }
                                          %! applying indicators
                                        \clef "percussion"
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 2" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 2" }
                                          %! applying indicators
                                        \clef "percussion"
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 \with-color #white "Piano LH" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 \with-color #white "LH" }
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 17]
                                        <a' d'' ef''>1
                                        \mf

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 19]
                                        <cs'' d'' ef'' e''>1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 21]
                                        <b' f'' g''>1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 23]
                                        <d' e'>1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 \with-color #white "Piano RH" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 \with-color #white "RH" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 17]
                                        <g af bf>1
                                        \mf

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 19]
                                        <fs af a>1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 21]
                                        <bf c'>1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 23]
                                        <ef a>1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8
                                        \bar "||"

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

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin I" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn I" }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                            ^ \markup "cresc poco a poco (a ff)"
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
                                            bf16
                                            \stopGroup

                                            b16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            bf32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                            b32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        \stopGroup
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            bf16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        \stopGroup
                                        [

                                        bf16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        r4

                                        r4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 5]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            \stopGroup
                                            [

                                            r16

                                            b16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

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
                                            \stopGroup
                                            [

                                            r32

                                            bf32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
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
                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        b16
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
                                            b32
                                            \stopGroup
                                            [

                                            c'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32
                                            \stopGroup

                                            r32

                                            b32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 6]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16
                                            \stopGroup

                                            c'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        \stopGroup
                                        [

                                        cs'16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'16
                                        \stopGroup

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
                                        \fff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 7]
                                        bf4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 8]
                                        b2

                                        bf2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 9]
                                        bf4

                                        b2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b4

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 11]
                                        bf4

                                        b2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 12]
                                        bf2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 13]
                                        b2

                                        c'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4

                                        ef'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 15]
                                        e'4

                                        f'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 16]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        ]
                                        ~

                                        e'4

                                        ef'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 17]
                                        ef'4

                                        d'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 18]
                                        cs'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 19]
                                        d'4

                                        cs'4

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 20]
                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 21]
                                        b2.

                                        bf4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 22]
                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 23]
                                        b4

                                        bf4

                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 24]
                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        c'4

                                        b4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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
                                            a32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                            ^ \markup "cresc poco a poco (a ff)"
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            r32

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
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

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

                                        a16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        ]

                                        r4

                                        \times 2/3
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
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 2]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        \stopGroup
                                        [

                                        a16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
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

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf16
                                        \stopGroup

                                        b16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 4]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16
                                            \stopGroup

                                            bf16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r16

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
                                            \stopGroup

                                            a16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 5]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a32
                                            \stopGroup
                                            [

                                            r32

                                            bf32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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
                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf16
                                        \stopGroup

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 6]
                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            \stopGroup
                                            [

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        \stopGroup
                                        [

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 7]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            \stopGroup
                                            [

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c'16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        \stopGroup
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        \stopGroup
                                        ]

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 8]
                                        a4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 9]
                                        a2

                                        bf2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 10]
                                        bf4

                                        a2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b4

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 12]
                                        bf4

                                        a2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 13]
                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 14]
                                        b4

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 15]
                                        c'2

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 16]
                                        b2

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 17]
                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        c'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 18]
                                        cs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 19]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        cs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 20]
                                        d'2

                                        ef'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 21]
                                        ef'4

                                        d'2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4

                                        ef'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 23]
                                        d'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef'8
                                        ]
                                        ~

                                        ef'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 24]
                                        ef'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Viola" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "va" }
                                        \clef "alto"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
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
                                        af16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        ]

                                        r4

                                        \times 2/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16
                                            \stopGroup
                                            [

                                            a16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 2]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            \stopGroup
                                            [

                                            bf16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        \stopGroup
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            a16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 3]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        r4

                                        r4

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

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16
                                            \stopGroup

                                            b16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopGroup

                                            b16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 5]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]

                                        r4

                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            \stopGroup
                                            [

                                            bf16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 6]
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

                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            \stopGroup
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 7]
                                        r4

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af16
                                        \stopGroup

                                        a16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \revert Staff.Stem.stemlet-length
                                            r16
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a16
                                        \stopGroup
                                        [

                                        bf16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 8]
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
                                            \stopGroup

                                            r16

                                            a16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 9]
                                        af2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        a2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 11]
                                        a2.

                                        bf4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 12]
                                        b4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 13]
                                        b4

                                        bf2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 14]
                                        a2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 15]
                                        a4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 16]
                                        bf4

                                        a2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 17]
                                        bf2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 18]
                                        a4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                        bf4

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 19]
                                        b2

                                        bf2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 20]
                                        a2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        af4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                        a4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        af4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 22]
                                        af4

                                        a2
                                        ~

                                        a4

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 23]
                                        bf2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 24]
                                        bf4

                                        a2

                                        bf2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
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
                                            g,32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                            ^ \markup "cresc poco a poco (a ff)"
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

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,16
                                            [
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
                                            af,16

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

                                        }

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
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
                                        \revert Staff.Stem.stemlet-length
                                        g,16
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,16
                                            [

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

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        g,16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            af,16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af,16
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af,16
                                        \stopGroup

                                        g,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g,16
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32
                                            \stopGroup

                                            r32

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
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 5]
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

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            bf,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r16

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
                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]

                                        }

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,16
                                        \stopGroup
                                        [

                                        bf,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf,16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        b,16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
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
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 7]
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b,16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        ]

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c16

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
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
                                            c32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32
                                            \stopGroup

                                            b,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b,32
                                            \stopGroup

                                            c32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            ]

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        c16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        cs16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 9]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d16
                                            ]

                                        }

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d16
                                        \stopGroup
                                        [

                                        ef16
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
                                        \revert Staff.Stem.stemlet-length
                                        ef16
                                        \stopGroup
                                        ]

                                        r4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        g,2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af,8
                                        ]
                                        ~

                                        af,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        af,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g,8
                                        ]
                                        ~

                                        g,2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        g,4

                                        af,4

                                        g,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af,8
                                        ]
                                        ~

                                        af,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g,8
                                        ]
                                        ~

                                        g,2

                                        af,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 14]
                                        af,2

                                        a,2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf,8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a,8
                                        ]
                                        ~

                                        a,4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 16]
                                        bf,2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b,8
                                        ]
                                        ~

                                        b,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 17]
                                        b,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        ]
                                        ~

                                        c2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 18]
                                        c4

                                        b,4

                                        c4
                                        ~

                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 19]
                                        cs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                        ~

                                        d4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 20]
                                        d2

                                        ef2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        e2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 22]
                                        f2

                                        fs4
                                        ~

                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 23]
                                        g2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        fs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 24]
                                        fs2

                                        g4

                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
                                        ]
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

                                        \times 2/3
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
                                            fs16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                            ^ \markup "cresc poco a poco (a ff)"
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
                                            fs16
                                            \stopGroup

                                            g16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
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

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        ]

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        \stopGroup
                                        [

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
                                        g16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
                                        r4

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            af16
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
                                        af16
                                        [

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        af16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        \stopGroup
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 3]
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
                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g16

                                        r16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        \stopGroup
                                        ]

                                        \times 4/5
                                        {

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

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 4]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs32
                                            [

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

                                        r4

                                        r4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 5]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            r16

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
                                            af16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            g16
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
                                            g16
                                            [

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g16
                                            \stopGroup

                                            r16

                                            \revert Staff.Stem.stemlet-length
                                            fs16
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
                                        fs16
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

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
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
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 6]
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
                                        r16
                                        ]

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
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
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 7]
                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g16
                                        \stopGroup

                                        r16

                                        \revert Staff.Stem.stemlet-length
                                        fs16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \times 4/5
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
                                            \stopGroup

                                            g16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g16

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
                                            g16
                                            [

                                            r16

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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            af16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 8]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af32
                                            \stopGroup
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a32
                                            \stopGroup

                                            af32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #4
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af32

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

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 9]
                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                        \stopGroup
                                        [

                                        a16
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a16

                                            \revert Staff.Stem.stemlet-length
                                            r16
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

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a16
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

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

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #4
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        b16

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        b16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
                                        \stopGroup
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 11]
                                        fs2.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        ^ \markup "cresc poco a poco (a ff)"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 12]
                                        g2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                        g4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 13]
                                        af2

                                        g2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        fs2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 15]
                                        g2

                                        af4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 16]
                                        g4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 17]
                                        g2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        fs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 18]
                                        fs2

                                        g4

                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 19]
                                        g2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        af4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 20]
                                        af2

                                        a4

                                        af4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 21]
                                        af2

                                        a2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 22]
                                        a4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                        bf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 23]
                                        b2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        bf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 24]
                                        bf2

                                        b4

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \fff
                                        ]
                                        \bar "||"

                                    }

                                }

                            }

                        >>

                    }

                >>

            }

        >>
