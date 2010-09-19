%% trompaemf.ly
\version "2.12.0"
\include "newcommand.ly"

gestoAtrompaemf = {
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
  }
}

gestoBtrompaemf = {
  \relative c'' {
    R1*8
    a4\stopped\mf \times 2/3 {a8-.\stopped a-.\stopped a-.\stopped} a8-.\stopped a-.\stopped gis-.\stopped d~\stopped
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
    R1
    r8 fis~\energico( fis2.~
    fis4 a4. aes8 g4~
    g8 ais4 gis8 b4 d~
    d c) b8->( c4.
    b8-> ais4.) \times 2/3 {fis4\p\<\leggero( gis8~} \times 2/3 {gis8 ais4}
    c8\mf\> ais gis fis~ fis4\p e~
    e2) fis(
    a1)
    \clef treble
    b'4 f2.~
    f1
    \clef bass
    r4 r8 a,?~\mp a2~
    a2. r4
    r4 r8 a~ a2~
    a2
    %% transposição
    \transpose fis g, {
      \relative {
        \times 2/3 {fis4\p\<\leggero( gis8~} \times 2/3 {gis8 ais4}
        c8\mf\> ais gis fis~ fis4\p e~
        e2) fis(
        a1)
       \clef treble
        b'4 f2.~
        f4 r2.
      }
    }
    %%
    r4 aes2.~\mp
    aes1~
    aes4 r2.
    R1*2
  }
}

gestoCtrompaemf = {
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
  }
}

gestoDtrompaemf = {
  \relative c'' {
    R1*6
    b1~\mp\<\cantabile(
    b2 a\mf~
    a8) r \times 2/3 {a4 a a} dis4~(
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
    R1
    g32\f g r16 r8 r4 g-. r
  }
}