#import "base/src/lib.typ" : *
#let elvish = plugin("plugin/target/wasm32-unknown-unknown/release/elvish.wasm")
#show : setup.with(compact: true)

#let ipa(s) = {
    if s == none { "<NONE>" }
    else {
        render-dictionary-node(
            json(elvish.ipa_impl(bytes(if type(s) == str { s } else { s.text })))
        )
    }
}

#gloss-set-ipa-function(ipa)
#gloss-set-line-spacing(.6em) // Tie bars and ogoneks may collide, so space this out a bit more.
#show "↓" : [#h(-.15em)↓#h(-.15em)] // Reduce kerning a bit to save space.
#show "ʄ͡ɠ": [ʄ#box(move(dy: .2em)[\u{0361}])ɠ]

#let w(s) = { [_#[#s]_ #box[/#ipa(s)/]] }
#let i(s) = { [_#[#s]_] }

#gloss-set-replacements((
    "~": " ",
    "---": [---],
))

#table-of-contents()
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
    [            & Alveolar         & Palato-velar        & Uvulo-Glottal ],
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

// TODO: Make the noun (phrase) ‘cellar door’ sound as horrible as possible.

= Grammar
vtrbt Q NQ (causative)
NQ (transitive)
"Kyle slides (Q/NQ) down the chimney."
"So (does) BOB."
He (is) an elf.

(essentially recreate a dummy "do" that can also operate as a contextual ellipsis on previosuly stated verbs)

== Work Order
Animacy is vital to determining word order in Elvish. The highest animacy, and thus primacy in a clause, goes to that which is working the hardest. This is 'Work Order.' From highest work order to lowest, the ranks go as follows:

+ The Chimney Man (#s[w1]) \
  In any circumstance in which The Chimney Man is referenced, He will always have the highest Work Order, for He is always working the Hardest. Except for the day after Christmas.

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

=== Standalone Adjective Phrases <standalone-adjective-phrases>
A very common idiom in Elvish is to refer to a noun (phrase) in the domain of discourse by an adjective that describes it,
optionally preceded by a work order marker that agrees with the work order of the noun (phrase); this largely replaces pronouns
in Elvish.

In writing, it is common for the first mention of a noun phrase to be accompanied by one or more adjectives that may later on be
used to refer to it.#footnote[This is omitted in spoken language when the noun phrase is something that is clearly visible to
all interlocutors.] For example, a Master Carbonator with the name of #w[Txǫncų] might be introduced as #i[Txǫncų xúsųrǫngi] ‘Master Carbonator Txǫncų’ (lit. ‘Blackcloak Txǫncų’) and then later on referred to as #w[Xį́ntí Xúsų] (lit. ‘black~#s[+w8]’). Such adjective phrases are capitalised if they refer to a noun that is capitalised.

==== Invoice
The Elves employ a tactic for further efficiency in their language known as the 'Invoice.' An invoice operates in a similar way to adjective-noun agreement.
The word-initial phonemes of adjectives are derived in a way similar to grammatical gender in order to assign them any of 5 possible invoice categories, which can then be used to further shorten sentences with efficient, contextually-based information.
However, while these categories are phonologically derived, the invoice associated with any given adjective phrase is entirely dependent on the tense of the sentence.
For example, a word that begins with #w[d] is of the REM gender, it can be substituted in later conversations with an invoice particle. This particle is assigned to a given noun phrase in conversation, with a value that follows the pattern $"Present Tense" - n$, with $n$ being the number of sleep phases that have passed between the 'gender' and the present day. Thus, there are 5 invoice declaration particles:
+ -2
+ -1
+ 0
+ 1
+ 2

For instance:
// FIXME: THIS GLOSS IS BROKEN
//  #gloss(`
// Gan nun’a rǫsa shu ų́xį́ tą́ --- (-1) --- dun txǫncų.
// gan nun’a rǫsa shu ų́xį́ tą́ dun txǫncų
// {obs} {rem} slide {nc} {man} chimney {nwk} Txǫncų
// Txǫncų slides down the Chimney (Invoice -1) (and I see it do so).
// `)


== Nouns
Nouns are declined for number and work (see @nouns-at-work); there are also a number of miscellaneous noun markers that are used to express concepts such as possession.

The default number is Collective. An unmarked noun is usually assumed to be collective, but there are some exceptions. E.g. predicate nouns are never marked for number as they obviously must have the same number as the noun they describe. Pronouns (see @pronouns) are likewise never marked for number, and neither are proper nouns.

