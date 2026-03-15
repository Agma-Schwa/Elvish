#import "preamble.typ" : *
#import "@preview/polylux:0.4.0": *
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

#slide[
#set align(center)
#set text(size: 14pt)
#image("assets/image.png", height: 95%)
#v(1fr)
Image credit: Encyclopædia Britannica
]

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

#centerslide[
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)
]

#centerslide[
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun §ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)
]

#centerslide[
#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun §ną́nrų́ chír §§dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)
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

  E.g. #i[txų́nsha irtǫtǫtǫn] ‘seven of the thing with work order 6’
]
]

#slide[
== Noun Markers
//#set list(spacing: 1em)
#item-by-item[
- #w[tchą́] ‘performs work’ (#s[wrk] ‘working’)

  Marks the agent of a verb that denotes an action that performs work.

- #w[dun] ‘does not perform work’ (#s[nwk] ‘not working’)

  Marks the agent of a verb that denotes a state or an action that is _not_ considered to perform (worthwile) work.

- #w[ų́rų́] ‘has work performed on it’ (#s[wkd] ‘[being] worked [on]’)

  Marks the theme of a verb whose agent assumes the #s[wrk] form.

- #w[ų́xį́] ‘is being manipulated in some fashion’ (#s[man] ‘manipulated’)

  Marks the theme of a verb whose agent assumes the #s[nwk] form.

- Working verbs (#s[wrk]/#s[wkd]) vs lazy verbs (#s[nwk]/#s[man]).
]
]

#slide[
== Noun Markers Cont’d
- #w[ta-] (#s[poss]): Possessive form

  E.g. #w[ta-ną́nrų́] ‘of the Elves’
]

#slide[
== Compounds and Derivation
#item-by-item[
- Modifier is placed _second_.

 #i[cįxį́] ‘hall’ + #i[tųn’ą́] ‘stone’ $arrow$  #i[cįxį́tųn’ą́] ‘stone hall’.

 #i[są́n] ‘being’ + #i[tą́] ‘chimney’ $arrow$ #i[Są́ntą́] ‘The Chimney Man’.

- Agent noun affix #i[-rų́]:

  #i[sǫtą] ‘to learn’ $arrow$ #i[sǫtąrų́] ‘teacher’

  #i[ną́n] ‘Coal mine’ $arrow$ #i[ną́nrų́] ‘Coal miner’.

- Vowel swapping converts noun $arrows.lr$ verb (disyllabic words only).

  #i[ną́nrų́] ‘Coal miner’ $arrows.lr$ #i[nų́nrą́] ‘to mine Coal’

  #i[shų́ną] ‘retirement’ $arrows.lr$ #i[shąnų́] ‘to retire’
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
#rowtable(
    hlineat(1),
    ..vlinesat(1, 2, 3),
    row-gutter: .3em,
    [ *Phase* & *Gloss* & *Time of the Year* & *Particle* ],
    [ Awake & #s[awk] & Christmas Eve & #w[sąn]],
    [ REM Sleep & #s[rem] & \~29 December -- 3 May & #w[nun’a]],
    [ Non-REM Phase 1 & #s[nr1] & \~4 May -- 25 August & #w[txí]],
    [ Non-REM Phase 2 & #s[nr2] & \~26 August -- 9 November & #w[ronu]],
    [ Non-REM Phase 3 & #s[nr3] & \~10 November -- 23 December & #w[ronų]],
)
]

#slide[
== Tense Cont’d
#item-by-item[
- During the REM Sleep Phase, the #s[rem] tense denotes the Present Tense.
- This is _semantic tense_.
- Equivalently: the ‘syntactic Present Tense’ is the #s[rem] tense.
- Syntactic Tense _before_ the syntactic Present Tense is the Past Tense.
- Syntactic Tense _after_ the syntactic Present Tense is the Future Tense.
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
    I declare that ...
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

//
#pagebreak()

