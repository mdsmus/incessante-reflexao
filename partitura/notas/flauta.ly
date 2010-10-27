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
          \crescTextCresc
          b16\<( cis d e d cis b ais
          g f e d e f g a b c d e f e d cis
          b a b cis d e f g a b a g f e f g
          a8)\ff r r2.
          \crescHairpin
        }
      }
      R1
      %%
      \transpose d b, {
        %% transposição do material do fagote
        \transpose aes c' {
          r2 r4 aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r
          r2 des2~\pp
          des2.~ des8 r8
          aes16\mf( g f g \repeat unfold 2 { aes g f g } aes8) r
        }
      }
      R1
    }
    %% novo material
    r2 \times 4/5 {bes'16->\mf( a g f e~} e8) r
    \repeat unfold 5 {
      \repeat unfold 2 {
        \times 4/5 {bes'16->( a g f e~} e8) r
      }
    }
    \times 4/5 {bes16->( a g f e~} e8)) r8 r2
    R1*5
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
    d2.~ d8) r8
    d4~-> \times 2/3 {d8 d4->~} \times 2/3 {d4 d8~->} d4
    aes'2..( \times 2/3 {g16 f bes}
    g1~
    g4) r2.
    R1
    r8 g4\f( fis4) r8 \times 2/3 {fis8-.-> fis-.-> fis-.->}
    c'4( b2\trill) r4
    b,1\energico
    d2( f
    cis a)
    ges'1
    r4 f2.~
    f4. r8 \times 2/3 {f4-.-- f-.-- f-.--}
    f4-- f-- e-- bes~
    bes1~
    bes4~ \times 2/3 {bes4 \acciaccatura c8 b8~} b2~
    b8 f32( d) g16~-> g2.:64
    r fis,4~\mp
    fis r2.
    r fis4
    r fis''2.~\f
    fis4. r8 \times 2/3 {fis4 fis fis}
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

    R1*7/8
    r2 r8. a16\mf( b g
    dis' cis f8~ f4.~

    f2~ f4) r16 ees(
    g des aes'8~\ltrflat\startTrillSpan aes4~ aes4.~
    aes4\stopTrillSpan) r4.

    ees8-.-> r r4 ees8-.-> r4
    R1*7/8
    R1*5/8

    r2 f8-.-> r4
    R1*7/8
    r4 r4 g8-.->
    r8 f16->( ees) a8->( g) r4.
    r8 g16->( f) b8->( a) r4.

    R1*5/8
    \times 4/6 {f16( a g b dis cis} f4~ f4.~
    \times 4/7 {f8) dis-. cis-. b-. a-. g-. f-.} ees4.
    \times 4/6 {f16( a g b dis cis)} f8->( ees aes8~
    aes2) r4.
    f,8-.-> r r4 r8 f16->( ees) a8->(
    g) r r8 g16->( f) b8->(
    a) r r4 r4.
    R1*7/8
    r4 r8 g16->( f) b8->(
    a) r r8 a16->( g) cis8->( b) r
    r4 r8 f~( f4 ees8-.)
    aes4~ aes8 r g~(
    g4 f8-.) bes~ bes4.

  }
}

gestoDflauta = {
  \relative c''' {
    R1*5
    r2. b4~\f\>
    b\p r r2
    R1*3
    \acciaccatura f'8\f ees1(
    d2.~ d8) r
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