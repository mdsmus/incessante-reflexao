%% parte_trompaemf.ly
\version "2.12.0"

%% includes

\include "gestosglobal.ly"
\include "gestostrompaemf.ly"

#(set-global-staff-size 20)

%% partitura

\book {
  \header{
    title = "Incessante Reflexão"
    composer = "Marcos di Silva (1977)"
    opus = "2004"
    copyright = "© Marcos di Silva"
    instrument = "Trompa em F"
  }

  \score {
    <<
      \set Score.skipBars = ##t
      \new Staff <<
        \gestosglobal
        \gestostrompaemf
      >>
    >>
    \midi { }
    \layout {
      \context { \Score
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
    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}
