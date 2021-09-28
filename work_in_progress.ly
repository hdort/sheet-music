\header {
  title = "Lobe den Herrn, meine Seele (Kanon)"
}

melody =  \relative c' {
\time 6/8

\key f \major
    c8 f g a g f |
    g4. d \breathe |
    c8 e f g a bes |
    bes4. a \breathe |

    c,8 f g a g f |
    g4. d \breathe |
    c8 e f g f e |
    f4. f\fermata \breathe | \break

    c' c |
    c8 bes a bes4. \breathe |
    c8 g a bes c d |
    d4. c \breathe |

    c c |
    c8 bes a bes4. \breathe |
    c8 g a bes a g |
    f4. f \fermata \bar "|."
  }


basspiano = \relative c, {
\clef bass
\time 6/8
\key f \major

  <<f2. a c>>

}

text = \lyricmode {
 \set stanza = "1." Lo -- be den Herrn, mei -- ne 
 See -- le,
 und sei -- nen hei -- li -- gen
 Na -- men.
 Was er dir Gu -- tes ge --
 tan hat, See -- le ver -- 
 giss es nicht,
 A -- men.

 \set stanza = "2." Lo -- be,
 lo -- be den Herrn,
 lo -- be den Herrn, mei -- ne 
 See -- le
 
 Lo -- be,
 lo -- be den Herrn,
 lo -- be den Herrn, mei -- ne 
 See -- le
 
 }

harmonies = \chords {
  f2.
  g:m
  c:7
  bes4.:/f
  f
  
  f2.
  g:m
  c:7
  bes4.
  f

  f2.
  g:m
  c:7
  bes4.:/f
  f
  
  f2.
  g:m
  c:7
  bes4.
  f
}

\score {
<<
\harmonies
\new Voice = "one" {\melody}
\new Lyrics \lyricsto "one" \text
\new Voice = "two" {\basspiano}
>>

  \layout {
  indent = 0
  }
  
  \midi {
    \tempo 4 = 72
  }
}