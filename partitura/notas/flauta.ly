%% flauta.ly
\version "2.12.0"
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
    e1~\obscuro\p\<(
    e4. \times 2/3 {d16 c fis} d4~\! \times 2/3 {d16) e( c} fis8~
    fis8) c16( e) \times 2/3 {d4-.-- d-.-- d-.--} gis4~
    gis4 \acciaccatura c8 gis4~ gis8 \acciaccatura ais8 fis4.~
    fis1~:64
    fis2:64 r2
    R1*4
    \acciaccatura f''8\f ees1(
    d)
    d4~-> \times 2/3 {d8 d4->~} \times 2/3 {d4 d8~->} d4
    aes'2..( \times 2/3 {g16 f bes}
    g1~
    g4) r2.
    R1
    r8 g4\f( fis4.) \times 2/3 {fis8-.-> fis-.-> fis-.->}
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
    \dimTextDecresc {
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
  #(override-auto-beam-setting '(end * * 7 8) 2 8 )
  #(override-auto-beam-setting '(end * * 7 8) 4 8 )
  #(override-auto-beam-setting '(end * * 5 8) 2 8 )
  \relative c'' {
    R1*7/8
    R1*5/8
    R1*7/8*2
    r8 f8~\mf\cantabile( f4.~
    f2~ f4.~
    f8 aes~ aes4~ aes4.~
    aes4) r4.
    R1*7/8
    r2 r8 f4~(
    f~ f4.~
    f2~ f8 aes4~
    aes2~ aes4.
    b4~ b4.~
    b2) r4 r8
    r4 r8 f~( f4.~
    f4~ f4.~
    f4~ f8 aes~ aes4.
    aes2~ aes8 b4~
    b~ b4.~
    b4 g~ g4.)
    R1*7/8
    R1*5/8
    R1*7/8
    f2( aes4.~
    aes4 b4.~
    b4 g~ g4.
    c2~ c4.)
    R1*5/8
    R1*7/8*2
    r4 ges4.~
    ges2 ges4 ges8~
    ges ges~ ges ges ges( f) b,~
    b4~ b4.
    R1*7/8*2
    r4 r8 ais'4~(
    ais \appoggiatura {c16[ d e fis gis]} ais4) ais ais8~(
    ais ais ais( a) dis,4.:64~
    dis4:64 r4.
    R1*7/8*2
    r4 c4.~(
    c4 des8 c~ c des4
    c8 fis,~ fis4) r4.
    cis'4~( cis4.
    d8 cis~ cis d~ d cis g~
    g4) r d'8( gis,4~
    gis) r8 ees'( a,~
    a4) r8 e'\deciso ais, f' b,
    fis' c g'4~ g4.~
    g4~ g4.~
    g2~ g4.
  }
}

gestoDflauta = {
  \relative c''' {
    R1*5
    r2. b4~\f\>
    b\p r r2
    R1*3
    \acciaccatura f'8\f ees1(
    d)
    \times 2/3 {d2 d d}
    aes'1(
    g)
    R1*2
    d,16\mf\agitato( e f g f e d cis d e f g f e d cis
    d8) r \times 4/5 {b'16( a g f ees}
    \repeat unfold 5 {\times 4/5 {b'16[ a g f ees]}}
    \times 4/5 {b'16 a g f ees)}
    R1*3
    d'32\f d r16 r8 r2.
  }
}