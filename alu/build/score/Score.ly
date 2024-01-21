\version "2.22.1"  %2.23.2
\language "english" %! LilyPondFile

\include "../score_stylesheet.ily"                                      %! LilyPondFile
\include "abjad.ily" %! LilyPondFile

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
    <<
        { \include "layout.ly" }
    	{
            \include "01.ly"
            \include "02.ly"
            \include "03.ly"
            \include "04.ly"
            \include "05.ly"
            \include "06.ly"
            \include "07.ly"
            \include "08.ly"
            \include "09.ly"
            \include "10.ly"
            \include "11.ly"
            \include "12.ly"
            \include "13.ly"
            \include "14.ly"
            \include "15.ly"
            \include "16.ly"
    	}
    >>
%{ \midi{} %}
}
