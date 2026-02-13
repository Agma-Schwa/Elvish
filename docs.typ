#import "base/src/lib.typ" : *
#let elvish = plugin("plugin/target/wasm32-unknown-unknown/release/elvish.wasm")
#show : setup.with(compact: true)

#let ipa(s) = render-dictionary-node(
    json(elvish.ipa_impl(bytes(s.text)))
)

#let w(s) = { [_#[#s]_ #box[/#ipa(s)/]] }
#let i(s) = { [_#[#s]_] }

#table-of-contents()
#show : mainmatter

= Phonology
- No lips -> no rounded or labial
- Stiff tongue -> no apical sounds; only laminal consonants

== Consonants
#rowtable(
    hlineat(1),
    vlineat(1),
    [            & Alveolar         & Palatovelar         & Uvulo-Glottal ],
    [ Nasal      &                  &                     & ɴˀ ⟨n⟩        ],
    [ Stop       & d̻ t̻    ⟨d t⟩     & c͡k ɟ͡g      ⟨c g⟩    & ʔ  ⟨’⟩        ],
    [ Fricative  & s̻ s̻ʰ   ⟨s sh⟩    & ç͡x ç͡xʰ     ⟨ch x⟩   &               ],
    [ Affricate  & t̻͡s̻ t̻͡s̻ʰ ⟨ts tsh⟩  & c͡k͡ç͡x c͡k͡ç͡xʰ ⟨tch tx⟩ &               ],
    [ Trill      &                  & r̠͡ʀ̟         ⟨r⟩      &               ],
)

- #w[r] is a coarticulated palatal-velar trill (yes, Elves can do that)

== Vowel

// the palatal-velar click) is a vowel because clicks are ingressive.

#rowtable(
    hlineat(1),
    vlineat(1),
    [             & Front        & Back         & Click  ],
    [ Close       & i↓ ɪ↓ ⟨i í⟩  & ɯ↓ ɯ̽↓ ⟨u ú⟩  &        ],
    [ Open        & a↓ ɐ↓ ⟨a á⟩  &              &        ],
    [ Palatovelar &              &              & ᵏǂ ⟨o⟩ ]
)

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
[C|A]V(Q)((n)[C|’]V(Q))|V(Q)[(n)C]V(Q)
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

== Work Orders

Animacy is vital to determining word order in Elvish. The highest animacy, and thus primacy in a clause, goes to that which is working the hardest. This is 'Work Order.' From highest work order to lowest, the ranks go as follows:

