\version "2.12.0"

% caráter

dolce = ^\markup{\italic{docemente}}
deciso = ^\markup{\italic{decidido}}
dramatico = ^\markup{\italic{dramático}}
energico = ^\markup{\italic{enérgico}}
furioso = ^\markup{\italic{furioso}}
agitato = ^\markup{\italic{agitado}}
leggero = ^\markup{\italic{leve}}
obscuro = ^\markup{\italic{obscuro}}
marcatto = ^\markup{\italic{marcado}}
cantabile = ^\markup{\italic{cantável}}
giocoso = ^\markup{\italic{jocoso}}
sffz = #(make-dynamic-script "sffz")

% acidentes em trinados

trflat = ^\markup { \vcenter { \musicglyph #"scripts.trill" \smaller \flat }}
trsharp = ^\markup { \vcenter { \musicglyph #"scripts.trill" \smaller \sharp }}
trnatural = ^\markup { \vcenter { \musicglyph #"scripts.trill" \smaller \natural }}

ltrflat = ^\markup { \vcenter { \musicglyph #"scripts.TrillSpan" \smaller \flat }}
ltrsharp = ^\markup { \vcenter { \musicglyph #"scripts.TrillSpan" \smaller \sharp }}
ltrnatural = ^\markup { \vcenter { \musicglyph #"scripts.TrillSpan" \smaller \natural }}

tempoMark = #(define-music-function
       (parser location marktext padding) (string? number?)
     #{
       \once \override Score . RehearsalMark #'padding = $padding
       \once \override Score . RehearsalMark #'no-spacing-rods = ##t
       \mark \markup { \bold $marktext }
     #})

padraoglobal = {
  \override Staff.TimeSignature #'style = #'()
  \override Score.MetronomeMark #'padding = #4
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'padding = #0.5
}


%% global

global = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=120
  \time 4/4
  s1*11
  \mark \default
  s1*16
  \mark \default
  s1*20
  \bar "||"

%% gestoBglobal

  \padraoglobal
  \tempo 4=80
  \mark \default
  s1*19
  \mark \default
  s1*4
  \mark \default
  s1*8
  \mark \default
  s1*12
  \bar "||"

%% gestoCglobal

  \padraoglobal
  \tempo 8=240
  \mark \default
    \time 7/8
    s1*7/8
  \repeat unfold 17 {
    \time 5/8
    s1*5/8
    \time 7/8
    s1*7/8*2
  }
    \time 5/8
    s1*5/8
    \time 7/8
    s1*7/8
  \bar "||"

%% gestoDglobal

  \padraoglobal
  \tempo 4=120
  \mark \default
  \time 4/4
  s1*6
  \bar "||"
  \tempo 4=80
  \mark \default
  s1*10
  \mark \default
  s1*6
  \bar "|."
}

flauta = {
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

  %% gestoBflauta

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

    %% gestoCflauta
    #(override-auto-beam-setting '(end * * 7 8) 2 8 )
    #(override-auto-beam-setting '(end * * 7 8) 4 8 )
    #(override-auto-beam-setting '(end * * 5 8) 2 8 )

    R1*7/8
    R1*5/8
    R1*7/8
    r2 r8. b'16\mf\cantabile( g a
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

    %% gestoDflauta

    R1
    r4 \acciaccatura f,8\p ees2.~(
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

oboe = {
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
        \crescTextCresc
        b16\<( cis d e d cis b ais
        \repeat unfold 4 {
          b cis d e d cis b ais
        }
        b cis d e
        eis!8)\ff r r2.
        \crescHairpin
      }
    }
    R1
    %%
    \transpose b f' {
      \relative {
        r2 r4 b16\mf( cis d e d cis b ais b cis d e d cis b ais
        b8) r
        R1
        r2. d16( cis b ais
        b16 cis d e d cis b ais b cis d e
        d4~
        d1~
        %% 1/2 compasso
        d4) r4
      }
    }
    %% 1/2 compasso
    r4 \times 4/5 {bes'16->\mf( a g f e~}
    \repeat unfold 3 {
      \repeat unfold 2 {
        e8) r \times 4/5 {bes'16->( a g f e~}
      }
    }
    e8) r r2.
    r2 e2~\p\<
    e1~\!
    \times 4/5 {e4 d8( c) b8~\startTrillSpan\dolce} b2~
    b1~
    b8\stopTrillSpan r \times 2/3 {b4-.-- b-.-- b-.--} b4--
    b-- bes-- e,2~
    e1~\>

    %% gestoBoboe

    e\ppp
    R1*7
    r2 a8.\mf( ais32 b  c8 b16 a
    gis4.) r8 \times 2/3 {gis4-.-- gis-.-- gis-.--}
    d'4.~( \times 2/3 {d16 b e} cis4. \times 2/3 {b16 a d}
    a2..) r8
    r8 \times 2/3 {ges16[( aes bes]} \times 2/3 {c d e} f8~ f4~ f8 e~
    e8) r \times 2/3 {e4-.-- e-.-- e-.--} bes'4~(
    \times 4/5 {bes16 f c g' bes} a2.~
    a4 \times 4/7 {a8)\> g-- f-- ees-- des-- b-- a~--\p} a4~
    a1~
    a2. r4
    r8 f'4--\f e8( dis2)
    r8 b~\energico b2.~
    b4 d4.( des8 c4~
    c8) dis4( cis8 e4 g~
    g2) aes8->( g4.)
    aes8->( a4.)
    \times 4/7 {des,8\p\<\leggero( ees f g a b cis}
    \times 4/5 {b8)\mf\> a( g f ees} des2~\p
    des) ees4. \times 2/3 {f16( g bes}
    c!4--)\mf fis,2.~
    fis bes4->~\mp
    bes2 r16 \acciaccatura e,8 f8.~ f4~
    f4 r r8 f,4.~
    f2 r
    r r8 f4.~
    f2
    \transpose des d'' {
      \relative {
        \times 4/7 {des,8\p\<\leggero( ees f g a b cis}
        \times 4/5 {b8)\mf\> a( g f ees} des2~\p
        des) ees
      }
    }
    \dimTextDecresc {
      cis'4\mf\> g2.~
      g2~ g8. b16~ b4~
      b2
      r4 \times 2/3 {r8 g'4~}
      g2 r4 cis,~
      cis2 r4 r16 g8.~
      g2 r4 cis,~\pp
      cis1
    }
    R1

    %% gestoCoboe

    %% transposicao do fagote
    #(override-auto-beam-setting '(end * * 7 8) 2 8 )
    #(override-auto-beam-setting '(end * * 7 8) 4 8 )
    #(override-auto-beam-setting '(end * * 5 8) 2 8 )
    \transpose g f {
      \relative c'' {
        g8-.\mf\marcatto r a-. r b-.[ r cis-.]
        \repeat unfold 3 {
          g8-. r a-.[ r b-.]
          g-. r a-. r b-.[ r cis-.]
          g-. r a-. r b-.[ r cis-.]
        }
        g8-. r r4.
        R1*7/8
        g2~( g4.~

        g4~ g8 bes4~
        bes2~ bes8 cis4~
        cis4~ cis8) r r4.
        \repeat unfold 11 {
          g8-. r a-.[ r b-.]
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

    %% gestoDoboe

      R1*2
      r4 \acciaccatura bes,8\p a2 \acciaccatura c8 b!4~
      b2 r2
      R1
      r2. ais4~\f\>
      ais\p r r2
      R1
      r2 a8.\mf( ais32 b  c8 b16 a
      gis4.) r8 \times 2/3 {gis4-.-- gis-.-- gis-.--}
      d'2( cis)
      R1
      r8 \times 2/3 {ges16[( aes bes]} \times 2/3 {c d e} f8~ f4~ f8 e~
      e8) r \times 2/3 {e4-.-- e-.-- e-.--} bes'4~(
      bes a2.)
      R1*2
      r4 d,16\mf\agitato( e f g f e d cis d e f g
      f e d cis d8) r r4 \times 4/5 {b16( a g f ees}
      \repeat unfold 4 {\times 4/5 {b'16[ a g f ees]}}
      \times 4/5 {b'16 a g f ees)} r2.
      R1
    }
  }
}

clarineteembb = {
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

    %% gestoBclarineteembb

    R1*3
    d''4.\mp \acciaccatura bes8 d4. \acciaccatura aes8 c4~
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
    bes8->( b4.) \times 4/5 {ees,8\p\<\leggero( f g a ces}
    \times 4/7 {des8)\mf\> ees( des ces a g f} ees4\p f~
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
        \times 4/5 {ees,8\p\<\leggero( f g a ces}
        \times 4/7 {des8)\mf\> ees( des ces a g f} ees4\p f~
        f2) g(
        bes) fes''4\mf( bes,~
        bes1)
      }
    }
    \dimTextDecresc {
      r16 cis'''8.~\mf\> cis2 r4
      g2. r8. cis,16~
      cis2. r4
      \times 2/3 {r8 g4~} g2 r4
      r8 cis,~\pp cis2.
      R1
    }

    %% gestoCclarineteembb

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
        ees16~\mf\cantabile( g f8~ f4.~
        f2~ f8) \acciaccatura g8 d4
        g16( des) aes8~ aes4~ aes4.
      }
      g8-. r a-.[ r b-.]
      g-. r a-. r b-.[ r cis-.]
      g-. r a-. r b-.[ r cis-.]

      g8-. r a-.[ r b-.]
      g-. r a-. r b-.[ r cis-.]
      g-. r a-. r b-.[ r cis-.]

      g8-. r r4.

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
      b4. r8 \appoggiatura {a16 [ cis]} b4-- b8~--
      b b~-- b b-- b( ais) dis,~
      dis4~ dis4.
      R1*7/8*2
      g'4~( g16 eis16 dis cis b a
      g4) g-- g-- g8
      g( fis) c4~:64 c4:64 \times 2/3 {a'16( b cis}
      \times 2/3 {dis f g} \times 2/3 {a b cis} gis4.~
      gis4 a8 gis~ gis a4
      gis8 d~ d4) \times 2/3 {bes16( c d} \times 2/3 {e ges aes} \times 2/3 {bes c d} aes4~ aes4.
      bes8 a~ a bes~ bes a dis,~
      dis4) r bes'8( e,4~
      e) r8 b'( f~
      f4) r8 c'\deciso fis, cis' g d' gis, dis'4~ dis4.~
      dis4~ dis4.~
      dis2~ dis4.

      %% gestoDclarineteembb

      R1*3
      eis,4.\p\<\cantabile( fis g,4~
      g8) eis'4( fis g,) eis'8(
      fis\f g,) \times 2/3 { eis'8( fis g,)} eis'16( fis g,) eis'32( fis) \acciaccatura g,8 aes4~\f\>
      aes\p r r2
      R1*4
      r4 fis,2~\mf\obscuro ( eis4~
      eis8) r \times 2/3 {eis4-.-- eis-.-- eis-.--} cis'4~(
      cis2 bis)
      r d''~(
      d8 cis4) r8 \times 2/3 {cis4-.-- cis-.-- cis-.--}
      g'2.( fis4~
      fis1)
      R1
      \transpose b cis {
        \relative {
          \times 4/5 {b''16( a g f ees}
          \repeat unfold 4 {\times 4/5 {b'16[ a g f ees]}}
          \times 4/5 {b'16[ a g f ees])} r2
        }
      }
      R1
    }
  }
}

trompaemf = {
  \relative c' {
    R1*4/4*10
    r4 b2.~\mp\<(
    b4\f d2 f4~
    f cis2 a4~
    a fis'2.~
    fis4) r2.
    R1*2
    r2. ges4\f~
    ges8 r \times 2/3 {ges4-.-- ges-.-- ges-.--} ges4--
    ges-- f-- b,2~
    b r
    aes'4. r8 \times 2/3 {aes4-.-- aes-.-- aes-.--}
    aes4-- aes-- g-- cis,~
    cis2. r4
    \crescTextCresc
    r2. d4-.\mf\<
    \repeat unfold 7 {d4-.--} d4\ff~(
    d1
    f2 aes
    e1)
    r2 a~(
    a~ c
    ees b~
    b4) r fis'2~
    fis8 r \times 2/3 {fis4-.-- fis-.-- fis-.--} fis4--
    fis-- f-- b,2
    R1*2
    r2 fis2~\p
    fis8 r \times 2/3 {fis4-.-- fis-.-- fis-.--} fis4--
    fis-- f-- b,2
    R1*6

    %% gestoBtrompaemf

    R1*8
    a'4\stopped\mf \times 2/3 {a8-.\stopped a-.\stopped a-.\stopped} a8-.\stopped a-.\stopped gis-.\stopped d~\stopped
    d1\stopped
    R1*2
    \transpose a g' {
      a4\stopped \times 2/3 {a8-.\stopped a-.\stopped a-.\stopped} a8-.\stopped a-.\stopped gis-.\stopped d~\stopped
      d1\stopped
    }
    R1
    r2 d\open
    cis4. r8 \times 2/3 {cis4 cis cis}
    g'2 fis
    r8 d'4--\f des8( c2)
    r8 fis,~\energico fis2.~
    fis4 a4.( aes8 g4~
    g8) ais4( gis8 b4 d~
    d c) b8->( c4.)
    b8->( ais4.) \times 2/3 {fis4\p\<\leggero( gis8~} \times 2/3 {gis8 ais4}
    c8)\mf\> ais( gis fis~ fis4\p e~
    e2) fis(
    a1)
    b'4->( f2.~
    f1)
    r4 r8 a,!~\mp a2~
    a2. r4
    r4 r8 a~ a2~
    a2
    %% transposição
    \transpose fis g, {
      \relative {
        \times 2/3 {fis4\p\<\leggero( gis8~} \times 2/3 {gis8 ais4}
        c8)\mf\> ais( gis fis~ fis4\p e~
        e2) fis(
        a1)
        r16 b'8-> f16~ f2.~
        f4 r2.
      }
    }
    %%
    \times 2/3 {r4 aes8~\mp} aes2.~
    aes1~
    aes4 r2.
    R1*2

    %% gestoCtrompaemf
    %% transposicao do fagote
    #(override-auto-beam-setting '(end * * 7 8) 2 8 )
    #(override-auto-beam-setting '(end * * 7 8) 4 8 )
    #(override-auto-beam-setting '(end * * 5 8) 2 8 )
    \relative c'' {
      g8-.\mf\marcatto r a-. r b-.[ r cis-.]
      \repeat unfold 16 {
        g-. r a-.[ r b-.]
        g-. r a-. r b-.[ r cis-.]
        g-. r a-. r b-.[ r cis-.]
      }
      g-. r a-.[ r b-.]
      g-. r a-. r b-.[ r cis-.]
      g-. r r f'\deciso b, fis' c
      g' des aes'4.~
      aes2~ aes4.

      %% gestoDtrompaemf

      R1*6
      b,1~\mp\<\cantabile(
      b2 a\mf~
      a8) r \times 2/3 {a4-.-- a-.-- a-.--} dis4~(
      dis2~ dis8 cis4.~
      cis1~
      cis4) r r2
      R1*4
      r8 d,-.\mf\giocoso r e-. r fis-. r gis-.
      d-. r e-. r fis-. r gis-. d-.
      r e-. r fis-. d-. r e-. r
      fis-. r gis-. d-. r e-. r fis-.
      r gis-. d-. r r4 d8-. r
      d-. r r d-. r r d-. r
    }
  }
}

fagote = {
  \clef bass
  \relative c {
    d8\mf\agitato cis16->( d e8) d16->( e f8) e16-.( f g8) f16->( g
    \repeat unfold 4 { aes g f g }
    aes8) r r2.
    aes16( g f g \repeat unfold 3 { aes g f g }
    aes8) r r2.
    aes16( g f g \repeat unfold 3 { aes g f g }
    aes8) r r2.
    R1
    \clef tenor
    d16( e f g f e d cis d e f g f e d cis
    d e f e d cis b cis d e d cis b ais b cis
    d cis b ais gis ais b cis b ais gis fisis gis ais b ais
    g!8) r r2.
    R1
    \clef bass
    r2
    aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    \repeat unfold 3 {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    }
    \transpose aes ces' {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    }
    \clef tenor
    \transpose aes d' {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r r4
    }
    \transpose aes f' {
      aes16( g f g \repeat unfold 3 { aes g f g } aes8) r
    }
    \crescTextCresc
    aes'16\<( g f g \repeat unfold 12 { aes g f g }
    aes8)\ff r r2.
    \crescHairpin
    R1
    \clef bass
    \transpose aes f {
      r2 r4 aes16\mf( g f g \repeat unfold 3 { aes g f g } aes8) r
    }
    R1
    %%
    \transpose aes f {
      r2. aes16 g f g(
      aes16 g f g \repeat unfold 2 { aes g f g } aes4~
      aes1~
      aes4) r2} b,,4~\mf\energico
    b4. r8 \times 2/3 {b4-.-- b-.-- b-.--}
    b4-- b-- bes-- e,~
    e2 r
    R1*8

    %% gestoBfagote

    R1*5
    \clef tenor
    r4 des''2.~\mp(
    des2 c4.) r8
    \times 2/3 {c4-.-- c-.-- c-.--} ges'2~
    ges1~
    ges8 \times 2/3 {e16( d aes'} f2.)
    \clef bass
    r4 b,,,2\mf\obscuro( bes4~
    bes8) r \times 2/3 {bes4-.-- bes-.-- bes-.--} e4~(
    e dis2.)
    \clef tenor
    r2 ges''(
    f4.) r8 \times 2/3 {f4-.-- f-.-- f-.--}
    b1(
    ais~
    ais1)
    r8 e4--\f ees8( d2)
    \clef bass
    r8 b,,8~\energico b2.~
    b4 d4.( des8 c4~
    c8) dis4( cis8 e4 g~
    g f) e8->( f4.)
    e8->( dis4.) b8\p\<\leggero( cis dis eis
    \times 2/3 {fisis4)\mf\> eis8~(} \times 2/3 {eis8 dis4} cis4\p b~
    b2) cis(
    c!1)
    c~
    c
    \times 2/3 {r4 dis'8(} f2.
    dis1)
    \times 2/3 {r4 dis8(} f2.
    dis2)
    \transpose b c {
      \relative {
        b,8\p\<\leggero( cis dis eis
        \times 2/3 {fisis4)\mf\> eis8~(} \times 2/3 {eis8 dis4} cis4\p b~
        b2) cis(
        c!4) c2.
        c1~
        c~
        c2 r
      }
    }
    R1*4

    %% gestoCfagote

    #(override-auto-beam-setting '(end * * 7 8) 2 8 )
    #(override-auto-beam-setting '(end * * 7 8) 4 8 )
    #(override-auto-beam-setting '(end * * 5 8) 2 8 )
    \clef bass
    g,8-.\mf\marcatto r a-. r b-.[ r cis-.]
    \repeat unfold 17 {
      g-. r a-.[ r b-.]
      g-. r a-. r b-.[ r cis-.]
      g-. r a-. r b-.[ r cis-.]
    }
    bes\deciso f' b, ges' c,
    g2~\< g4.~

    %% fagote
    \clef bass
    g1\f~
    g8 r \times 2/3 {g4-.-- g-.-- g-.--} g4--
    g-- fis-- c2~
    c1~\>
    c1\ppp
    r2.
    \clef tenor
    f''4~\f\>
    f\p r r2
    R1*3
    \clef bass
    r4 b,,,2\mf\obscuro( bes4~
    bes8) r \times 2/3 {bes4-.-- bes-.-- bes-.--} e4~--
    e dis2.
    r2
    \clef tenor
    ges''(
    f4.) r8 \times 2/3 {f4-.-- f-.-- f-.--}
    b1
    ais
    r2
    f16\mf\agitato( e d e
    \repeat unfold 3 {f e d e}
    f8) r r4
    r2 r4
    \clef bass
    \times 4/5 {b,16( a g f ees}
    \repeat unfold 2 {\times 4/5 {b'16[ a g f ees]}}
    \times 4/5 {b'16 a g f ees)} r4
    r2. g,8-. r
  }
}
