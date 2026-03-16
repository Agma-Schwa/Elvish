#import "preamble.typ" : *
#import "polylux/src/polylux.typ" : * // Latest release doesn't have in-subslide() yet...
#import "@preview/cetz:0.4.2"
#show : slides
#show : preamble

// TODO: Background, styling, etc.
#let centerslide(x) = slide[
    #set align(center + horizon)
    #x
]

#let ex(x) = {
    set align(center + horizon)
    set par(justify: false)
    set text(size: 32pt)
    x
}

#let ex-ipa(x) = {
    set align(center + horizon)
    set par(justify: false, leading: .75em)
    set text(size: 26pt)
    [/#ipa(x)/]
}

#let section(x) = centerslide[
    #set text(size: 50pt)
    #x
]

#let gloss-slide(x, spacing: none) = slide[
  #set align(horizon)
  #gloss(x, spacing-override: spacing)
]

// hNon(slide, x): apply hN() to 'x' only on slide 'slide'.
#let h1on(slide, x) = context if (in-subslide(slide)) { h1(x) } else { x }
#let h2on(slide, x) = context if (in-subslide(slide)) { h2(x) } else { x }
#let h3on(slide, x) = context if (in-subslide(slide)) { h3(x) } else { x }
#let h4on(slide, x) = context if (in-subslide(slide)) { h4(x) } else { x }

#section[Elvish]
#slide[
== Consonants
#rowtable(
    hlineat(1),
    vlineat(1),
    [     & Labial & Dental & Alveolar & Palatal & Velar & Uvular & Glottal],
    [Nasal     & m      &        & n        &         & ŋ],
    [Stop      & p b    &        & t d      &         & k g],
    [Fricative & f v    & θ ð    & s ɬ      &         &       & χ      & h],
    [Trill     &        &        & r̥ r],
    [Approximant &      &        & l        & j       & ʍ w]
)
]

#slide[
    // At this font size, the tie bars are somehow too low...
    #show "ʄ͡ɠ": [ʄ#box(move(dy: -.1em)[\u{0361}])ɠ]
    #ex[_Ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́tųn’ą́·_]
    #box(height: 0pt, uncover(
        2,
        {
            v(3em)
            ex-ipa[Ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́tųn’ą́·]
        }
    ))
]

#section[Phonology]

#slide[
== Consonants
#rowtable(
    hlineat(1),
    vlineat(1),
    [            & Alveolar         & Palato-Velar        & Uvulo-Glottal ],
    [ Nasal      &                  &                     & ɴˀ ⟨n⟩        ],
    [ Stop       & d̻ t̻    ⟨d t⟩     & c͡k ɟ͡g      ⟨c g⟩    & ʔ  ⟨’⟩        ],
    [ Fricative  & s̻ s̻ʰ   ⟨s sh⟩    & ç͡x ç͡xʰ     ⟨ch x⟩   &               ],
    [ Affricate  & t̻͡s̻ t̻͡s̻ʰ ⟨ts tsh⟩  & c͡k͡ç͡x c͡k͡ç͡xʰ ⟨tch tx⟩ &               ],
    [ Trill      &                  & r̠͡ʀ̟         ⟨r⟩      &               ],
)

#v(1em)
- #w[r] is a coarticulated palatal-velar trill (yes, Elves can do that)
]

#slide[
== Vowels
#show "↓": uncover("2-", "↓")
#show table.cell.where(x: 3): it => uncover("3-", it)
#show table.cell.where(y: 3): it => uncover("3-", it)
#rowtable(
    hlineat(1),
    vlineat(1),
    [              & Front        & Back         & Click  ],
    [ Close        & i↓ ɪ↓ ⟨i í⟩  & ɯ↓ ɯ̽↓ ⟨u ú⟩  &        ],
    [ Open         & a↓ ɐ↓ ⟨a á⟩  &              &        ],
    [ Palato-Velar &              &              & ᵏǂ ⟨o⟩ ]
)

#v(1em)
#item-by-item[
- Tense/lax distinction. Lax vowels are marked with an acute.
- All vowels are ingressive.
- Ingressive sounds are considered vowels. Thus, the palatal-velar click is a vowel.
- The ogonek signifies the ‘velar quality’, e.g. #w[ų́].
]
]

#section[Nouns]

