%% fagote.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAfagote = {
  R1*4/4*50
}

gestoBfagote = {
  R1*4/4*47
}

gestoCfagote = {
  \repeat unfold 52 {
    R1*7/8
    R1*5/8
  }
}

gestoDfagote = {
  R1*4/4*23
}