For concrete nouns, the Collective usually has the meaning of ‘all’ or ‘every’. As opposed to the unmarked "Collective" form, a marking describes a noun as "Non-Collective." This could refer to one individual or a fraction of some whole.

The following is a list of Elvish noun markers:

- #w[shu] ‘non-collective’ (#s[nc]), e.g. #i[shu ną́nrų́] ‘one or more Elves’.
- #w[ta-] (#s[gen]); this is a possessive marker, e.g. #i[ta-ną́nrų́] ‘of the Elves’.

=== Nouns at Work <nouns-at-work>
Nouns are also declined for whether or not they perform work. Essentially this marks their position as an agent or patient in any given clause. The verb itself is not declined for voice---this information is contained exclusively in the noun phrase.

Noun markers precede the noun (phrase) they qualify; the following is list of Elvish noun work markers:
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
Compound nouns can be expressed by juxtaposition; the modifier comes second, just like in Santaa, e.g. #w[ną́nchųn] ‘head miner’ (lit. ‘miner head’)
from #w[ną́nrų́] ‘canary’ and #w[chųnxi] ‘head’.

== Pronouns <pronouns>
=== Demonstrative Pronouns
There are 5 demonstrative pronouns, each corresponding to a tense (see @tam); as many other things, deixis in Elvish is relative: unlike other languages which employ spatial metaphors to express time, Elvish employs temporal expressions to express relations in space.

That is, the demonstrative pronouns in Elvish are formed by combining the preposition #w[chír] ‘at, in, on’ with one of the tense morphemes:
+ Awake tense: #w[chírsąn]
+ REM sleep tense: #w[chírnu]
+ Non-REM Phase 1 tense: #w[chírtxí]
+ Non-REM Phase 2 tense: #w[chíro]
+ Non-REM Phase 3 tense: #w[chírnų]

The proximal demonstrative pronoun is expressed relative to the _tense_ of the utterance: the medial demonstrative pronoun by the tense following the proximal one, and the distal demonstrative pronoun by the tense following the medial one.
For example, if the utterance is in the REM sleep tense, we have:
- #i[chírnu] = ‘this’,
- #i[chírtxí] = ‘that (medial)’,
- #i[chíro] ‘that (distal).

In the Non-REM phase 2 tense, we instead have:
- #i[chíro] = ‘this’,
- #i[chírnų] = ‘that (medial)’,
- #i[chírsąn] ‘that (distal).

In reported speech, the direction is reversed, i.e. instead of medial being the tense after proximal and distal being the tense after medial, instead medial is the tense _preceding_ proximal, and distal is the tense preceding medial. E.g. the demonstrative pronouns in reported speech that uses the Non-REM phase 1 tense would be:
- #i[chírnu] = ‘this’,
- #i[chírsąn] = ‘that (medial)’,
- #i[chírnų] = ‘that (distal)’.

Note that it is the _tense_ of the sentence that matters; neither the time of utterance, nor the time at which the utterance is paraphrased, if at all, are relevant here! For example, a sentence that refers to the future that is uttered during the REM sleep phase would use the Non-REM phase 1 tense; in such a sentence, the medial demonstrative pronoun would be #w[chíro], i.e. the
Non-REM phase 2 form; if such a sentence is then paraphrased during Non-REM phase 3, the corresponding future tense would naturally
be the awake tense, and the medial pronoun would be the tense _before_ that (recall that the direction is reversed in reported speech), and thus, the correct form would be #w[chírnų], i.e. the Non-REM phase 3 form.

=== Personal Pronouns
There are three sets of constructions in Elvish that are jointly referred to as ‘personal pronouns’. While semantically equivalent, their usage is highly dependent on social status, and they are not interchangeable.

==== Full Personal Pronouns
The so-called _full personal pronouns_ of Elvish are formed by combining the demonstrative pronouns with the status-appropriate word for ‘Elf’: The proximal demonstrative is used to express the 1st person, the medial to express the 2nd person, and the distal to express the 3rd person. Naturally, this also means that the exact forms of the personal pronouns depend on the tense of the containing clause (as well as whether direct or reported speech is used).

For example, in a sentence in Non-REM Phase 2 tense spoken by a Master Carbonator, the closest Elvish equivalent to a word for ‘I’ would be #w[chíro xúsųrǫngi], lit. ‘this Master Carbonator’. Similarly, in a sentence paraphrased in Non-REM Phase 3 tense, the word ‘it’ in reference to a Collier would be #w[chírtxí isirǫngi], lit. ‘that (distal) Collier’.