#slide[
== Work Order
#set enum(spacing: .7em)
#item-by-item[
+ The Chimney Man
+ Coal
+ Master Carbonator
+ Collier
+ Head Miner
+ Canary
+ Human Coal Miners
+ Human Adults
+ Animals
+ Human Children
+ Everything Else
]
]

#slide(ex[#w[rǫngi] ‘cloaks’])

#slide[
== Work Order: Example
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)
]

#slide[
== Work Order: Example
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun §ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)

- #h1(i[ną́nrų́]) ‘Elf’ has work order 6, as it refers to Elves that are canaries.
]

#slide[
== Work Order: Example
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun §ną́nrų́ chír §§dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)

- #h1(i[ną́nrų́]) ‘Elf’ has work order 6, as it refers to Elves that are canaries.
- Thus, it precedes #h2(i[dą́chą]) ‘table’, which has work order 11.
]

#slide[
== Work Order Markers
#rowtable(
    align: (right, left, left),
    hlineat(1),
    vlineat(1),
    vlineat(2),
    [±  & Raising Affix & Lowering Affix],
    [1  & #w[natá]      & #w[tchichą́]   ],
    [2  & #w[cį́chą]     & #w[tsąn’o]    ],
    [3  & #w[ų́ncho]     & #w[tchąn’ų́]   ],
    [4  & #w[tchixi]    & #w[cáru]      ],
    [5  & #w[txų́nsha]   & #w[shįndų]    ],
    [6  & #w[xúnną]     & #w[xúnrá]     ],
    [7  & #w[txadą́]     & #w[gįncų́]     ],
    [8  & #w[xį́ntí]     & #w[shatú]     ],
    [9  & #w[shį́tǫ]     & #w[xǫnchų]    ],
    [10 & #w[shindí]    & #w[oxa]       ],
)
]

#centerslide[
#i[dį́gá] ‘cane’ (#s[w11])
#uncover(2)[
    #block(spacing: 1cm)[$arrow.b$]
    #i[xúnną dį́gá] ‘cane’ (#s[w6])
]
]

#slide[
== Work Order Markers
#item-by-item[
- Raising above the maximum / below the minimum is ungrammatical.
- ‘Lowest’ work order is 11; ‘highest’ is 1.
- E.g. 5 can be ‘raised’ to 4 or ‘lowered’ to 6.
- Lowering can be derogatory and raising a form of praise.
- Combine with adjective/number to refer to a noun.

  E.g. #i[txų́nsha irtǫtǫtǫn] ‘seven of the thing with work order 6’.
]
]

#slide[
== Noun Markers
//#set list(spacing: 1em)
#item-by-item[
- #w[tchą́] ‘performs work’ (#s[wrk] ‘working’).

  Marks the agent of a verb that denotes an action that performs work.

- #w[dun] ‘does not perform work’ (#s[nwk] ‘not working’).

  Marks the agent of a verb that denotes a state or an action that is _not_ considered to perform (worthwile) work.

- #w[ų́rų́] ‘has work performed on it’ (#s[wkd] ‘[being] worked [on]’).

  Marks the theme of a verb whose agent assumes the #s[wrk] form.

- #w[ų́xį́] ‘is being manipulated in some fashion’ (#s[man] ‘manipulated’).

  Marks the theme of a verb whose agent assumes the #s[nwk] form.

- Working verbs (#s[wrk]/#s[wkd]) vs lazy verbs (#s[nwk]/#s[man]).
]
]

#slide[
== Noun Markers Cont’d
- #w[ta-] (#s[poss]): Possessive form.

  E.g. #w[ta-ną́nrų́] ‘of the Elves’.
]

#slide[
== Compounds and Derivation
#item-by-item[
- Modifier is placed _second_.

 #i[cįxį́] ‘hall’ + #i[tųn’ą́] ‘stone’ $arrow$  #i[cįxį́tųn’ą́] ‘stone hall’.

 #i[są́n] ‘being’ + #i[tą́] ‘chimney’ $arrow$ #i[Są́ntą́] ‘The Chimney Man’.

- Agent noun affix #i[-rų́]:

  #i[sǫtą] ‘to learn’ $arrow$ #i[sǫtąrų́] ‘teacher’.

  #i[ną́n] ‘Coal mine’ $arrow$ #i[ną́nrų́] ‘Coal miner’.

- Vowel swapping converts noun $arrows.lr$ verb (disyllabic words only).

  #i[ną́nrų́] ‘Coal miner’ $arrows.lr$ #i[nų́nrą́] ‘to mine Coal’.

  #i[shų́ną] ‘retirement’ $arrows.lr$ #i[shąnų́] ‘to retire’.
]
]

