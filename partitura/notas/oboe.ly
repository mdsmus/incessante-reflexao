%% oboe.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAoboe = {
  R1*4/4*50
}

gestoBoboe = {
  R1*4/4*47
}

gestoCoboe = {
  \repeat unfold 52 {
    R1*7/8
    R1*5/8
  }
}

gestoDoboe = {
  R1*4/4*23
}