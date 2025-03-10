\version "2.23.81"
\language "english" %! LilyPondFile

\include "abjad.ily"
\include "../../parts_stylesheet.ily"                                      %! LilyPondFile
%{ \include "abjad.ily" %! LilyPondFile %}
%{ \include "baca-spanners.ily"
\include "../../../lib.ily"
\include "evans.ily"
\include "evans-accidentals-markups.ily"
\include "evans-chart-markups.ily"
\include "evans-spanners.ily" %}

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

% flute -> voice 1
% oboe -> voice 2
% clarinet -> voice 3
% bassoon -> voice 4
% horn -> voice 5
% trumpet -> voice 6
% trombone -> voice 7
% tuba -> voice 8
% percussion 1 -> voice 9
% percussion 2 -> voice 10
% piano 1 -> voice 11
% piano 2 -> voice 12
% violin 1 -> voice 13
% violin 2 -> voice 14
% viola -> voice 15
% cello -> voice 16 *
% bass -> voice 17

\score{
    \removeWithTag #'(formatting voice1 voice2 voice3 voice4 voice5 voice6 voice7 voice8 voice9 voice10 voice11 voice12 voice13 voice14 voice15 voice17)
    <<
        { \include "layout.ly" }
    	{
            \include "../../score/01.ly"
            \include "../../score/02.ly"
            \include "../../score/03.ly"
            \include "../../score/04.ly"
            \include "../../score/05.ly"
            \include "../../score/06.ly"
            \include "../../score/07.ly"
            \include "../../score/08.ly"
            \include "../../score/09.ly"
            \include "../../score/10.ly"
            \include "../../score/11.ly"
            \include "../../score/12.ly"
            \include "../../score/13.ly"
            \include "../../score/14.ly"
            \include "../../score/15.ly"
            \include "../../score/16.ly"
    	}
    >>
%{ \midi{} %}
}