#section[Tense]

#slide[
== Tense
- Follows the hibernation cycle of The Chimney Man.
- Five _syntactic tenses_.
#v(.2em)

// Horrible hack to prevent the superscript tie bar in the last cell of the
// first row from colliding with the horizontal line above it. We also increase
// thw row gutter so all the rows get some extra space and then remove the same
// space from the header row.
#show table.cell.where(y: 0): it => { it; v(-.2em) }
#show table.cell.where(y: 1): it => { v(.2em); it }
#show table.cell: it => { uncover(str(it.y + 1) + "-", it) }

#uncover("2-", rowtable(
    hlineat(1),
    ..vlinesat(1, 2, 3),
    row-gutter: .3em,
    [ *Phase* & *Gloss* & *Time of the Year* & *Particle* ],
    [ Awake & #s[awk] & Christmas Eve & #w[sąn]],
    [ REM Sleep & #s[rem] & \~29 December -- 3 May & #w[nun’a]],
    [ Non-REM Phase 1 & #s[nr1] & \~4 May -- 25 August & #w[txí]],
    [ Non-REM Phase 2 & #s[nr2] & \~26 August -- 9 November & #w[ronu]],
    [ Non-REM Phase 3 & #s[nr3] & \~10 November -- 23 December & #w[ronų]],
))
]

#slide[
== Tense: Syntactic vs Semantic
#item-by-item[
- In a clause spoken during the REM Phase, the #s[rem] Tense acts as the _Present Tense_.
- Terminology: the Present Tense is the _semantic tense_ of such a clause.
- Equivalently: the _syntactic Present Tense_ of the clause is the #s[rem] Tense.
- Syntactic tense _before_ the syntactic Present Tense is the Past Tense.
- Syntactic tense _after_ the syntactic Present Tense is the Future Tense.
]
]

#slide[
== Tense Cycle
#set align(center + horizon)
#set text(hyphenate: false)
#cetz.canvas({
    import cetz.draw: *

    circle((0, 0), name: "circle", radius: 4, stroke: 0pt)
    content((name: "circle", anchor: 90deg), s[awk])
    content((name: "circle", anchor: 18deg), s[rem])
    content((name: "circle", anchor: 306deg), s[nr1])
    content((name: "circle", anchor: 234deg), s[nr2])
    content((name: "circle", anchor: 162deg), s[nr3])


    for (i, (start, delta)) in (
        (5deg, 15deg),
        (0deg, 10deg),
        (5deg, 20deg),
        (0deg, 10deg),
        (0deg, 15deg),
    ).enumerate() {
        let a(rad, colour, mark) =  arc(
            (0, 0),
            radius: rad,
            start: 90deg - 10deg - start + (-72deg * i),
            delta: -72deg + 10deg + delta,
            stroke: colour,
            anchor: "origin",
            mark: mark
        )

        a(4.1, blue, (end: "straight"))
        a(3.7, red, (start: "straight"))
    }

    content((6, 1), box(width: 0pt, height: 0pt)[
        #text(fill: blue, box(width: 10em)[$square.filled$ Future])
        #v(.5em)
        #text(fill: red, box(width: 10em)[$square.filled$ Past])
    ])
})
]

#slide[
== Tense Cycle: Example
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan §nun’a gųshą dun ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf #h1[crouches] on the table.
`)
#v(1em)
Time of Utterance: REM Sleep Phase \
Syntactic Tense: REM Sleep Tense \
Semantic Tense: Present Tense \
]

#slide[
== Tense Cycle: Example
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan §nun’a gųshą dun ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf #h1[crouched] on the table.
`)
#v(1em)
Time of Utterance: Non-REM Phase 1 \
Syntactic Tense: REM Sleep Tense \
Semantic Tense: Past Tense \
]

