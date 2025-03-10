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
                \tempo 4=87
                \mark #17
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 4/4
                s1 * 1
                ^ \markup {
                  \huge
                  \concat {
                      \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"87" #"1" #"2"
                      \hspace #1
                      \upright [
                      \abjad-metric-modulation-tuplet-lhs #4 #0 #6 #5 #4 #0 #'(0.6 . 0.6)
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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                \mark #18
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

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
                \time 3/4
                s1 * 3/4

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
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
                \time 3/4
                s1 * 3/4

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
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                                        e'2
                                        - \accent
                                        \ff

                                        af'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            af'4

                                            a'16
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 2]
                                        a'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8.
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 3]
                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \accent
                                        ]
                                        ~

                                        e'2
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 4]
                                            e'4

                                            af'16
                                            - \tenuto

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        - \accent
                                        ]
                                        ~

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8.
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \accent
                                        ]
                                        ~

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 7]
                                        af'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 8]
                                        a'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [

                                        a'16
                                        - \tenuto

                                        a'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \tenuto
                                        ]

                                        a'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 9]
                                        a'4

                                        b'4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf''16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 10]
                                        bf''2
                                        ~

                                        \times 4/5
                                        {

                                            bf''16

                                            b'4
                                            - \accent
                                            ~

                                        }

                                        b'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 11]
                                        b'4

                                        a'2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        gqf''16

                                        \revert Staff.Stem.stemlet-length
                                        fqs''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            fqs''16

                                            f''4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf''8.
                                            [

                                            gqf''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f''16
                                            [

                                            eqs''32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef''32

                                            fs''32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fqs''32

                                            \revert Staff.Stem.stemlet-length
                                            eqs''32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs''16
                                            [

                                            e''16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs''8

                                            fqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            f''16

                                            e''4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d''16
                                            [

                                            f''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqs''8

                                            \revert Staff.Stem.stemlet-length
                                            eqf''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf''16

                                            eqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            e''8

                                            \revert Staff.Stem.stemlet-length
                                            ef''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs''32

                                            e''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            eqf''16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf''8
                                            [

                                            dqs''8.

                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs''16

                                            eqf''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef''16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''16
                                        [

                                        dqf''16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c''16

                                        \revert Staff.Stem.stemlet-length
                                        ef''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef''16
                                            [

                                            dqs''16

                                            dqf''8

                                            \revert Staff.Stem.stemlet-length
                                            cs''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs'8

                                            dqs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 16]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''16.
                                            [

                                            cs''16

                                            cqs''32

                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b'16
                                            [

                                            d''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqf''16

                                            cqs''16

                                            c''16

                                            \revert Staff.Stem.stemlet-length
                                            bqf'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf'16
                                            [

                                            dqf''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            cs''8

                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs'8
                                        [

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        bf'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 17]
                                        e'2
                                        - \accent
                                        \ff

                                        af'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            af'4

                                            e'16
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 18]
                                        e'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8.
                                        - \accent
                                        ]
                                        ~

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \accent
                                        ]
                                        ~

                                        e'2
                                        ~

                                        \times 4/5
                                        {

                                            e'4

                                            af'16
                                            - \tenuto

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 20]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 21]
                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8.
                                        - \accent
                                        ]
                                        ~

                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 22]
                                        af'2
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 23]
                                        a'2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [

                                        a'16
                                        - \tenuto

                                        a'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \tenuto
                                        ]

                                        a'2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [flute voice measure 25]
                                        b'4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \accent
                                        ]
                                        ~

                                        a'2
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [flute voice measure 26]
                                            a'16

                                            af'4
                                            - \accent
                                            ~

                                        }

                                        af'2

                                        a'4
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
                                        e'2
                                        - \accent
                                        \ff

                                        af'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 2]
                                        a'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        af'4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 3]
                                            af'4

                                            e'16
                                            - \accent
                                            ~

                                        }

                                        e'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 4]
                                        af'2
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        - \tenuto
                                        [

                                        a'16
                                        - \tenuto

                                        a'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \accent
                                        ]
                                        ~

                                        bf''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8.
                                        - \accent
                                        ]
                                        ~

                                        b'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf''8.
                                        - \accent
                                        ]
                                        ~

                                        bf''4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 7]
                                        b'2
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        - \accent
                                        ]
                                        ~

                                        a'2

                                        b'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 9]
                                        b'2

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''16
                                        - \tenuto
                                        [

                                        bf''16
                                        - \tenuto

                                        bf''16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        bf''16
                                        - \tenuto
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 10]
                                        bf''2
                                        - \accent

                                        b'4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 11]
                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \accent
                                        ]
                                        ~

                                        af'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \accent
                                        ]
                                        ~

                                        e'2
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        fqs''16

                                        \revert Staff.Stem.stemlet-length
                                        eqs''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            eqs''16

                                            e''4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs''8.
                                            [

                                            fqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            f''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e''16
                                            [

                                            eqf''32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d''32

                                            f''32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqs''32

                                            \revert Staff.Stem.stemlet-length
                                            eqf''32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf''16
                                            [

                                            ef''16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf''8

                                            eqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            e''16

                                            ef''4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cs''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs''16
                                            [

                                            e''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqf''8

                                            \revert Staff.Stem.stemlet-length
                                            dqs''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 15]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs''16

                                            eqf''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            ef''8

                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c''32

                                            ef''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            dqs''16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs''8
                                            [

                                            dqf''8.

                                            \revert Staff.Stem.stemlet-length
                                            cs''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 16]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs'16

                                            dqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''16
                                        [

                                        cqs''16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        b'16

                                        \revert Staff.Stem.stemlet-length
                                        d''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''16
                                            [

                                            dqf''16

                                            cqs''8

                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf'8

                                            dqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 17]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16.
                                            [

                                            c''16

                                            bqs'32

                                            \revert Staff.Stem.stemlet-length
                                            bf'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bf'16
                                            [

                                            cs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            cqs''16

                                            bqs'16

                                            b'16

                                            \revert Staff.Stem.stemlet-length
                                            aqs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqs'16
                                            [

                                            cqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            c''8

                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c''8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs'8
                                            [

                                            bqf'16

                                            bf'8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            aqf'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs'32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            b'32

                                            bf'32

                                            aqs'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af'32

                                            \revert Staff.Stem.stemlet-length
                                            b'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            [

                                            bqf'16

                                            aqs'8

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 19]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            gqs'8.
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        bf'16

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            aqf'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g'16

                                            bf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            aqs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf'8
                                            [

                                            af'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqf'8

                                            \revert Staff.Stem.stemlet-length
                                            aqs'16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 20]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            af'8

                                            \revert Staff.Stem.stemlet-length
                                            gqs'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs'8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fs'8

                                            a'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            aqf'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf'16
                                            [

                                            gqs'16

                                            g'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fqs'16

                                            \revert Staff.Stem.stemlet-length
                                            aqf'16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 21]
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        g'16

                                        \revert Staff.Stem.stemlet-length
                                        gqf'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16

                                            af'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqs'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gqf'8
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs'32

                                            gqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            g'32

                                            \revert Staff.Stem.stemlet-length
                                            fs'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 22]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e'16

                                            g'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            gqf'16

                                            \revert Staff.Stem.stemlet-length
                                            fqs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'16
                                            [

                                            f'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf'8

                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]
                                            ~

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'8
                                            [

                                            f'8

                                            \revert Staff.Stem.stemlet-length
                                            eqs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef'8
                                            [

                                            fs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fqs'16

                                            eqs'16

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 24]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs'16
                                            [

                                            fqs'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f'16

                                            e'32

                                            \revert Staff.Stem.stemlet-length
                                            eqf'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            eqf'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d'4

                                            f'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'8
                                            [

                                            eqs'8

                                            \revert Staff.Stem.stemlet-length
                                            eqf'16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [oboe voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef'8
                                        [

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        dqf'16

                                        \revert Staff.Stem.stemlet-length
                                        eqs'16
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            ef'16

                                            dqs'8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqf'16

                                            dqs'8

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16.
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs'16.

                                            \revert Staff.Stem.stemlet-length
                                            eqf'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [oboe voice measure 26]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'16
                                            [

                                            ef'16

                                            d'8

                                            dqf'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqs'16

                                            dqf'8

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        bqs8
                                        [

                                        dqs'16
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            d'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs'4
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            \bar "||"

                                        }

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
                                        d'4
                                        - \accent
                                        \ff
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        fs''4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 2]
                                        d'4

                                        fs''2
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 3]
                                            fs''16

                                            d'4
                                            - \accent
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

                                            \revert Staff.Stem.stemlet-length
                                            fs''8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        fs''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 4]
                                        fs''4

                                        d'2
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 5]
                                        d'4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            d'16
                                            - \tenuto

                                            d'16
                                            - \tenuto

                                            d'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8.
                                        - \accent
                                        ]
                                        ~

                                        d'4

                                        fs''4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 7]
                                        d'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 8]
                                        fs''4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        d'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 9]
                                        fs''2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8.
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 10]
                                        d'2
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'8
                                            [

                                            fs''16
                                            - \tenuto

                                            fs''16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''16
                                        - \tenuto
                                        [

                                        fs''16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        d'8
                                        - \tenuto
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs''8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        gqs''16

                                        \revert Staff.Stem.stemlet-length
                                        ftqs''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            ftqs''16

                                            fs''4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs''8.
                                            [

                                            gqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''16
                                            [

                                            fqs''32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e''32

                                            g''32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            ftqs''32

                                            \revert Staff.Stem.stemlet-length
                                            fqs''32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs''16
                                            [

                                            f''16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf''8

                                            ftqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            fs''16

                                            f''4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ds''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ds''16
                                            [

                                            fs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fqs''8

                                            \revert Staff.Stem.stemlet-length
                                            eqs''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs''16

                                            fqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f''8

                                            \revert Staff.Stem.stemlet-length
                                            e''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d''32

                                            f''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            eqs''16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs''8
                                            [

                                            eqf''8.

                                            \revert Staff.Stem.stemlet-length
                                            ds''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ctqs''16

                                            eqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e''16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        ds''16
                                        [

                                        dqs''16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        cs''16

                                        \revert Staff.Stem.stemlet-length
                                        e''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e''16
                                            [

                                            eqf''16

                                            dqs''8

                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs''8

                                            eqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 15]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''16.
                                            [

                                            d''16

                                            ctqs''32

                                            \revert Staff.Stem.stemlet-length
                                            c''32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c''16
                                            [

                                            ds''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqs''16

                                            ctqs''16

                                            cs''16

                                            \revert Staff.Stem.stemlet-length
                                            bqs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs'16
                                            [

                                            dqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            d''8

                                            \revert Staff.Stem.stemlet-length
                                            cs''16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 16]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d''8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ctqs''8
                                            [

                                            cqs''16

                                            c''8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            bqf'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ctqs''32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            cs''32

                                            c''32

                                            bqs'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bf'32

                                            \revert Staff.Stem.stemlet-length
                                            cs''32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 17]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            [

                                            cqs''16

                                            bqs'8

                                            \revert Staff.Stem.stemlet-length
                                            b'8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            aqs'8.
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        c''16

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            [

                                            bqf'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a'16

                                            c''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            bqs'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 18]
                                        d'4
                                        - \accent
                                        \ff
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        fs''4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 19]
                                        d'4

                                        fs''2
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            fs''16

                                            d'4
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 20]
                                        d'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        fs''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 21]
                                        fs''4

                                        d'2.
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 22]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            d'16
                                            - \tenuto

                                            d'16
                                            - \tenuto

                                            d'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8.
                                        - \accent
                                        ]
                                        ~

                                        d'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 23]
                                        fs''4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 24]
                                        d'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        fs''4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bass clarinet voice measure 25]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        d'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            fs''16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        fs''4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bass clarinet voice measure 26]
                                        fs''4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d'8.
                                        - \accent
                                        ]
                                        ~

                                        d'2
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
                                        d,4
                                        - \accent
                                        \ff
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4

                                        d,4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 2]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 3]
                                        d,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8.
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 4]
                                        d,2
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 5]
                                        c2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        c16
                                        - \tenuto

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        d,4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            d,16

                                            c4
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                        c4

                                        d,2
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8.
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8.
                                        - \tenuto
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        eqs'16

                                        \revert Staff.Stem.stemlet-length
                                        eqf'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            eqf'16

                                            ef'4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf'8.
                                            [

                                            eqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [

                                            dqs'32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs'32

                                            e'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqf'32

                                            \revert Staff.Stem.stemlet-length
                                            dqs'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 11]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs'16
                                            [

                                            d'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs'8

                                            eqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            ef'16

                                            d'4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqf'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            [

                                            ef'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqs'8

                                            \revert Staff.Stem.stemlet-length
                                            dqf'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs16

                                            dqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            d'8

                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b32

                                            d'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            dqf'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf'8
                                            [

                                            cqs'8.

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf16

                                            dqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        bqs16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        bf16

                                        \revert Staff.Stem.stemlet-length
                                        cs'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            [

                                            cqs'16

                                            bqs8

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqs8

                                            cqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 14]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16.
                                            [

                                            b16

                                            bqf32

                                            \revert Staff.Stem.stemlet-length
                                            a32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16
                                            [

                                            c'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqs16

                                            bqf16

                                            bf16

                                            \revert Staff.Stem.stemlet-length
                                            aqf16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqf16
                                            [

                                            bqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            b8

                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 15]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            b8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf8
                                            [

                                            aqs16

                                            a8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            gqs16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bf32

                                            a32

                                            aqf16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g32

                                            \revert Staff.Stem.stemlet-length
                                            bf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 16]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                            aqs16

                                            aqf8

                                            \revert Staff.Stem.stemlet-length
                                            af8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            gqf8.
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        a16

                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16
                                            [

                                            gqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fs16

                                            a16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            aqf16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 17]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs8
                                            [

                                            g16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fqs8

                                            \revert Staff.Stem.stemlet-length
                                            aqf16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16
                                            [

                                            g8

                                            \revert Staff.Stem.stemlet-length
                                            gqf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f8

                                            af16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs16
                                            [

                                            gqf16

                                            fs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs16

                                            \revert Staff.Stem.stemlet-length
                                            gqs16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 18]
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [

                                        fs16

                                        \revert Staff.Stem.stemlet-length
                                        fqs16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e16

                                            g8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqf16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        fqs8
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf32

                                            gqf16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fs32

                                            \revert Staff.Stem.stemlet-length
                                            f32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 19]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef16

                                            fs8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fqs16

                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs16
                                            [

                                            e16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs8

                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]
                                            ~

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [

                                            e8

                                            \revert Staff.Stem.stemlet-length
                                            eqf16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 20]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d8
                                            [

                                            f16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqs16

                                            eqf16

                                            \revert Staff.Stem.stemlet-length
                                            ef16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf16
                                            [

                                            eqs32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            e16

                                            ef32

                                            \revert Staff.Stem.stemlet-length
                                            dqs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            dqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs4

                                            e16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 21]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e8
                                            [

                                            eqf8

                                            \revert Staff.Stem.stemlet-length
                                            dqs16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        cqs16

                                        \revert Staff.Stem.stemlet-length
                                        eqf16
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef16
                                            [

                                            d16

                                            dqf8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqs16

                                            dqf8

                                            \revert Staff.Stem.stemlet-length
                                            cs16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [bassoon voice measure 22]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs16.
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs,16.

                                            \revert Staff.Stem.stemlet-length
                                            dqs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs16
                                            [

                                            d16

                                            cs8

                                            cqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            b,16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d16
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqf16

                                            cqs8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            c16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 23]
                                        d,4
                                        - \accent
                                        \ff
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 24]
                                        c4

                                        d,4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 25]
                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8.
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [bassoon voice measure 26]
                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,16
                                        - \accent
                                        ]
                                        ~

                                        d,2
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
                                        g4
                                        - \accent
                                        \ff
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8.
                                        - \accent
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \clef "treble"
                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 2]
                                            g16

                                            g4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8.
                                        - \accent
                                        ]
                                        ~

                                        g2
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 5]
                                            g16

                                            g4
                                            - \accent
                                            ~

                                        }

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 6]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            - \tenuto
                                            [

                                            g16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        - \tenuto
                                        [

                                        g16
                                        - \tenuto

                                        g16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        - \accent
                                        ]
                                        ~

                                        g4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 7]
                                        g4

                                        g4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 8]
                                        d''4
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

                                        \times 2/3
                                        {

                                            dqf''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            cqs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        c''4
                                        ~

                                        \times 2/3
                                        {

                                            c''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf'8
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 9]
                                        bqf'4

                                        \times 2/3
                                        {

                                            dqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        c''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf'8

                                            \revert Staff.Stem.stemlet-length
                                            cs''8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            b'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqs'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        cqs''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 11]
                                            c''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            b'8
                                            ~

                                        }

                                        b'4
                                        ~

                                        \times 2/3
                                        {

                                            b'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf'4
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                            c''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqs'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf'8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqf'8

                                            \revert Staff.Stem.stemlet-length
                                            bqs'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 13]
                                        b'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            bf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            b'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf'4
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 14]
                                        bqf'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        aqs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        a'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            gqs'8

                                            bqf'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            g'8

                                            \revert Staff.Stem.stemlet-length
                                            bf'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        aqs'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 16]
                                        g4
                                        - \accent
                                        \ff
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8.
                                        - \accent
                                        ]
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 17]
                                            g16

                                            g4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 18]
                                        g4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8.
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 19]
                                        g2
                                        ~

                                        \times 4/5
                                        {

                                            g16

                                            g4
                                            - \accent
                                            ~

                                        }

                                        g4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 20]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            - \tenuto
                                            [

                                            g16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        - \tenuto
                                        [

                                        g16
                                        - \tenuto

                                        g16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 21]
                                        g4

                                        g4

                                        g4
                                        - \accent
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 22]
                                        g4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            g4

                                            g16
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 23]
                                        g2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 24]
                                        g2
                                        - \accent

                                        g4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [french horn voice measure 25]
                                        g4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        g2
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [french horn voice measure 26]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                            g16
                                            - \tenuto

                                            g16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g16
                                        - \tenuto
                                        [

                                        g16
                                        - \tenuto

                                        g16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        - \tenuto
                                        ]

                                        g4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        - \tenuto
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
                                        e'4
                                        - \accent
                                        \ff
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8.
                                        - \accent
                                        ]
                                        ~

                                        af'4

                                        a'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 2]
                                            a'16

                                            b'4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        a'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 3]
                                        b'2
                                        - \accent

                                        a'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 4]
                                        af'2

                                        a'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 5]
                                        a'4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 6]
                                        af'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        e'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            - \tenuto
                                            [

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 7]
                                            e'16
                                            - \tenuto

                                            bf''4
                                            - \accent
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 8]
                                        b'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 9]
                                        af''4
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

                                        \times 2/3
                                        {

                                            gqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            gqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        fs''4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 10]
                                            fs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs''8
                                            ~

                                        }

                                        eqs''4

                                        \times 2/3
                                        {

                                            gqs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            g''8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        fs''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 11]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs''8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            e''8

                                            \revert Staff.Stem.stemlet-length
                                            g''8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        fqs''8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs''8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            f''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            eqf''8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        gqf''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            fs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            f''8
                                            ~

                                        }

                                        f''4
                                        ~

                                        \times 2/3
                                        {

                                            f''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs''4
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 13]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        ef''8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef''8
                                            [

                                            fs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            fqs''8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqs''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e''8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqs''8

                                            \revert Staff.Stem.stemlet-length
                                            fqs''8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 14]
                                        f''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            e''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f''8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            f''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            eqs''4
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 15]
                                        eqs''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        eqf''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 16]
                                            dqf''8

                                            eqs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        ef''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqs''8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs''8

                                            \revert Staff.Stem.stemlet-length
                                            e''8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        eqf''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 17]
                                            dqs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d''8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        cqs''4

                                        eqf''4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqf''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        ef''8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 18]
                                            ef''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d''8
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqf''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            c''4

                                            ef''8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        dqf''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 19]
                                            cs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs'4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        d''8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            cs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cqs''8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 20]
                                        b'4

                                        d''4
                                        ~

                                        \times 2/3
                                        {

                                            d''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf''4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf'8

                                            \revert Staff.Stem.stemlet-length
                                            dqf''8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            bqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf'8

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 22]
                                        cs''4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            cqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        b'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 23]
                                            b'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqs'8
                                            ~

                                        }

                                        aqs'4

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [trumpet voice measure 24]
                                            cqs''4
                                              %! abjad.glissando(7)
                                            \glissando

                                            c''8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        b'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            a'8

                                            \revert Staff.Stem.stemlet-length
                                            c''8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            aqf'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bqs'8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            b'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            bf'8
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [trumpet voice measure 26]
                                        e'4
                                        - \accent
                                        \ff
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8.
                                        - \accent
                                        ]
                                        ~

                                        af'4

                                        e'4
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
                                        - \accent
                                        \ff
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 3]
                                        c2
                                        - \accent

                                        c4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 4]
                                        c4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 5]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 6]
                                        c4

                                        c2.
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        eqf'16

                                        \revert Staff.Stem.stemlet-length
                                        dqs'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            dqs'16

                                            d'4

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 8]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs'8.
                                            [

                                            eqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            dqf'32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'32

                                            ef'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqs'32

                                            \revert Staff.Stem.stemlet-length
                                            dqf'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf'16
                                            [

                                            cs'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs8

                                            dqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            d'16

                                            cs'4

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b16
                                            [

                                            d'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqf'8

                                            \revert Staff.Stem.stemlet-length
                                            cqs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf16

                                            dqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            cs'8

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bf32

                                            cs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cqs'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'8
                                            [

                                            bqs8.

                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqs16

                                            cqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        [

                                        bqf16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 11]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            bqs16

                                            bqf8

                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqf8

                                            bqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16.
                                            [

                                            bf16

                                            aqs32

                                            \revert Staff.Stem.stemlet-length
                                            af32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af16
                                            [

                                            b16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqf16

                                            aqs16

                                            a16

                                            \revert Staff.Stem.stemlet-length
                                            gqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqs16
                                            [

                                            bqf16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bf8

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bf8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 13]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs8
                                            [

                                            aqf16

                                            af8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            gqf16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            a32

                                            af32

                                            gqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fs32

                                            \revert Staff.Stem.stemlet-length
                                            a32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            aqf16

                                            gqs8

                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            fqs8.
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        af16

                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            gqf16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f16

                                            af16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqs16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf8
                                            [

                                            fs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs8

                                            \revert Staff.Stem.stemlet-length
                                            gqs16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            fs8

                                            \revert Staff.Stem.stemlet-length
                                            fqs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 15]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e8

                                            g16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqf16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf16
                                            [

                                            fqs16

                                            f16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf16

                                            \revert Staff.Stem.stemlet-length
                                            gqf16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        [

                                        f16

                                        \revert Staff.Stem.stemlet-length
                                        eqs16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 16]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef16

                                            fs8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        eqs8
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs32

                                            fqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f32

                                            \revert Staff.Stem.stemlet-length
                                            e32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d16

                                            f8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqs16

                                            \revert Staff.Stem.stemlet-length
                                            eqf16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 17]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf16
                                            [

                                            ef16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf8

                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]
                                            ~

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e8
                                            [

                                            ef8

                                            \revert Staff.Stem.stemlet-length
                                            dqs16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs8
                                            [

                                            e16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqf16

                                            dqs16

                                            \revert Staff.Stem.stemlet-length
                                            d16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs16
                                            [

                                            eqf32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            ef16

                                            d32

                                            \revert Staff.Stem.stemlet-length
                                            dqf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            dqf16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c4

                                            ef16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef8
                                            [

                                            dqs8

                                            \revert Staff.Stem.stemlet-length
                                            dqf16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs8
                                        [

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        bqs,16

                                        \revert Staff.Stem.stemlet-length
                                        dqs16
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 19]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d16
                                            [

                                            cs16

                                            cqs8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            b,16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqf16

                                            cqs8

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            ]
                                            ~

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16.
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf,16.

                                            \revert Staff.Stem.stemlet-length
                                            dqf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf16
                                            [

                                            cs16

                                            c8

                                            bqs,16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            bf,16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 20]
                                        c4
                                        - \accent
                                        \ff
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 22]
                                        c2
                                        - \accent

                                        c4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tenor trombone voice measure 24]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 25]
                                        c2

                                        c2
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tenor trombone voice measure 26]
                                        c4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        c4
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
                                        d,4
                                        \ff

                                        c2
                                        - \accent

                                        d,4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 3]
                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4

                                        c4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 4]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 5]
                                        c4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 6]
                                        ef'4
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

                                        \times 2/3
                                        {

                                            dqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            dqf'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        cs'4
                                        ~

                                        \times 2/3
                                        {

                                            cs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs8
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 7]
                                        bqs4

                                        \times 2/3
                                        {

                                            dqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            d'8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 8]
                                        cs'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            b8

                                            \revert Staff.Stem.stemlet-length
                                            d'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        dqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        cqs'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs'8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            bqf8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        dqf'8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            cs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                            c'8
                                            ~

                                        }

                                        c'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 10]
                                            c'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs4
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqs8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf8
                                            [

                                            cs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert Staff.Stem.stemlet-length
                                            cqs'8
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqs8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 11]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            aqs8

                                            \revert Staff.Stem.stemlet-length
                                            cqs'8
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        c'4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            b8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~

                                        \times 2/3
                                        {

                                            c'8
                                              %! abjad.glissando(7)
                                            \glissando

                                            bqs4
                                            ~

                                        }

                                        bqs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bqf4
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 13]
                                        bf4
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            aqf8

                                            bqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs8
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                            af8

                                            \revert Staff.Stem.stemlet-length
                                            b8
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert Staff.Stem.stemlet-length
                                        bqf8
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 2/3
                                        {

                                            aqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                            a8
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        gqs4

                                        bqf4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 15]
                                        d,4
                                        \ff

                                        c2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 16]
                                        d,4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 17]
                                        c4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4

                                        c4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 18]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 19]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        e'2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 20]
                                        c2

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \tenuto
                                        [

                                        e'16
                                        - \tenuto

                                        e'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 21]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            - \tenuto
                                            [

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \tenuto
                                        [

                                        e'16
                                        - \tenuto

                                        e'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            e'4

                                            c16
                                            - \accent
                                            ~

                                        }

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8.
                                        - \accent
                                        ]
                                        ~

                                        e'4

                                        c4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [tuba voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d,8.
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 24]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 25]
                                        c4
                                        ~

                                        \times 4/5
                                        {

                                            c16

                                            e'4
                                            - \accent
                                            ~

                                        }

                                        e'4

                                        c4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [tuba voice measure 26]
                                        c4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
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
                                        \mp
                                        - \boxed-markup "bass drum" #1

                                        c'4

                                        c'4
                                        - \accent
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 2]
                                        c'4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4

                                            c'8
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 3]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        c'16
                                        - \tenuto

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                        ~

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4

                                            c'8
                                            - \accent
                                            ~

                                        }

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 5]
                                        c'2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 6]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            c'4

                                            c'16
                                            - \tenuto

                                        }

                                        \times 2/3
                                        {

                                            c'16
                                            - \tenuto

                                            c'4
                                            - \accent
                                            ~

                                            c'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            c'16

                                            c'4
                                            - \tenuto

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        r8
                                        [

                                        \arpeggioArrowDown
                                        \clef "treble"
                                        \revert Staff.Stem.stemlet-length
                                        \staff-line-count #5
                                        <e' af' a' b'>8
                                        \arpeggio
                                        \f
                                        - \boxed-markup "vibraphone" #1
                                        ]
                                        ~

                                        <e' af' a' b'>4

                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 9]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 13]
                                        r4

                                        \arpeggioArrowDown
                                        <e' af' a' b'>2
                                        \arpeggio
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <e' af' a' b'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        ]

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
                                        \clef "percussion"
                                        \staff-line-count #1
                                        c'4
                                        \mp
                                        - \boxed-markup "bass drum" #1

                                        c'4

                                        c'4
                                        - \accent
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 16]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c'4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4

                                            c'8
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 17]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        c'16
                                        - \tenuto

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                        ~

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4

                                            c'8
                                            - \accent
                                            ~

                                        }

                                        c'4

                                        c'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 19]
                                        c'4

                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            c'4

                                            c'16
                                            - \tenuto

                                        }

                                        \times 2/3
                                        {

                                            c'16
                                            - \tenuto

                                            c'4
                                            - \accent
                                            ~

                                            c'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 20]
                                            c'16

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8.
                                        - \accent
                                        ]
                                        ~

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 21]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        c'4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 1 voice measure 23]
                                            c'4

                                            c'16
                                            - \accent
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 24]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8.
                                        - \accent
                                        ]
                                        ~

                                        c'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8.
                                        - \accent
                                        ]
                                        ~

                                        c'4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 1 voice measure 26]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \accent
                                        ]
                                        ~

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            c'4

                                            c'16
                                            - \tenuto
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

                                        \times 2/3
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
                                            - \tenuto
                                            \mp
                                            - \boxed-markup "tam tam" #1
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c'4

                                        c'2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 2]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c'4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                        ~

                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 4]
                                        c'4

                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            c'16

                                            c'4
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 5]
                                        c'4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 6]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            c'16

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'8

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 7]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 8]
                                        r2

                                        \arpeggioArrowUp
                                        \clef "bass"
                                        \staff-line-count #5
                                        <c e' af'>2
                                        \arpeggio
                                        \f
                                        - \boxed-markup "marimba" #1
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 9]
                                        <c e' af'>2

                                        r4

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 12]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/2

                                        R1 * 1/2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 13]
                                        r4

                                        r4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        r8
                                        [

                                        \arpeggioArrowUp
                                        \revert Staff.Stem.stemlet-length
                                        <c e' af'>8
                                        \arpeggio
                                        ]
                                        ~

                                        <c e' af'>4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 14]
                                        <c e' af'>4

                                        r2.

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
                                        r8

                                        r8

                                        r2

                                        \arpeggioArrowUp
                                        <c e' af'>4
                                        \arpeggio
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 19]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c e' af'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        ]

                                        r2

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 20]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 21]
                                            \clef "percussion"
                                            \staff-line-count #1
                                            c'4
                                            - \tenuto
                                            \mp
                                            - \boxed-markup "tam tam" #1
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c'4

                                        c'2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 22]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c'4

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [percussion 2 voice measure 23]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 24]
                                        c'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \accent
                                        ]
                                        ~

                                        c'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 25]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            c'16

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        c'4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [percussion 2 voice measure 26]
                                        c'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            c'16

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            c'8

                                            c'4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8.
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c'8
                                            - \tenuto
                                            ]
                                            \bar "||"

                                        }

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        \arpeggioArrowDown
                                        <a' b' bf''>2.
                                        \arpeggio
                                        \f
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 12]
                                        <a' b' bf''>4

                                        r2

                                        r8

                                        r8

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/4

                                        R1 * 1/4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 1 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 5]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 1/4

                                        R1 * 1/4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 3/8

                                        R1 * 3/8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 12]
                                        r4

                                        \arpeggioArrowUp
                                        <d, c e'>4
                                        \arpeggio
                                        \f
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d, c e'>8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        r8
                                        ]

                                        r4

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
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        r1 * 1/4

                                        R1 * 1/4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piano 2 voice measure 24]
                                          %! applying invisibility
                                        \once \override Rest.transparent = ##t
                                        r1 * 3/8

                                        R1 * 3/8

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
                                        e'4
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            e'4

                                            af'8
                                            - \accent
                                            ~

                                        }

                                        af'4

                                        e'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 2]
                                        e'4

                                        af'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            af'4

                                            e'16
                                            - \tenuto

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                            af'16
                                            - \tenuto

                                            a'4
                                            - \accent
                                            ~

                                            a'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            a'16

                                            b'4
                                            - \accent
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf''16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 4]
                                        bf''4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        - \accent
                                        ]
                                        ~

                                        b'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 5]
                                        b'4

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            - \tenuto
                                            [

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 6]
                                            e'4

                                            af'16
                                            - \accent
                                            ~

                                        }

                                        af'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        a'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 7]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        aqs'16

                                        \revert Staff.Stem.stemlet-length
                                        aqf'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            aqf'16

                                            af'4

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 8]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqf'8.
                                            [

                                            aqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            [

                                            gqs'32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fs'32

                                            a'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            aqf'32

                                            \revert Staff.Stem.stemlet-length
                                            gqs'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs'16
                                            [

                                            g'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fqs'8

                                            aqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            af'16

                                            g'4

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                            [

                                            af'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            gqs'8

                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs'16

                                            gqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            g'8

                                            \revert Staff.Stem.stemlet-length
                                            fs'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e'32

                                            g'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf'8
                                            [

                                            fqs'8.

                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf'16

                                            gqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        [

                                        eqs'16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        ef'16

                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 11]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            fqs'16

                                            eqs'8

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs'8

                                            fqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16.
                                            [

                                            e'16

                                            eqf'32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            d'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 12]
                                        e'4
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            e'4

                                            af'8
                                            - \accent
                                            ~

                                        }

                                        af'4

                                        a'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 13]
                                        a'4

                                        b'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            b'4

                                            bf''16
                                            - \tenuto

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        bf''8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 14]
                                            b'16
                                            - \tenuto

                                            bf''4
                                            - \accent
                                            ~

                                            bf''16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            bf''16

                                            b'4
                                            - \accent
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \accent
                                        ]
                                        ~

                                        a'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \accent
                                        ]
                                        ~

                                        af'2

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 16]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            - \tenuto
                                            [

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            a'4

                                            af'16
                                            - \accent
                                            ~

                                        }

                                        af'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 17]
                                        a'4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            b'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        b'4
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'8.
                                            [

                                            bf''16
                                            - \tenuto

                                            bf''16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            bf''16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 18]
                                            bf''16
                                            - \tenuto

                                            a'4
                                            - \accent
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        - \accent
                                        ]
                                        ~

                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 19]
                                        e'4

                                        af'2
                                        - \accent

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            - \tenuto
                                            [

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 20]
                                        e'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        af'4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 21]
                                            af'16

                                            a'4
                                            - \accent
                                            ~

                                        }

                                        a'4
                                        ~

                                        \times 2/3
                                        {

                                            a'16

                                            af'4
                                            - \accent
                                            ~

                                            af'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8.
                                            [

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \tenuto
                                        [

                                        e'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 23]
                                            af'4

                                            a'16
                                            - \accent
                                            ~

                                        }

                                        a'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 24]
                                            a'4

                                            b'8
                                            - \accent
                                            ~

                                        }

                                        b'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [

                                        b'16
                                        - \tenuto

                                        b'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 1 voice measure 25]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            - \tenuto
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        a'4

                                        af'2
                                        - \accent

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 1 voice measure 26]
                                        a'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            a'16

                                            af'4
                                            - \accent
                                            ~

                                        }

                                        af'4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            - \tenuto
                                            [

                                            a'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \tenuto
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Violin II" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "vn II" }
                                        e'4
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            e'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8.
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 2]
                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        b'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            - \tenuto
                                            [

                                            b'16
                                            - \tenuto

                                            b'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            bf''8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 3]
                                        bf''4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            b'4

                                            a'16
                                            - \accent
                                            ~

                                        }

                                        a'4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 4]
                                        a'4

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        - \tenuto
                                        [

                                        b'16
                                        - \tenuto

                                        b'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            b'16
                                            - \tenuto

                                            bf''4
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 5]
                                        bf''4
                                        ~

                                        \times 2/3
                                        {

                                            bf''16

                                            b'4
                                            - \accent
                                            ~

                                            b'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bf''8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        bf''4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf''16
                                            [

                                            bf''16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            bf''16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''16
                                        - \tenuto
                                        [

                                        bf''16
                                        - \tenuto

                                        bf''16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        bf''16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 7]
                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 8]
                                        af'4

                                        a'4
                                        - \accent
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            af'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 9]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        eqf''16

                                        \revert Staff.Stem.stemlet-length
                                        dqs''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            dqs''16

                                            d''4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs''8.
                                            [

                                            eqf''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            ef''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d''16
                                            [

                                            dqf''32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c''32

                                            ef''32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqs''32

                                            \revert Staff.Stem.stemlet-length
                                            dqf''32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            dqf''16
                                            [

                                            cs''16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqs'8

                                            dqs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            d''16

                                            cs''4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs''8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 11]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b'16
                                            [

                                            d''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            dqf''8

                                            \revert Staff.Stem.stemlet-length
                                            cqs''16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf'16

                                            dqf''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            cs''8

                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bf'32

                                            cs''16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cqs''16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cqs''8
                                            [

                                            bqs'8.

                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqs'16

                                            cqs''8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c''16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        [

                                        bqf'16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a'16

                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c''16
                                            [

                                            bqs'16

                                            bqf'8

                                            \revert Staff.Stem.stemlet-length
                                            bf'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 13]
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqf'8

                                            bqs'4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16.
                                            [

                                            bf'16

                                            aqs'32

                                            \revert Staff.Stem.stemlet-length
                                            af'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af'16
                                            [

                                            b'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqf'16

                                            aqs'16

                                            a'16

                                            \revert Staff.Stem.stemlet-length
                                            gqs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqs'16
                                            [

                                            bqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bf'8

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 14]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            bf'8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs'8
                                            [

                                            aqf'16

                                            af'8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs'32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            a'32

                                            af'32

                                            gqs'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fs'32

                                            \revert Staff.Stem.stemlet-length
                                            a'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 15]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            aqf'16

                                            gqs'8

                                            \revert Staff.Stem.stemlet-length
                                            g'8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            fqs'8.
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        af'16

                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 16]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

                                            gqf'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16

                                            af'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf'8
                                            [

                                            fs'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs'8

                                            \revert Staff.Stem.stemlet-length
                                            gqs'16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'16
                                            [

                                            fs'8

                                            \revert Staff.Stem.stemlet-length
                                            fqs'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e'8

                                            g'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 17]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf'16
                                            [

                                            fqs'16

                                            f'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf'16

                                            \revert Staff.Stem.stemlet-length
                                            gqf'16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'8
                                        [

                                        f'16

                                        \revert Staff.Stem.stemlet-length
                                        eqs'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef'16

                                            fs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fqs'16
                                            ]
                                            ~

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        eqs'8
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs'32

                                            fqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f'32

                                            \revert Staff.Stem.stemlet-length
                                            e'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d'16

                                            f'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqs'16

                                            \revert Staff.Stem.stemlet-length
                                            eqf'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'16
                                            [

                                            ef'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf'8

                                            \revert Staff.Stem.stemlet-length
                                            eqs'16
                                            ]
                                            ~

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 19]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'8
                                            [

                                            ef'8

                                            \revert Staff.Stem.stemlet-length
                                            dqs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs'8
                                            [

                                            e'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqf'16

                                            dqs'16

                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cqs'16
                                            [

                                            eqf'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            ef'16

                                            d'32

                                            \revert Staff.Stem.stemlet-length
                                            dqf'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            dqf'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'4

                                            ef'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 20]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef'8
                                            [

                                            dqs'8

                                            \revert Staff.Stem.stemlet-length
                                            dqf'16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                        [

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        bqs16

                                        \revert Staff.Stem.stemlet-length
                                        dqs'16
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d'16
                                            [

                                            cs'16

                                            cqs'8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 21]
                                        e'4
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            e'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        af'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8.
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 22]
                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            af'16
                                            - \tenuto

                                            af'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            a'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 23]
                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 24]
                                            af'4

                                            e'16
                                            - \accent
                                            ~

                                        }

                                        e'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [violin 2 voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            af'16
                                            - \tenuto

                                            bf''4
                                            - \accent
                                            ~

                                        }

                                        bf''4
                                        ~

                                        \times 2/3
                                        {

                                            bf''16

                                            b'4
                                            - \accent
                                            ~

                                            b'16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [violin 2 voice measure 26]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        a'4
                                        ~

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            a'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        - \tenuto
                                        [

                                        a'16
                                        - \tenuto

                                        a'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        - \tenuto
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
                                        c4
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            c4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 2]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            af'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            af'4

                                            e'16
                                            - \accent
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 3]
                                        e'4
                                        ~

                                        \times 2/3
                                        {

                                            e'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            - \tenuto
                                            [

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \tenuto
                                            ]

                                        }

                                        b'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 4]
                                        b'4

                                        bf''4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            bf''4

                                            b'16
                                            - \tenuto

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            - \tenuto
                                            [

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            b'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 6]
                                            b'4

                                            a'16
                                            - \accent
                                            ~

                                        }

                                        a'2

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'16
                                        - \tenuto
                                        [

                                        b'16
                                        - \tenuto

                                        b'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            - \tenuto
                                            [

                                            b'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            b'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        b'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 8]
                                            b'8

                                            a'4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            a'4

                                            af'16
                                            - \tenuto

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 9]
                                        af'4
                                        ~

                                        \times 4/5
                                        {

                                            af'16

                                            e'4
                                            - \accent
                                            ~

                                        }

                                        e'4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 10]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        gqs'16

                                        \revert Staff.Stem.stemlet-length
                                        gqf'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            gqf'16

                                            fs'4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs'8.
                                            [

                                            gqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'16
                                            [

                                            fqs'32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e'32

                                            g'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            gqf'32

                                            \revert Staff.Stem.stemlet-length
                                            fqs'32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 11]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fqs'16
                                            [

                                            f'16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqf'8

                                            gqf'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fs'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            fs'16

                                            f'4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        eqs'8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        ef'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef'16
                                            [

                                            fs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fqs'8

                                            \revert Staff.Stem.stemlet-length
                                            eqs'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs'16

                                            fqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f'8

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf'16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d'32

                                            f'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            eqs'16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs'8
                                            [

                                            eqf'8.

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            ef'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 13]
                                        c4
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            c4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \accent
                                            ]
                                            ~

                                        }

                                        e'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            af'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8.
                                        - \accent
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            b'4

                                            a'16
                                            - \accent
                                            ~

                                        }

                                        a'4
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 15]
                                            a'4
                                            ~

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            - \tenuto
                                            [

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \tenuto
                                            ]

                                        }

                                        b'4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 16]
                                        b'4

                                        a'4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            a'4

                                            af'16
                                            - \tenuto

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af'8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 17]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            - \tenuto
                                            [

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            af'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            af'4

                                            e'16
                                            - \accent
                                            ~

                                        }

                                        e'2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 18]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            af'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        c4
                                        ~

                                        \times 2/3
                                        {

                                            c8

                                            e'4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 19]
                                            e'4

                                            af'16
                                            - \tenuto

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            b'8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        b'4
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 20]
                                            b'16

                                            a'4
                                            - \accent
                                            ~

                                        }

                                        a'4
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [

                                            b'16
                                            - \tenuto

                                            b'16
                                            - \tenuto

                                            b'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            b'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 21]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b'16
                                            - \tenuto
                                            [

                                            b'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            b'8.
                                            - \accent
                                            ]
                                            ~

                                        }

                                        b'4

                                        a'2
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 22]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            a'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \tenuto
                                        ]

                                        c4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 23]
                                            c16

                                            e'4
                                            - \accent
                                            ~

                                        }

                                        e'4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [viola voice measure 24]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'16
                                            - \tenuto
                                            [

                                            af'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            af'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af'16
                                        - \tenuto
                                        [

                                        af'16
                                        - \tenuto

                                        af'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        af'16
                                        - \accent
                                        ]
                                        ~

                                        c4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 25]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        - \accent
                                        ]
                                        ~

                                        e'4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            e'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            e'16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'16
                                        - \tenuto
                                        [

                                        e'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [viola voice measure 26]
                                        b'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a'8
                                        - \accent
                                        ]
                                        ~

                                        a'4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        - \tenuto
                                        ]
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
                                        d,2
                                        - \accent
                                        \ff

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        d,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d,16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,16
                                        - \tenuto
                                        [

                                        d,16
                                        - \tenuto

                                        d,16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        d,16
                                        - \accent
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        d,2

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \tenuto
                                        ]

                                        d,4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 6]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        d,2
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 7]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d,16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 8]
                                            c16
                                            - \tenuto

                                            d,4
                                            - \accent
                                            ~

                                            d,16
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8.
                                            [

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d,8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
                                        d,4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 10]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            - \tenuto
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            d,16
                                            - \tenuto
                                            ]

                                            d,4
                                            - \accent
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            d,4

                                            c16
                                            - \tenuto

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        d,4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8.
                                            [

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \tenuto
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        dqf'16

                                        \revert Staff.Stem.stemlet-length
                                        cqs'16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            cqs'16

                                            c'4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf8.
                                            [

                                            dqf'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            [

                                            bqs32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bf32

                                            cs'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            cqs'32

                                            \revert Staff.Stem.stemlet-length
                                            bqs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqs16
                                            [

                                            b16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqs8

                                            cqs'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            c'16

                                            b4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16
                                            [

                                            c'16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqs8

                                            \revert Staff.Stem.stemlet-length
                                            bqf16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqf16

                                            bqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            b8

                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af32

                                            b16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bqf16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf8
                                            [

                                            aqs8.

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqs16

                                            bqf8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            bf16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 15]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a16
                                        [

                                        aqf16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g16

                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                            aqs16

                                            aqf8

                                            \revert Staff.Stem.stemlet-length
                                            af16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqf8

                                            aqs4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 16]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16.
                                            [

                                            af16

                                            gqs32

                                            \revert Staff.Stem.stemlet-length
                                            fs32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fs16
                                            [

                                            a16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            aqf16

                                            gqs16

                                            g16

                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fqs16
                                            [

                                            aqf16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            af8

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 17]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            af8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs8
                                            [

                                            gqf16

                                            fs8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqs32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            g32

                                            fs32

                                            fqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e32

                                            \revert Staff.Stem.stemlet-length
                                            g32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            gqf16

                                            fqs8

                                            \revert Staff.Stem.stemlet-length
                                            f8
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 18]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            eqf8.
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        gqf8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        fs16

                                        \revert Staff.Stem.stemlet-length
                                        f16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [

                                            eqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef16

                                            fs16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs8
                                            [

                                            e16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs8

                                            \revert Staff.Stem.stemlet-length
                                            fqs16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 19]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f16
                                            [

                                            e8

                                            \revert Staff.Stem.stemlet-length
                                            eqf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqf8
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            d8

                                            f16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            eqs16
                                            [

                                            eqf16

                                            ef16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf16

                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        [

                                        ef16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        dqs16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \f
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 20]
                                        d,2
                                        - \accent
                                        \ff

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 21]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 22]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \accent
                                        ]
                                        ~

                                        d,4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d,16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 23]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,16
                                        - \tenuto
                                        [

                                        d,16
                                        - \tenuto

                                        d,16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        d,16
                                        - \accent
                                        ]
                                        ~

                                        d,4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 24]
                                        d,4

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c16
                                            - \tenuto
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d,8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        c8
                                        - \tenuto
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 25]
                                        d,4
                                        - \accent
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,8
                                            [

                                            c16
                                            - \tenuto

                                            c16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c16
                                        - \tenuto
                                        [

                                        c16
                                        - \tenuto

                                        c16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        - \tenuto
                                        ]

                                        d,4
                                        - \accent
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 26]
                                        d,4
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d,16
                                            [

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            d,16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d,16
                                            - \tenuto
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        c8
                                        - \tenuto
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        d,8
                                        - \tenuto
                                        ]

                                        \times 2/3
                                        {

                                            c16
                                            - \tenuto

                                            d,4
                                            - \tenuto
                                            ~

                                            d,16
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
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup { \hcenter-in #14 "Contrabass" }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup { \hcenter-in #12 "cb" }
                                        \clef "bass"
                                        d2
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 2]
                                        d2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 3]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 4]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        d2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 5]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 6]
                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 7]
                                        d2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 8]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 9]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        d4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 10]
                                        d4
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        d4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 11]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs'8
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        cqs'16

                                        \revert Staff.Stem.stemlet-length
                                        bqs16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            bqs16

                                            b4

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqs8.
                                            [

                                            cqs'8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 12]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            b16
                                            [

                                            bqf32

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a32

                                            c'32
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqs32

                                            \revert Staff.Stem.stemlet-length
                                            bqf32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf16
                                            [

                                            bf16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqf8

                                            bqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            b16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            b16

                                            bf4

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqs8.
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 13]
                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af16
                                            [

                                            b16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqf8

                                            \revert Staff.Stem.stemlet-length
                                            aqs16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqs16

                                            bqf16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bf8

                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqf16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g32

                                            bf16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            aqs16
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            aqs8
                                            [

                                            aqf8.

                                            \revert Staff.Stem.stemlet-length
                                            af16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 14]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16
                                            [

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gqf16

                                            aqs8
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                        [

                                        gqs16

                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        fs16

                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [

                                            aqf16

                                            gqs8

                                            \revert Staff.Stem.stemlet-length
                                            g16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            fqs8

                                            aqf4
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 15]
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af16.
                                            [

                                            g16

                                            gqf32

                                            \revert Staff.Stem.stemlet-length
                                            f32
                                            ]
                                            ~

                                        }

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f16
                                            [

                                            af16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            gqs16

                                            gqf16

                                            fs16

                                            \revert Staff.Stem.stemlet-length
                                            eqs16
                                            ]
                                            ~

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            eqs16
                                            [

                                            gqs16
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            g8

                                            \revert Staff.Stem.stemlet-length
                                            fs16
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 16]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs8
                                        [

                                        \revert Staff.Stem.stemlet-length
                                        e8
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            e8
                                            [

                                            \revert Staff.Stem.stemlet-length
                                            g8.
                                            ]
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        \times 2/3
                                        {

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf8
                                            [

                                            fqs16

                                            f8

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            eqf16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            gqf32
                                            [
                                              %! abjad.glissando(7)
                                            \glissando

                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            fs32

                                            f32

                                            eqs16

                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ef32

                                            \revert Staff.Stem.stemlet-length
                                            fs32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \f
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 17]
                                        d2
                                        - \accent
                                        \ff
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 18]
                                        d2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 19]
                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 20]
                                        d2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 21]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 22]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        d2
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 23]
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [contrabass voice measure 24]
                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 25]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            d8
                                            - \accent
                                            ]
                                            ~

                                        }

                                        d2
                                        ~

                                        \override Staff.Stem.stemlet-length = 0.75
                                        d8
                                        [

                                        c'16
                                        - \tenuto

                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [contrabass voice measure 26]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            - \tenuto
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]

                                        }

                                        d2
                                        - \accent
                                        ~

                                        \times 2/3
                                        {

                                            \override Staff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            c'16
                                            - \tenuto

                                            \revert Staff.Stem.stemlet-length
                                            c'16
                                            - \tenuto
                                            ]
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
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}