#import "preamble.typ" : *
#show : setup.with(compact: true)
#show : preamble

#align(center, text(size: 30pt, [Ną́ngą́sánshų́]))
#table-of-contents(title: none)
#show : mainmatter

= Phonology
Elvish has no rounded vowels or labial consonants as Elves have no lips. They also have a rather stiff tongue,
which leads to a lack of apical sounds as well as the palatal and velar places of articulation collapsing together.

All Elvish consonants are egressive, and all vowels are ingressive. This means that the articulation of an Elvish word
requires the speaker to constantly flip-flop between breathing in and breathing out.

Due to their extensive and perpetual involvement in and with the Coal mining process, the mouth of an Elf is exceedingly dry and covered in Coal dust, rendering Elvish articulation particularly chalky, grating, and stunted.

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

- #w[r] is a coarticulated palatal-velar trill (yes, Elves can do that)
== Vowels
#rowtable(
    hlineat(1),
    vlineat(1),
    [              & Front        & Back         & Click  ],
    [ Close        & i↓ ɪ↓ ⟨i í⟩  & ɯ↓ ɯ̽↓ ⟨u ú⟩  &        ],
    [ Open         & a↓ ɐ↓ ⟨a á⟩  &              &        ],
    [ Palato-velar &              &              & ᵏǂ ⟨o⟩ ]
)

- Tense/lax distinction. Lax vowels are marked with an acute.
- Ingressive sounds are considered vowels, and thus, the palatal-velar click is a vowel.
- Any vowel can be followed by #super[ʄ͡ɠ] ⟨◌̨⟩, which signifies the ‘velar quality’, e.g. #w[ų́].

== Phonotactics
#partitle[Classes]
```
C = d, t, c, g, s, sh, ch, x, r, n
A = ts, tsh, tch, tx
V = i, í, u, ú, a, á, o
Q = ̨
```
#partitle[Phonotactics]
```
[C|A]V(Q)((n|r)([C|’]V(Q)))|V(Q)[(n|r)C]V(Q)
```

#partitle[Example word]
#w[tshǫ’ǫ] ‘ribbon’

= Grammar
== Work Order
Animacy is vital to determining word order in Elvish. The highest animacy, and thus primacy in a clause, goes to that which is working the hardest. This is 'Work Order.' From highest work order to lowest, the ranks go as follows:

