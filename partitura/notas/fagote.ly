%% fagote.ly
\version "2.12.0"
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
    g!8) r r2.
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
    \crescTextCresc
    aes'16\<( g f g \repeat unfold 12 { aes g f g }
    aes8)\ff r r2.
    \crescHairpin
    R1
    \clef bass
    \transpose aes f {
      r2 r4 aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r
    }
    R1
    %%
    \transpose aes f {
      r2. aes16 g f g(
      aes16 g f g \repeat unfold 2 { aes g f g } aes4~
      aes1~
    aes4) r2} b,,4~\mf\energico
    b4. r8 \times 2/3 {b4-.-- b-.-- b-.--}
    b4-- b-- bes-- e,~
    e2 r
    R1*8
  }
}

gestoBfagote = {
  \relative c' {
    R1*5
    \clef tenor
    r4 des2.~\mp(
    des2 c4.) r8
    \times 2/3 {c4-.-- c-.-- c-.--} ges'2~
    ges1~
    ges8 \times 2/3 {e16( d aes'} f2.)
    \clef bass
    r4 b,,,2\mf\obscuro( bes4~
    bes8) r \times 2/3 {bes4-.-- bes-.-- bes-.--} e4~(
    e dis2.)
    \clef tenor
    r2 ges''(
    f4.) r8 \times 2/3 {f4-.-- f-.-- f-.--}
    b1(
    ais~
    ais1)
    r8 e4--\f ees8( d2)
    \clef bass
    r8 b,,8~\energico b2.~
    b4 d4.( des8 c4~
    c8) dis4( cis8 e4 g~
    g f) e8->( f4.)
    e8->( dis4.) b8\p\<\leggero( cis dis eis
    \times 2/3 {fisis4)\mf\> eis8~(} \times 2/3 {eis8 dis4} cis4\p b~
    b2) cis(
    c!1~
    c~
    c)
    \times 2/3 {r4 dis'8(} f2.
    dis1)
    \times 2/3 {r4 dis8(} f2.
    dis2)
    \transpose b c {
      \relative {
        b,8\p\<\leggero( cis dis eis
        \times 2/3 {fisis4)\mf\> eis8~(} \times 2/3 {eis8 dis4} cis4\p b~
        b2) cis(
        c!4~) c2.
        c~
        c~
        c2 r
      }
    }
    R1*4
  }
}

gestoCfagote = {
  #(override-auto-beam-setting '(end * * 7 8) 2 8 )
  #(override-auto-beam-setting '(end * * 7 8) 4 8 )
  #(override-auto-beam-setting '(end * * 5 8) 2 8 )
  \relative c {
    \clef bass
    g8-.\mf\marcatto r a-. r b-.[ r cis-.]
    \repeat unfold 17 {
      g-. r a-.[ r b-.]
      g-. r a-. r b-.[ r cis-.]
      g-. r a-. r b-.[ r cis-.]
    }
    bes\deciso f' b, ges' c,
    g2~\< g4.~
  }
}

gestoDfagote = {
  \clef bass
  \relative c {
    g1\f~
    g8 r \times 2/3 {g4-.-- g-.-- g-.--} g4--
    g-- fis-- c2~
    c1~\>
    c1\ppp
    r2.
    \clef tenor
    f''4~\f\>
    f\p r r2
    R1*3
    \clef bass
    r4 b,,,2\mf\obscuro( bes4~
    bes8) r \times 2/3 {bes4-.-- bes-.-- bes-.--} e4~--
    e dis2.
    r2
    \clef tenor
    ges''(
    f4.) r8 \times 2/3 {f4-.-- f-.-- f-.--}
    b1
    ais
    r2
    f16\mf\agitato( e d e
    \repeat unfold 3 {f e d e}
    f8) r r4
    r2 r4
    \clef bass
    \times 4/5 {b,16( a g f ees}
    \repeat unfold 2 {\times 4/5 {b'16[ a g f ees]}}
    \times 4/5 {b'16 a g f ees)} r4
    r2. g,8-. r
  }
}
