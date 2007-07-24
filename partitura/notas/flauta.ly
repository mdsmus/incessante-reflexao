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