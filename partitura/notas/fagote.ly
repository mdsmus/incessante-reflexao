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
    r2. b,,4~\mf\energico
    b2 \times 2/3 {b4 b b}
    b4 b bes e,~
    e2 r
    R1*4/4*11
  }
}

gestoBfagote = {
  \relative c' {
    R1*7
    \clef tenor
    r4 des2.~\mp(
    des2 c)
    \times 2/3 {c4 c c} ges'2~
    ges1~
    ges4 f2.
    R1
    \clef bass
    r4 b,,,2\mf( bes4~
    bes) \times 2/3 {bes4 bes bes} e4~(
    e dis2.)
    \clef tenor
    r2 ges''(
    f) \times 2/3 {f4 f f}
    b1(
    ais)
    R1*2
    r8 e4\mp ees8( d2)
    \clef bass
    r8 b,,8~\energico( b2.
    b4 d4. des8 c4~
    c8 dis4 cis8 e4 g( 
    g f) e8->( f4.
    e8-> dis4.) b8\p\<\leggero( cis dis eis
    \times 2/3 {fisis4\mf\> eis8~} \times 2/3 {eis8 dis4} cis4\p b~
    b2) cis(
    c?1~
    c~
    c)
    \times 2/3 {r4 dis'8(} f2.
    dis1)
    \times 2/3 {r4 dis8(} f2.
    dis2)
    \transpose b c {
      \relative {
        b,8\p\<\leggero( cis dis eis
        \times 2/3 {fisis4\mf\> eis8~} \times 2/3 {eis8 dis4} cis4\p b~
        b2) cis(
        c?1~
        c~
        c~
        c2) r
      }
    }
    r2. r8 cis,~\pp
    cis1~
    cis
    R1
  }
}

gestoCfagote = {
  \repeat unfold 26 {
    R1*7/8
    R1*5/8
  }
}

gestoDfagote = {
  R1*4/4*23
}
