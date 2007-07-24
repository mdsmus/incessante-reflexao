%% flauta.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAflauta = {
  R1*4/4*50
}

gestoBflauta = {
  R1*4/4*47
}

gestoCflauta = {
  \repeat unfold 52 {
    R1*7/8
    R1*5/8
  }
}

gestoDflauta = {
  R1*4/4*23
}