+ The Chimney Man (#s[w1]) \
  In any circumstance in which The Chimney Man is referenced, He will always have the highest Work Order, for He is always working the Hardest. Except for the day after Christmas.

+ Coal (#s[w2]) \
  Coal is considered the most important aspect of Elvish society and thus placed just below The Chimney Man. It is also considered capable of performing more work
  than any Elf as it generates a lot of energy when burnt (unlike Elves).

+ Master Carbonator (#s[w3]) \
  The highest social status that an Elf can obtain; the council of Master Carbonators rules over Elvish society and reports directly to The Chimney Man.

+ Collier (#s[w4]) \
  Highly experienced Elves that have been working in the coal industry for at least 100 years; these are typically regional overseers.

+ Head Miner (#s[w5]) \
  Elf in charge of a coal mine.

+ Canary (#s[w6]) \
  Used for both the lowest class of Elves (i.e. the common coal miner) as well as the bird.

+ Human Coal Miners (#s[w7]) \
  Used for human coal miners.

+ Human Adults (#s[w8]) \
  Used for any other human adult.

+ Animals (#s[w9]) \
  Used for any animal.

+ Human Children (#s[w10]) \
  Used for human children (that are not coal miners). While important to Elvish society as the benificiaries of their toils, they are deemed the laziest of beings.

+ Everything Else (#s[w11]) \
  Genreally, any inanimate object other than coal, abstract concepts, etc.

Some words may have work orders that aren’t obvious from their semantics, e.g. the word #w[shų́ną] ‘retirement’ has work order 4 as it is considered a culturally important part of Elvish society.

=== Work Order Marking <work-order-marking>

There are two ways in which work order may be expressed. First, all nouns have an inherent work order, e.g. #w[dį́gá] ‘cane’ always has work order 11. In addition to this, there is also a set of work order markers that may be placed before a noun to raise or lower its default work order. These affixes are as follows:
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
- Attempting to raise/lower the work order of a noun below the minimum (#s[w11]) or maximum (#s[w1]) work order is ungrammatical.
- Lowering the work order of a noun with default work order #s[w1] is considered a great taboo, except for very specific circumstances. E.g. a Chimney Man impersonator might be referred to as an #w[oxa są́ntą́] ‘fake Chimney Man’ (lit. ‘Chimney Man’ lowered to work ordre #s[w11]).
- The inverse is generally acceptable, e.g. #w[shindí dį́gá] ‘A cane made personally by The Chimney Man’.
- As we just saw, work order raising/lowering can be used to communicate that an otherwise low-status being or object (or high-status being or object) is in some manner closely associated with something or someone of higher status (or lower status), e.g. #i[xúnną dį́gá] can also refer to a cane that belongs to a Head Miner.

== Adjective Hierarchy

In sequences of adjectives (which Elves are particularly prone to), the following categories of heirarchy of importance determines the order at which they are uttered:

+ Christmas
+ Coal
+ Elves
+ Work
+ Humans
+ Rest

== Nouns at Work
Nouns are declined for whether or not they perform work. Essentially this marks their position as an agent or patient in any given clause. The verb itself is not declined for voice---this information is contained exclusively in the noun phrase.

The default number is Collective. An unmarked noun is assumed to be collective. For concrete nouns, the Collective usually has the meaning of ‘all’ or ‘every’. As opposed to the unmarked "Collective" form, a marking describes a noun as "Non-Collective." This could refer to one individual or a fraction of some whole.

Noun markers precede the noun (phrase) they qualify; the following is an exhaustive list of Elvish noun markers:
- #w[shu] ‘non-collective’ (#s[nc]), e.g. #i[shu ną́nrų́] ‘one or more Elves’.
- #w[ų́rų́] ‘performs work’ (#s[wrk]); this is used to mark the agent of a verb that denotes an action that is considered to perform work.
- #w[duntú] ‘does not perform work’ (#s[nwk]); this is used to mark the agent of a verb that denotes a state or an action that is not considered to perform (worthwile) work.
- #w[tchą́’ų́] ‘has work performed on it’ (#s[wkd]): this is used to mark the theme of a verb
  whose agent is in the #s[wrk] form.
- #w[ų́xį́] ‘is being manipulated in some fashion’ (#s[man]): this is used to mark the theme of
  a verb whose agent is in the #s[nwd].

This system naturally gives rise to 2 verb classes:
- ‘working verbs’, whose agent is in the #s[wrk] case and whose theme is in the #s[wkd] case.
- ‘lazy verbs’, whose agent is in the #s[nwk] case, and whose theme is in the #s[nwd] case.

The verb itself is only inflected for tense (see @tam).

== Pronouns
As Santaa contains no first person, an Elf refers to oneself as "This Elf," with verbs inflected in the third person.

Verbs are not inflected for number, only nouns are.

== Tense, Aspect, Mood <tam>
Tense follows a paradigm relative to The Chimney Man's typical stage of sleep throughout a given year.
For example, if the Chimney Man is in REM sleep during April, and it's currently June, the "REM" tense would be used to discuss something in the past.

+ Awake (#s[awk]): Christmas Eve~
+ REM sleep (#s[rem]): \~December 29th -- May 3rd
+ Non-REM Phase 1 (#s[nr1]): \~May 4th -- August 25th
+ Non-REM Phase 2 (#s[nr2]): \~August 26th -- November 9th
+ Non-REM Phase 3 (#s[nr3]): \~November 10th -- December 23rd

The markers for the #s[awk] tense follows the verb, all other markers precede the verb. These
markers are as follows:
+ Awake tense: #w[są́ntą]
+ REM sleep tense: #w[nun’a]
+ Non-REM Phase 1 tense: #w[txí]
+ Non-REM Phase 2 tense: #w[ronu]
+ Non-REM Phase 3 tense: #w[ronų]

As nobody truly knows when _exactly_ when the Chimney Man falls asleep, the few days following Chrismtas are an enigma to Elvish speakers. They cannot, and out of respect and fear for the Chimney Man, will not express anything related to time. During this time, which often spans from December 25th until December 28th, all tense marking is dropped. This is known as the ‘Temporal Void’.

Reported Speech uses the tense at the time being described in the utterance, not the current time.
For example, a sentence that was spoken on the 20th of August referring to a past event, the speaker of that utterance would use the REM tense. If reported speech is used to describe or paraphrase that sentence on the 3rd of September, the speaker would use the Non-REM Phase 1 Tense, since that is now a past tense.

During the Non-REM Phase 3, the Future is the Awake Tense. This wraps ad infinitum.

One has to be careful not to confuse tense between direct speeach and reported speech.
For example, given an utterance that was spoken during Non-REM Phase 1 but _in_ Non-REM Phase 2 Tense, that utterance refers to the future. But if such an utterance were erroneously reported in that same tense during Non-REM Phase 3, it would incorrectly refer to the past. Instead, the Awake Tense should be used to paraphrase.

Note that the tenses are only relative to the point of utterance.
For example, during Non-REM Phase 1, if one wanted to refer to an event that took place in November of _last year_, one would use the REM Sleep Tense, since that is the Past Tense. The fact that Non-REM Phase 2 takes place in November does not mean that it is used to describe things that did/will take place in November.

Going back by two tenses creates a pluperfect sense.
Going forward by two tenses creates a future in the future sense.

It is not possible to go back or forward by three tenses since that would be equivalent to going forward _or_ back by two tenses.

Reported Speech that paraphrases an utterance that was uttered during the "temporal void" likewise uses no tense marking.

Since a sentence in a vacuum without any information as to when it was uttered is impossible to extract temporal data from, any Elvish prose, etc. is always accompanied by a date, much like a diary entry would be. The exception to this is information uttered during the temporal void, during which the date is customarily omitted.

=== Aspect

=== Moods

=== Evidentiality
Evidentiality is split into four categories:
- that which is decreed by the Chimney Man (truth)
- that which is directly observable
- that which is purported to exist (in the North Pole)
- that which is purported to exist elsewhere

Statements of fact use the Chimney man evidentiality.
For example, $2+2=4$.


= Lexicon
1. The word for 'Elf' literally means 'miner'.
2. The word for 'to be alive' is the intransitive of 'to mine'.
3. If an elf dies, they are 'retired' or 'decommissioned'.

= Lore
== ‘Retirement’
A central concept in Elvish society is #w[shų́ną] ‘retirement’.
Elves never stop working; that is, an Elf only ‘retires’ at the moment of their death. In some cases, Elves who have acted out of line or otherwise disrupted the coal mining process—or worse, slighted The Chimney Man—can be ‘decommissioned’, which entails _actively_ ‘retiring’ an Elf. This is also known as ‘dishonourable retirement’.

Elves that retire honourably are given a ‘coal burial’, i.e. they are cremated in such a way as to turn them into coal, thus contributing to Elvish society even after their demise.

= Dictionary
#dictionary(read("elvish.dict.txt"), elvish)