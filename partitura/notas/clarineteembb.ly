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
  R1*4/4*47
}

gestoCclarineteembb = {
  \repeat unfold 26 {
    R1*7/8
    R1*5/8
  }
}

gestoDclarineteembb = {
  R1*4/4*23
}