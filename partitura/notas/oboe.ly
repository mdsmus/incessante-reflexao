%% oboe.ly
\version "2.10.19"
\include "newcommand.ly"

gestoAoboe = {
  \relative c'' {
    R1*2
    b16\mf\agitato( cis d e d cis b ais b cis d e d cis b ais
    b8) r r2.
    \transpose b d'' {
      \relative {
      b16( cis d e d cis b ais b cis d e d cis b ais
      b8) r r2.
      }
    }
    \transpose b f'' {
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
    \transpose b f' {
      \relative {
        \repeat unfold 2 {
          b16( cis d e d cis b ais b cis d e d cis b ais
          b8) r r4
        }
      }
    }
    \transpose b aes' {
      \relative {
        \repeat unfold 2 {
          b16( cis d e d cis b ais b cis d e d cis b ais
          b8) r r4
        }
      }
    }
    b16( cis d e d cis b ais b cis d e d cis b ais
    b8) r r4
    \transpose b d'' {
      \relative {
        b16( cis d e d cis b ais b cis d e d cis b ais
        b8) r r4
      }
    }
    \transpose b f'' {
      \relative {
        b16( cis d e d cis b ais b cis d e d cis b ais
        b8) r
      }
    }
    \transpose b aes'' {
      \relative {
        b16( cis d e d cis b ais
        \repeat unfold 4 {
           b cis d e d cis b ais
         }
        b cis d e
        eis?8) r r2.
      }
    }
    R1
    \transpose b d' {
      \relative {
        r2 r4 b16\mf( cis d e d cis b ais b cis d e d cis b ais
        b8) r
      }
    }
    R1*2
    \transpose b d' {
      \relative {
        b16( cis d e d cis b ais b cis d e
        d8) r
      }
    }
    R1
    \transpose b aes'' {
      \relative {
        r2 b16\mf( cis d e d cis b ais
        \repeat unfold 5 {
          b cis d e d cis b ais
        }
        b8) r r4
      }
    }
    \transpose b aes'' {
      \relative {
        r2 b16( cis d e d cis b ais
        \repeat unfold 4 {
          b cis d e d cis b ais
        }
        b8) r r2.
      }
    }
    r2 r4 b~\mf\dolce
    b1~
    b4 \times 2/3 {b4 b b} b4
    b bes e,2~
    e1~\>
    e\ppp
    R1
  }
}


gestoBoboe = {
  R1*4/4*47
}

gestoCoboe = {
  \repeat unfold 52 {
    R1*7/8
    R1*5/8
  }
}

gestoDoboe = {
  R1*4/4*23
}