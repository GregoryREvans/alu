\version "2.22.1" %2.23.6
\language "english" %! LilyPondFile

\include "../parts_stylesheet.ily"                                      %! LilyPondFile
\include "abjad.ily" %! LilyPondFile

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
    <<
        { \include "layout.ly" }
    	{
            \include "../score/01.ly"
            \include "../score/02.ly"
            \include "../score/03.ly"
            \include "../score/04.ly"
            \include "../score/05.ly"
            \include "../score/06.ly"
            \include "../score/07.ly"
            \include "../score/08.ly"
            \include "../score/09.ly"
            \include "../score/10.ly"
            \include "../score/11.ly"
            \include "../score/12.ly"
            \include "../score/13.ly"
            \include "../score/14.ly"
            \include "../score/15.ly"
            \include "../score/16.ly"
            \include "../score/17.ly"
            \include "../score/18.ly"
            \include "../score/19.ly"
            \include "../score/20.ly"
            \include "../score/21.ly"
            \include "../score/22.ly"
    	}
    >>
}
