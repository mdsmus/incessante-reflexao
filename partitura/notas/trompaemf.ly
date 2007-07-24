%% trompaemf.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAtrompaemf = {
  \relative c' {
    R1*4/4*10
    r4 b2.~\mp\<(
    b4\f d2 f4~
    f cis2 a4~
    a fis'2.~
    fis4) r2.
    R1*2
    r2. ges4\f~
    ges \times 2/3 {ges4 ges ges} ges4
    ges f b,2~
    b r
    aes' \times 2/3 {aes4 aes aes}
    aes4 aes g cis,~
    cis2. r4
    R1*2
    r2. r8 \clef bass d,\f~(
    d1
    f2 aes
    e1)
    \clef treble
    r2 a~(
    a~ c
    ees b~
    b4) r fis'2~
    fis4 \times 2/3 {fis4 fis fis} fis4
    fis f b,2
    R1*4/4*14
  }
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