+ The Chimney Man (#s[w1]) \
  In any circumstance in which The Chimney Man is referenced, He will always have the highest Work Order, for He is always working the Hardest. Except for the day after Christmas.

  Any _constituents_ containing a #s[w1] word are placed at the very start of the sentence even before the verb and its markers. This excludes any nested phrases with lesser work order, which must be extraposed using SAPs.

+ Coal (#s[w2]) \
  Coal is considered the most important aspect of Elvish society and thus placed just below The Chimney Man. It is also considered capable of performing more work than any Elf as it generates a lot of energy when burnt (unlike Elves).
  Amongst Elves, only the Grand Carbonator is assigned a work order of 2 (see @carbonators).

+ Master Carbonator (#s[w3]) \
  The highest social status that a normal Elf can obtain; the council of Master Carbonators rules over Elvish society and reports directly to the Grand Carbonator (see @carbonators).

+ Collier (#s[w4]) \
  Highly experienced Elves that have been working in the Coal industry for at least 100 years; these are typically regional overseers. Only Elves at the rank of Collier or above enjoy the privilege of having their names capitalised in writing, and
  only they are entitled to wear cloaks (see @cloaks).

+ Head Miner (#s[w5]) \
  Elf in charge of a Coal mine.

+ Canary (#s[w6]) \
  Used for both the lowest class of Elves (i.e. the common Coal miner) as well as the bird.

+ Human Coal Miners (#s[w7]) \
  Used for human Coal miners.

+ Human Adults (#s[w8]) \
  Used for any other human adult.

+ Animals (#s[w9]) \
  Used for any animal.

+ Human Children (#s[w10]) \
  Used for human children (that are not Coal miners). While important to Elvish society as the benificiaries of their toils, they are deemed the laziest of beings.

+ Everything Else (#s[w11]) \
  Genreally, any inanimate object other than Coal, abstract concepts, etc.

Some words may have work orders that aren’t obvious from their semantics, e.g. the word #w[shų́ną] ‘retirement’ has work order 4 as it is considered a culturally important part of Elvish society.

== Work Order Marking <work-order-marking>
There are two ways in which work order may be expressed. First, most lexical words (except verbs) have an inherent work order, e.g. #w[dį́gá] ‘cane’ always has work order 11. In addition to this, there is also a set of work order markers that may be placed before a word to raise or lower its default work order. These affixes are as follows:
#center-table(
    caption: [Work Order Markers],
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

For example, forming #i[xúnną dį́gá] has the effect of raising the work order of #i[dį́gá] to #s[w5] (since $11-6=5$); thus, this phrase is suitable for referring to a cane that performs as much work as a Head Miner (whatever that means). There are a few things that one needs to keep in mind here:
- Attempting to raise/lower the work order of a noun below the minimum (#s[w11]) above the maximum (#s[w1]) work order is ungrammatical.
- The ‘lowest’ work order is 11 and the ‘highest’ is 1, thus ‘raising’ counterintuitively occurs from a larger number to a smaller number, and ‘lowering’ from a smaller number to a larger number, e.g. work order 5 can be ‘raised’ to 4 or ‘lowered’ to 6.
- Lowering the work order of a noun with default work order #s[w1] is generally done to refer to people who have an inflated self of ego, e.g. a Master Carbonator who starts trying to order around the rest of the council as though it were the Chimney Man Himself may be referred to as an #w[tsąn’o są́ntą́] ‘Master Carbonator who acts as though it were The Chimney Man’ (lit. ‘Chimney Man’ lowered to work order #s[w3]).
- Note that in this sense, lowering generally has the effect of expressing disdain, denigrating something, or making something seem less important or fake (this is known as ‘derogatory lowering’), whereas raising is typically a form of praise.
- The inverse is generally acceptable, e.g. #w[shindí dį́gá] ‘A cane made personally by The Chimney Man’.
- As we just saw, work order raising/lowering can be used to communicate that an otherwise low-status being or object (or high-status being or object) is in some manner closely associated with something or someone of higher status (or lower status), e.g. #i[xúnną dį́gá] can also refer to a cane that belongs to a Head Miner.

=== Work Order and Elision
Generic nouns such as #w[xą́ngá] ‘thing’ as well as numbers can be combined with a work order marker to refer to something in the context that has that work order. For example, an #w[į́nú] ‘minecart’, which has work order #s[w6], may be referred to later on as #w[txų́nsha xą́ngá] ‘the thing with work order #s[w6]’. This is an alternative to SAPs (see @standalone-adjective-phrases) and is especially common with numbers and things that have a relatively high work order.

== Adjectives
In sequences of adjectives (which Elves are particularly prone to), the following categories of hierarchy of importance determines the order at which they are uttered:

+ Christmas
+ Coal
+ Elves
+ Work
+ Humans
+ Rest

Adjectives precede the noun they qualify.

=== Adverbs
Adverbs follow the verb.

=== Standalone Adjective Phrases (SAPs) <standalone-adjective-phrases>
A very common idiom in Elvish is to refer to a noun (phrase) in the domain of discourse by an adjective that describes it,
optionally preceded by a work order marker that agrees with the work order of the noun (phrase). Such phrases are known as
_standalone adjective phrases_ (SAPs) this largely replaces pronouns in Elvish.

SAPs consist of an adjective preceded by a so-called _invoice particle_ (see @invoice); syntactically, SAPs are treated as
though they were nouns; in particular, they may be preceded by the usual noun particles and even other adjectives.

In writing, it is common for the first mention of a noun phrase to be accompanied by one or more adjectives that may later on be
used to refer to it.#footnote[This is omitted in spoken language when the noun phrase is something that is clearly visible to
all interlocutors.] For example, a fat Elf with the name #w[txǫncų] might be introduced as #i[txų́dí txǫncų] ‘Fat Txǫncų’ and then later on referred to as #w[sį́ txų́dí] ‘the fat one’, where #i[sį́] is one of the possible invoice particles.

SAPs are capitalised if they refer to a noun that is capitalised.

==== Invoice <invoice>
The _invoice_ is a construction used primarily as part of a SAP. An invoice operates in a similar way to adjective-noun agreement, except that it is really tense-noun agreement. That is, each noun is assigned a ‘tense’ based on its initial phoneme (see @table:noun-tense), and the appropriate invoice particle depends on the noun’s inherent tense as well as the syntactic tense of the clause. Tenses are assigned an integer value between $1$ and $5$.

#center-table(
  caption: [Association Between Initial Phonemes and Noun Tense],
  align: (right, center, left),
  hlineat(1),
  ..vlinesat(1, 2),
  [Tense     & Value & Phonemes],
  [Awake     & $1$ & _d, tx_],
  [REM       & $2$ & _n_],
  [Non-REM 1 & $3$ & _sh_],
  [Non-REM 2 & $4$ & _c_ ],
  [Non-REM 3 & $5$ & _a_, _á_, _ą_, _ą́_],
) <table:noun-tense>

There are five invoice particles, which are assigned an integer value between $-2$ and $2$:
#center-table(
  caption: [Invoice Particles by Value],
  align: (right, left),
  hlineat(1),
  vlineat(1),
  [$v$ & Particle],
  [-2 & #w[cų́r]],
  [-1 & #w[so]],
  [ 0 & #w[tų́r]],
  [ 1 & #w[sį́]],
  [ 2 & #w[árxį́]],
) <table:invoice-particles>

Intuitively, the invoice particle adjusts the tense of the noun to match the syntactic tense of the clause. That is, the appropriate invoice particle for a noun is selected as follows: let $d := T(C) - T(N)$ where $T(C)$ is the syntactic tense of the clause, and $T(N)$ the tense of the noun. The value $v$ of the appropriate invoice particle is then given by the formula
$
  v := cases(
    d"," & "if" |d| < 3,
    -"sgn"(d) dot (5 - |d|)"," &"otherwise."
  )
$

For instance, recall our example of the fat Elf #i[txų́dí txǫncų] above. The noun #w[txǫncų] is of the Awake Tense since it starts with #i[tx]. In a sentence in the REM Sleep Tense, the formula above gives $ d = T(#mtext[#s[rem]]) - T(#mtext[_txǫncų_]) = 2 - 1 = 1 $ whence
$v = d = 1$. Thus, the appropriate invoice particle is the one with value 1, i.e. #w[sį́], and the appropriate SAP is #w[sį́ txų́dí].
By contrast, in a sentence in the Non-REM Phase 2 Tense, we have $ d = T(#mtext[#s[nr2]]) - T(#mtext[_txǫncų_]) = 4 - 1 = 3 $ which means
the second case above applies, whereby $ v = -"sgn"(3) dot (5 - |3|) = -1 dot 2 = -2 $ Thus, the appropriate SAP is #w[cų́r txų́dí].


==== Extraposition <invoice-extraposition>
SAPs are also used to ensure a clause or phrase observes proper work order. This phenomenon is known as _extraposition_. For instance, suppose we want to say ‘three ferrules for the Master Carbonators under the mine’, containing the PP #w[tsírǫ ną́n] ‘under the mine(s)’.

#gloss(ungrammatical: true, `
ún xúsųrǫngi tsírǫ ną́n tchų́’i ta-rųtí·
ún xúsųrǫngi §tsírǫ §ną́n tchų́’i ta-rųtí
for Master~Carbonator under mine three {poss}-ferrule
`)

This phrase is ill-formed because #w[ną́n] ‘mine’, a noun with work order 6, precedes #w[rųtí] ‘ferrule’, a noun with work order 4. To correct this, we need to move ‘mine’ to the end of the clause, but we can’t simply move the entire enclosing PP as that would change the meaning of the phrase:
#gloss(`
ún xúsųrǫngi tchų́’i ta-rųtí tsírǫ ną́n·
ún xúsųrǫngi tchų́’i ta-rųtí §tsírǫ §ną́n
for Master~Carbonator under mine three {poss}-ferrule
three ferrules under the mine for the Master Carbonators
`)

While well-formed, this movement has changed what NP the PP qualifies. Instead, the proper solution is to replace the problematic noun in the PP with a SAP. The noun is then left stranded as far back in the clause as possible, but of course preceding any nouns with lower work order.
If there is no adjective qualifying the noun, the adjective #w[xún] ‘proper’ is used instead. This adjective has no meaning in this context and only serves to provide something the invoice particle can be attached to. Thus, a grammatical rendition of the above might be:

#gloss(`
ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n·
ún xúsųrǫngi §tsírǫ §tų́r §xún tchų́’i ta-rųtí §ną́n
for Master~Carbonator under {invc.rem} good three {poss}-ferrule mine
three ferrules for the Master Carbonators under the mine
`)

==== SAP Contraction <sap-contraction>
Elvish relative clauses (see @relative-clauses) precede the noun they qualify; Elvish NPs are placed after the verb and thus frequently occur at the end of a clause; adjectives precede the noun they qualify and invoice markers in turn precede adjectives. All of these factors combined can lead to a peculiar constellation wherein a SAP directly precedes the NP it refers to, with the same adjective occurring twice in a row. For example, the phrase ‘mortal men who are doomed to retire’ expressed naively in Elvish would end up being:
#gloss(`
%dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo shardo núgį́
dun cą sán túsą ų́xį́ shąnų́ dun tų́r §shardo §shardo núgį́
{nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal mortal human
mortal men who are doomed to retire
`)

This is rather awkward, for which reason most Elves instead opt to omit the duplicate adjective:
#gloss(`
dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
dun cą sán túsą ų́xį́ shąnų́ dun tų́r §shardo núgį́
{nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
mortal men who are doomed to retire
`)

In this phrase, #w[shardo] ‘mortal’ does double duty and is part both of the SAP #w[tų́r shardo] ‘the mortal ones’ as well as the NP #w[shardo núgį́] ‘mortal men’. A sequence of the form ‘#s[invoice.particle adjective noun]’ is usually SAP-contracted.

== Nouns
Elvish nouns are not marked for number or definiteness. However, besides work order markers (see @nouns-at-work), there are a number of miscellaneous noun markers that are used to express concepts such as possession.

The following is a list of Elvish noun markers:

- #w[ta-] (#s[poss]); this is a possessive marker, e.g. #i[ta-ną́nrų́] ‘of the Elves’.

=== Nouns at Work <nouns-at-work>
Nouns are also declined for whether or not they _perform_ work. This is _not_ the same as work order! Rather, this marks their position as an agent or patient in any given clause. The verb itself is not declined for voice---this information is contained exclusively in the noun phrase:

- #w[tchą́] ‘performs work’ (#s[wrk] ‘working’); this is used to mark the agent of a verb that denotes an action that is considered to perform work.
- #w[dun] ‘does not perform work’ (#s[nwk] ‘not working’); this is used to mark the agent of a verb that denotes a state or an action that is not considered to perform (worthwile) work.
- #w[ų́rų́] ‘has work performed on it’ (#s[wkd] ‘worked [on]’); this is used to mark the theme of a verb
  whose agent is in the #s[wrk] form.
- #w[ų́xį́] ‘is being manipulated in some fashion’ (#s[man] ‘manipulated’); this is used to mark the theme of
  a verb whose agent is in the #s[nwk].

This system naturally gives rise to 2 verb classes:
- ‘working verbs’, whose agent is in the #s[wrk] case and whose theme is in the #s[wkd] case.
- ‘lazy verbs’, whose agent is in the #s[nwk] case, and whose theme is in the #s[man] case.

There are also a number of contractions:
- #i[tchą́ + ų́rų́] $->$ #w[tchą́rų́]: reflexive form used with working verbs.
- #i[dun + ų́xį́] $->$ #w[dunxį́]: reflexive form used with lazy verbs.

The verb itself is only inflected for tense (see @tam).

=== Clause Complements
The noun work markers can also precede the verb, in which case the clause acts as the agent/theme.

== Compounds
Compound nouns can be expressed by juxtaposition; the modifier comes second, just like in Santaa, e.g. #w[ną́nchųn] ‘head miner’ (lit. ‘miner head’) from #w[ną́nrų́] ‘canary’ and #w[chųnxi] ‘head’. The compound is written without a space, e.g. #w[cįxį́tųn’ą́] ‘stone hall’, not #i[\*cįxį́ tųn’ą́].

== Pronouns <pronouns>
=== Demonstrative Pronouns
There are 5 demonstrative pronouns, each corresponding to a syntactic tense (see @tam); as many other things, deixis in Elvish is relative: unlike other languages which employ spatial metaphors to express time, Elvish employs temporal expressions to express relations in space.

That is, the demonstrative pronouns in Elvish are formed by combining the preposition #w[chír] ‘at, in, on’ with one of the tense morphemes:
+ Awake Tense: #w[chírsąn]
+ REM Sleep Tense: #w[chírnu]
+ Non-REM Phase 1 Tense: #w[chírtxí]
+ Non-REM Phase 2 Tense: #w[chíro]
+ Non-REM Phase 3 Tense: #w[chírnų]

The proximal demonstrative pronoun is expressed relative to the syntactic tense of the utterance: the medial demonstrative pronoun by the tense following the proximal one, and the distal demonstrative pronoun by the tense following the medial one.
For example, if the utterance is in the REM Sleep Tense, we have:
- #i[chírnu] = ‘this’,
- #i[chírtxí] = ‘that (medial)’,
- #i[chíro] ‘that (distal).

In the Non-REM Phase 2 Tense, we instead have:
- #i[chíro] = ‘this’,
- #i[chírnų] = ‘that (medial)’,
- #i[chírsąn] ‘that (distal).

In reported speech, the direction is reversed, i.e. instead of medial being the tense after proximal and distal being the tense after medial, instead medial is the tense _preceding_ proximal, and distal is the tense preceding medial. E.g. the demonstrative pronouns in reported speech that uses the Non-REM Phase 1 Tense would be:
- #i[chírnu] = ‘this’,
- #i[chírsąn] = ‘that (medial)’,
- #i[chírnų] = ‘that (distal)’.

Note that it is the only the syntactic tense of the sentence that matters; neither the time of utterance, nor the time at which the utterance is paraphrased, if at all, are relevant here! For example, consider a sentence uttered during the REM Sleep Phase, in which the Non-REM Phase 1 Tense is the syntactic Future Tense. In such a sentence, the medial demonstrative pronoun would be #w[chíro], i.e. the Non-REM Phase 2 form; if this sentence is then paraphrased during the Non-REM Phase 3, the syntactic Future Tense would naturally be the Awake Tense, and the medial pronoun would be the tense _before_ that (recall that the direction is reversed in reported speech); thus, the correct form would be #w[chírnų], i.e. the Non-REM Phase 3 form.

=== Personal Pronouns
There are three sets of constructions in Elvish that are jointly referred to as ‘personal pronouns’. While semantically equivalent, their usage is highly dependent on social status, and they are not interchangeable.

==== Full Personal Pronouns
The so-called _full personal pronouns_ of Elvish are formed by combining the demonstrative pronouns with the status-appropriate word for ‘Elf’: The proximal demonstrative is used to express the 1st person, the medial to express the 2nd person, and the distal to express the 3rd person. Naturally, this also means that the exact forms of the personal pronouns depend on the syntactic tense of the containing clause (as well as whether direct or reported speech is used).

For example, in a sentence in Non-REM Phase 2 Tense spoken by a Master Carbonator, the closest Elvish equivalent to a word for ‘I’ would be #w[chíro xúsųrǫngi], lit. ‘this Master Carbonator’. Similarly, in a sentence paraphrased in Non-REM Phase 3 Tense, the word ‘it’ in reference to a Collier would be #w[chírtxí isirǫngi], lit. ‘that (distal) Collier’.

==== Abridged Personal Pronouns
There are two forms of ‘abridged’ pronouns: The _high-class_ abriged pronouns are formed by combining the demonstratives with the noun #w[rǫngi] ‘cloak’. The _low-class_ abridged pronouns are identical to the bare demonstratives. Abriged personal pronouns are only used to refer to an Elf at or below one’s own social status.

==== Usage Notes
Which set of personal pronouns is appropriate in what context is dependent on the social status of the speaker (in the 1st person), as well as that of the referents (in the 2nd and 3rd person). There are strict rules that govern the usage of the pronouns. The rules for the 2nd/3rd person pronouns are:
- The Chimney Man and The Grand Carbonator are never referred to by a pronoun; instead, the entire phrase ‘The Chimney Man’ or ‘The Grand Carbonator’ is repeated. Similarly, Coal is also never referred to by a pronoun; instead, the noun ‘Coal’ is repeated.

- The full pronouns are used to refer to an Elf of higher social class than one’s own.

- The abridged pronouns are used to refer to an Elf at or below one’s own social class. The high-class pronouns are used when the referent is at the rank of Collier or above, and the low-class pronouns otherwise.

- Personal pronouns are only used to refer to Elves. For any other beings, objects, concepts, etc., SAPs (see @standalone-adjective-phrases) are used instead.

- Additionally, SAPs may be used whenever an abridged pronoun would be appropriate.

The rules for the 1st person pronoun are simpler: In reference to oneself, the full pronouns are used when speaking to someone of higher social status, and the abridged pronouns otherwise. Naturally, Elves at or above the rank of Collier use the high-class pronouns and other Elves the low-class pronouns.

==== Disinguishing Personal and Demonstrative Pronouns
Since personal and demonstrative pronouns can be very similar, as the former simply use the latter, there are rules that can be used to distinguish the two; the most important one of these is that a demonstrative that qualifies the noun always follows the noun. For example, assuming we’re in the REM phase, we have #w[chírnu rǫngi] ‘I’ (high-class pronoun) vs #w[rǫngi chírnu] ‘this cloak’ (literally).

This is especially important in the context of a zero copula (see @copula). Consider e.g. #w[chírtxí tchų́rshu] ‘you are an idiot’ vs #w[tchų́rshu chírtxí] ‘that idiot’.

=== Numbers
Elvish numbers use the same system as Santaa numbers, except using Elvish words. Cardinals are expressed using the possessive marker, e.g. #w[tchų́’i ta-ną́nrų́] ‘three Elves’ (lit. ‘three of Elves’).

== Verbs
Verbs are either classified as ‘working’ or ‘lazy’ (see @nouns-at-work). Verbs are not inflected for number, only nouns are. In the absence of work order distinction, the default word order is VOS. Verbs generally do not have an associated work order (unless they are derived from a noun) and are generally placed first; the main exception to this is that nouns with work order 1 are always placed first and precede even the verb.

=== Tense, Aspect, Mood <tam>
The Elvish tense system is based on the hibernation cycle of The Chimney Man. This cycle consists of 5 phases. These five phases form the five so-called _syntactic tenses_ of Elvish, which are each marked by a particle that precedes the verb (see @tab:syntactic-tenses).

#center-table(
    hlineat(1),
    ..vlinesat(1, 2, 3),
    caption: [Syntactic Tenses in Elvish],
    align: left,
    [ *Phase* & *Gloss* & *Time of the Year* & *Particle* ],
    [ Awake & #s[awk] & Christmas Eve & #w[sąn]],
    [ REM Sleep & #s[rem] & \~29 December -- 3 May & #w[nun’a]],
    [ Non-REM Phase 1 & #s[nr1] & \~4 May -- 25 August & #w[txí]],
    [ Non-REM Phase 2 & #s[nr2] & \~26 August -- 9 November & #w[ronu]],
    [ Non-REM Phase 3 & #s[nr3] & \~10 November -- 23 December & #w[ronų]],
) <tab:syntactic-tenses>

At any point in time, the Present Tense in Elvish is whatever sleep phase The Chimney Man is in when the utterance is spoken. This is referred to as the _semantic tense_ of the utterance. For instance, on 2 February, The Chimney Man is in REM sleep, and thus, a sentence whose syntactic tense is the REM Sleep Tense would have the Present Tense as its semantic tense. In terms of terminology, the term ‘syntactic Present Tense’ in any given context refers to whatever syntactic tense happens to be the Present Tense.

The syntactic tense following the Present Tense is the semantic Future Tense, and the syntactic tense after that forms a Future-in-the-Future. Similarly, the syntactic tense preceding the semantic Present Tense forms the Past Tense, and the syntactic tense before that serves as the Pluperfecet.

As nobody truly knows when _exactly_ when the Chimney Man falls asleep, the few days following Chrismtas are an enigma to Elvish speakers. They cannot, and out of respect and fear for the Chimney Man, will not express anything related to time. During this time, which often spans from December 25th until December 28th, all tense marking is dropped, and most Elves cease writing entirely, with the upper classes preferring to communicate in Santaa instead. This is known as the ‘Temporal Void’. Reported Speech that paraphrases an utterance that was uttered during the this time likewise uses no tense marking.

The syntactic tense that follows the Non-REM Phase 3 Tense is the Awake Tense; conversely, syntactic tense preceding the Awake tense is the Non-REM Phase 3 Tense. Thus, if the syntactic Present Tense is the Awake Tense, the syntactic Past Tense would be the Non-REM Phase 3 tense.

Tense in reported speech is relative to the time of paraphrase rather than the time of utterance. For example, a sentence spoken _during_ the Non-REM Phase 1 but _in_ the REM Sleep Tense is in the Past Tense. If reported speech is used to describe or paraphrase that sentence _during_ the Non-REM Phase 2, the speaker would use the Non-REM Phase 1 Tense, since that is now the Past Tense.

Thus, one has to be careful not to confuse tense between direct speech and reported speech. For example, given an utterance that was spoken during Non-REM Phase 1 but _in_ Non-REM Phase 2 Tense, that utterance refers to the future. But if such an utterance were erroneously reported in that same tense during Non-REM Phase 3, it would incorrectly refer to the past. Instead, the Awake Tense should be used to paraphrase.

Note that the tenses are relative only to the point of utterance, not to the point in time at which the action or state described by the utterance takes place. For example, during Non-REM Phase 1, if one wanted to refer to an event that took place in November of _last year_, one would use the REM Sleep Tense, since that is the syntactic Past Tense. The fact that Non-REM Phase 2 takes place in November does not mean that it is used to describe things that take place in November.

Since a sentence in a vacuum without any information as to when it was uttered is impossible to extract temporal data from, any Elvish prose, etc. is always accompanied by a date, much like a diary entry would be. The exception to this is information uttered during the Temporal Void, during which the date is customarily omitted.

=== Dependent Clauses
Semantic tense in dependent clauses is relative to the syntactic tense of the matrix clause. For example, during the REM Sleep Phase, the syntactic Future Tense is the Non-REM Phase 1 Tense. Given a matrix clause in this Future Tense, the syntactic Past Tense in one of its dependent clauses would then be the REM Sleep Tense, even though that very same syntactic tense would normally be the syntactic Present Tense during the REM Sleep Phase.

The rules for reported speech for e.g. pronouns also apply to dependent clauses.

=== Copula <copula>
The Elvish copula is $emptyset$, i.e. the empty root; that is, to express the copula all verb markers are used as they normally would be, except that the verb is ‘missing’. Even the tense and evidentiality marker may be dropped if elision is applied, or if they’re obvious from context, generally if the sentence is in the Present Tense, leading to a zero copula (see @elision).

If an entire clause is preceded by an agent/theme marker, a zero copula cannot be used, and at least one verb marker (usually the evidentiality marker) is required.

=== Aspect
Aspect marking differs between working verbs and lazy verbs. Working verbs are marked for telicity, i.e. whether the work
is done (#s[tel] ‘telic’) or not (#s[atel] ‘atelic’). Lazy verbs are marked for whether the laziness is continued
(#s[cont] ‘continuous’), or returning (#s[hab] ‘habitual’). For working verbs, telic is the default, for lazy verbs,
continuous is the default.
- #w[tú] (#s[atel]): marks that a working verb is atelic
- #w[dor] (#s[hab]): marks that a lazy verb is habitual

=== Moods
[TODO]

=== Evidentiality <evidentiality>
Evidentiality is split into four categories:
- #w[sán] (#s[ver] ‘veridical’): (as though) decreed by The Chimney Man (truth)
- #w[gan] (#s[obs] ‘observable’): either directly observable or deduced via reasoning
- #w[xįn] (#s[com] ‘communicated’): communicated by someone (hearsay)
- #w[txą́] (#s[nor] ‘North Pole’): purported to exist (in the North Pole)
- #w[tsų́n] (#s[dub] ‘dubious’): purported to exist elsewhere

The ‘default’ evidentiality marker is generally #w[gan];; it is commonly used for statements which the speaker considers to be true but which are not self-evident or proven facts.

Statements of fact use the Chimney Man evidentiality—for example, $2+2=4$—and so do statements that an Elf is absolutely sure about. The meaning of this evidentiality is closer to ‘as true as though The Chimney Man Himself had decreed it’, and a suitable translation may be ‘most surely’. At the same time, it is of course also used to refer to literal statements made by The Chimney Man.

=== Elision <elision>
When multiple verbs in a row have verb markers in common, those markers are often dropped for any verb after the first. In particular, this often applies to evidentiality markers: if the evidentiality marker of several clauses is the same, all but the first are generally dropped.

== Derivation
=== Vowel Swapping
A common way to turn a noun into a verb in Elvish (or vice versa) that applies solely to disyllabic words is to swap the vowels, e.g. #w[ną́nrų́] ‘Coal miner’ becomes #w[nų́nrą́] ‘to mine Coal’.

== #i[-rų́]
The suffix #w[-rų́] can be attached to a verb or noun to form an agent noun describing an Elf who performs an action associated with that verb or noun. E.g. from #w[sǫtą] ‘to learn’, we get #w[sǫtąrų́] ‘teacher’, and from #w[ną́n] ‘Coal mine’, we get #w[ną́nrų́] ‘Coal miner, Elf’.

== Syntax
=== Relative Clauses <relative-clauses>
Relative clauses in Elvish are headed by the pronoun #w[cą] ‘who, what, which, that’. If the relative pronoun is the agent or theme of the predicate of the relative clause, the appropriate agent or theme marker is placed _before_ the relative pronoun. Relative clauses always _precede_ the noun they qualify.

There are also two variants of relative clauses that are headed by different pronouns: _locative relative clauses_, which are headed by the pronoun #w[chírcą] ‘where’, and _temporal relative clauses_, which are headed by the pronoun #w[rįcą] ‘when’.

= Literary Elvish
There are a few differences between spoken and written Elvish. The most striking difference is a natural consequence of the medium: whereas the time of utterance is obvious in a spoken context (as it is just the present day), the time of utterance of a written text is impossible to know unless expressly conveyed to the reader.

The choice as to what syntacitc tense denotes the Present Tense is strictly speaking arbitrary, but by convention, it is generally that of the date on which the author wrote or started writing the text. A natural consequence of this is that many Elves cease all writing during the Temporal Void.

When it comes to stories, poems, etc. only the written form of these texts have a fixed syntactic tense. When a story is told by an Elf, it will naturally—and indeed subconsciously without requiring active consideration or effort—rephrase the text by adjusting the syntactic tense relative to the time at which the story is told while preserving the text’s semantic tense.

Since the time of utterance is an integral part of Elvish grammar, it is custom in Elvish literature to introduce every piece of written text with the phrase ‘This Elf declares that’, with the status-appropriate abridged personal pronoun used as the subject. The syntactic tense of this phrase denotes the Present Tense for the rest of the text. E.g. if the text is written by a Collier during the REM sleep phase, the phrase would be:

#gloss(`
Gan nun’a tú tshų́’á tchą́ chírnu rǫngi ...
gan nun’a tú tshų́’á tchą́ chírnu rǫngi
{obs} {rem} {atel} declare {wrk} this cloak
I declare that ...#footnote[Lit. ‘This cloak is observably declaring that ...’]
`)

This is effectively prefixed to the first sentence of the text proper, thereby forming a new matrix clause around it. As a result, the rest of the first sentence is rendered in reported speech.

= Examples
== Simple Glosses
It is assumed that the examples below are spoken on 2 February (i.e. during the REM phase).
#gloss(`
Gan nun’a rǫsa ų́xį́ tą́ dun txǫncų.
gan nun’a rǫsa ų́xį́ tą́ dun txǫncų
{obs} {rem} slide {man} chimney {nwk} Txǫncų
Txǫncų slides down the Chimney (and I see it do so).
`)

// Note: the semantic tense of the dependent clause is present tense, but because of
// tense agreement with the matrix clause, the semantic dependent present tense is the same
// as the syntactic matrix past tense, which happens to match how English does backshifting.
#gloss(spacing-override: .25em,`
Sán sąn sǫtą dishą́ dun chírsąn rǫngi ų́xį́ chírnu tchų́rshu.
sán sąn sǫtą dishą́ dun chírsąn rǫngi ų́xį́ chírnu tchų́rshu
{ver} {awk} know always {nwk} {dem.awk} cloak {man} {dem.rem} idiot
I always knew that you were an idiot.
`)

Lit. ‘This cloak most surely always knew [that] that(#smallcaps[medial]) [was observably an] idiot.’

#gloss(`
Gan nun’a gųshą dun ną́nrų́ chír dą́chą.
gan nun’a gųshą dun ną́nrų́ chír dą́chą
{obs} {rem} crouch {nwk} Elf on table
The Elf crouches on the table.
`)

== Ferrule Verse
An Elvish adaptation of JRR Tolkien’s Ring Verse, as translated and adapted by the Elvish poet #w[Tǫrxí]:

=== Original English Text
#emph(verse[
Three Rings for the Elven-kings under the sky, \
Seven for the Dwarf-lords in their halls of stone, \
Nine for Mortal Men doomed to die, \
One for the Dark Lord on his dark throne \
In the Land of Mordor where the Shadows lie. \
#quad One Ring to rule them all, One Ring to find them, \
#quad One Ring to bring them all and in the darkness bind them \
In the Land of Mordor where the Shadows lie.
])

=== Poetic English Rendition of the Elvish Adaptation
#emph(verse[
This Elf declares: \
Three Ferrules for the Master Carbonators under the mine, \
Seven for the Colliers in their halls of stone, \
Nine for Mortal Men doomed to retire, \
One for The Chimney Man on His red throne \
At the North Pole where the Shadows lie. \
#quad One Ferrule to rule them all, One Ferrule to find them, \
#quad One Ferrule to bring them all and in the Arctic bind them \
At the North Pole where the Shadows lie.
])

=== Elvish Adaptation
#emph(verse[
Gan nun’a tú tshų́’á tchą́ chírnu rǫngi· \
Ų́rų́ gan ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n· \
Ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́tųn’ą́· \
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́· \
Ún Są́ntą́ chír tų́r isi ta-Są́ntą́ ų́rų́ gan txadą́ nangį́ shindí nurchǫ \
Chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́· \
#quad Ún ta-dorą nangį́ ta-rųtí· Ún ta-shųnsį́ ų́rų́ txadą́ shų́· \
#quad Ún ta-xį́tį nangį́ ta-rųtí· Ún ta-tsantú chír xurgį \
Chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́· \
])

=== Gloss of the Elvish Adaptation
#gloss(`
Gan nun’a tú tshų́’á tchą́ chírnu rǫngi·
gan nun’a tú tshų́’á tchą́ chírnu rǫngi
{obs} {rem} {atel} declare {wrk} this cloak
This Elf declares:
`)

#gloss(`
Ų́rų́ gan ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n·
ų́rų́ gan ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n
{wkd} {obs} for Master~Carbonator under {inv.0} {null} three {poss}-ferrule mine
[That there are] three Ferrules for the Master Carbonators under the mine
`)

#gloss(`
Ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́tųn’ą́·
ų́rų́ gan ún isirǫngi chír cų́r xún txadą́ irtǫtǫtǫn cįxį́ tųn’ą́
{wkd} {obs} for Collier in {inv.-1} {null} {wo+7} seven hall stone
[That there are] seven for the Colliers in their halls of stone
`)

#gloss(`
Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́·
ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́
{wkd} {obs} {wo+7} seven for {nwk} {rel} {ver} be.destined {man} retire {nwk} {inv.0} mortal human
[That there are] nine for Mortal Men [who are] doomed to retire
`)

#gloss(`
Ún Są́ntą́ chír tų́r isi ta-Są́ntą́ ų́rų́ gan txadą́ nangį́ shindí nurchǫ·
ún Są́ntą́ chír tų́r isi ta-Są́ntą́ ų́rų́ gan txadą́ nangį́ shindí nurchǫ
for The~Chimney~Man on {inv.0} red {poss}-The~Chimney~Man {wkd} {obs} {wo+7} one {wo+10} throne
[That there is] one for The Chimney Man on His red throne
`)

#gloss(`
Chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́·
chír chírcą chǫnsǫ dun árxį́ xún txą́cą ánrų́
at where reside {nwk} {inv.+2} {null} the~North~Pole shadow
At the North Pole where the Shadows lie.
`)

#gloss(`
Ún ta-dorą nangį́ ta-rųtí
ún ta-dorą nangį́ ta-rųtí
for {poss}-rule one {poss}-ferrule
One Ferrule to rule,
`)

#gloss(`
Ún ta-shųnsį́ ų́rų́ txadą́ shų́·
ún ta-shųnsį́ ų́rų́ txadą́ shų́·
for {poss}-find {wkd} {wo+7} all
To find them all
`)

#gloss(`
Ún ta-xį́tį nangį́ ta-rųtí
ún ta-xį́tį nangį́ ta-rųtí
for {poss}-bring one {poss}-ferrule
One Ferrule to bring,
`)

#gloss(`
Ún ta-tsantú chír xurgį·
ún ta-tsantú chír xurgį
for {poss}-bind in arctic
To bind [them] in the Arctic.
`)

=== Notes
The sentence _Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́_ is very complex and serves as a good illustration of some of the quirks of Elvish grammar:
- #w[ų́rų́] marks that the entire clause is an object of the verb #w[tshų́’á] ‘declare’ in the first clause. It can be translated as the English subordinator ‘that’ in this context.
- The evidentiality marker #w[gan] qualifies the copula, which has no root. It is required here to prevent #i[ų́rų́] from affecting only the following noun phrase, as it must precede a verb (marker) to affect the entire clause.
- #w[txadą́ cuncutǫn] is simply the word for the number 9 (whose default work order is #[w11]) raised by 7 work orders to give it work order #s[w4] to match #w[rųtí] ‘ferrule’ in the second clause, which is elided here. Thus, this phrase literally means ‘nine of the thing with work order #s[w4]’.
- The complement of the PP headed by #w[ún] ‘for’ is the rest of the clause.

In particular, the relative clause #i[dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo] ‘which are destined to retire‘ is fairly complicated on its own:
- The NP it modifies, #w[shardo núgį́] ‘mortal humans’, follows the clause rather than preceding it.
- Notably, the relative pronoun #w[cą] is not the first word in the clause. Rather, because it is the subject of a clause with a lazy verb, it is preceded by the lazy agent marker #w[dun].
- The complement of #w[túsą] ‘to be destined’ is yet another clause, viz. #i[shąnų́ dun tų́r shardo] ‘the mortal ones retire’.
- This inner clause is preceded by the lazy theme marker #w[ų́xį́], which marks that the clause is the theme of #w[túsą].
- The sequence #w[tų́r shardo núgí] is SAP-contracted (see @sap-contraction) and is short for #w[tų́r shardo shardo núgí]. That is,
  we have a SAP #w[tų́r shardo] ‘the mortal ones’, which agrees with #w[núgį́] ‘human’ and its referent is the NP #w[shardo núgį́] ‘mortal humans’.

In sum, this sentence is a dependent clause that contains a relative clause whose theme is another clause, and both inner clauses either modify or reference an NP that occurs later on in the sentence.

=== Notes to add to the grammar.
- The interpunct is the only punctuation mark and functions as a full stop, semicolon, colon, and comma.
- The particle ‘that’ as in ‘I declare that’ is expressed by placing the theme marker before the verb
  of the ‘that’-clause, or before the entire clause if there is no verb (zero copula).
- In poetry, movement of nouns due to work order is restricted to within a line rather than within a clause.

=== Literal Translation of the Elvish Adaptation
#verse[
This Elf declares: \
That there are three Ferrules for the Master Carbonators under the mine \
That there are seven for the Colliers in their stone-halls \
That there are nine for Mortal Men [who are] destined to retire \
That there is one for The Chimney Man on The Chimney Man's red throne \
At the North Pole where the Shadows reside \
One Ferrule to rule, to find them all \
One Ferrule to bring, to bind [them] in the Arctic. \
At the North Pole where the Shadows reside
]

= Appearance and Culture
== Gender
Elves have no concept of gender and are each referred to as ‘it’. They also do not reproduce naturally and are instead all created by The Chimney Man.

== The Carbonators <carbonators>
At the very top of Elvish society stands the council of Master Carbonators. This council consists of a dozen or so Elves who are assigned a work order of 3.

The council is ruled over by the Grand Carbonator. It is the sole Elf that is assigned a work order of 2, and who is thus considered equally important to the Elves as Coal itself. The Grand Carbonator is effectively the right-hand Elf of The Chimney Man and reports to Him in person every Christmas Eve.

== Elvish Upper Class <cloaks>
The social classes of Collier and Master Carbonator comprise the upper classes of Elvish society; these Elves are easily identified as only they are entitled to wear #w[rǫngi] ‘cloaks’. These cloaks come in three forms:

- Colliers wear crimson cloaks and are thus commonly referred to as #w[isirǫngi] ‘redcloaks’.
- Master Carbonators wear crimson cloaks embroidered with black patterns of Coal and are thus commonly referred to as #w[xúsųrǫngi] ‘blackcloaks’.
- Finally, the Grand Carbonator’s cloak is entirely black and coated with Coal; for this reason, the Grand Carbonator is commonly referred to as #w[Shǫnxąrǫngi] ‘Coal cloak’.

Low-ranking Elves who pretend to have a higher social rank than they actually do are referred to as #w[ishúrǫngi] ‘fake cloaks’; wearing a cloak that corresponds to a higher class than one’s own is generally punished by decommissioning (see @retirement).

Other Elves do not wear any clothes at all. The common Elf instead keeps itself warm in the freezing temperatures of the Arctic by burning the Coal it consumes inside its ventral furnace.

== ‘Retirement’ <retirement>
A central concept in Elvish society is #w[shų́ną] ‘retirement’.
Elves never stop working; that is, an Elf only ‘retires’ at the moment of its death. In some cases, Elves who have acted out of line or otherwise disrupted the Coal mining process—or worse, slighted The Chimney Man—can be ‘decommissioned’, which entails _actively_ ‘retiring’ an Elf. This is also known as ‘dishonourable retirement’.

Elves that retire honourably are given a #w[Shǫnxąshų́ną] ‘Coal burial’, i.e. they are cremated in such a way as to turn them into Coal, thus contributing to Elvish society even after their demise.

== Sleep
Elves never sleep prior to their retirement. In Elvish, there are indeed two different words for ‘sleeping’; one that refers to the most sacred and noble hibernation of The Chimney Man, and which therefore naturally assigned a work order of 1 and which can indeed refer only to the sleep of The Chimney Man.

The other word, conversely, has word order 11 and is associated primarily with the sleep of humans and other lesser beings. Elves consider this form of sleep nothing but a waste of time.

Thus, it should also come as no surprise that The Chimney Man’s hibernating is considered a working verb, as The Chimney Man always works the Hardest and therefore His hibernation must obviously be some to the Elves unfathomable form of work. Normal sleeping, by contrast, is a lazy verb.

== Physical Description
- Elves have no lips, making their sharp and pointy teeth, which are designed for the chewing and consumption of Coal, by which they are perpetually stained a dark and dusty black, clearly visible.
- Elvish tongues are extremely stiff and don’t bend.
- Elvish eyes are covered in multiple levels of eye lashes to keep the Coal out of their vision. Since the Elvish eye has evolved to thrive in an exceedingly dry and dusty environment, Elves naturally never need to close their eyes and thus lack eyelids.
- Elves have pointy ears, but they point downwards, so as to not collide with the low ceiling of their mines.
- Low-ranking Elves (below the rank of Collier) are typically always hunched down so as to fit in lower tunnels.
- Elves have inverted knees, so as to improve crawling in tunnel conditions.
- Elves are closer to Coal golems than biological creatures.
- The throat and mouth of an Elf is constantly extremely dry due to being coated in Coal dust, which renders their articulation extremely hoarse, strained, and outright grating.
- The complexion of an Elf is a dark grey, simply because they are always covered in layers upon layers of coal; no-one actually knows what the natural skin colour of an Elf is.
- Elves are mostly bald; the most hair they have on their bodies is their eye lashes.

== Idioms
Since Coal is the most important aspect of Elvish society, many idioms and phrases in Elvish revolve around Coal and anything involved in the Coal mining process. For example, whereas in English a seam of Coal may be referred to as a ‘coal vein’ in analogy with the veins of the human body, Elvish does the opposite: the term #w[shų́’i ta-xąro] ‘blood vessel’ literally means ‘tunnel of blood’, where #i[shų́’i] is the term for a tunnel in a Coal mine.

= April Fool's notes for the server
- Make some images and emojis etc. for the Discord server. Make it coal-themed.
- Rename ‘general’ and ‘general-2’ to ‘mining’ and ‘mining-2’.
- Change the server icon to a picture of Coal.
- Rename the server to ‘Agma’s Colliery’.
- Rename Agma to ‘The Chimney Man’.
- Rename Ætérnal to ‘The Grand Carbonator’
- Some of the mods can rename themselves to ‘Master Carbonator’.
- Change all role colours to shades of grey/black (save the previous colours so they can be restored); only Agma’s role as the Chimney Man should remain red.
- Don’t rename the roles to people can still ping them for moderation purposes.
- Rename the MC channel to ‘coal-mining’
- Give everyone on the server free Coal.
- Leave everything that way for a week.
- Note to Ætérnal: start preparing assets for that; apply all of this when I wake up the day the video comes out. Change my profile picture to Coal. Prepare all of this on my test server ahead of time so I can simply copy the settings.

= Dictionary
Lazy verbs are marked with #i[lz], working verbs with #i[wk].
#dictionary(
    read("elvish.dict.txt"),
    elvish,
    custom-macro-handler: (macro, render) => {
        if macro.name == "santaa" [Santaa #santaa(render(macro.args.at(0)))]
        else { panic("Unsupported macro " + macro.name) }
    }
)