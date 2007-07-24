\version "2.10.0"

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

gestoAglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*50
  \bar "||"
}

gestoBglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*47
  \bar "||"
}

gestoCglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \repeat unfold 52 {
    s1*7/8
    s1*5/8
  }
  \bar "||"
}

gestoDglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*23
  \bar "||"
}
