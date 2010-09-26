% clarineteembb.ly
\version "2.12.0"
\include "newcommand.ly"

gestoAclarineteembb = {
  \relative c'' {
    a8\mf\agitato bes16->( a g8) a16->( g fis8) g16-.( fis e8) fis16->( e
    \repeat unfold 4 { dis e dis cis }
    dis8) r r2.
    \repeat unfold 2 {
      dis16( e dis cis \repeat unfold 3 { dis e dis cis }
      dis8) r r2.
    }
    R1
    g16( a bes c bes a g fis g a bes c bes a g fis
    g a bes g a fis e fis g a g fis e dis e fis
    g fis e dis cis dis e fis e dis cis bis cis dis e dis
    bis8) r r4 r2
    R1
    r2 r4 dis16\mf( e dis cis \repeat unfold 3 { dis e dis cis }
    dis8) r r4
    \repeat unfold 2 {
      dis16( e dis cis \repeat unfold 3 { dis e dis cis }
      dis8) r r4
    }
    \transpose dis fis' {
      \repeat unfold 2 {
        dis16( e dis cis \repeat unfold 3 { dis e dis cis }
        dis8) r r4
      }
    }
    \transpose dis a' {
      dis16( e dis cis \repeat unfold 3 { dis e dis cis }
      dis8) r r4
    }
    \transpose dis c'' {
      dis16( e dis cis \repeat unfold 3 { dis e dis cis }
      dis8) r
    }
      \crescTextCresc
      dis'16\<( e dis cis \repeat unfold 11 { dis e dis cis }
      dis8)\ff r r2.
    \crescHairpin
    R1
    %%
    \transpose b d' {
      \relative {
        r2 r4 b16\mf( cis d e d cis b ais b cis d e d cis b ais
        b8) r
        b1~\pp(
        b2 ais4.) r8
        b16\mf( cis d e d cis b ais b cis d e
        d8) r
      }
    }
    R1
    \transpose b cis' {
      r2. b4~\mf\energico
      b4. r8 \times 2/3 {b4-.-- b-.-- b-.--}
      b4-- b-- bes-- e~
      e2 r
    }
    %%
    r4 \times 4/5 {bes'16->\mf( a g f e~} e8) r \times 4/5 {bes'16->( a g f e~}
    \repeat unfold 2 {
      e8) r \times 4/5 {bes'16->( a g f e~}
    }
    e8) r \times 4/5 {bes16->( a g f e~} e8) r \times 4/5 {bes16->( a g f e~}
    e8) r r2.
    R1*4
  }
}

gestoBclarineteembb = {
  \relative c'' {
    R1*3
    d4.\mp \acciaccatura bes8 d4. \acciaccatura aes8 c4~
    c4. r8 \times 2/3 {c4-.-- c-.-- c-.--}
    fis2 \times 4/5 {e16( c ais' fis d} gis4~
    gis2~ \times 4/6 {gis16) d( ais' e c gis'} fis8.[ e16~]
    \times 4/7 {e8) d-- c-- bes-- aes-- ges-- e~} e2~:64
    e8:64 r r2.
    R1*2
    r4 fis,2~\mf\obscuro ( eis4~
    eis8) r \times 2/3 {eis4-.-- eis-.-- eis-.--} cis'4~(
    cis2 bis)
    r d''~(
    d8 cis4) r8 \times 2/3 {cis4-.-- cis-.-- cis-.--}

    %% observar ligadura
    g'2~( g8~ \times 2/3 {g16 e cis} fis4~
    fis2.) r4
    r8 des4--\f c8( b2)
    r8 cis,,~\energico cis2.~
    cis4 e4.( ees8 d4~
    d8) f4( dis8 fis4 a~
    a2) bes8->( a4.)
    bes8->( b4.) \times 4/5 {ees,8\p\<\leggero( f g a b}
    \times 4/7 {cis8\mf\> dis cis b a g f} ees4\p f~
    f2) g(
    bes~ \times 2/3 {bes8) e'4~->\mf} e8 bes~
    bes1
    b2.-> r8 fis,,~
    fis1~
    fis2. r8 fis~
    fis1~
    fis2
    \transpose ees e' {
      \relative {
        \times 4/5 {ees,8\p\<\leggero( f g a b}
        \times 4/7 {cis8\mf\> dis cis b a g f} ees4\p f~
        f2) g(
        bes) fes''4\mf bes,~
        bes1
      }
    }
    \dimTextDecresc {
      cis'''2.\mf\> r4
      g2. r4
      cis,2. r4
      g2. r4
      cis,1\pp
      R1
    }
  }
}

gestoCclarineteembb = {
  #(override-auto-beam-setting '(end * * 7 8) 2 8 )
  #(override-auto-beam-setting '(end * * 7 8) 4 8 )
  #(override-auto-beam-setting '(end * * 5 8) 2 8 )
  \relative c' {
    R1*7/8
    R1*5/8

    R1*7/8*2
    R1*5/8

    R1*7/8
    r2 r8. a16\mf( b g
    dis' cis f8~ f4.~
    f4~ \times 2/3 {f8) ees-. des-.} \times 2/3 {b-. a-. g-.} f8~(
    f8 g16( a b dis cis f g aes16~ aes8.) g16(
    f b~ b8~ b4.~
    b4) r r4.



  }
}

gestoDclarineteembb = {
  \relative c'' {
    R1*3
    eis4.\p\<\cantabile\( fis g,4~
    g8 eis'4 fis g, eis'8
    fis\f g, \times 2/3 { eis'8 fis g,} eis'16 fis g, eis'32 fis \acciaccatura g,8 aes4~\f\>
    aes\)\p r r2
    R1*4
    r4 fis,2~\mf\obscuro ( eis4~
    eis8) r \times 2/3 {eis4 eis eis} cis'4~(
    cis2 bis)
    r d''~(
    d8 cis4) r8 \times 2/3 {cis4 cis cis}
    g'2. fis4~
    fis1
    R1
    \transpose b cis {
      \relative {
        \times 4/5 {b''16( a g f ees}
        \repeat unfold 4 {\times 4/5 {b'16[ a g f ees]}}
        \times 4/5 {b'16[ a g f ees])} r2
      }
    }
    R1*2
    dis,32\f dis r16 r8 r2.
  }
}