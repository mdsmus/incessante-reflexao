%% oboe.ly
\version "2.12.0"
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
  \relative c'' {
    R1*8
    r2 a\mf(
    gis) \times 2/3 {gis4 gis gis}
    d'2( cis)
    R1
    r4 r8 f~ f4~ f8 e~
    e4 \times 2/3 {e4 e e} bes'4~
    bes a2.
    R1*3
    r8 f4\mp e8( dis2)
    r8 b~\energico( b2.~
    b4 d4. des8 c4~
    c8 dis4 cis8 e4 g~
    g2) aes8->( g4.
    aes8-> a4.)
    \times 4/7 {des,8\p\<\leggero( ees f g a b cis}
    \times 4/5 {b8\mf\> a g f ees} des2~\p
    des) ees
    c'?4\mf fis,2.~
    fis bes4~\mp
    bes2 r
    r r8 f,4.~
    f2 r
    r r8 f4.~
    f2
    \transpose des d'' {
      \relative {
        \times 4/7 {des,8\p\<\leggero( ees f g a b cis}
        \times 4/5 {b8\mf\> a g f ees} des2~\p
        des) ees
      }
    }
    \dimTextDecresc {
      cis'4\mf\> g2.~
      g b4~
      b2
      r4 g'~
      g2 r4 cis,~
      cis2 r4 g~
      g2 r4 cis,~\pp
      cis1
    }
    R1
  }
}

gestoCoboe = {
  %% transposicao do fagote
  #(override-auto-beam-setting '(end * * 7 8) 2 8 )
  #(override-auto-beam-setting '(end * * 7 8) 4 8 )
  #(override-auto-beam-setting '(end * * 5 8) 2 8 )
  \transpose g f {
    \relative c'' {
      g8-.\mf\marcatto r a-. r b-.[ r cis-.]
      \repeat unfold 16 {
        g-. r a-.[ r b-.]
        g-. r a-. r b-.[ r cis-.]
        g-. r a-. r b-.[ r cis-.]
      }
      g-. r a-.[ r b-.]
      g-. r a-. r b-.[ r cis-.]
    }
  }
  \relative c'' {
    d\deciso gis, dis' a e' ais, f'~
    f4~ f4.~
    f2~ f4.
  }
}

gestoDoboe = {
  \relative c'' {
    R1*5
    r2. ais4~\f\>
    ais\p r r2
    R1
    r2 a\mf(
    gis) \times 2/3 {gis4 gis gis}
    d'2( cis)
    R1
    r4 r8 f~ f4~ f8 e~
    e4 \times 2/3 {e4 e e} bes'4~
    bes a2.
    R1*2
    r4 d,16\mf\agitato( e f g f e d cis d e f g
    f e d cis d8) r r4 \times 4/5 {b16( a g f ees}
    \repeat unfold 4 {\times 4/5 {b'16[ a g f ees]}}
    \times 4/5 {b'16 a g f ees)} r2.
    R1*2
    bes''32\f bes r16 r8 r2.
  }
}