#slide[
== Tense Cycle: Example
#gloss(`
Gan txí gųshą dun ną́nrų́ chír dą́chą.
gan §txí gųshą dun ną́nrų́ chír dą́chą
{obs} {nr1} crouch {nwk} Elf on table
The Elf #h1[crouches] on the table.
`)
#v(1em)
Time of Utterance: Non-REM Phase 1 \
Syntactic Tense: Non-REM Phase 1 Tense \
Semantic Tense: Present Tense \
]

#slide[
== Tense Cycle: Example
#gloss(`
Gan txí gųshą dun ną́nrų́ chír dą́chą.
gan §txí gųshą dun ną́nrų́ chír dą́chą
{obs} {nr1} crouch {nwk} Elf on table
The Elf #h1[will crouch] on the table.
`)
#v(1em)
Time of Utterance: REM Sleep Phase \
Syntactic Tense: Non-REM Phase 1 Tense \
Semantic Tense: Future Tense \
]

#slide[
== Tense: Written Language
#item-by-item[
- Choice of tense is arbitrary; usually date of writing.
- ‘This Elf declares that ...’
- E.g. In a text written by a Collier during the #h1[REM Sleep Phase]:

  #gloss(`
    Gan nun’a tú tshų́’á tchą́ chírnu rǫngi ...
    gan §nun’a tú tshų́’á tchą́ chírnu rǫngi
    {obs} {rem} {atel} declare {wrk} this cloak
    This Elf declares that ...
