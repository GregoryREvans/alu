        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=122
                \mark #12
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4
                ^ \markup {
                  \huge
                  \concat {
                      \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"122" #"1" #"2"
                      \hspace #1
                      \upright [
                      \abjad-metric-modulation-tuplet-lhs #3 #0 #5 #7 #3 #0 #'(0.6 . 0.6)
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Flute" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "fl" }
                                        d'4
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            d'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        eqf'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 2]
                                            eqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            e'4
                                            ~

                                        }

                                        e'4
                                        ~

                                        \times 2/3
                                        {

                                            e'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs'4
                                            ~

                                        }

                                        fqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 3]
                                        fs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Oboe" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "ob" }
                                        c'4
                                        \ff
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 2]
                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs'4
                                        ~

                                        \times 2/3
                                        {

                                            dqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            e'8
                                            ~

                                        }

                                        e'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 3]
                                            eqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs'8
                                            ~

                                        }

                                        fqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            gqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            af'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        cs'4
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            cs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            ctqs'4
                                            ~

                                        }

                                        ctqs'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 2]
                                            ctqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4
                                            ~

                                        }

                                        dqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 3]
                                        fs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqf'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Bassoon" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bs" }
                                        \clef "bass"
                                        a,4
                                        \ff
                                        ~

                                        a,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs,4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 2]
                                            aqs,4
                                              %! abjad.glissando(7)
                                            \glissando

                                            b,8
                                            ~

                                        }

                                        b,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            cqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d8
                                            ~

                                        }

                                        d4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 3]
                                            dqs8
                                              %! abjad.glissando(7)
                                            \glissando

                                            e4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            g8
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        f2.
                                        \ff
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 2]
                                        f1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 3]
                                        f1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
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
                                        d'2.
                                        \ff
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 2]
                                        d'1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 3]
                                        d'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        g,4
                                        \ff
                                          %! abjad.glissando(7)
                                        \glissando

                                        af,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs,8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs,8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            e4
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs8
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 3]
                                            af4
                                              %! abjad.glissando(7)
                                            \glissando

                                            a8
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            bqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs'8
                                            ~

                                        }

                                        cqs'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        fs,2.
                                        \ff
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 2]
                                        fs,1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 3]
                                        fs,1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 4]
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
                                        \staff-line-count #1
                                        c'4
                                        \ff
                                        - \boxed-markup "seashell windchime (damped)" #1

                                        c'4

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 2]
                                        c'4

                                        c'4

                                        c'4

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 3]
                                        c'4

                                        c'4

                                        c'4

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Percussion 2" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "pc 2" }
                                        \clef "percussion"
                                        \staff-line-count #1
                                        c'4
                                        \mf
                                        - \boxed-markup "snare" #1

                                        c'4

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 2]
                                        c'4

                                        c'4

                                        c'4

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 3]
                                        c'4

                                        c'4

                                        c'4

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 4]
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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r2

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''8
                                            [

                                            <a' b'>32

                                            fs'32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'''8
                                            [

                                            b'8

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            ]
                                            \bar "||"

                                        }

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
                                        r1 * 3/8

                                        R1 * 3/8

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

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piano 2 voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            b16
                                            \fff

                                            <ef a bf>16

                                            c'16

                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            g8

                                            <a b>16

                                            \revert Staff.Stem.stemlet-length
                                            <ef bf>16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            <fs g>8

                                            \revert Staff.Stem.stemlet-length
                                            <ef bf c'>8
                                            ]

                                        }

                                        r4
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin I" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn I" }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        \ff
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqf8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            aqf8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cqs'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 2]
                                            cqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            e'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs'4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 3]
                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                        bf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin II" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn II" }
                                        d'4
                                        \ff
                                        ^ \markup {(normale)}
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 2]
                                        gqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
                                        dqf''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf''4
                                        ~

                                        \times 2/3
                                        {

                                            eqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs''8
                                            ~

                                        }

                                        fs''4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        c4
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            c8
                                              %! abjad.glissando(7)
                                            \glissando

                                            d4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        e4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 2]
                                            e8
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        aqf4
                                        ~

                                        \times 2/3
                                        {

                                            aqf8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf4
                                            ~

                                        }

                                        bqf4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 3]
                                            bqf8
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs'4
                                            ~

                                        }

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violoncello" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vc" }
                                        \clef "bass"
                                        c,4
                                        \ff
                                          %! abjad.glissando(7)
                                        \glissando

                                        d,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e,4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        gqf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4
                                        ~

                                        a,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 3]
                                            b,4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs8
                                            ~

                                        }

                                        cs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            eqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs8
                                            ~

                                        }

                                        fs4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2
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
                                        e,4
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            e,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs,4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        aqf,4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 2]
                                            aqf,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            b,4
                                            ~

                                        }

                                        b,4
                                        ~

                                        \times 2/3
                                        {

                                            b,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf4
                                            ~

                                        }

                                        dqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 3]
                                        eqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 4]
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

                >>

            }

        >>
