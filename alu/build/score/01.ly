        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=46
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 4/4
                s1 * 1
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      {\abjad-metronome-mark-markup #2 #0 #1 #"46" \fraction 2 3 }
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
                \time 4/4
                s1 * 1

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Flute" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "fl" }
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 4]
                                        fs'1
                                        \sfp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 5]
                                        fs'1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 6]
                                        fs'2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 7]
                                        fs'2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        \ff
                                        ]
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Oboe" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "ob" }
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 4]
                                        ef'1
                                        \sfp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 5]
                                        ef'1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 6]
                                        ef'2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 7]
                                        ef'2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'16
                                        \ff
                                        ]
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Bass Clarinet" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bcl" }
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ds'16
                                        \sfp
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        \revert Staff.Stem.stemlet-length
                                        g8.
                                        ]
                                        ~

                                        g2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 5]
                                        g1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 6]
                                        g2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 7]
                                        g2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        cs'16

                                        \revert Staff.Stem.stemlet-length
                                        ds'16
                                        \ff
                                        ]
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Bassoon" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bs" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        \sfp
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        \revert Staff.Stem.stemlet-length
                                        e8.
                                        ]
                                        ~

                                        e2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 5]
                                        e1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 6]
                                        e2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 7]
                                        e2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        \ff
                                        ]
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
                                        e''4
                                        :32
                                        \f
                                        \>

                                        d''2
                                        :32

                                        c''4
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 2]
                                        c''8
                                        :32

                                        a'2
                                        :32
                                        ~

                                        a'8
                                        :32

                                        g''4
                                        :32

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 3]
                                        f''2
                                        :32

                                        f''4.
                                        :32

                                        ef''8
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
                                        ef''2
                                        :32

                                        g''4
                                        :32

                                        f''4
                                        :32
                                        \mp

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 5]
                                        e''1
                                        \p
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 6]
                                        e''2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 7]
                                        e''2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        \f
                                        ]
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
                                        af'2
                                        :32
                                        \f
                                        \>

                                        fs'4.
                                        :32

                                        e'8
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 2]
                                        e'2
                                        :32

                                        e'4
                                        :32

                                        b'4
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 3]
                                        b'4
                                        :32

                                        a'4.
                                        :32

                                        a'4.
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 4]
                                        a'4
                                        :32

                                        d'4
                                        :32

                                        b'2
                                        :32
                                        \mp

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 5]
                                        fs'1
                                        \p
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 6]
                                        fs'2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 7]
                                        fs'2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        \f
                                        ]
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
                                        bf4.
                                        :32
                                        \f
                                        \>

                                        c2
                                        :32
                                        ~

                                        c8
                                        :32

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 2]
                                        ef,4
                                        :32

                                        ef,2
                                        :32

                                        f,4
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 3]
                                        f,8
                                        :32

                                        g,2
                                        :32
                                        ~

                                        g,8
                                        :32

                                        c4
                                        :32

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                        d,2
                                        :32

                                        ef,4.
                                        :32

                                        f,8
                                        :32
                                        \mp

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 5]
                                        af,1
                                        \p
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 6]
                                        af,2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 7]
                                        af,2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef,16
                                        \f
                                        ]
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
                                        b2
                                        :32
                                        \f
                                        \>
                                        ~

                                        b8
                                        :32

                                        cs4
                                        :32

                                        d8
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 2]
                                        d4.
                                        :32

                                        cs4.
                                        :32

                                        fs4
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 3]
                                        fs4.
                                        :32

                                        af,4
                                        :32

                                        b,4.
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 4]
                                        b,8
                                        :32

                                        cs4.
                                        :32

                                        e2
                                        :32
                                        \mp

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 5]
                                        g1
                                        \p
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 6]
                                        g2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 7]
                                        g2.
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        \f
                                        ]
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

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'\breve
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 1" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 1" }
                                            \once \override Beam.grow-direction = #left
                                            \clef "percussion"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \staff-line-count #4
                                            b16 * 123/64
                                            \ff
                                            - \boxed-markup toms #1
                                            [

                                            r16 * 31/16

                                            d'16 * 127/64

                                            b16 * 133/64

                                            r16 * 71/32

                                            d'16 * 153/64

                                            f'16 * 167/64

                                            b16 * 183/64

                                            r16 * 201/64

                                            d'16 * 109/32

                                            r16 * 117/32

                                            \revert Staff.Stem.stemlet-length
                                            g16 * 243/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 3]
                                            \once \override Beam.grow-direction = #left
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16 * 2
                                            [

                                            r16 * 133/64

                                            d'16 * 147/64

                                            b16 * 43/16

                                            d'16 * 205/64

                                            \revert Staff.Stem.stemlet-length
                                            r16 * 239/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 4]
                                            \once \override Beam.grow-direction = #left
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16 * 2
                                            [

                                            r16 * 133/64

                                            b16 * 147/64

                                            d'16 * 43/16

                                            r16 * 205/64

                                            \revert Staff.Stem.stemlet-length
                                            g16 * 239/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1..
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 5]
                                            \once \override Beam.grow-direction = #left
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16 * 115/64
                                            [

                                            d'16 * 117/64

                                            r16 * 121/64

                                            b16 * 129/64

                                            r16 * 139/64

                                            d'16 * 153/64

                                            f'16 * 169/64

                                            r16 * 47/16

                                            b16 * 207/64

                                            d'16 * 223/64

                                            \revert Staff.Stem.stemlet-length
                                            g16 * 231/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 7]
                                        r2

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 16/15
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b32
                                            \f
                                            [

                                            d'32

                                            b32

                                            d'32

                                            f'32

                                            b32

                                            d'32

                                            g32

                                            b32

                                            d'32

                                            b32

                                            d'32

                                            f'32

                                            b32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
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

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 2" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 2" }
                                            \once \override Beam.grow-direction = #right
                                            \clef "percussion"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \staff-line-count #4
                                            g16 * 235/64
                                            \ff
                                            - \boxed-markup "toms" #1
                                            [

                                            r16 * 109/32

                                            d'16 * 45/16

                                            b16 * 73/32

                                            r16 * 63/32

                                            \revert Staff.Stem.stemlet-length
                                            f'16 * 119/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 2]
                                            \once \override Beam.grow-direction = #left
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16 * 13/8
                                            [

                                            b16 * 111/64

                                            r16 * 65/32

                                            d'16 * 83/32

                                            r16 * 223/64

                                            \revert Staff.Stem.stemlet-length
                                            b16 * 145/32
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 3]
                                            \once \override Beam.grow-direction = #right
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16 * 235/64
                                            [

                                            r16 * 109/32

                                            d'16 * 45/16

                                            b16 * 73/32

                                            f'16 * 63/32

                                            \revert Staff.Stem.stemlet-length
                                            r16 * 119/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 4]
                                            \once \override Beam.grow-direction = #left
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16 * 13/8
                                            [

                                            r16 * 111/64

                                            b16 * 65/32

                                            d'16 * 83/32

                                            r16 * 223/64

                                            \revert Staff.Stem.stemlet-length
                                            b16 * 145/32
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 5]
                                            \once \override Beam.grow-direction = #right
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16 * 235/64
                                            [

                                            d'16 * 109/32

                                            r16 * 45/16

                                            b16 * 73/32

                                            r16 * 63/32

                                            \revert Staff.Stem.stemlet-length
                                            f'16 * 119/64
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'2.
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 6]
                                            \once \override Beam.grow-direction = #left
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16 * 45/32
                                            [

                                            r16 * 25/16

                                            b16 * 65/32

                                            d'16 * 47/16

                                            \revert Staff.Stem.stemlet-length
                                            b16 * 65/16
                                            ]

                                        }
                                        \revert TupletNumber.text

                                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                            {
                                                \context Score = "Score"
                                                \with
                                                {
                                                    \override SpacingSpanner.spacing-increment = 0.5
                                                    proportionalNotationDuration = ##f
                                                }
                                                <<
                                                    \context RhythmicStaff = "Rhythmic_Staff"
                                                    \with
                                                    {
                                                        \remove Time_signature_engraver
                                                        \remove Staff_symbol_engraver
                                                        \override Stem.direction = #up
                                                        \override Stem.length = 5
                                                        \override TupletBracket.bracket-visibility = ##t
                                                        \override TupletBracket.direction = #up
                                                        \override TupletBracket.minimum-length = 4
                                                        \override TupletBracket.padding = 1.25
                                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                        \override TupletNumber.font-size = 0
                                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                        tupletFullLength = ##t
                                                    }
                                                    {
                                                        c'1
                                                    }
                                                >>
                                                \layout
                                                {
                                                    indent = 0
                                                    ragged-right = ##t
                                                }
                                            }
                                        \times 2/2
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16 * 235/64
                                            [

                                            g16 * 109/32

                                            r16 * 45/16

                                            d'16 * 73/32

                                            b16 * 63/32

                                            \revert Staff.Stem.stemlet-length
                                            r16 * 119/64
                                            ]
                                            \bar "||"

                                        }
                                        \revert TupletNumber.text

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin I" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn I" }
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gtqs8
                                        \f
                                        [

                                        g16

                                        \revert Staff.Stem.stemlet-length
                                        gs16
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs8
                                            [

                                            a16

                                            \revert Staff.Stem.stemlet-length
                                            gtqs8.
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            gtqs16

                                            gs4

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gtqs8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gs16.
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs16
                                            [

                                            a8

                                            gqs16

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            [

                                            gqs16

                                            \revert Staff.Stem.stemlet-length
                                            gs8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gqs8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs8
                                            [

                                            g16

                                            \revert Staff.Stem.stemlet-length
                                            a8.
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            gs8.

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a32
                                            [

                                            gqs32

                                            gs16.

                                            g32

                                            \revert Staff.Stem.stemlet-length
                                            gs32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gtqs16
                                            [

                                            a16

                                            \revert Staff.Stem.stemlet-length
                                            g8.
                                            ]
                                            \bar "||"

                                        }

                                    }

                                }

                            }

                            \tag #'voice14
                            {

                                \context Staff = "violin 2 staff"
                                {

                                    \context Voice = "violin 2 voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin II" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn II" }
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs16
                                            \f
                                            [

                                            a16

                                            g16

                                            \revert Staff.Stem.stemlet-length
                                            gs8.
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gtqs8.
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs16.
                                            [

                                            g16

                                            gtqs32

                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            g16

                                            gtqs4

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 6]
                                            a4

                                            g8
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gtqs8.
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gtqs16
                                            [

                                            gs8.

                                            gqs16

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gs8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs16
                                            [

                                            g16.

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            gtqs8

                                            gqs8

                                            \revert Staff.Stem.stemlet-length
                                            gtqs16
                                            ]
                                            \bar "||"

                                        }

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Viola" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "va" }
                                          %! applying indicators
                                        \clef "alto"
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            \f
                                            [

                                            cs8

                                            \revert Staff.Stem.stemlet-length
                                            cqs16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs16
                                            [

                                            cs8

                                            \revert Staff.Stem.stemlet-length
                                            d32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            cqs16

                                            d4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            d8

                                            \revert Staff.Stem.stemlet-length
                                            cqs16
                                            ]
                                            \bar "||"

                                        }

                                    }

                                }

                            }

                            \tag #'voice16
                            {

                                \context Staff = "cello staff"
                                {

                                    \context Voice = "cello voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violoncello" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vc" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs,16
                                            \f
                                            [

                                            d,16.

                                            cqs,32

                                            \revert Staff.Stem.stemlet-length
                                            cs,32
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs,8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d,8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            ctqs,8

                                            d,16

                                            \revert Staff.Stem.stemlet-length
                                            c,16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c,8.
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c,16
                                            [

                                            ctqs,8.

                                            cs,16

                                            \revert Staff.Stem.stemlet-length
                                            d,16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            cqs,8.

                                            \revert Staff.Stem.stemlet-length
                                            ctqs,16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ctqs,16
                                            [

                                            d,16

                                            ctqs,32

                                            \revert Staff.Stem.stemlet-length
                                            cqs,16
                                            ]
                                            \bar "||"

                                        }

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Contrabass" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "cb" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs,8.
                                            \f
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            f,8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f,16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e,16
                                            ]

                                            fqs,4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs,8
                                        [

                                        e,16

                                        \revert Staff.Stem.stemlet-length
                                        fqs,16
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs,16
                                            [

                                            fs,16

                                            f,8.

                                            \revert Staff.Stem.stemlet-length
                                            e,16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            eqs,8
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,8
                                            [

                                            f,32

                                            \revert Staff.Stem.stemlet-length
                                            eqs,16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,16
                                            [

                                            f,8

                                            \revert Staff.Stem.stemlet-length
                                            eqs,8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs,8
                                            [

                                            e,8.

                                            \revert Staff.Stem.stemlet-length
                                            f,16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f,16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        eqs,8.
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs,16
                                            [

                                            f,8

                                            e,16

                                            \revert Staff.Stem.stemlet-length
                                            fs,8
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            f,4

                                            fqs,16
                                            \bar "||"

                                        }

                                    }

                                }

                            }

                        >>

                    }

                >>

            }

        >>
