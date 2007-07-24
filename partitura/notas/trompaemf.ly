%% trompaemf.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAtrompaemf = {
  R1*4/4*50
}

gestoBtrompaemf = {
  R1*4/4*47
}

gestoCtrompaemf = {
  \repeat unfold 52 {
    R1*7/8
    R1*5/8
  }
}

gestoDtrompaemf = {
  R1*4/4*23
}