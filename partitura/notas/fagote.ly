%% fagote.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAfagote = {
  \clef bass
  \relative c {
    d8\mf\agitato cis16->( d e8) d16->( e f8) e16-.( f g8) f16->( g
    \repeat unfold 4 { aes g f g }
    aes8) r r2.
    aes16( g f g \repeat unfold 3 { aes g f g }
    aes8) r r2.
    aes16( g f g \repeat unfold 3 { aes g f g }
    aes8) r r2.
    R1
    \clef tenor
    d16( e f g f e d cis d e f g f e d cis
    d e f e d cis b cis d e d cis b ais b cis
    d cis b ais gis ais b cis b ais gis fisis gis ais b ais
    g?8) r r2.
    R1
    \clef bass
    r2
    aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    \repeat unfold 3 {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    }
    \transpose aes ces' {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    }
    \clef tenor
    \transpose aes d' {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    }
    \transpose aes f' {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r
    }
    aes'16( g f g \repeat unfold 12 { aes g f g } aes8) r r2.
    R1
    \clef bass
    \transpose aes f {
      r2 r4 aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r
    }
    R1*2
    \transpose aes f {
      aes16( g f g \repeat unfold 2 { aes g f g } aes8) r
    }
    R1
    r2. b,,4~\mf
    b2 \times 2/3 {b4 b b}
    b4 b bes e,~
    e2 r
    R1*4/4*11
  }
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