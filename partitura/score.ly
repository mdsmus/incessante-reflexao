%% score.ly
\version "2.10.19"

%% includes

\include "gestosglobal.ly"
\include "gestosflauta.ly"
\include "gestosglobal.ly"
\include "gestosoboe.ly"
\include "gestosglobal.ly"
\include "gestosclarineteembb.ly"
\include "gestosglobal.ly"
\include "gestosfagote.ly"
\include "gestosglobal.ly"
\include "gestostrompaemf.ly"

#(set-global-staff-size 15.5)

%% partitura

\book {
  \header{
    title = "Incessante Reflexão"
    composer = "Marcos di Silva"
    date = "2004"
    copyright = "© Marcos di Silva"
  }

  \score {
    <<
      \new StaffGroup <<
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Flauta"}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Fl."}
          \set Staff.midiInstrument = "flute"
          \gestosglobal
          \gestosflauta
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Oboé"}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Ob."}
          \set Staff.midiInstrument = "oboe"
          \gestosglobal
          \gestosoboe
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Clarinete em Bb"}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Cl.Bb"}
          \set Staff.midiInstrument = "clarinet"
          \gestosglobal
          \gestosclarineteembb
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Fagote"}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Fg."}
          \set Staff.midiInstrument = "bassoon"
          \gestosglobal
          \gestosfagote
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Trompa em F"}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Tpa.F"}
          \set Staff.midiInstrument = "french horn"
          \gestosglobal
          \gestostrompaemf
        >>
      >>
    >>
    \midi { }
    \layout {
      \context { \Score
                 \override MetronomeMark #'extra-offset = #'(-9 . 0)
                 \override MetronomeMark #'padding = #'3
               }
      \context { \Staff
                 \override TimeSignature #'style = #'numbered
               }
      \context { \Voice
                 \override Glissando #'thickness = #3
                 \override Glissando #'gap = #0.1
               }
      \context {
        \Staff \consists "Horizontal_bracket_engraver"
      }
    }
  }
  \paper {
    %%    #(set-global-staff-size 8)
    #(set-paper-size "a4")

    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
%     right-margin = 2\cm
%     head-separation = 1\cm
%     foot-separation = 1\cm
%     before-title-space = 1\cm
%     after-title-space = 1\cm
%     between-title-space = 1\cm

    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}
