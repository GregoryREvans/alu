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
                \tempo 4=105
                \mark #13
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
                      \abjad-metric-modulation-tuplet-lhs #4 #0 #7 #6 #4 #0 #'(0.6 . 0.6)
                      \hspace #0.5
                      \upright ]
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                \time 5/4
                s1 * 5/4

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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

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
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                \mark #14
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

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
                \time 4/4
                s1 * 1

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
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                \mark #15
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 29]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 30]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 31]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 32]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 33]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 34]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 35]
                \mark #16
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 36]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 37]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 38]
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
                                        c'4
                                        \fff
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqf'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            dqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf'8
                                            ~

                                            \revert Staff.Stem.stemlet-length
                                            eqf'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            cqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs'8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 2]
                                            cs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4
                                              %! abjad.glissando(7)
                                            \glissando

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

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            cs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqf'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 3]
                                            dqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef'16
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs'8

                                            \revert Staff.Stem.stemlet-length
                                            dqf'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            dqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        ef'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf'8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            f'8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            [

                                            d'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs'8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            e'16.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'8
                                            [

                                            dqs'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqs'8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs'8.

                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            eqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            f'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            eqf'8.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 38]
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
                                        cs'4
                                        \fff
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            ef'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs'4
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs'16
                                            [

                                            d'8
                                            ~

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 2]
                                            dqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf'8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            eqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            e'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqf'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            gqf'16

                                            e'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs'16
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            fs'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            gqs'4

                                            f'16
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fqs'16
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf'8.

                                            \revert Staff.Stem.stemlet-length
                                            fs'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqs'8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            af'16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqs'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs'8
                                            [

                                            g'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqf'8
                                            ]
                                            ~

                                        }

                                        aqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            aqf'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs'16

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 38]
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
                                        b4
                                        \fff
                                        \>
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ctqs'8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            ds'4

                                            bqs8
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cqs'16.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            cqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            ctqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf'8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        d'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 4]
                                        e'4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ctqs'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ctqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 5]
                                            eqs'8

                                            cs'4
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            cs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ds'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf'16
                                        ]
                                        ~

                                        eqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 6]
                                        ctqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            eqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            e'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            ds'16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            e'16.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            e'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs'4
                                            ~

                                            eqs'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            eqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs'4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        dqs'8.
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        \p
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak color #safe-red
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding 3.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "airy"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-right-text "tone"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanOne

                                        cs'16

                                        c'16

                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            cs'16

                                            c'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [

                                            c'16

                                            cs'16

                                            c'16
                                            )

                                            cs'16
                                            - \sfz
                                            (

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [

                                            c'32

                                            cs'32

                                            c'32

                                            cs'32

                                            c'32

                                            \revert Staff.Stem.stemlet-length
                                            cs'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.text_spanner()
                                            \stopTextSpanOne
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            cs'16
                                            )

                                            c'16
                                            - \sfz
                                            (

                                            cs'16

                                            c'16

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 9]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            )
                                            [

                                            cs'16
                                            - \sfz
                                            (

                                            c'16

                                            cs'16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \sfz
                                            ]
                                            (

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'16
                                        )
                                        [

                                        ds'16
                                        - \sfz
                                        (

                                        fs'16

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        )
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g''16
                                            - \sfz
                                            [
                                            (

                                            gs'''16

                                            c'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            )
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [
                                            (

                                            c'16

                                            cs'16

                                            c'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [

                                            c'32

                                            cs'32

                                            c'32

                                            cs'32
                                            )

                                            c'32
                                            - \sfz
                                            (

                                            \revert Staff.Stem.stemlet-length
                                            cs'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            cs'16

                                            c'16

                                            cs'16

                                            c'16

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            cs'16

                                            c'16

                                            cs'16
                                            - \sfz

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            )
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'16
                                        [
                                        (

                                        c'16

                                        cs'16

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \sfz
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            \p
                                            [
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \tweak bound-details.right.padding 0.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \tweak bound-details.right.stencil-align-dir-y #center
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak color #safe-red
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding 8.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "airy"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-right-text "tone"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpanOne

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [

                                        cs'16

                                        d'16

                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            cs'16

                                            d'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            )
                                            [

                                            d'16
                                            - \sfz
                                            (

                                            cs'16

                                            d'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'32
                                            [

                                            c''32

                                            gs''32

                                            cs'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.text_spanner()
                                            \stopTextSpanOne

                                            d'32

                                            cs'32
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            - \sfz
                                            ]
                                            (

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [

                                            d'16

                                            cs'16

                                            d'16
                                            )

                                            cs'16
                                            - \sfz
                                            (

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            )
                                            [

                                            d'16
                                            - \sfz
                                            (

                                            cs'16
                                            )

                                            d'16
                                            - \sfz
                                            (

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        )
                                        [

                                        cs'16
                                        - \sfz
                                        (

                                        e'16

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 15]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''16
                                            [

                                            gs''16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]
                                            (

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [

                                        cs'16

                                        d'16

                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            cs'16

                                            d'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            )
                                            [

                                            d'16
                                            - \sfz
                                            (

                                            cs'16

                                            d'16

                                            cs'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [

                                            e'32

                                            g'32

                                            c''32

                                            gs''32

                                            cs'32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            - \sfz
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 16]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            )
                                            [

                                            d'16
                                            (

                                            cs'16

                                            d'16

                                            cs'16
                                            - \sfz

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [

                                            d'16
                                            - \sfz

                                            cs'16

                                            d'16
                                            - \sfz

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [

                                        cs'16
                                        - \sfz

                                        d'16
                                        )

                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                        ]
                                        (

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            g'16

                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            )
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 26]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        \p
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak color #safe-red
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding 3.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "airy"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-right-text "tone"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanOne

                                        ds'16

                                        d'16

                                        \revert Staff.Stem.stemlet-length
                                        ds'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            ds'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ds'16
                                        [

                                        d'16

                                        f'16

                                        \revert Staff.Stem.stemlet-length
                                        gs'16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            [

                                            d'16
                                            )

                                            ds'16
                                            - \sfz
                                            (

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 27]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            ds'16

                                            d'16

                                            ds'16

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.text_spanner()
                                            \stopTextSpanOne
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs'32
                                            [

                                            cs''32
                                            )

                                            d'32
                                            - \sfz
                                            (

                                            ds'32

                                            d'32

                                            ds'32

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            )
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            - \sfz
                                            [
                                            (

                                            d'16

                                            ds'16
                                            )

                                            d'16
                                            - \sfz
                                            (

                                            f'16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            gs'16
                                            - \sfz
                                            ]
                                            (

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            [

                                            d'16
                                            )

                                            ds'16
                                            - \sfz
                                            (

                                            d'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 28]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [

                                        ds'16
                                        )

                                        d'16
                                        (

                                        \revert Staff.Stem.stemlet-length
                                        ds'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            f'16

                                            \revert Staff.Stem.stemlet-length
                                            gs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''16
                                        [

                                        d'16

                                        ds'16

                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            [

                                            d'16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            - \sfz
                                            ]
                                            (

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 29]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [

                                        ds'16

                                        d'16

                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs'16
                                            [

                                            cs''16

                                            d'16

                                            ds'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            [

                                            d'16
                                            - \sfz

                                            ds'16
                                            )

                                            d'16
                                            (

                                            ds'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            - \sfz
                                            [

                                            gs'32

                                            cs''32

                                            d'32
                                            - \sfz

                                            ds'32

                                            d'32
                                            - \sfz

                                            \revert Staff.Stem.stemlet-length
                                            ds'32
                                            )
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 35]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            \p
                                            [
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \tweak bound-details.right.padding 0.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \tweak bound-details.right.stencil-align-dir-y #center
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak color #safe-red
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding 3.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "airy"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-right-text "tone"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpanOne

                                            e'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        ds'16

                                        fs'16

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            [

                                            e'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        ds'16

                                        fs'16
                                        )

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \sfz
                                        ]
                                        (

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 36]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            [

                                            e'16

                                            ds'16

                                            e'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            a'16

                                            ds'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.text_spanner()
                                            \stopTextSpanOne

                                            e'16

                                            ds'16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \sfz
                                            ]
                                            (

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'32
                                            [

                                            fs'32

                                            a'32

                                            ds'32
                                            )

                                            e'32
                                            - \sfz
                                            (

                                            ds'32

                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            )
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            - \sfz
                                            [
                                            (

                                            fs'16
                                            )

                                            a'16
                                            - \sfz
                                            (

                                            ds'16

                                            e'16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            - \sfz
                                            ]
                                            (

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            ds'16

                                            fs'16

                                            a'16
                                            )

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]
                                            (

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 37]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        ds'16

                                        e'16

                                        \revert Staff.Stem.stemlet-length
                                        ds'16
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            a'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        ds'16

                                        e'16
                                        )

                                        \revert Staff.Stem.stemlet-length
                                        ds'16
                                        - \sfz
                                        ]
                                        (

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            a'16

                                            \revert Staff.Stem.stemlet-length
                                            ds'16
                                            )
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 38]
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
                                        bf,4
                                        \fff
                                        \>
                                        ~

                                        bf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        c8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            dqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 2]
                                            ef8

                                            bqf,4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs,8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cqs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            cqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf8.
                                            ]

                                        }

                                        b,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cs16
                                            ]
                                            ~

                                        }

                                        cs4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 4]
                                        dqs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bqs,16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cqs16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqf8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs16
                                            [

                                            c8
                                            ~

                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c16
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs4
                                            ~

                                            cs16
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 4/5
                                        {

                                            d4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf16
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            cqs16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqf8
                                        ]
                                        ~

                                        dqf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqs8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            e8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fqs8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs16
                                            [

                                            cs8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            d16
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 38]
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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''8
                                        \fff
                                        [
                                        \>

                                        \revert Staff.Stem.stemlet-length
                                        f''8
                                        ]
                                        ~

                                        f''4

                                        e''4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            dqs''16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs''8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            f''8.
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            e''4

                                            ef''8
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            dqf''16.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 3]
                                            dqf''8

                                            c''4

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e''8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            ef''8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        ]

                                        cqs''4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
                                        b'4

                                        ef''4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        ]
                                        ~

                                        d''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs''8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bqs'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d''8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            d''16

                                            cs''4
                                            ~

                                            cs''16
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''32
                                            [

                                            c''8
                                            ~

                                            c''32

                                            \revert Staff.Stem.stemlet-length
                                            bqf'32
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]

                                        \times 4/5
                                        {

                                            cs''4

                                            c''16
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8.
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gs'16
                                            ]
                                            ~

                                        }

                                        gs'4

                                        c''4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 8]
                                        b'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                        ]
                                        ~

                                        bf'4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            b'8
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 38]
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
                                        ef''4
                                        \fff
                                        \>
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        ]

                                        cs''4
                                        ~

                                        cs''4

                                        bqs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        aqs'8.
                                        ]

                                        \times 4/5
                                        {

                                            dqf''4

                                            cqs''16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            cqs''8

                                            bqs'4

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            af'4

                                            c''8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            b'8.
                                            ]

                                        }

                                        bf'4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]
                                            ~

                                        }

                                        gqf'4

                                        bqf'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        aqs'8.
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 5]
                                        aqf'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        ~

                                        g'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                        f'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            g'4

                                            fqs'8
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'16.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            eqf'8
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gqf'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf'16
                                            [

                                            fqs'8

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        d'8

                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 8]
                                        f'4
                                        ~

                                        f'4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        dqs'16
                                        ]
                                        ~

                                        dqs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cqs'8
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 38]
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
                                        c4
                                        \fff
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf4
                                        ~

                                        eqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 2]
                                        fqs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            ef4
                                              %! abjad.glissando(7)
                                            \glissando

                                            e16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 3]
                                            e8
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            e4
                                              %! abjad.glissando(7)
                                            \glissando

                                            f8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fs8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                        gqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            ]
                                            ~

                                        }

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        af8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs4
                                        ~

                                        aqs4
                                        ~

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 6]
                                        af4
                                        ~

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 7]
                                        bqs4
                                        ~

                                        \times 2/3
                                        {

                                            bqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf'4
                                            ~

                                            dqf'16

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            b16.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            c'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 8]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        ]
                                        ~

                                        d'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf'4
                                        ~

                                        eqf'4
                                        \mf

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 38]
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
                                        cs'4
                                        \fff
                                        \>
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        c'4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        aqs16
                                        ]
                                        ~

                                        aqs4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 2]
                                        gqs4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bqs8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bqf8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 3]
                                            bqf16

                                            aqs4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs32
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bf8.
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            a4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gqf8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        eqs8.
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            aqf8
                                            ]

                                        }

                                        gqs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 5]
                                        gqs4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        f4

                                        ef4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 6]
                                        g4

                                        fs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]
                                        ~

                                        f4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        eqf8
                                        ]
                                        ~

                                        eqf4

                                        dqf4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fqs8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 8]
                                            fqs8

                                            eqs4

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf16.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            [

                                            e8.

                                            \revert Staff.Stem.stemlet-length
                                            ef16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef16
                                            [

                                            d8.

                                            \revert Staff.Stem.stemlet-length
                                            cqs16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bqf,16
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 21]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 38]
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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 38]
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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 38]
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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 38]
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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 18]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 19]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 23]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 25]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 31]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 33]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 34]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 35]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 36]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 5/8

                                        R1 * 5/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 37]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 38]
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin I" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn I" }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8.
                                        \fff
                                        [
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                        ~

                                        c'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqs'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                        bqs4
                                        ~

                                        bqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqf'8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            ef'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            f'16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            f'8

                                            c'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 4]
                                            d'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf'8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fqs'8.
                                            ]

                                        }

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs'16
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 5]
                                        dqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs'8.
                                        ]

                                        cs'4
                                        ~

                                        cs'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            d'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        ef'8.
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        gqf'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 7]
                                        gqf'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        dqf'8
                                        ]
                                        ~

                                        dqf'4
                                        ~

                                        dqf'4
                                        \mf

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 8]
                                            a2.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<
                                              %! abjad.glissando(7)
                                            \glissando
                                            \startTrillSpan

                                            bf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 9]
                                        bqf2
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 10]
                                        c'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 11]
                                            dqf'2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 12]
                                        ef'4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf'8.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 13]
                                        bf4
                                        \fff
                                        \stopTrillSpan
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                        ~

                                        c'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'8
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf'16
                                        ]
                                        ~

                                        eqf'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bqf8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqs8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cqs'8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cs'16.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqs'8
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 16]
                                        bf2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 17]
                                        bqs2
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 18]
                                        a4
                                        \fff
                                        \stopTrillSpan
                                        \>
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bf8
                                            ]
                                            ~

                                        }

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cqs'8
                                        ]
                                        ~

                                        cqs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqs'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            aqs8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 20]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf8
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cs'8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef'8.

                                            \revert Staff.Stem.stemlet-length
                                            bf8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            b16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 21]
                                            c'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf'4
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf'8.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bqf8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqs16
                                            ]
                                            ~

                                        }

                                        bqs4
                                        \mf

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 22]
                                        b4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        c'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 23]
                                            cqs'2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 24]
                                        d'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 25]
                                        eqf'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 26]
                                        f'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 27]
                                        gqf'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 28]
                                        af'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 29]
                                        aqs'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 30]
                                            b'2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            c''4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs'4.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \ff

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 31]
                                        af4
                                        \fff
                                        \stopTrillSpan
                                        \>
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        a4
                                        ~

                                        a4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 32]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bf8.
                                        ]
                                        ~

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqf'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        aqf8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 33]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            a16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bf16.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            b8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cqs'8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 34]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs'8.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        aqs16
                                        ]
                                        ~

                                        aqs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf8
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 35]
                                        c'2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 36]
                                            dqf'2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 37]
                                        ef'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 38]
                                        eqs'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        fqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff
                                        \stopTrillSpan
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

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 1]
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin II" }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn II" }
                                            cs'4
                                            \fff
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'16
                                            ~

                                        }

                                        d'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'8
                                            ]
                                            ~

                                        }

                                        ef'4
                                        ~

                                        ef'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 2]
                                        eqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        ~

                                        g'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
                                        d'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef'8
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            af'8

                                            ef'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            f'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            a'16

                                            e'4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 5]
                                        f'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs'4
                                        ~

                                        fs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        gqs'8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 6]
                                        bf'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            f'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            ]
                                            ~

                                        }

                                        g'4
                                        ~

                                        g'4
                                        \mf

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 8]
                                            aqf2.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<
                                              %! abjad.glissando(7)
                                            \glissando
                                            \startTrillSpan

                                            a4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 9]
                                        aqs2
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 10]
                                            bqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                            b2
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 11]
                                            bqs2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 12]
                                        cqs'4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'8.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cs'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 14]
                                        eqf'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        ]
                                        ~

                                        fs'4
                                        ~

                                        fs'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 15]
                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        d'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs'8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'8
                                            [

                                            d'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            e'16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fqs'32
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 16]
                                        a2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 17]
                                        bf2
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 18]
                                            b4
                                            \fff
                                            \stopTrillSpan
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'16
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs'16
                                            ]
                                            ~

                                        }

                                        dqs'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 19]
                                        dqs'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]
                                        ~

                                        f'4
                                        ~

                                        f'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 20]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cs'8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            d'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf'16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs'8.

                                            \revert Staff.Stem.stemlet-length
                                            cs'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 21]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

                                            d'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        ]
                                        ~

                                        e'4
                                        \mf

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 22]
                                        aqs4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        bf8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 23]
                                            bqf2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            b4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 24]
                                            bqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'2
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 25]
                                        cqs'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 26]
                                        dqf'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        d'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 27]
                                            dqs'2
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef'2
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 28]
                                        eqf'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 29]
                                        eqs'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 10/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 30]
                                            fqs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs'4.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \ff

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 31]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf8.
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            b8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqf'8
                                            ]
                                            ~

                                        }

                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 32]
                                        e'4
                                        ~

                                        e'4
                                        ~

                                        e'4

                                        b4
                                        ~

                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 33]
                                        c'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs'8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            f'8

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf'32
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 34]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        ]

                                        \times 4/5
                                        {

                                            cs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'16
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        ef'8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs'16
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 35]
                                        bf2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        bqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 36]
                                            b2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            b4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 37]
                                            c'2
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs'2
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 38]
                                        cs'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs'4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff
                                        \stopTrillSpan
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
                                            f4
                                            \fff
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            fs16
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs16
                                        ]
                                        ~

                                        bqs4

                                        gqf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 2]
                                        gqf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        gqs16
                                        ]
                                        ~

                                        gqs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 3]
                                        gqs4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            ]
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

                                        \times 4/5
                                        {

                                            bqf16
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs'4

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            a8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqs'16.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs'16
                                            [

                                            aqs8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            c'8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 5]
                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        ~

                                        e'4
                                        ~

                                        e'4

                                        b4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 6]
                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            dqf'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        ef'8
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 7]
                                        af2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        \startTrillSpan

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 8]
                                            aqf2.

                                            aqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            af4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 9]
                                            a2

                                            a2
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 10]
                                        aqs2

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 11]
                                        bf2.

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 12]
                                        bqf4.

                                        bqf8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf8.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        \fff
                                        \stopTrillSpan
                                        [
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            af16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf16
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 14]
                                        fqs4
                                        ~

                                        fqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqf4
                                        ~

                                        gqf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        af4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'8.

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            af8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqs16
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 16]
                                        gqs2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        \startTrillSpan

                                        gqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 17]
                                        af2

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef8
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            e8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs8.
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            eqs8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fqs8
                                        ]
                                        ~

                                        fqs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 20]
                                        g4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqf8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 21]
                                            fs16
                                              %! abjad.glissando(7)
                                            \glissando

                                            g4
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf16
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs'16

                                            \revert Staff.Stem.stemlet-length
                                            gqs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            gqs8
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqs8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 22]
                                        g4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        \startTrillSpan

                                        g8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqf8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 23]
                                            gqs2.

                                            gqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            g4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 24]
                                            af2

                                            af2
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 25]
                                        aqf2

                                        aqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 26]
                                            a2.

                                            a4
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 27]
                                        aqs2

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 28]
                                        bf2

                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 29]
                                            bqf2

                                            bqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 30]
                                            b2.

                                            b4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf4.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \ff

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 31]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8.
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fs8.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqf8.
                                        ]

                                        eqf4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 32]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqs8
                                        ]
                                        ~

                                        eqs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs8.
                                        ]
                                        ~

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 33]
                                        gqs4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqs16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bf8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            f8.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqs8
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 34]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            a16
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqs16.
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cs'8.
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 35]
                                        gqf2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                        \startTrillSpan

                                        gqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 36]
                                            g2.

                                            g4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 37]
                                            gqs2

                                            gqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                            g2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 38]
                                        af2

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff
                                        \stopTrillSpan
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
                                            e,16
                                            \fff
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            f,16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqf,16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs,8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs,16
                                            [

                                            eqs,8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fqs,16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g,16
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqs,16
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        aqs,4
                                        ~

                                        aqs,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f,8
                                        ]
                                        ~

                                        f,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs,8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs,8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs8

                                            \revert Staff.Stem.stemlet-length
                                            fqs,16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs,16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf,16
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            af,16.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            bqf,4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 5]
                                            cs16

                                            fs,4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqf,16
                                        ]
                                        ~

                                        aqf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                        ~

                                        b,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqf16
                                        ]
                                        ~

                                        dqf4
                                        ~

                                        dqf4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            gqf,8
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        gqs2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        gqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 8]
                                            g2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 9]
                                            f2
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs2
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        eqs2
                                          %! abjad.glissando(7)
                                        \glissando

                                        e4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        eqs2.
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        e4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,8
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            e,16
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fqs,32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs,8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            af,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf,8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            bqf,16

                                            eqf,4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs,16
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 14]
                                        fs,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqf,4
                                        ~

                                        aqf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 15]
                                        e,4
                                        ~

                                        e,4
                                        ~

                                        e,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f,4
                                        ~

                                        \times 4/5
                                        {

                                            f,16
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf,4
                                            \mf

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 16]
                                        gqf2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        fqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 17]
                                        fs2
                                          %! abjad.glissando(7)
                                        \glissando

                                        fqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqs4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef,16.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqs,8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs,8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            g,8.
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs,8.
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 19]
                                        dqs,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf,8
                                        ]
                                        ~

                                        eqf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        gqs,16
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 20]
                                        gqs,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf,4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            ef,8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e,8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 21]
                                            e,16
                                              %! abjad.glissando(7)
                                            \glissando

                                            fqs,4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf,8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf,32
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            eqf,8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            eqs,4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs,16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fs,16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqf,8
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 22]
                                        fqs4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        eqs8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        e8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 23]
                                            f2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 24]
                                            ef2
                                              %! abjad.glissando(7)
                                            \glissando

                                            e2
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 25]
                                        dqs2
                                          %! abjad.glissando(7)
                                        \glissando

                                        d4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 26]
                                            dqs2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 27]
                                            d2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 28]
                                        c2
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        cqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 29]
                                        bqs,2
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 10/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 30]
                                            bqs,4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf,4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf,4.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \ff

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 31]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs,8
                                            \fff
                                            \stopTrillSpan
                                            [
                                            \>
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            d,16.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            eqf,4
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs,8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf,8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            dqf,8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs,8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e,16
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 32]
                                        e,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqf,4
                                        ~

                                        gqf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4

                                        d,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 33]
                                        d,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqs,8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs,8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            g,8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 34]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs,8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs,32
                                            [

                                            dqs,16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf,16.
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf,16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            f,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            gqs,8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            ef,8.
                                            \mf
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 35]
                                        eqs2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        eqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 36]
                                            e2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 37]
                                            d2
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef2
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 38]
                                        dqf2
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        d4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff
                                        \stopTrillSpan
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
                                        g,4
                                        \fff
                                        \>
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            af,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            bf,16
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef16
                                            [

                                            af,8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            a,16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        b,8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
                                        dqf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        e4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a,8.
                                        ]
                                        ~

                                        a,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf,4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqs8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            dqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            f16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            f4

                                            bf,8
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf,16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            b,16.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cs16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fs8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs16
                                            [

                                            b,8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d8.
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqs8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 6]
                                        g'2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        fs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 7]
                                        fqs'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 10/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 8]
                                            dqf'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 9]
                                        c'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 10]
                                            bf2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            a4
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 11]
                                            aqf2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            g2
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 12]
                                            eqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            e16.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \ff
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 13]
                                        fs4
                                        \fff
                                        \stopTrillSpan
                                        \>
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            g8
                                            ~

                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                            a4
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            bqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'4

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bf8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        cqs'4
                                        ~

                                        cqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 15]
                                        ef'4

                                        af4
                                        ~

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        b8.
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 16]
                                        fqs'2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        eqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef'4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 17]
                                        e'2
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 18]
                                        f4
                                        \fff
                                        \stopTrillSpan
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            af32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            af4
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf8
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cs'8.
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 19]
                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        a4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 20]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d'8.
                                        ]

                                        g4
                                        ~

                                        g4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            af8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bf8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs'8.
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            a16
                                              %! abjad.glissando(7)
                                            \glissando

                                            b4
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf'16
                                            \mf

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 22]
                                        e'4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        ef'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        dqf'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 23]
                                            dqs'2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 24]
                                            bqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs2
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 25]
                                        a2
                                          %! abjad.glissando(7)
                                        \glissando

                                        gqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 26]
                                            g2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            fs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 27]
                                            fqs2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            e2
                                              %! abjad.glissando(7)
                                            \glissando

                                            ef4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 28]
                                            dqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 29]
                                        c2
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqs,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 30]
                                            bf,2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            a,4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqs,4.
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \ff

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 31]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8.
                                        \fff
                                        \stopTrillSpan
                                        [
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            g8
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqs4
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            aqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'4

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 32]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fs16
                                        ]
                                        ~

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        af4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cs'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 33]
                                        fs4
                                        ~

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 34]
                                            bqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'16
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            d'8

                                            g4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af8.
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            bf4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs'8
                                            \mf

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 35]
                                        dqs'2
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \startTrillSpan

                                        dqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 36]
                                            cs'2.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs4.
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf4.
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 37]
                                            a2
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf2
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf2
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 38]
                                        gqs2
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        g4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff
                                        \stopTrillSpan
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