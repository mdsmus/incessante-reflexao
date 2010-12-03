%% score.ly
\version "2.12.0"

%% includes

\include "notas.ly"

#(set-global-staff-size 15.5)

%% partitura

\book {
  \header{
    title = "Incessante Reflexão"
    composer = "Marcos di Silva (1977)"
    opus = "2004 (rev. 2010)"
    copyright = "© Marcos di Silva"
  }

  \score {
    <<
      \new StaffGroup <<
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Flauta "}
          \set Staff.shortInstrumentName = \markup {\right-align "Fl. "}
          \set Staff.midiInstrument = "flute"
          \global
          \flauta
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Oboé "}
          \set Staff.shortInstrumentName = \markup {\right-align "Ob. "}
          \set Staff.midiInstrument = "oboe"
          \global
          \oboe
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Clarinete em Bb "}
          \set Staff.shortInstrumentName = \markup {\right-align "Cl.Bb "}
          \set Staff.midiInstrument = "clarinet"
          \global
          \transposition bes
          \clarineteembb
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Trompa em F "}
          \set Staff.shortInstrumentName = \markup {\right-align "Tpa.F "}
          \set Staff.midiInstrument = "french horn"
          \global
          \transposition f
          \trompaemf
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\right-align "Fagote "}
          \set Staff.shortInstrumentName = \markup {\right-align "Fg. "}
          \set Staff.midiInstrument = "bassoon"
          \global
          \fagote
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
  }
}
