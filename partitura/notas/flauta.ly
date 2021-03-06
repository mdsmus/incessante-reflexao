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
    \times 4/6 {a16\<( cis e g16 bes d} fis2.~\f\ltrsharp\startTrillSpan
    fis4.)\stopTrillSpan r8 \times 2/3 {fis4-.-- fis-.-- fis-.--}
    fis4-- fis-- f-- b,~
    \dimTextDecresc {
      b1~\>
      b2 c~
      c4 r a2~
      a4 r ees2~
      ees4 r8 a,~ a2~
      a4 r r8 ees4.~\pp
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
    r2 r8. b16\mf\cantabile( g a
    ees'16 des) f8~ f4.~
    f2~ f4.~
    f8 \acciaccatura ees8 aes~ aes4~ aes4.~
    aes4 r4.
    R1*7/8
    r2 r8 f4~(
    f~ f4.~
    f2~ f8 aes4~
    aes2~ aes4.
    b4~ b4.~
    b2) r4 r8
    r8 \times 2/3 {g,16( f a} \times 2/3 {b ees des} f8~ f4.~
    f4~ f4.~
    f4~ f8 aes~ aes4.~
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
    ges4. r8 \appoggiatura {f16[ aes]} ges4-- ges8~--
    ges ges~-- ges ges-- ges( f) b,~
    b4~ b4.
    R1*7/8*2
    r4 r8 ais'4~(
    \times 4/5 {c16( d e fis gis} ais4) ais-- ais8~--
    ais ais-- ais( a) dis,4.:64~
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
  \relative c'' {
    R1
    r4 \acciaccatura f8\p ees2.~(
    ees2~ \times 4/5 {ees16) g( des f c} bes4~
    bes2) r2
    R1
    r2. b'4~\f\>
    b\p r r2
    R1*3
    \acciaccatura f'8\f ees1(
    d2.~ d8) r
    d4~-> \times 2/3 {d8 d4->~} \times 2/3 {d4 d8~->} d4
    aes'1(
    g)
    R1*2
    d,16\mf\agitato( e f g f e d cis d e f g f e d cis
    d8) r \times 4/5 {b'16( a g f ees}
    \repeat unfold 5 {\times 4/5 {b'16[ a g f ees]}}
    \times 4/5 {b'16 a g f ees)}
    R1*2
  }
}