`)

- No fixed syntactic tense in oral narration.
- In reported speech, the syntactic tense is relative to the time of paraphrase.
]
]

// Slide duplicated from above.
#slide[
== Tense#uncover(2)[: Temporal Void]
// Horrible hack to prevent the superscript tie bar in the last cell of the
// first row from colliding with the horizontal line above it. We also increase
// thw row gutter so all the rows get some extra space and then remove the same
// space from the header row.
#show table.cell.where(y: 0): it => { it; v(-.2em) }
#show table.cell.where(y: 1): it => { v(.2em); it }
#show table.cell.where(y: 2): it => h1(it)
#rowtable(
    hlineat(1),
    ..vlinesat(1, 2, 3),
    row-gutter: .3em,
    [ *Phase* & *Gloss* & *Time of the Year* & *Particle* ],
    [ Awake & #s[awk] & Christmas Eve & #w[sąn]],
    [
          #alternatives[???][Temporal Void]
        & #alternatives[???][/]
        & \~25--28 December
        & #alternatives[???][/]
    ],
    [ REM Sleep & #s[rem] & \~29 December -- 3 May & #w[nun’a]],
    [ Non-REM Phase 1 & #s[nr1] & \~4 May -- 25 August & #w[txí]],
    [ Non-REM Phase 2 & #s[nr2] & \~26 August -- 9 November & #w[ronu]],
    [ Non-REM Phase 3 & #s[nr3] & \~10 November -- 23 December & #w[ronų]],
)

#uncover(2)[
- All tense marking is dropped.
- Elves prefer not to speak or write during this time.
- Upper classes switch to communicating in Santaa.
]
]

#section[Adjectives]
#slide[
== Adjectives#uncover("2-")[: SAPs]
#item-by-item[
- Precede the noun they qualify.
- _Standalone adjective phrase_ (SAP).
- SAPs largely replace pronouns.
- SAP = _invoice particle_ + adjective.
- E.g. #i[txų́dí txǫncų] ‘Fat Txǫncų’.

  $arrow$ Possible SAP: #i[sį́ txų́dí] ‘the fat one’.
]
]

#slide[
== SAPs: Invoice
#item-by-item[
- Noun-clause agreement.
- Each noun is assigned a syntactic tense based on its initial phoneme.
- And each syntactic tense is assigned a value $v in {1, 2, 3, 4, 5}$:
  #rowtable(
    align: (left, center, left),
    hlineat(1),
    ..vlinesat(1, 2),
    [Tense     & $v$ & Phonemes],
    [Awake     & $1$ & _d, tx_, _x_, _ts_, _í_],
    [REM       & $2$ & _n_, _t_, _s_, _ch_, _o_],
    [Non-REM 1 & $3$ & _sh_, _’_, _r_, _u_],
    [Non-REM 2 & $4$ & _c_, _g_, _tsh_, _tch_ ],
    [Non-REM 3 & $5$ & (all vowels other than _u_, _í_, _o_)],
  )
]
]

#slide[
== SAPs: Invoice Particles
#item-by-item[
- Five invoice particles with a value $v in {-2, -1, 0, 1, 2}$:
  #rowtable(
    align: (right, left),
    hlineat(1),
    vlineat(1),
    [$v$ & Particle],
    [$-2$ & #i[cų́r]],
    [$-1$ & #i[so]],
    [$ 0$ & #i[tų́r]],
    [$ 1$ & #i[sį́]],
    [$ 2$ & #i[árxį́]],
  )
- Invoice particle adjusts the tense of the noun.
]
]

#slide[
== SAPs: Determining the Invoice Particle
#item-by-item[
- Compute the tense difference $d$ between the noun and the clause:
  $ d := T(C) - T(N) $
  where $T(C)$ is the syntactic tense of the clause and $T(N)$ the tense of the noun.
- The value $v$ of the invoice particle is then given by: $
    v := cases(
        d"," & "if" |d| < 3,
        -"sgn"(d) dot (5 - |d|)"," &"otherwise."
    )
  $
]
]

#slide[
== SAPs: Example 1
Given #i[txų́dí txǫncų] in a sentence in the REM Sleep Tense: $
    d = T(#mtext[#s[rem]]) - T(#mtext[_txǫncų_]) = 2 - 1 = 1 \
$

The first case is taken, yielding $
    v = d = 1
$

and thus, the appropriate SAP is #i[sį́ txų́dí].
]

#slide[
== SAPs: Example 2
Alternatively, in a sentence in the Non-REM Phase 2 Tense: $
    d = T(#mtext[#s[nr2]]) - T(#mtext[_txǫncų_]) = 4 - 1 = 3
$

The second case applies, yielding $
    v = -"sgn"(3) dot (5 - |3|) = -1 dot 2 = -2
$

and thus, the appropriate SAP is #i[cų́r txų́dí].
]

#slide[
== SAPs: Extraposition
#item-by-item[
- Used to ensure a clause or phrase observes proper work order.
- E.g. ‘three ferrules for the Master Carbonators under the mine’.
- Word-by word translation is ill-formed:
  #gloss(ungrammatical: true, `
    ún xúsųrǫngi tsírǫ ną́n tchų́’i ta-rųtí·
    ún xúsųrǫngi tsírǫ §ną́n tchų́’i §§ta-rųtí
    for Master~Carbonator under mine three {poss}-ferrule
  `)

  #h1[#i[ną́n]] ‘mine’ $->$ work order 6 \
  #h2[#i[rųtí]] ‘ferrule’ $->$ work order 4

]
]

#slide[
== SAPs: Extraposition
- Moving the PP is grammatical, but changes the meaning:
  #gloss(`
    ún xúsųrǫngi tchų́’i ta-rųtí tsírǫ ną́n·
    ún xúsųrǫngi tchų́’i §§ta-rųtí §tsírǫ §ną́n
    for Master~Carbonator three {poss}-ferrule under mine
    three ferrules under the mine for the Master Carbonators
  `)

- Now the ferrules, and not the Master Carbonators, are under the mine!
]

#slide[
== SAPs: Extraposition
#item-by-item[
- Solution: Extraposition.
- Replace #h1[#i[ną́n]] with a #h3[SAP] and move it to the end.
- Since there is no adjective qualifying #i[ną́n], the ‘null adjective’ #i[xún] is used.
  #uncover(4, gloss(`
    ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n·
    ún xúsųrǫngi tsírǫ §§§tų́r §§§xún tchų́’i §§ta-rųtí §ną́n
    for Master~Carbonator under {invc.0} {null} three {poss}-ferrule mine
    three ferrules for the Master Carbonators under the mine
  `))
]
]

#section[Pronouns]
#slide[
== Demonstrative Pronouns
#item-by-item[
- Deixis is relative.
- One demonstrative pronoun for each _syntactic_ tense.
- Proximal = syntactic Present Tense.
- Medial = syntactic Future Tense.
- Distal = syntactic Future-in-the-Future Tense.
]
]

#slide[
== Demonstrative Pronouns
#item-by-item[
- #i[chír] + Tense Marker:
  #rowtable(
    hlineat(1),
    vlineat(1),
    [Tense & Demonstrative],
    [ #s[awk] & #h3on(3, i[chírsąn]) ],
    [ #s[rem] & #h1on(2, i[chírnu])  ],
    [ #s[nr1] & #h2on(2, i[chírtxí]) ],
    [ #s[nr2] & #h1on(3, h3on(2, i[chíro]))   ],
    [ #s[nr3] & #h2on(3, i[chírnų])  ],
  )
- In a #s[rem] clause:
    proximal = #h1on(2, i[chírnu]),
    medial = #h2on(2, i[chírtxí]),
    distal = #h3on(2, i[chíro]).
- In a #s[nr2] clause:
    proximal = #h1on(3, i[chíro]),
    medial = #h2on(3, i[chírnų]),
    distal = #h3on(3, i[chírsąn]).
- In reported speech, the direction is reversed.
]
]

#slide[
== Demonstrative Pronouns: Example
#item-by-item[
- Consider a sentence with #s[nr1] as the syntactic tense.
- The medial demonstrative would be #i[chíro] (i.e. the #s[nr2] form).
- Assume the sentence is paraphrased using the #s[awk] tense.
- The medial pronoun would then be #i[chírnų] (i.e. the #s[nr3] form).
]
]

#slide[
== Personal Pronouns
#item-by-item[
- Three kinds of personal pronouns.
- _full personal pronouns_ = demonstrative + ‘Elf’.
- proximal = 1st person, medial = 2nd person, distal = 3rd person.
- E.g. #i[chíro xúsųrǫngi] ‘I’ (in a #s[nr2] sentence spoken by a Master Carbonator).
- E.g. #i[chírtxí isirǫngi] ‘it’ (in a #s[nr3] sentence in reference to Collier).
- _high-class pronouns_ = demonstrative + #i[rǫngi] ‘cloak’.
- _low-class pronouns_ are identical to the demonstratives.
]
]

#slide[
== Personal Pronouns: Rules
#item-by-item[
- Full pronouns when speaking (or in reference) to a higher-class Elf.
- Abridged pronouns when speaking (or in reference) to an equal/lower-status Elf.
- Not used in reference to The Chimney Man or The Grand Carbonator.
- Pronouns only refer to Elves; SAPs are used with other referents.
]
]

#slide[
== Evidentiality
#item-by-item[
- #i[sán] (#s[ver] ‘veridical’): (as though) decreed by The Chimney Man (truth).
- #i[gan] (#s[obs] ‘observable’): directly observable or deduced via reasoning.
- #i[xįn] (#s[com] ‘communicated’): communicated by someone (hearsay).
- #i[txą́] (#s[nor] ‘North Pole’): purported to exist (in the North Pole).
- #i[tsų́n] (#s[dub] ‘dubious’): purported to exist elsewhere.
]
]

#slide[
== Aspect
#item-by-item[
- Working verbs are marked for _telicity_, i.e. whether the work is done,
  - Telic is the default.
  - #i[tú] (#s[atel]): marks that a working verb is atelic.

- Lazy verbs are marked for whether the laziness is continued or returning.
  - Continuous is the default.
  - #i[dor] (#s[hab]): marks that a lazy verb is habitual.

- Aspect markers directly precede the verb.
]
]

#slide[
== Elision and (Zero) Copula
- Repeated verb markers may be elided.
- The Elvish copula is $emptyset$, i.e. verb _markers_ are present, but there is no root.
- Combined with elision, this can yield a zero copula.
]

#slide[
== Numbers
- Elvish numbers are translated verbatim from Santaa.
- E.g. #i[irtǫtǫtǫn] ‘7’ (lit. ‘build more more more’) from Santaa #santaa[ħȍ̀̽ ħħó̽̏ ħħó̽̏ ħħó̽̏].
]

#section[Appearance and Culture]

#slide[
== Elvish Upper Class
#item-by-item[
- Consists of Colliers and Master Carbonators.
- Only they may wear #w[rǫngi] ‘cloaks’.
- #w[isirǫngi] ‘Collier’ (lit. ‘redcloak’).
- #w[xúsųrǫngi] ‘Master Carbonator’ (lit. ‘blackcloak’).
- #w[Shǫnxąrǫngi] ‘The Grand Carbonator’ (lit. ‘Coal cloak’).
- Only upper-class Elves wear clothes.
- A lower-class Elf relies on its ventral furnace for warmth instead.
- #w[ishúrǫngi] ‘fake cloaks’ (lit. ‘charcoal#only(8,footnote[In Elvish, the word for ‘charcoal’ is commonly used to mean ‘fake’ or ‘imitation’.]) cloaks’).
]
]

#slide[
== ‘Retirement’
#item-by-item[
- An Elf ‘retires’ at the moment of its death.
- Some Elves may be ‘decommissioned’ ahead of time.
- #w[Shǫnxąshų́ną] ‘Coal burial’.
]
]


#slide[
== Refurbishment
#item-by-item[
- The act of promoting an Elf to a higher social class.
- E.g. a canary may be refurbished into a head miner.
- Cloaked classes receive a cloak that is sewn onto the Elf.
- Candidates are selected by Colliers or the next higher class.
- The Grand Carbonator is always a new Elf constructed by The Chimney Man.
- Elves that fall below their social class are immediately decomissioned.
]
]


#section[Translation]
#centerslide[#ex(w[Tǫrxí])]

#gloss-set-line-spacing(.7em)

#gloss-slide(`
Gan nun’a tú tshų́’á tchą́ chírnu rǫngi·
gan nun’a tú tshų́’á tchą́ chírnu rǫngi
{obs} {rem} {atel} declare {wrk} this cloak
This Elf declares:
`)

#gloss-slide(`
Ų́rų́ gan ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n·
ų́rų́ gan ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n
{wkd} {obs} for Master~Carbonator under {inv.0} {null} three {poss}-ferrule mine
Three Ferrules for the Master Carbonators under the mine,
`)

#gloss-slide(`
Ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́tųn’ą́·
ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́ tųn’ą́
{wkd} {obs} for Collier in {inv.-1} {null} {wo+7} seven hall stone
Seven for the Colliers in their halls of stone,
`)

#gloss-slide(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)

#gloss-slide(`
Ún Są́ntą́ chír tų́r isi ta-Są́ntą́ ų́rų́ gan txadą́ nangį́ shindí nurchǫ
ún Są́ntą́ chír tų́r isi ta-Są́ntą́ ų́rų́ gan txadą́ nangį́ shindí nurchǫ
for The~Chimney~Man on {inv.0} red {poss}-The~Chimney~Man {wkd} {obs} {wo+7} one {wo+10} throne
One for The Chimney Man on His red throne
`)

#gloss-slide(`
Chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́·
chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́
at where reside {nwk} {inv.+2} {null} the~North~Pole shadow
At the North Pole where the Shadows lie.
`)

#gloss-slide(`
Ún ta-dorą nangį́ ta-rųtí·
ún ta-dorą nangį́ ta-rųtí
for {poss}-rule one {poss}-ferrule
One Ferrule to rule,
`)

#gloss-slide(`
Ún ta-shųnsį́ ų́rų́ txadą́ shų́·
ún ta-shųnsį́ ų́rų́ txadą́ shų́·
for {poss}-find {wkd} {wo+7} all
To find them all
`)

#gloss-slide(`
Ún ta-xį́tį nangį́ ta-rųtí·
ún ta-xį́tį nangį́ ta-rųtí
for {poss}-bring one {poss}-ferrule
One Ferrule to bring them,
`)

#gloss-slide(`
Ún ta-tsantú chír xurgį
ún ta-tsantú chír xurgį
for {poss}-bind in arctic
To bind them in the Arctic.
`)

#gloss-slide(`
Chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́·
chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́
at where reside {nwk} {inv.+2} {null} the~North~Pole shadow
At the North Pole where the Shadows lie.
`)

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
§ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- #h1(i[ų́rų́]) marks that the entire clause is an object.
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ §gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- #h1(i[gan]) communicates that the verb is the copula.
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan §txadą́ §cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- #h1(i[txadą́ cuncutǫn]) is the number ‘9’ raised to work order 4.
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn §ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- The complement of #h1(i[ún]) ‘for’ is the rest of the clause.
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún §dun §cą §sán §túsą §ų́xį́ §shąnų́ §dun §tų́r §shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- Most of the rest of the sentence forms a #h1[relative clause].
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r §shardo §núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- The relative clause modifies #h1(i[shardo núgį́]) ‘mortal humans’.
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún §§dun §cą sán §§§túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- The #h1[relative pronoun] is preceded by an #h2[agent marker] as the subject of #h3(i[túsą]).
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą §ų́xį́ §shąnų́ §dun §tų́r §shardo núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- Another nested clause, introduced by a theme marker.
]

#slide[
== Sentence Analysis
#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun §tų́r §shardo §núgį́
{wkd} {obs} {wo+7} nine for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
Nine for Mortal Men doomed to retire,
`)
- #h1(i[tų́r shardo núgį́]) is contracted from #i[tų́r shardo shardo núgį́].
]

#slide[
== SAP Contraction
#item-by-item[
- Occurs when a SAP is immediately followed by its referent.
- E.g. #i[tų́r #h1[shardo shardo] núgį́] $->$ #i[tų́r #h1[shardo] núgį́].
- Sequence ‘invoice marker + adjective + noun’ is indicative of contraction.
]
]