==== Abridged Personal Pronouns
There are two forms of ‘abridged’ pronouns: The _high-class_ abriged pronouns are formed by combining the demonstratives with the noun #w[rǫngi] ‘cloak’. The _low-class_ abridged pronouns are identical to the bare demonstratives. Abriged personal pronouns are only used to refer to an Elf at or below one’s own social status.

==== Usage Notes
Which set of personal pronouns is appropriate in what context is dependent on the social status of the speaker (in the 1st person), as well as that of the referents (in the 2nd and 3rd person). There are strict rules that govern the usage of the pronouns. The rules for the 2nd/3rd person pronouns are:
- The Chimney Man and The Grand Carbonator are never referred to by a pronoun; instead, the entire phrase ‘The Chimney Man’ or ‘The Grand Carbonator’ is repeated. Similarly, Coal is also never referred to by a pronoun; instead, the noun ‘Coal’ is repeated.

- The full pronouns are used to refer to an Elf of higher social class than one’s own.

- The abridged pronouns are used to refer to an Elf at or below one’s own social class. The high-class pronouns are used when the referent is at the rank of Collier or above, and the low-class pronouns otherwise.

- Personal pronouns are only used to refer to Elves. For any other beings, objects, concepts, etc., standalone adjective phrases (see @standalone-adjective-phrases) are used instead.

- Additionally, standalone adjective phrases may be used whenever an abridged pronoun would be appropriate.

The rules for the 1st person pronoun are simpler: In reference to oneself, the full pronouns are used when speaking to someone of higher social status, and the abridged pronouns otherwise. Naturally, Elves at or above the rank of Collier use the high-class pronouns and other Elves the low-class pronouns.

==== Disinguishing Personal and Demonstrative Pronouns
Since personal and demonstrative pronouns can be very similar, as the former simply use the latter, there are rules that can be used to distinguish the two; the most important one of these is that a demonstrative that qualifies the noun always follows the noun. For example, assuming we’re in the REM phase, we have #w[chírnu rǫngi] ‘I’ (high-class pronoun) vs #w[rǫngi chírnu] ‘this cloak’ (literally).

This is especially important in the context of a zero copula (see @copula). Consider e.g. #w[chírtxí tchų́rshu] ‘you are an idiot’ vs #w[tchų́rshu chírtxí] ‘that idiot’.


== Verbs
Verbs are either classified as ‘working’ or ‘lazy’ (see @nouns-at-work). Verbs are not inflected for number, only nouns are. In the absence of work order distinction, the default word order is VOS. Verbs generally do not have an associated work order (unless they are derived from a noun) and are generally placed first; the main exception to this is that nouns with work order 1 are always placed first and precede even the verb.

=== Tense, Aspect, Mood <tam>
Tense follows a paradigm relative to The Chimney Man's typical stage of sleep throughout a given year.
For example, if the Chimney Man is in REM sleep during April, and it's currently June, the "REM" tense would be used to discuss something in the past.

