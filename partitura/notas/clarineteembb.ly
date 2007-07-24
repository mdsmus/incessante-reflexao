%% clarineteembb.ly
\version "2.10.19"
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
      dis'16( e dis cis \repeat unfold 11 { dis e dis cis }
      dis8) r r2.
    R1

    %% transposição do material do fagote
    \transpose aes c' {
      r2 r4 aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r
    }
    R1*2
    \transpose aes c' {
      aes16( g f g \repeat unfold 2 { aes g f g } aes8) r
    }
    R1
    \transpose b cis' {
      r2. b4~\mf\energico
      b2 \times 2/3 {b4 b b}
      b4 b bes e~
      e2 r
    }
    %%
    g16\mf( a bes c bes a g fis 
    \repeat unfold 7 {
      g a bes c bes a g fis
    }
    g a bes c bes\> a g fis g a bes c bes a g fis
    g8)\p r r2.
    R1*4/4*5
  }
}

gestoBclarineteembb = {
  \relative c'' {
    R1*3
    r2. d4~\mp(
    d2. c4~
    c2) \times 2/3 {c4 c c}
    fis2. fis8. fis16~
    fis2. fis8. e16~
    e1
    R1*5
    r4 fis,,2~\mf\obscuro ( eis4~
    eis) \times 2/3 {eis4 eis eis} cis'4~(
    cis2 bis) 
    r d''~(
    d8 cis4.) \times 2/3 {cis4 cis cis}
    g'2. fis4(
    fis2) r
    R1
    r8 des4\mp c8( b2)
    r8 cis,,~\energico( cis2.~
    cis4 e4. ees8 d4~
    d8 f4 dis8 fis4 a~
    a2) bes8->( a4.
    bes8-> b4.) \times 4/5 {ees,8\p\<\leggero( f g a b}
    \times 4/7 {cis8\mf\> dis cis b a g f} ees4\p f~
    f2) g(
    bes) e'4\mf bes~
    bes1
    b2. r8 fis,,~
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
    \setTextDecresc {
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
  \relative c'' {
    R1*7/8
    \repeat unfold 2 {
      \time 5/8
      R1*5/8
      \time 7/8
      R1*7/8*2
    }
    %% material da flauta transposto
    \transpose f g' {
      r8 f8~\mf\cantabile( f4.~
      f2~ f4.~
      f8 aes~ aes4~ aes4.)
    }
    R1*5/8
    R1*7/8
    g2~( g4.~
    g4~ g8 bes4~
    bes2~ bes8 cis4~
    cis4~ cis8) r r4.
    R1*5/8
    R1*7/8*2
    R1*5/8
    R1*7/8
    g2( bes4.~
    bes4 cis4.~
    cis4 a4~ a4.)
    R1*7/8
    R1*5/8
    R1*7/8
    r2 r8 g4~(
    g bes4.~
    bes4 cis~ cis4.
    a4~ a4~ a8 d4~
    d~ d4.)
    R1*7/8*2
    r4 r b8~
    b2 b4 b8~
    b b~ b b b( ais) dis,~
    dis4~ dis4.
    R1*7/8*2
    g'4~( g4.
    \appoggiatura {eis16[ dis cis b a]} g4) g g g8
    g( fis) c4~:64 c4.:64
    r4 \appoggiatura {a'16[ b cis dis f g a b cis]} gis4.~(
    gis4 a8 gis~ gis a4
    gis8 d~ d4) r4.
    \appoggiatura {bes16[ c d e ges aes bes c d]} aes4~( aes4.
    bes8 a~ a bes~ bes a dis,~
    dis4) r bes'8( e,4~
    e) r8 b'( f~
    f4) r8 c'\deciso fis, cis' g d' gis, dis'4~ dis4.~
    dis4~ dis4.~
    dis2~ dis4.
  }
}

gestoDclarineteembb = {
  R1*4/4*23
}