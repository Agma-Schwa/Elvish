#import "base/src/lib.typ" : *
#let elvish = plugin("plugin/target/wasm32-unknown-unknown/release/elvish.wasm")
#show : setup

#let ipa(s) = {
    let replaced = str(elvish.ipa_impl(bytes(s.text)))
    let out = []
    for c in replaced {
        if c == "$" { out += super[ʄ͡ɠ] }
        else { out += c}
    }
    out
}

#let w(s) = { [_#[#s]_ /#ipa(s)/] }

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

== Grammar

vtrbt Q NQ (causative)
NQ (transitive)
"Kyle slides (Q/NQ) down the chimney."
"So (does) BOB."
He (is) an elf.

(essentially recreate a dummy "do" that can also operate as a contextual ellipsis on previosuly stated verbs)

=== Work Orders

Animacy is vital to determinign word order in Elvish. The highest animacy, and thus primacy in a clause, goes to that which is working the hardest. This is 'Work Order.' 

In any circumstance in which The Chimney Man is referenced, He will always have the highest Work Order, for He is always working the Hardest. Except for the day after Christmas. From highest work order to lowest, the ranks go as follows:

+ The Chimney Man
+ Master Carbonator
+ Hard-Working Elves
+ Lazier Elves
+ Canary
+ Human Coal Miners
+ Human Adults
+ Animals
+ Human Children

Human Children, while important to Elvish society as the benificiaries of their toils, are deemed the laziest of beings.

=== Adjective Hierarchy

In sequences of adjectives (which Elves are particularly prone to), the following categories of heirarchy of importance determines the order at which they are uttered:

+ Christmas
+ Coal
+ Elves
+ Work
+ Humans
+ Rest

=== Nouns at Work
Nouns are declined for whether or not they perform work. Essentially this marks their position as an agent or patient in any given clause. The verb itself is not declined for voice --- this information is contained exclusively in the noun phrase.

=== Number
The default number is Collective. An unmarked noun is assumed to be collective.
As Santaa contains no first person, an Elf refers to oneself as "This Elf," with verbs inflected in the third person.
As opposed to the unmarked "Collective" form, a marking describes a noun as "Non-Collective." This could refer to one individual or a fraction of some whole.

Verbs are not inflected for number, only nouns are.

=== Tense, Aspect, Mood
Tense follows a paradigm relative to The Chimney Man's typical stage of sleep throughout a given year.
For example, if the Chimney Man is in REM sleep during April, and it's currently June, the "REM" tense would be used to discuss something in the past.

+ Awake (Christmas Eve)
+ REM sleep (\~December 25th - May 3rd)
+ Non-REM Phase 1 (\~May 4th - August 25th)
+ Non-REM Phase 2 (\~August 26th - November 9th)
+ Non-REM Phase 3 (\~November 10th - December 23rd)

As nobody truly knows when _exactly_ when the Chimney Man falls asleep, the few days following Chrismtas are an enigma to Elvish speakers. They cannot, and out of respect and fear for the Chimney Man, will not express anything related to time. During this time, which often spans from December 25th until December 28th, all tense marking is dropped.

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