+ Awake (#s[awk]): Christmas Eve
+ REM sleep (#s[rem]): \~December 29th -- May 3rd
+ Non-REM Phase 1 (#s[nr1]): \~May 4th -- August 25th
+ Non-REM Phase 2 (#s[nr2]): \~August 26th -- November 9th
+ Non-REM Phase 3 (#s[nr3]): \~November 10th -- December 23rd

The markers for the #s[awk] tense follows the verb, all other markers precede the verb. These
markers are as follows:
+ Awake tense: #w[sąn]
+ REM sleep tense: #w[nun’a]
+ Non-REM Phase 1 tense: #w[txí]
+ Non-REM Phase 2 tense: #w[ronu]
+ Non-REM Phase 3 tense: #w[ronų]

As nobody truly knows when _exactly_ when the Chimney Man falls asleep, the few days following Chrismtas are an enigma to Elvish speakers. They cannot, and out of respect and fear for the Chimney Man, will not express anything related to time. During this time, which often spans from December 25th until December 28th, all tense marking is dropped. This is known as the ‘Temporal Void’.

Reported Speech uses the tense at the time being described in the utterance, not the current time.
For example, a sentence that was spoken on the 20th of August referring to a past event, the speaker of that utterance would use the REM tense. If reported speech is used to describe or paraphrase that sentence on the 3rd of September, the speaker would use the Non-REM Phase 1 Tense, since that is now a past tense.

During the Non-REM Phase 3, the Future is the Awake Tense. This wraps ad infinitum.

One has to be careful not to confuse tense between direct speech and reported speech.
For example, given an utterance that was spoken during Non-REM Phase 1 but _in_ Non-REM Phase 2 Tense, that utterance refers to the future. But if such an utterance were erroneously reported in that same tense during Non-REM Phase 3, it would incorrectly refer to the past. Instead, the Awake Tense should be used to paraphrase.

Note that the tenses are only relative to the point of utterance.
For example, during Non-REM Phase 1, if one wanted to refer to an event that took place in November of _last year_, one would use the REM Sleep Tense, since that is the Past Tense. The fact that Non-REM Phase 2 takes place in November does not mean that it is used to describe things that did/will take place in November.

Going back by two tenses creates a pluperfect sense.
Going forward by two tenses creates a future in the future sense.

It is not possible to go back or forward by three tenses since that would be equivalent to going forward _or_ back by two tenses.

Reported Speech that paraphrases an utterance that was uttered during the "temporal void" likewise uses no tense marking.

Since a sentence in a vacuum without any information as to when it was uttered is impossible to extract temporal data from, any Elvish prose, etc. is always accompanied by a date, much like a diary entry would be. The exception to this is information uttered during the temporal void, during which the date is customarily omitted.

=== Dependent Clauses
Tense in dependent clauses is relative to the tense of the matrix clause; for example, during the REM sleep phase, a future sentence would use the Non-REM phase 1 tense; a dependent clause that is in the past relative to that Non-REM phase 1 matrix clause would use the REM sleep tense, and in that dependent clause, that tense acts as a past tense---even though the very same tense would be the present tense if used in a matrix clause during the REM sleep phase.

=== Copula <copula>
The Elvish copula is $emptyset$, i.e. the empty root; that is, to express the copula all verb markers are used as they normally would be, except that the verb is ‘missing’. Even the tense and evidentiality marker may be dropped if elision is applied, or if they’re obvious from context, generally if the sentence is in the present tense, leading to a zero copula (see @elision).

=== Aspect
Aspect marking differs between working verbs and lazy verbs. Working verbs are marked for telicity, i.e. whether the work
is done (#s[tel] ‘telic’) or not (#s[atel] ‘atelic’). Lazy verbs are marked for whether the laziness is continued
(#s[cont] ‘continuous’), or returning (#s[hab] ‘habitual’). For working verbs, telic is the default, for lazy verbs,
continuous is the default.
- #w[tú] (#s[atel]): marks that a working verb is atelic
- #w[dor] (#s[hab]): marks that a lazy verb is habitual

=== Moods

=== Evidentiality <evidentiality>
Evidentiality is split into four categories:
- #w[sán] (#s[ver] ‘veridical’): (as though) decreed by The Chimney Man (truth)
- #w[gan] (#s[obs] ‘observable’): directly observable
- #w[xįn] (#s[com] ‘communicated’): communicated by someone (hearsay)
- #w[txą́] (#s[nor] ‘North Pole’): purported to exist (in the North Pole)
- #w[tsų́n] (#s[dub] ‘dubious’): purported to exist elsewhere

Statements of fact use the Chimney Man evidentiality—for example, $2+2=4$—and so do statements that an Elf is absolutely sure about. The meaning of this evidentiality is closer to ‘as true as though The Chimney Man Himself had decreed it’, and a suitable translation may be ‘most surely’. At the same time, it is of course also used to refer to literal statements made by The Chimney Man

=== Elision <elision>
When the verb markers for multiple sentences in a row are the same, the markers are dropped for any verb after the first.

== Derivation
=== Vowel Swapping
A common way to turn a noun into a verb in Elvish that applies solely to disyllabic words is to swap the vowels, e.g.
#w[ną́nrų́] ‘Coal miner’ becomes #w[nų́nrą́] ‘to mine Coal’.

= Examples
#gloss-show-numbers(false)
It is assumed that the examples below are spoken on 2 February (i.e. during the REM phase).
#gloss(`
Gan nun’a rǫsa shu ų́xį́ tą́ dun txǫncų.
gan nun’a rǫsa shu ų́xį́ tą́ dun txǫncų
{obs} {rem} slide {nc} {man} chimney {nwk} Txǫncų
Txǫncų slides down the Chimney (and I see it do so).
`)

// Note: the tense of the dependent clause is present tense, but because of tense agreement
// with the matrix clause, the ‘dependent present tense’ is the same as the past tense, which
// happens to match how English does backshifting.
#gloss(spacing-override: .25em,`
Sán sąn sǫtą dishą́ dun chírsąn rǫngi ų́xį́ chírnu tchų́rshu.
sán sąn sǫtą dishą́ dun chírsąn rǫngi ų́xį́ chírnu tchų́rshu
{ver} {awk} know always {nwk} {dem.awk} cloak {man} {dem.rem} idiot
I always knew that you were an idiot.
`)

Lit. ‘This cloak most surely always knew [that] that(#smallcaps[medial]) [was observably an] idiot.’

= Worldbuilding
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
- Elves have pointy ears, but their point downwards, so as to not collide with the low ceiling of their mines.
- Low-ranking Elves (below the rank of collier) are typically always hunched down so as to fit in lower tunnels.
- Elves have inverted knees, so as to improve crawling in tunnel conditions.
- Elves are closer to Coal golemns than biological creatures.
- Idea for the Minecraft server: change the copper golem texture to be Coal and rename them to ‘Elves’.
- The throat and mouth of an Elf is constantly extremely dry due to being coated in Coal dust, which renders their articulation extremely hoarse, strained, and outright grating.
- The complexion of an Elf is a dark grey, simply because they are always covered in layers upon layers of coal; no-one actually knows what the natural skin colour of an Elf is.
- Elves are mostly bald; the most hair they have on their bodies is their eye lashes.

== Idioms
Since Coal is the most important aspect of Elvish society, many idioms and phrases in Elvish revolve around Coal and anything involved in the Coal mining process. For example, whereas in English a seam of Coal may be referred to as a ‘coal vein’ in analogy with the veins of the human body, Elvish does the opposite: the term #w[shų́’i ta-xąro] ‘blood vessel’ literally means ‘tunnel of blood’, where #i[shų́’i] is the term for a tunnel in a Coal mine.

= Notes for the Video etc.
- For the consonants table, only show the spelling at first, and only then the IPA.
- Rough plan for the video: Release it at normal times to make people think it’s a normal video. Intro: 30s–1m synopsis of Tolkien’s life; say we’re presenting ‘Elvish’; show the consonants table w/o the IPA; show the vowel table w/o the IPA; don’t explain why ⟨o⟩ is off to the side somewhere and conspicuously omit the labels on both tables (because ‘palato-velar’ and ‘uvulo-glotal’ is already too obviously horrible); present an example sentence, spelling only; then read the sentence and show IPA at the same time. ‘Now, if you’re a bit confused about my pronunciation just now, that wasn’t because I’m really bad at Sindarin; see, today, we’re not talking about Tolkien’s Elves, but rather Santa’s, or, should I say, _Santaa’s_. Then do a proper intro and revisit the consonants/vowels, this time w/ IPA etc.
- Just add a sentence about the Elves’ ‘ventral furnace’ and then just don’t elaborate.

== April Fool's notes for the server
- Make some images and emojis etc. for the Discord server. Make it coal-themed.
   - Rename ‘general’ and ‘general-2’ to ‘mining’ and ‘mining-2’.
   - Change the server icon to a picture of Coal.
   - Rename the server to ‘Agma’s Coal Mine’.
   - Rename Agma to ‘The Chimney Man’.
   - Rename Ætérnal to ‘The Grand Carbonator’
   - Some of the mods can rename themselves to ‘Master Carbonator’.
   - Change all role colours to shades of grey/black (save the previous colours so they can be restored); only Agma’s role as the Chimney Man should remain red.
   - Don’t rename the roles to people can still ping them for moderation purposes.
   - Rename the MC channel to ‘coal-mining’
   - Give everyone on the server free Coal.
   - Leave everything that way for a week.
   - Note to Ætérnal: start preparing assets for that; apply all of this when I wake up the day the video comes out. Change my profile picture to Coal. Prepare all of this on my test server ahead of time so I can simply copy the settings.



= Invoice

= Translation
Tolkien’s Ring Verse as rendered in literary Elvish by the Elvish poet #w[Tǫrxí]:
- Replace ‘Dark Lord’ with ‘the Chimney Man’
- Replace ‘Elven kings’ with just ‘Master Carbonators’
- Replace ‘dwarf lords’ with ‘Colliers’
- Replace ‘ring(s)’ with ‘ferrules’
- Replace ‘in the darkness bind them’ with ‘in the Arctic bind them’
- Replace ‘Land of Mordor’ with ‘the North Pole’

= Video Script

= Dictionary
Lazy verbs are marked with #i[lz], working verbs with #i[wk].
#dictionary(read("elvish.dict.txt"), elvish)