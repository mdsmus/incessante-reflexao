\version "2.8.2"

\include "newcommand.ly"

tempoMark = #(define-music-function
       (parser location marktext padding) (string? number?)
     #{
       \once \override Score . RehearsalMark #'padding = $padding
       \once \override Score . RehearsalMark #'no-spacing-rods = ##t
       \mark \markup { \bold $marktext }
     #})

padraoglobal = {
  \override Staff.TimeSignature #'style = #'()
  \override Score.MetronomeMark #'padding = #4
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'padding = #0.5
}

gestoAAglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}
