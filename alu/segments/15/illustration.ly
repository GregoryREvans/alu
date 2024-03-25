  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
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
                \tempo 4=70
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4
                ^ \markup {
                  \huge
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"70"
                      \hspace #1
                      \upright [
                      \abjad-metric-modulation-tuplet-lhs #3 #0 #3 #2 #3 #0 #'(0.6 . 0.6)
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
                \time 4/4
                s1 * 1

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
                \time 3/4
                s1 * 3/4

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

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
                \time 3/4
                s1 * 3/4

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 30]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 33]
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Flute" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "fl" }
                                        r1 * 3/8

                                        R1 * 3/8

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 33]
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Oboe" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "ob" }
                                        r1 * 3/8

                                        R1 * 3/8

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 33]
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Bass Clarinet" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bcl" }
                                        r1 * 3/8

                                        R1 * 3/8

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 10]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 14]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 15]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 26]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 28]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 33]
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Bassoon" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "bs" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 3/8

                                        R1 * 3/8

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 33]
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Horn" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "hn" }
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \times 8/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'32
                                            \pp
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup
                                            \<

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'32
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        cs'32
                                        \stopGroup

                                        c'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
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
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        cs'32
                                        ]

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
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "5"
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
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 24]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            r16

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
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            \stopGroup

                                            r32

                                            ef'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef'32
                                            \stopGroup

                                            d'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef'32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 25]
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

                                            d'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
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
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 26]
                                        r4

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
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e'32
                                        \stopGroup
                                        ]

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                        \times 8/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 27]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            r32

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 28]
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32
                                            \ff
                                            \stopGroup
                                            \>

                                            r32

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gs'32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gs'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            bf'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
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

                                        r2

                                        \times 8/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 29]
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

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                        \stopGroup

                                        bf'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        bf'32
                                        \stopGroup

                                        a'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        a'32
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \stopGroup

                                            b'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 30]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            b'32
                                            \stopGroup

                                            c''32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c''32

                                            r32

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 31]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            bf'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            gs'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gs'16
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
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gs'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 32]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            a'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        r2

                                        \times 16/17
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 33]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            a'32
                                            \stopGroup

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

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
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            bf'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            bf'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'32
                                            \stopGroup
                                            [

                                            r32

                                            gs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            gs'32
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            bf'32
                                            \pp
                                            \stopGroup
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "1"
                                            \startGroup
                                            \bar "||"

                                        }

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 1]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Trumpet" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tp" }
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'32
                                        \pp
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup
                                        \<

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e'32
                                        \stopGroup

                                        f'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

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

                                        \revert Staff.Stem.stemlet-length
                                        e'32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

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
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 24]
                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f'32
                                        \stopGroup

                                        fs'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs'32
                                        \stopGroup

                                        f'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f'32

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            \stopGroup
                                            [

                                            e'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            e'32
                                            \stopGroup
                                            [

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
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
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 16/15
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 25]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
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
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 26]
                                        r4

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            r32

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

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            \stopGroup
                                            [

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e'32
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 6/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 27]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            r32

                                            af'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32
                                            \stopGroup

                                            r32

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
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

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 28]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            f'32
                                            \mf
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup
                                            \>

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            \stopGroup
                                            [

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32
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
                                        \stopGroup

                                        e'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e'32
                                        \stopGroup

                                        f'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f'32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 29]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            \stopGroup
                                            [

                                            r32

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

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

                                            \revert Staff.Stem.stemlet-length
                                            f'32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
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
                                            \stopGroup

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            \stopGroup
                                            [

                                            f'16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 30]
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
                                        \stopGroup

                                        r32

                                        f'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "2"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f'32
                                        \stopGroup

                                        e'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e'32
                                        ]

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 31]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'32
                                            \stopGroup
                                            [

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            r32

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
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
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
                                        [

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

                                        f'32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f'32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f'32
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 32]
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

                                            r32

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs'32
                                            \stopGroup

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'32
                                            ]

                                        }

                                        \times 8/11
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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \stopGroup

                                            a'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a'32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 6/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 33]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
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
                                            af'32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af'32
                                            \stopGroup

                                            g'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g'32
                                            \stopGroup

                                            fs'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            f'32
                                            \stopGroup

                                            r32

                                            e'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

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

                                            r32

                                            f'32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f'32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            \pp
                                            \stopGroup
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "1"
                                            \startGroup

                                        }

                                        r4
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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Trombone" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tbn" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 32/31
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,32
                                            \pp
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup
                                            \<

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32
                                            \stopGroup

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32
                                            \stopGroup

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            \stopGroup
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 24]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16
                                            \stopGroup

                                            r16

                                            f,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
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
                                            % [tenor trombone voice measure 25]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            fs,16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 26]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g,32
                                            \stopGroup
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
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
                                        \stopGroup

                                        g,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        g,32

                                        \revert Staff.Stem.stemlet-length
                                        r32
                                        ]

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g,32
                                        \stopGroup
                                        [

                                        r32

                                        fs,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs,32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        fs,32
                                        \stopGroup
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f,32
                                        [
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32
                                        \stopGroup

                                        \revert Staff.Stem.stemlet-length
                                        e,32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 27]
                                        r4

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32
                                            \stopGroup

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs,32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32
                                            \stopGroup

                                            g,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
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
                                            \stopGroup

                                            r32

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs,32
                                            \stopGroup
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 28]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

                                            g,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

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
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            r32

                                            g,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \revert Staff.Stem.stemlet-length
                                            g,32
                                            \stopGroup
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32
                                            \mp
                                            \>

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

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

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32
                                            \stopGroup

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32
                                            \stopGroup

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            r32

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            \stopGroup
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 29]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f,32
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,32
                                            \stopGroup
                                            [

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs,32
                                            ]

                                        }

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 16/15
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 30]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            g,32
                                            \stopGroup

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            af,32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 31]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af,32
                                            \stopGroup
                                            [

                                            a,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            bf,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            \revert Staff.Stem.stemlet-length
                                            bf,16
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
                                        - \tweak HorizontalBracket.staff-padding #5
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
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        bf,32
                                        ]

                                        \times 4/5
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
                                            \stopGroup

                                            a,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 32]
                                        r2

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

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
                                            \stopGroup

                                            bf,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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

                                            \revert Staff.Stem.stemlet-length
                                            b,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 33]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,32
                                        [

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
                                        - \tweak HorizontalBracket.staff-padding #5
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
                                        cs32
                                        ]
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            cs32
                                            \stopGroup

                                            d32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d32

                                            r32

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs32
                                            ]

                                        }

                                        r4

                                        \times 8/11
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            c32

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
                                            \revert Staff.Stem.stemlet-length
                                            c32
                                            \pp
                                            \stopGroup
                                            ]
                                            \bar "||"

                                        }

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
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Tuba" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "tba" }
                                          %! applying indicators
                                        \clef "bass"
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 2]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 3]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 4]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 6]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 8]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 11]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 22]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,32
                                            \pp
                                            [
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup
                                            \<

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ef,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
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
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            d,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32
                                            \stopGroup

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 24]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,32
                                        \stopGroup
                                        [

                                        ef,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "3"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32
                                        \stopGroup

                                        d,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "4"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d,32

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        d,32
                                        ]

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,32
                                            \stopGroup
                                            [

                                            r32

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef,32
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
                                            ef,32
                                            \stopGroup

                                            d,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d,32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        d,32
                                        \stopGroup

                                        ef,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        ef,32
                                        ]

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,32
                                            \stopGroup
                                            [

                                            d,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32
                                            \stopGroup

                                            r32

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 26]
                                        r4

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,32
                                            [

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32
                                            \stopGroup

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef,32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,32
                                            \stopGroup
                                            [

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32
                                            \stopGroup

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            r32

                                            d,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ef,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

                                        \times 8/11
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 27]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            d,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,32
                                            \stopGroup
                                            [

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            ]

                                        }

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,32
                                            \stopGroup
                                            [

                                            r32

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \mf
                                            \>

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 28]
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e,32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        e,32
                                        \stopGroup

                                        ef,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "6"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        ef,32
                                        ]

                                        r4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef,32
                                            \stopGroup
                                            [

                                            d,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,32
                                            \stopGroup

                                            r32

                                            ef,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,32
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            d,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "3"
                                            \startGroup

                                        }

                                        \times 8/13
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 29]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            d,16
                                            \stopGroup

                                            ef,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            ef,16
                                            \stopGroup

                                            e,16
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16
                                            \stopGroup

                                            \revert Staff.Stem.stemlet-length
                                            ef,16
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                        }

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef,32
                                        [

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        ef,32
                                        \stopGroup

                                        e,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "7"
                                        \startGroup

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        e,32
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 30]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,16
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16

                                            r16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,16

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,32
                                            \stopGroup
                                            [

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            r32

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \revert Staff.Stem.stemlet-length
                                            r32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 31]
                                        r4

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs,32
                                        [

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        fs,32
                                        \stopGroup

                                        f,32
                                        - \tweak HorizontalBracket.direction #DOWN
                                        - \tweak HorizontalBracket.staff-padding #5
                                        - \tweak HorizontalBracketText.text "5"
                                        \startGroup

                                        r32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        f,32

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \revert Staff.Stem.stemlet-length
                                        f,32
                                        ]

                                        \times 8/9
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f,32
                                            \stopGroup
                                            [

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32
                                            \stopGroup

                                            r32

                                            \revert Staff.Stem.stemlet-length
                                            g,32
                                            ]
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "7"
                                            \startGroup

                                        }

                                        \times 4/5
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

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs,32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 32]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 33]
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs,32
                                            \stopGroup
                                            [

                                            r32

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            e,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "6"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e,32
                                            ]

                                        }

                                        \times 8/11
                                        {

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e,32
                                            [

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            e,32
                                            \stopGroup

                                            f,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32

                                            r32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            f,32
                                            \stopGroup

                                            fs,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "5"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            fs,32

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs,32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r32
                                            [

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
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "4"
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
                                            \stopGroup

                                            r32

                                            af,32
                                            - \tweak HorizontalBracket.direction #DOWN
                                            - \tweak HorizontalBracket.staff-padding #5
                                            - \tweak HorizontalBracketText.text "2"
                                            \startGroup

                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af,32
                                            \pp
                                            \stopGroup
                                            ]

                                        }

                                        r4
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
                                        c'2.
                                        \f
                                        - \boxed-markup "bass drum" #1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 2]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 3]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 4]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 5]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 6]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 7]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 8]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 9]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 10]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 11]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 12]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 13]
                                        c'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 14]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 15]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 16]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 17]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 18]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 19]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 20]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 21]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 22]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 23]
                                        \staff-line-count #1
                                        c'4
                                        - \boxed-markup "bass drum + superball" #1
                                        - \tweak circled-tip ##t
                                        \<

                                        r2.
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 24]
                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r4

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        \f
                                        ]

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 25]
                                        r4

                                        \times 4/5
                                        {

                                            r16

                                            c'4
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 26]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8

                                            \revert Staff.Stem.stemlet-length
                                            r4
                                            \f

                                        }

                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 27]
                                        r4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8.
                                            ]
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        \f
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 28]
                                        r4

                                        \times 2/3
                                        {

                                            r16

                                            c'4
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                            c'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16

                                            \revert Staff.Stem.stemlet-length
                                            r4
                                            \f

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 29]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 30]
                                        c'4
                                        - \tweak circled-tip ##t
                                        \<
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16

                                            \revert Staff.Stem.stemlet-length
                                            r4
                                            \f

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 31]
                                        r4

                                        \times 4/5
                                        {

                                            c'4
                                            - \tweak circled-tip ##t
                                            \<

                                            r16
                                            \f

                                        }

                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 32]
                                        r2

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                        - \tweak circled-tip ##t
                                        \<
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 33]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            r8
                                            \f
                                            ]

                                        }

                                        r2

                                        c'4
                                        - \tweak circled-tip ##t
                                        \<
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
                                        c'2.
                                        \f
                                        - \boxed-markup "bass drum" #1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 2]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 3]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 4]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 5]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 6]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 7]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 8]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 9]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 10]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 11]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 12]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 13]
                                        c'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 14]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 15]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 16]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 17]
                                        c'2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 18]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 19]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 20]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 21]
                                        c'1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 22]
                                        c'2.

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \staff-line-count #1
                                            r4

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \boxed-markup "tam tam + superball" #1
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4

                                            r8
                                            \f

                                        }

                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 24]
                                        r2.

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        - \tweak circled-tip ##t
                                        \<
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 25]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            r8.
                                            \f
                                            ]

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 26]
                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        - \tweak circled-tip ##t
                                        \<
                                        ~

                                        \times 4/5
                                        {

                                            c'4

                                            r16
                                            \f

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 27]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 28]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r4

                                            \override Staff.Stem.stemlet-length = 0.75
                                            r16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            r8
                                            \f
                                            ]

                                        }

                                        r2

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 29]
                                            r8

                                            c'4
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16

                                            \revert Staff.Stem.stemlet-length
                                            r4
                                            \f

                                        }

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 31]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r4

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        \f
                                        ]

                                        r2

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 32]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            r8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            ]
                                            - \tweak circled-tip ##t
                                            \<
                                            ~

                                        }

                                        c'4

                                        r4
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 33]
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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 33]
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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 13]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 17]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/2

                                        R1 * 1/2

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 30]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 33]
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
                                        <e' bf'>8
                                        \f
                                        ^ \markup "col legno battuto"
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' bf'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        <e' bf'>8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 13]
                                        e'8.
                                        - \baca-full-downbow
                                        \p
                                        ^ \markup "arco"
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8
                                        \f

                                        e'8
                                        - \baca-full-upbow
                                        \pp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8
                                        \f

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \baca-stop-on-string-full-downbow
                                        \sfp
                                        ]
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 15]
                                        e'8
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r8.
                                        \!
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        - \baca-full-downbow
                                        \mp
                                        [
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 16]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8.
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''16
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8.
                                        \p

                                        g'8.
                                        - \baca-full-upbow
                                        \mp
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 17]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8.
                                        \mf

                                        f''8
                                        - \baca-stop-on-string-full-downbow
                                        \fff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 18]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''16
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r4
                                        \p

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        - \baca-stop-on-string-full-downbow
                                        \ff
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'16
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8.
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \baca-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 20]
                                        a'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8.
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''8
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 23]
                                        f''16
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'16
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 26]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''8
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 27]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 28]
                                        f''8
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8.
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 29]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8.
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 30]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \baca-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 31]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f''8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f''16
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8
                                        \!

                                        e''8.
                                        - \baca-stop-on-string-full-upbow
                                        \mf
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 32]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        \f
                                        ]

                                        e'8.
                                        - \baca-full-downbow
                                        \mp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 33]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        r16
                                        \f

                                        \revert Staff.Stem.stemlet-length
                                        f''8
                                        - \baca-stop-on-string-full-downbow
                                        \p
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        \f
                                        ]
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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        \f
                                        ^ \markup "col legno battuto"
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 13]
                                        e'8.
                                        - \baca-full-upbow
                                        \pp
                                        ^ \markup "arco"
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-stop-on-string-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''16
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8.
                                        \f

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        - \baca-full-upbow
                                        \sfp
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        \!
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-upbow
                                        \mp
                                        ]
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 15]
                                        e''8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'16
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8.
                                        \p

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-downbow
                                        \mp
                                        [
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 16]
                                        g'8
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8.
                                        \mf

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-upbow
                                        \fff
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''16
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 17]
                                        d''8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8.
                                        \p

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        - \baca-full-upbow
                                        \ff
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 18]
                                        e'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'16
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 20]
                                        g'8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 21]
                                        f'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'16
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''8
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 23]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''16
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        \!
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 25]
                                        r8.

                                        e''8
                                        - \baca-full-downbow
                                        \mf
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 26]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'16
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        \f
                                        ]

                                        e'8
                                        - \baca-full-downbow
                                        \mp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''8.
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r16
                                        \f
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 27]
                                        r8.

                                        e'8
                                        - \baca-full-upbow
                                        \p
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''16
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r16
                                        \f
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-downbow
                                        \f
                                        ]
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 28]
                                        f'8
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r4
                                        \ppp

                                        d''16
                                        - \baca-full-downbow
                                        \f
                                        \>
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 29]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 30]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8.
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \baca-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 31]
                                        e'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'16
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'8.
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        - \baca-stop-on-string-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''8
                                        - \baca-full-downbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        - \baca-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 32]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'16
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        e''16
                                        - \baca-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 33]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        d''8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \baca-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        e''8
                                        - \baca-full-downbow
                                        ]
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
                                        b8
                                        \f
                                        ^ \markup "col legno battuto"
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 13]
                                        c'4.
                                        - \baca-full-downbow
                                        \sfp
                                        ^ \markup "arco"
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 14]
                                        b4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        \!
                                        ]

                                        a2
                                        - \baca-full-upbow
                                        \mp
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 16]
                                        a4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 17]
                                        r4
                                        \p

                                        a4.
                                        - \baca-stop-on-string-full-downbow
                                        \mp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 18]
                                        b4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8
                                        \mf

                                        a4
                                        - \baca-full-upbow
                                        \fff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        a2
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 20]
                                        b4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r8
                                        \p

                                        b4
                                        - \baca-full-upbow
                                        \ff
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 21]
                                        g'4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a2
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f8
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        - \baca-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 23]
                                        a2
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 24]
                                        a4.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                        - \baca-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 25]
                                        c'8
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4.
                                        - \baca-stop-on-string-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 26]
                                        b8
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 27]
                                        f2
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 28]
                                        c'4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 29]
                                        g'4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4.
                                        - \baca-stop-on-string-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 30]
                                        a8
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 31]
                                        c'4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a2
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 32]
                                        b4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 33]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        - \baca-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        r4
                                        \!

                                        a4.
                                        - \baca-full-upbow
                                        \mf
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'8
                                        - \baca-full-downbow
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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        \f
                                        ^ \markup "col legno battuto"
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 13]
                                        c4.
                                        - \baca-full-upbow
                                        \mp
                                        ^ \markup "arco"
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,8
                                        - \baca-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 14]
                                        a,4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                        - \baca-stop-on-string-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        r2
                                        \p

                                        d4
                                        - \baca-full-upbow
                                        \mp
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 16]
                                        d4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        c8
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 17]
                                        c8
                                          %! abjad.glissando(7)
                                        \glissando

                                        r4.
                                        \mf

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,8
                                        - \baca-full-downbow
                                        \fff
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 18]
                                        a8
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,2
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 19]
                                        a4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        d8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r4.
                                        \p

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        - \baca-full-downbow
                                        \ff
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 20]
                                        c4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,2
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                        a,8
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 21]
                                        a4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 22]
                                        d4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4.
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        c8
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 23]
                                        c4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4
                                        - \baca-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        b,8
                                        - \baca-stop-on-string-full-upbow
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        a2
                                        - \baca-stop-on-string-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        d4
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 25]
                                        d4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 26]
                                        a8
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        - \baca-stop-on-string-full-upbow
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a,8
                                        - \baca-stop-on-string-full-downbow
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 27]
                                        a,8
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r4
                                        \!

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 28]
                                        r4

                                        a4
                                        - \baca-full-downbow
                                        \mf
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        d8
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 29]
                                        r8
                                        \f

                                        c2
                                        - \baca-stop-on-string-full-upbow
                                        \mp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,8
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 30]
                                        a,2
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 31]
                                        a4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4.
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 32]
                                        r4
                                        \f

                                        d4.
                                        - \baca-stop-on-string-full-upbow
                                        \p
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        a8
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 33]
                                        a4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,8
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        - \baca-full-upbow
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
                                        bf8
                                        \f
                                        ^ \markup "col legno battuto"
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 13]
                                        g,2
                                        - \baca-stop-on-string-full-downbow
                                        \mp
                                        ^ \markup "arco"
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 14]
                                        g,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f2.
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 15]
                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c2
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 16]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8
                                          %! applying indicators
                                        \mf

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 17]
                                        c4
                                        - \baca-full-downbow
                                        \fff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>

                                        c2
                                        - \baca-stop-on-string-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 18]
                                        c2
                                          %! abjad.glissando(7)
                                        \glissando

                                        f2
                                        - \baca-stop-on-string-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 19]
                                        f2.
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 20]
                                        c2
                                          %! abjad.glissando(7)
                                        \glissando

                                        g,2
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 21]
                                        f2
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r2
                                        \p

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 22]
                                        r4

                                        c4
                                        - \baca-full-downbow
                                        \ff
                                        - \tweak stencil #constante-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                        - \baca-stop-on-string-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 23]
                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c2.
                                        - \baca-stop-on-string-full-downbow

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 24]
                                        c1
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 25]
                                        f2
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 26]
                                        c4
                                        - \baca-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        g,2.
                                        - \baca-full-downbow
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 27]
                                        f4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r2
                                        \!

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 28]
                                        r2

                                        c2
                                        - \baca-stop-on-string-full-downbow
                                        \mf
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 29]
                                        c2.
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 30]
                                        f2
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 31]
                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c2
                                        - \baca-full-downbow

                                        c4
                                        - \baca-full-upbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 32]
                                        c4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f2
                                        - \baca-full-downbow
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 33]
                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                        - \baca-stop-on-string-full-upbow
                                          %! abjad.glissando(7)
                                        \glissando

                                        r2
                                        \f
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