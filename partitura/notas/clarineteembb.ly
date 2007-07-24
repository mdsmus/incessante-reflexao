%% clarineteembb.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAclarineteembb = {
  R1*4/4*50
}

gestoBclarineteembb = {
  R1*4/4*47
}

gestoCclarineteembb = {
  \repeat unfold 52 {
    R1*7/8
    R1*5/8
  }
}

gestoDclarineteembb = {
  R1*4/4*23
}