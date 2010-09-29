%% score.ly
\version "2.12.0"

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

    %% adaptação para Bienal
    composer = "N.BOHR"
    opus = "~6 minutos"
  }

  \score {
    <<
      \new StaffGroup <<
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Flauta "}
          \set Staff.shortInstrumentName = \markup {\right-align "Fl. "}
          \set Staff.midiInstrument = "flute"
          \gestosglobal
          \gestosflauta
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Oboé "}
          \set Staff.shortInstrumentName = \markup {\right-align "Ob. "}
          \set Staff.midiInstrument = "oboe"
          \gestosglobal
          \gestosoboe
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Clarinete em Bb "}
          \set Staff.shortInstrumentName = \markup {\right-align "Cl.Bb "}
          \set Staff.midiInstrument = "clarinet"
          \gestosglobal
          \transposition bes
          \gestosclarineteembb
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Trompa em F "}
          \set Staff.shortInstrumentName = \markup {\right-align "Tpa.F "}
          \set Staff.midiInstrument = "french horn"
          \gestosglobal
          \transposition f
          \gestostrompaemf
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Fagote "}
          \set Staff.shortInstrumentName = \markup {\right-align "Fg. "}
          \set Staff.midiInstrument = "bassoon"
          \gestosglobal
          \gestosfagote
        >>
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
    #(set-paper-size "a4")
    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
    print-page-number = ##t
    ragged-last-bottom = ##t

    %% adaptação à Bienal 2011
    tagline = 0
  }
}
