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
  \tempo 4=120
  \time 4/4
  s1*11
  \mark \default
  s1*16
  \mark \default
  s1*22
  s4. s8\fermata s2
  \bar "||"
}

gestoBglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=80
  \mark \default
  s1*46
  s4. s8\fermata s2
  \bar "||"
}

gestoCglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 8=240
  \mark \default
  \repeat unfold 26 {
    \time 7/8
    s1*7/8
    \time 5/8
    s1*5/8
  }
  \bar "||"
}

gestoDglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=80
  \mark \default
  \time 4/4
  s1*23
  \bar "||"
}
