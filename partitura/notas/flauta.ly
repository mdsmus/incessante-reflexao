%% flauta.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAflauta = {
  \relative c'' {
    %% transposicao do oboe com pequenas alteracoes
    R1*2
    \transpose b d'' {
      \relative {
        b16\mf\agitato( cis d e d cis b ais b cis d e d cis b ais
        b8) r r2.
      }
      \transpose b d' {
        \relative {
          b16( cis d e d cis b ais b cis d e d cis b ais
          b8) r r2.
        }
      }
      \transpose b f' {
        \relative {
          b16( cis d e d cis b ais
          \repeat unfold 3 {
            b cis d e d cis b ais
          }
          b ais gis fisis eis fisis gis ais gis fisis eis disis eis fisis gis fisis
          disis8) r r2.
        }
      }
      R1*4
      r4
      \transpose b f {
        \relative {
          \repeat unfold 2 {
            b16( cis d e d cis b ais b cis d e d cis b ais
            b8) r r4
          }
        }
      }
      \transpose b gis {
        \relative {
          \repeat unfold 2 {
            b16( cis d e d cis b ais b cis d e d cis b ais
            b8) r r4
          }
        }
      }
      \relative {
        b16( cis d e d cis b ais b cis d e d cis b ais
        b8) r r4
      }
      \transpose b d' {
        \relative {
          b16( cis d e d cis b ais b cis d e d cis b ais
          b8) r r4
        }
      }
      \transpose b f' {
        \relative {
          b16( cis d e d cis b ais b cis d e d cis b ais
          b8) r
        }
      }
      \transpose b gis' {
        \relative {
          b16( cis d e d cis b ais
          \repeat unfold 4 {
            b cis d e d cis b ais
          }
          e'?8) r r2.
        }
      }
      R1
      \transpose b d {
        \relative {
          r2 r4 b16\mf( cis d e d cis b ais b cis d e d cis b ais
          b8) r
        }
      }
      R1*2
      \transpose b d {
        \relative {
          b16( cis d e d cis b ais b cis d e
          d8) r
        }
      }
      R1
      \transpose b gis' {
        \relative {
          r2 b16\mf( cis d e d cis b ais
          \repeat unfold 7 {
            b cis d e d cis b ais
          }
          b8) r r4
        }
      }
      \transpose b gis' {
        \relative {
          b16( cis d e d cis b ais
          \repeat unfold 3 {
            b cis d e d cis b ais
          }
          b cis d e d\> cis b ais
          b cis d e d cis b ais
          b8\p) r r2.
        }
      }
      R1*6
    }
  }
}

gestoBflauta = {
  \relative c' {
    e1~\mp\obscuro(
    e2 d~
    d4) \times 2/3 {d4 d d} gis4~(
    gis2~ gis8 fis4.~
    fis1~
    fis4) r r2
    R1*7
    \acciaccatura f''8\f ees1(
    d)
    \times 2/3 {d2 d d}
    aes'1(
    g)
    R1*3
    r8 g4\f( fis4.) \times 2/3 {fis8 fis fis}
    c'4( b2) r4
    b,1\energico
    d2( f
    cis a)
    ges'1
    r4 f2.~
    f2 \times 2/3 {f4 f f}
    f4 f e bes~
    bes1~
    bes2 b~
    b4 r2.
    r fis,4~\mp
    fis r2.
    r fis4
    r fis''2.~\f
    fis2 \times 2/3 {fis4 fis fis}
    fis4 fis f b,~
    \setTextDecresc {
      b1~\>
      b2 c~
      c4 r a2~
      a4 r ees2~
      ees4 r a,2~
      a4 r ees2~\pp
      ees1
      R1
    }
  }
}

gestoCflauta = {
  \repeat unfold 26 {
    R1*7/8
    R1*5/8
  }
}

gestoDflauta = {
  R1*4/4*23
}