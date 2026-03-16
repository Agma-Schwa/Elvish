#import "@preview/wordometer:0.1.5" : word-count, total-words
#import "preamble.typ" : *
#show : setup.with(compact: true)
#show : preamble

#let sd(it) = text(fill: rgb("#dd8542"), [[#it]])
#set page(footer: align(center, context counter(page).display("1 / 1", both: true)))
#set par(first-line-indent: 0pt, spacing: 1.5em)

Word Count: #total-words

#set par.line(numbering: "1")
#show heading : set par.line(numbering: none)
#show : word-count

== Fake Intro
#sd[Fade in a picture of Tolkien] John Ronald Reuel /ruːl/ Tolkien is a man who probably needs no introduction. He is considered by many as the father of modern fantasy literature; most know him by his most famous works, _The Hobbit_ and _The Lord of the Rings_, which have left a profound impact on the fantasy genre. Some of you might know him as a professor of English Language and Literature or from his work around Old English, the most famous of which is probably his translation of the Anglo-Saxon epic _Beowulf_.

However, since you’re watching this video, the part of Tolkien’s work that you are probably most interested in is his conlangs, among which the Elvish languages of Quenya and Sindarin are probably the most well-known.

But today’s video isn’t a biography of Tolkien’s life, so without further ado, let’s take a look at Elvish! #sd[show slide with 'Elvish' in the centre]

#sd[TODO: The intro could probably be improved quite a bit...]

== Fake Phonology + Sentence
As ever, let’s start by talking about the phonology of Elvish. The table here shows the Elvish consonant phoneme inventory #sd[Show Sindarin phoneme table]. The consonants are #sd[start reading the consonants, up to the middle of the 'stop' row, then interrupt]... wait hold on that doesn’t look right. Er... #sd[1/2 second pause], I think I got the wrong table. Where did I... Er, never mind let’s start with the vowels #sd[show Elvish vowel table].

As you can see, Elvish has a very simple 6-vowel system #sd[show vowel chart w/o click and ogoneks], well _technically_ it’s more than that, but we’ll get back to that later. I think this is pretty self-explanatory, so I’m not even going to bother pronouncing these. Now where did I put the consonants... #sd[cut to Agma flipping through some pages trying to find a specific one]. Er, whatever, I bet y’all are tired of conlang reviews starting off with the phonology section anyway.

Y’know reading out sounds is nice and all, but I feel like in order to get a proper understanding of the language, we should start with a proper text so we can fully appreciate the elegance and euphony of the Elvish language. Recently, I gave our Discord members a short sentence in Elvish and asked them to provide their best attempt at a rendition of it. This is what I got #sd[Play everyone’s audio clips as usual].

What can I say, an attempt was made I suppose. Sorry guys, but you got it all wrong. I saw some of you caught on to what was happening this time when we didn’t provide any IPA, but the _correct_ way to pronounce this sentence is obviously #sd[Show slide w/ IPA and read the sentence].

Isn’t that beautiful? Euphonic? Now, if you’re a bit confused about my pronunciation just now, that wasn’t because I’m really bad at Sindarin, or Quenya. No, this is _Elvish_; except that the Elves we’re talking about here... are not Tolkien’s Elves. No, they’re Santa’s Elves, or, should I say... Santaa’s #sd[stress the ‘aa’] Elves #sd[show Santaa video thumbnail].

== Intro
#sd[Proper intro; 'hello and welcome to nguh' etc.]

== Phonology (for real this time)
Now, let’s take a step back and take a proper look at the phoneme inventory. Over here, we have the Elvish consonant table, this time with IPA. The Elvish consonants are: #sd[read consonants]. See Elves have very stiff tongues and as a result are incapable of articulating consonants that would require the tongue to bend to any meaningful extent. This is why the alveolar sounds are all _laminar_, that is, articulated with the _blade_ rather than the tip of the tongue touching the alveolar ridge. Another consequence of this is the palato-velar series of sounds, which results from the fact that any attempt to make contact with either the palatal or velar region of the mouth results in the tongue touching nearly the entire roof of the mouth.

On to the vowels #sd[show vowels table w/o click/ingressive/ogonek; do not read them yet]. Elvish vowels can be categorised into four groups. There are tense and lax variants of /a/, /i/, and /u/. The _lax_ variants are written with an acute. This isn’t _that_ strange though. No, the interesting part is that all Elvish vowels are _ingressive_ #sd[show IPA w/ ingressive markers]. That is, we have #sd[read ingressive vowels].

Now, do you know what other sounds are always ingressive? Clicks! Elvish actually has the voiceless palato-velar click, that being #sd[attempt to pronounce /#ipa[o]/]. Since it’s ingressive, it is naturally considered a vowel as well #sd[show slide w/ click]. Lastly, any vowel can be subscripted with an ogonek, which signifies the ‘velar quality’ #sd[show slide w/ velar quality], e.g. ⟨ą⟩ /#ipa[ą]/.

Now, the crucial part here is that _only_ the vowels are ingressive. The consonants are, of course, are all egressive. What this means is that speaking Elvish requires the speaker to constantly flip-flop back and forth between egressive and ingressive when articulating consonants and vowels.

== Cultural Background
#sd[No slides for this one; find some nice images to show on screen for this section]

Now for an interlude: I’m assuming a lot of you are familiar with the Sapir-Whorf hypothesis, but for anyone who isn’t, it conjectures that the language we speak determines the way we think. This hypothesis is from the 1920s, and most of modern linguistics considers it to be abject nonsense, so why am I talking about this? Well, the relationship between the Elves and Elvish is the exact opposite! That is, many aspects of the Elvish language are a direct consequence of the strict rules and hierarchy of Elvish society. Thus, in order to understand Elvish, we must understand the Elves themselves.

So, what are Elves, really? Well, as we’ve established, these Elves are Santa’s Elves, or rather, Santaa’s Elves. Every year, on the 24th night of December, The Chimney Man travels the world to distribute ‘gifts’ among the people. The most prominent of His ‘gifts’ is Coal. Have you ever wondered where all of that Coal comes from? That’s right, the Coal is mined by the Elves. In fact this is the only thing the Elves do: An entire society dedicated to Coal mining.

== Work Order
It is thus perhaps not surprising that Elves emphasise work above all else. Elvish grammar has a system much akin to animacy in other languages, and it is vital to determining word order in Elvish. The highest ‘animacy’, and thus primacy in a clause, goes to that which is working the hardest. This is 'Work Order' #sd[only now, cut to the slide w/ ‘Work Order’]. There are 11 work orders in Elvish, numbered 1 to 11, with 1 being the highest and 11 the lowest. The work orders are: #sd[show slide w/ work orders, revealing one at a time]

Number 1: The Chimney Man. In any circumstance in which The Chimney Man is referenced, He will always have the highest Work Order, for He is always working the Hardest. Except for the day after Christmas, of course.

Number 2: Coal. Elves mine Coal, eat Coal, and breathe air laden with Coal dust. It should come as no surprise that Coal is considered the most important aspect of Elvish society and thus placed just below The Chimney Man.

#sd[TODO: Move some of the more detail descriptions here elsewhere]
Number 3: Master Carbonator. At the very top of Elvish society stands the council of Master Carbonators. This council consists of a dozen or so Elves who are assigned a work order of 3. The council is ruled over by the Grand Carbonator. It is the sole Elf that is assigned a work order of 2, and who is thus considered equally important to the Elves as Coal itself. The Grand Carbonator is effectively the right-hand Elf of The Chimney Man and reports to Him in person every Christmas Eve.

Number 4: Collier. These are highly experienced Elves that have been working in the Coal industry for at least 100 years and are typically regional overseers. Only Elves at the class of Collier or above enjoy the privilege of having their names capitalised in writing, and only they are entitled to wear #w[rǫngi] ‘cloaks’ #sd[there is a slide for #i[rǫngi];; it’s after all the work order slides].

Number 5: Head Miner. These are Elves in charge of a tunnel or Coal mine.

Number 6: Canary. Used for both the lowest class of Elves (that is, the common Coal miner) as well as the bird.

Number 7: Human Coal Miners. This is used for human Coal miners, which are regarded with more respect by the Elves than other humans.

Number 8: Other Human Adults. This is used for any other human adult.

Number 9: Animals. This is used for any animal.

Number 10: Human Children. This is used for human children that are not Coal miners. While important to Elvish society as the benificiaries of their toils, they are deemed the laziest of beings.

Number 11: Everything Else. Generally, this is any inanimate object other than Coal, as well as abstract concepts, and so on.

So, this is Work Order. What does it do? Well, for starters, Work Order determines word order. That is, a noun with higher work order must precede all other nouns with lower work order within the same clause, including nested clauses. For instance, in the sentence ‘The Elf crouches on the table’ #sd[slide], which in Elvish is #w[Gan nun’a gųshą dun ną́nrų́ chír dą́chą.], the word for ‘Elf’, or more specifically ‘canary’, which is #w[ną́nrų́] #sd[slide] and has work order 6 precedes the word for ‘table’ #w[dą́chą] #sd[slide], which has word order 11.

In addition to the inherent work order that every noun has, there is also another way to assign work order to nouns. This is done via a series of work order markers #sd[slide];; these markers have the effect of raising or lowering a noun’s inherent work order by some amount.
For example, take the word for ‘cane’, #w[dį́gá] #sd[slide], which has work order 11. Forming #w[xúnną dį́gá] has the effect of raising the work order of #w[dį́gá] to 5 since $11-6=5$; thus, this phrase is suitable for referring to a cane that performs as much work as a Head Miner or which belongs to a Head Miner.

There are a few things to note here: attempting to raise or lower the work order of a noun below the minimum (#s[w11]) or above the maximum (#s[w1]) is ungrammatical #sd[slide]. Note also the terminology: The ‘lowest’ work order is 11 and the ‘highest’ is 1, thus ‘raising’ occurs from a larger number to a smaller number, and ‘lowering’ from a smaller number to a larger number, e.g. work order 5 can be ‘raised’ to 4 or ‘lowered’ to 6 #sd[slide]. Lowering can have the effect of expressing disdain, denigrating something, or making something seem less important or fake; this is known as ‘derogatory lowering’. Conversely, raising is typically a form of praise.

Another use of the word order markers is in combination with an adjective or number to refer to an object in the context that has that word order. For example, the word for ‘minecart’ in Elvish has work order 6, so a set of 7 minecarts may be referred to as #w[txų́nsha irtǫtǫtǫn], which literally means ‘seven of the thing with work order 6’.

== Noun Markers
On the subject of nouns, nouns are also declined for whether or not they _perform_ work. This is _not_ the same as work order! Rather, this marks their position as an agent or patient in any given clause. The verb itself is not inflected for voice or person---this information is contained exclusively in the noun phrase.

There are four such markers. #w[tchą́] ‘performs work’, glossed #s[wrk] for ‘working’, which is used to mark the agent of a verb that denotes an action that is considered to perform work. The opposite of this is #w[dun] ‘does not perform work’, glossed #s[nwk] for ‘not working’, which marks the agent of a verb that denotes a state or an action that is _not_ considered to perform (worthwile) work.

As there are two agent markers, there are naturally also two theme markers. #w[ų́rų́] ‘has work performed on it’, glossed #s[wkd] for ‘being worked on’, which marks the patient or theme of a verb whose agent assumes the ‘working’ form, as well as #w[ų́xį́] ‘is being manipulated in some fashion’, glossed #s[man] for ‘manipulated’, which marks the patient or theme of a verb whose agent assumes the ‘not working’ form.

This system naturally gives rise to 2 verb classes: ‘working verbs’, whose agent assumes the ‘working’ form and whose theme assumes the ‘being worked on’ form, as well as ‘lazy verbs’, whose agent assumes the ‘not working’ form, and whose theme assumes the ‘manipulated’ form.
Finally, there are a pair of contractions that denote reflexive forms, one for working verbs and one for lazy verbs.

In addition to the agent/theme markers, there is another noun marker, #w[ta-] which denotes a possessive form, e.g. #w[ta-ną́nrų́] ‘of the Elves’.

== Compounds and Derivation
Nouns can also be combined with one another to form compounds. Just like in Santaa, the modifier is placed _second_; for example, in the compound #w[cįxį́tųn’ą́] ‘stone hall’, #w[cįxį́] means ‘hall, and  #w[tųn’ą́] is ‘stone’; compounds are always written as a single word. The most important compound noun in Elvish is without a doubt #w[Są́ntą́] ‘The Chimney Man’, which is derived from #w[są́n] ‘being’ and #w[tą́] ‘chimney’.

There are also a number of derivational processes that may involve nouns. For instance, the affix #w[-rų́] can be attached to a verb or noun to form an agent noun describing an Elf who performs an action associated with that verb or noun. E.g. from #w[sǫtą] ‘to learn’, we get #w[sǫtąrų́] ‘teacher’, and from #w[ną́n] ‘Coal mine’, we get #w[ną́nrų́] ‘Coal miner, Elf (canary)’. Additionally, a common way to turn a noun into a verb (or vice versa) that applies solely to disyllabic words is to swap the vowels, e.g. #w[ną́nrų́] ‘Coal miner’ becomes #w[nų́nrą́] ‘to mine Coal’.

== Tense
There are two systems around which all of Elvish grammar revolves. One is work order, which we just discussed. The other is tense. The Elvish tense system is based on the hibernation cycle of The Chimney Man. #sd[slide] The Chimney Man wakes up and is awake on Christmas Eve. Starting at around 29 December, the Chimney Man enters REM sleep. On 4 May, He sinks into Non-REM Sleep, entering Non-REM Phase 1. This continues on 26 August, where He reaches Non-REM Phase 2, before finally sinking all the way into Non-REM Phase 3 on 10 November.

These five phases form the five so-called _syntactic tenses_ of Elvish. They are each marked by a particle that precedes the verb. For instance, the REM Tense lasts from 29 December to 3 May. So, how exactly is this used to express time? At any point in time, the Present Tense in Elvish is whatever sleep phase The Chimney Man is in when the utterance is spoken. For instance, on 2 February, The Chimney Man is in REM sleep, and thus, the REM Sleep Tense is the Present Tense.

Thus, in such a sentence, the _semantic_ tense is the Present Tense and the _syntactic tense_ is the REM Sleep Tense; syntactic tense denotes the grammatical forms used, whereas semantic tense denotes the actual meaning. We may also say that the REM Sleep Tense is the ‘syntactic Present Tense’ in this context.

The syntactic tense following the syntactic Present Tense, in this case the Non-REM Phase 1 Tense, denotes the Future Tense, and the tense after that forms a future-in-the-future. Similarly, the syntactic tense preceding the syntactic Present Tense is the Past Tense, in this case the Awake Tense, and tense before that serves as the pluperfect.

But wait, what is the syntactic tense two tenses before the REM Sleep Tense if there’s only the Awake Tense before it? Well, obviously, it wraps, like so #sd[slide w/ cycle], so in this case, the syntactic Pluperfect would be the Non-REM Phase 3 Tense. What this means is that the meaning of any of the five syntactic tenses is completely dependent on the time of utterance. Thus, if you don’t know when an utterance is spoken, you will have no idea how to interpret any of the tenses.

Recall our example sentence, ‘The Elf crouches on the table’ from before #sd[slide]. The syntactic tense of this sentence is the REM Sleep Tense; thus, it only denotes a Present Tense if spoken between 29 December and 3 May. If spoken on 4 May, the meaning of this sentence changes to ‘The Elf crouched on the table’ #sd[slide], as the REM Sleep Tense is now the syntactic Past Tense. We would have to change the syntactic tense to the Non-REM Phase 1 Tense to preserve the original meaning #sd[slide]. Conversely, if this new sentence was spoken on 3 May, it would instead mean ‘The Elf will crouch on the table’, as the Non-REM Phase 1 Tense would now be the syntactic Future Tense.

In written language, the choice as to what syntactic tense is the Present Tense is strictly speaking arbitrary, but by convention, it is generally that of the date on which the author wrote or started writing the text.

In Elvish literature, it is custom to start a text with the phrase ‘This Elf declares that’, with the status-appropriate abridged personal pronoun used as the subject. The syntactic tense of this phrase denotes the Present Tense for the rest of the text. E.g. if the text is written by a Collier during the REM Sleep Phase, the introductory phrase would be #w[Gan nun’a tú tshų́’á tchą́ chírnu rǫngi].

This is effectively prefixed to the first sentence of the text proper, thereby forming a new matrix clause around it. As a result, the rest of the first sentence is rendered in reported speech.

As an aside, when it comes to stories, poems, etc. only the written form of these texts have a fixed syntactic tense. When a story is told by an Elf, it will naturally—and indeed subconsciously without requiring active consideration or effort—rephrase the text by adjusting the syntactic tense relative to the time at which the story is told while preserving the text’s semantic tense.

This is further complicated during reported speech, wherein the syntactic tense is relative to the time of paraphrase rather than the time of utterance. For example, in a sentence spoken _during_ the Non-REM Phase 1, the REM Sleep Tense is the syntactic Past Tense. If reported speech is used to describe or paraphrase that sentence _during_ the Non-REM Phase 2, the speaker would use the Non-REM Phase 1 Tense, since that is now the syntactic Past Tense.

Finally, if you paid close attention when I showed you the list of tenses earlier #sd[slide], you might have noticed that there’s a gap between the Awake Tense and REM Sleep Tense that leaves a few days unaccounted for. As nobody truly knows when _exactly_ the Chimney Man falls asleep, the few days following Chrismtas are an enigma to Elvish speakers. They cannot—and, out of respect and fear for the Chimney Man, will not—express anything related to time. During this time, which often spans from 25 December until 28 December, all tense marking is dropped #sd[slide], and most Elves cease writing entirely, with the upper classes preferring to communicate in Santaa instead. This is known as the ‘Temporal Void’.

== Adjectives
Now that we know how tense works, we can talk about adjectives! Wait, how are those related? Well, you’ll see. Adjectives on their own are fairly simple; there is no agreement in the normal sense and they simply precede the noun they qualify. What makes adjectives complicated in Elvish is not the adjectives themselves, but rather a construct know as the ‘standalone adjective phrase’ or ‘SAP’.

A very common idiom in Elvish is to refer to a noun (phrase) in the domain of discourse by an adjective that describes it. These are SAPs, and they largely replace pronouns in Elvish, as while Elvish _does_ have pronouns, those are only used to refer to Elves, but more on that later.

SAPs consist of an adjective preceded by a so-called _invoice particle_; syntactically, SAPs are treated as
though they were nouns; in particular, they may be preceded by the usual noun particles and even other adjectives.

In writing, it is common for the first mention of a noun phrase to be accompanied by one or more adjectives that may later on be
used to refer to it. For example, a fat Elf with the name #w[txǫncų] might be introduced as #w[txų́dí txǫncų] or ‘Fat Txǫncų’ and then later on referred to as #w[sį́ txų́dí] ‘the fat one’, where #w[sį́] is one of the possible invoice particles.

So what is this ‘invoice particle’? The invoice operates in a similar way to adjective-noun agreement, except that it is really noun-clause agreement. That is, each noun is assigned a ‘(syntactic) tense’ based on its initial phoneme #sd[show table], and the appropriate invoice particle depends on the noun’s inherent tense as well as the syntactic tense of the clause. All syntactic tenses are assigned an integer value between $1$ and $5$ as you can see here #sd[table].

There are five invoice particles, which are assigned an integer value between $-2$ and $2$. Intuitively, the invoice particle adjusts the tense of the noun to match the syntactic tense of the clause. That is, the appropriate invoice particle for a noun is selected as follows: #sd[slide] let $d$ be defined as the difference of $T(C)$ and $T(N)$ where $T(C)$ is the syntactic tense of the clause, and $T(N)$ the tense of the noun. The value $v$ of the appropriate invoice particle is then given by this formula #sd[slide], that being $d$ if its absolute value is less than $3$, and the opposite sign of $d$ times $5$ minus the absolute value of $d$ otherwise:
$
  v := cases(
    d"," & "if" |d| < 3,
    -"sgn"(d) dot (5 - |d|)"," &"otherwise."
  )
$

For instance, recall our example of the fat Elf #w[txų́dí txǫncų] above. The noun #w[txǫncų] is of the Awake Tense since it starts with #w[tx]. In a sentence in the REM Sleep Tense, the formula above gives $1$ #sd[slide], and thus, the appropriate invoice particle is the one with value 1, that being #w[sį́], resulting in this SAP #sd[slide].

By contrast, in a sentence in the Non-REM Phase 2 Tense, the formula ultimately yields $-2$, and thus, the appropriate SAP is #w[cų́r txų́dí] #sd[slide].

In addition to replacing pronouns, SAPs are also used to ensure a clause or phrase observes proper work order. This phenomenon is known as _extraposition_. For instance, suppose we want to say #sd[slide] ‘three ferrules for the Master Carbonators under the mine’—if you don’t know what a ferrule is, it’s this metal band here #sd[slide] on a pickaxe.

Obviously, the Master Carbonators have the highest work order, so they must be placed first. A naive translation would thus be \*#w[ún xúsųrǫngi tsírǫ ną́n tchų́’i ta-rųtí] which literally means ‘for the Master Carbonators under the mine, three ferrules’. However, this phrase is ill-formed because #w[ną́n] ‘mine’, a noun with work order 6, precedes #w[rųtí] ‘ferrule’, a noun with work order 4.

To correct this, we need to move ‘mine’ to the end of the clause, but we can’t simply move the entire enclosing PP as that would change the meaning of the phrase: we’d get #w[ún xúsųrǫngi tchų́’i ta-rųtí tsírǫ ną́n], which means ‘three ferrules under the mine for the Master Carbonators’—it’s now the ferrules that are under the mine and not the Master Carbonators!

Instead, the proper solution is to replace the problematic noun in the PP with a SAP. The noun is then left stranded as far back in the clause as possible, but of course preceding any nouns with lower work order. In this case, there is no adjective qualifying the noun, so the adjective #w[xún] is used instead. This adjective normally means ‘proper’, but in this context, it has no meaning and only serves as an expletive, in other words to provide something the invoice particle can be attached to. Thus, a grammatical rendition that preserves the meaning of what we want to communicate would be #w[ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n].

== Demonstrative Pronouns
As many other things, deixis in Elvish is relative: unlike other languages which employ spatial metaphors to express time, Elvish employs temporal expressions to express relations in space. That is, there are 5 demonstrative pronouns, each corresponding to a syntacitc tense.

The proximal demonstrative pronoun matches the syntactic tense of the clause, the medial demonstrative pronoun is expressed by the tense following the proximal one, and the distal demonstrative pronoun by the tense following the medial one.

The pronouns are formed by combining the preposition #w[chír] ‘at, in, on’ with one of the tense markers, as seen here #sd[slide]. For example, if a clause is in the REM Sleep Tense, the demonstrative pronouns are these. By contrast, if a clause is in the Non-REM Phase 2 Tense, we instead have these. As you can see, they wrap around once we get to the Non-REM Phase 3 Tense.

What this means is that what to inexperienced speakers of Elvish might look like the same pronoun might have a completely different meaning, or even be outright ungrammatical, depending on the tense of the enclosing sentence.

In reported speech, the direction is reversed, i.e. instead of medial being the tense after proximal and distal being the tense after medial, instead medial is the syntactic tense _preceding_ proximal, and distal is the tense preceding medial.

For example, consider a sentence uttered during the REM Sleep Phase, in which the Non-REM Phase 1 Tense is the syntactic Future Tense. In such a sentence, the medial demonstrative pronoun would be #w[chíro], i.e. the Non-REM Phase 2 form; if this sentence is then paraphrased during the Non-REM Phase 3, the syntactic Future Tense would naturally be the Awake Tense, and the medial pronoun would be the tense _before_ that (recall that the direction is reversed in reported speech); thus, the correct form would be #w[chírnų], i.e. the Non-REM Phase 3 form.

== Personal Pronouns
There are three sets of constructions in Elvish that are jointly referred to as ‘personal pronouns’. While semantically equivalent, their usage is highly dependent on social status, and they are not interchangeable.

The so-called _full personal pronouns_ are formed by combining the demonstrative pronouns with the status-appropriate word for ‘Elf’: The proximal demonstrative is used to express the 1st person, the medial to express the 2nd person, and the distal to express the 3rd person. Naturally, this also means that the exact forms of the personal pronouns depend on the syntactic tense of the containing clause (as well as on whether direct or reported speech is used).

For example, in a sentence in Non-REM Phase 2 tense spoken by a Master Carbonator, the closest Elvish equivalent to a word for ‘I’ would be #w[chíro xúsųrǫngi], lit. ‘this Master Carbonator’. Similarly, in a sentence paraphrased in Non-REM Phase 3 tense, the word ‘it’ in reference to a Collier would be #w[chírtxí isirǫngi], lit. ‘that (distal) Collier’.

In addition to the full pronouns, there are two forms of ‘abridged’ pronouns: The _high-class_ abriged pronouns are formed by combining the demonstratives with the noun #w[rǫngi] ‘cloak’. The _low-class_ abridged pronouns are identical to the bare demonstratives.

There are a few rules that constrain the use of personal pronouns in Elvish: The full pronouns are used when speaking to someone of higher status, the abridged pronouns when speaking to someone of equal or lower status. The high-class pronouns are used only by and in reference to Elves at the class of Collier or Master Carbonator. The Chimney Man and The Grand Carbonator are never referred to with pronouns. Finally, pronouns are only used to refer to Elves; SAPs are used for other beings, objects, concepts, and so on. SAPs may also be used whenever an abridged pronoun would be appropriate.

== Minor Grammar Notes
=== Evidentiality
Now that we’ve discussed everything that depends on tense, we can talk about the rest of the grammar; most of these will be fairly short sections, starting with evidentiality. Evidentiality in Elvish is split into five categories: #w[sán], glossed #s[ver] for ‘veridical’, with the meaning (as though) decreed by The Chimney Man (truth); #w[gan], glossed #s[obs] for ‘observable’, with the meaning either directly observable or deduced via reasoning; #w[xįn], glossed #s[com] for ‘communicated’, with the meaning communicated by someone (hearsay); #w[txą́], glossed #s[nor] for ‘North Pole’, with the meaning purported to exist (in the North Pole); and finally #w[tsų́n], glossed #s[dub] for ‘dubious’, with the meaning purported to exist elsewhere.

The ‘default’ evidentiality marker is generally #w[gan];; it is commonly used for statements which the speaker considers to be true but which are not self-evident or proven facts. Statements of fact instead use the Chimney Man evidentiality—for example, $2+2=4$—and so do statements that an Elf is absolutely sure about. The meaning of this evidentiality is closer to ‘as true as though The Chimney Man Himself had decreed it’, and a suitable translation may be ‘most surely’. At the same time, it is of course also used to refer to literal statements made by The Chimney Man.

=== Aspect
Aspect marking differs between working verbs and lazy verbs. Working verbs are marked for telicity, i.e. whether the work
is done or not. Lazy verbs are marked for whether the laziness is continued or returning. For working verbs, telic is the default, for lazy verbs, continuous is the default. Aspect markers, if present, directly precede the verb.

=== Elision
When multiple verbs in a row have verb markers in common, those markers are often dropped for any verb after the first. In particular, this often applies to evidentiality markers: if the evidentiality marker of several clauses is the same, all but the first are generally dropped.

=== Copula
The Elvish copula is the empty root; that is, to express the copula, all verb markers (tense, evidentiality, etc.) are used as they normally would be, except that the verb itself is ‘missing’. If elision is applied, this can lead to a zero copula.

=== Numbers
Elvish numbers are direct calques of Santaa’s numbers. If you want to know more about this, go watch the Santaa video, but for example, the word for 7 in Elvish is #w[irtǫtǫtǫn], derived from #w[irgų] ‘to build’ and #w[tǫn] ‘more’. It literally translates to ‘build more more more’, which is a calque of Santaa #santaa[ħȍ̀̽ ħħó̽̏ ħħó̽̏ ħħó̽̏].

== Appearance and Culture
Now that we’ve discussed Elvish grammar at length, let’s talk a bit more about the Elves themselves. Let me paint you a picture: #sd[_Literally_ show a timelapse of you drawing an Elf while you’re explaining what Elves look like] The body and mental state of an Elf are optimised for the mining of Coal, with all unnecessary aspects of life removed. The complexion of an Elf is a dark grey, because they are always covered in layers of Coal dust. As the Elvish eye is designed to thrive in dry and dusty environments, Elves never need to close their eyes and thus lack eyelids. The only protection around their eyes is formed by multiple layers of eye lashes, which keep the Coal dust out of their vision.

The throats and mouths of Elves are likewise covered in dust, making Elvish articulation extremely hoarse and grating. Their tongues are stiff and don’t bend. Elves also have no lips, making their sharp and pointy teeth, which are perpetually stained black by the consumption of Coal, clearly visible; it is for this reason that Elvish lacks labial sounds and rounded vowels.

Elves have inverted knees, which improves crawling in tunnel conditions. Their ears are pointy, but they point downwards to avoid colliding with the low ceiling of their mines; to that end, lower-class Elves are also almost always hunched down so as to fit in even lower tunnels. Elves are mostly bald, the most hair they have on their bodies is their eye lashes.

Lastly, Elves have no gender and are all referred to as ‘it’. They do not, and for that matter, cannot, reproduce and are instead all created by The Chimney Man.

== Elvish Upper Class
The social classes of Collier and Master Carbonator comprise the upper classes of Elvish society; these Elves are easily identified as only they are entitled to wear #w[rǫngi] ‘cloaks’. These cloaks come in three forms:

- Colliers wear crimson cloaks and are thus commonly referred to as #w[isirǫngi] ‘redcloaks’.
- Master Carbonators wear crimson cloaks embroidered with black patterns of Coal and are thus commonly referred to as #w[xúsųrǫngi] ‘blackcloaks’.
- Finally, the Grand Carbonator’s cloak is entirely black and coated with Coal; for this reason, the Grand Carbonator is commonly referred to as #w[Shǫnxąrǫngi] ‘Coal cloak’.

Other Elves do not wear any clothes at all. The common Elf instead keeps itself warm in the freezing temperatures of the Arctic by burning the Coal it consumes inside its ventral furnace. Some lower-class Elves may attempt to pretend to have a higher social class than they actually do; such Elves are referred to as #w[ishúrǫngi] ‘fake cloaks’. Wearing a cloak that corresponds to a higher class than one’s own is generally punished by decommissioning.

== ‘Retirement’
A central concept in Elvish society is #w[shų́ną] ‘retirement’.
Elves never stop working; that is, an Elf only ‘retires’ at the moment of its death. In some cases, Elves who have acted out of line or otherwise disrupted the Coal mining process—or worse, slighted The Chimney Man—can be ‘decommissioned’, which entails _actively_ ‘retiring’ an Elf. This is also known as ‘dishonourable retirement’.

Elves that retire honourably are given a #w[Shǫnxąshų́ną] ‘Coal burial’, i.e. they are cremated in such a way as to turn them into Coal, thus contributing to Elvish society even after their demise.

== Refurbishment
Refurbishment is the act of promoting an Elf from a lower social class into a higher social class; this is a rare occurrance and only awarded to Elves for distinguished acts of service in the mines. For instance, a canary that consistently delivers twice the amount of Coal compared to its co-workers may be promoted to head miner after some time once new tunnels are constructed.

Upon becoming a Collier or Master Carbonator, an Elf is rewarded with a #w[rǫngi] ‘cloak’, which is subsequently sewn onto it, thus completing the refurbishment process and clearly demarcating them as now part of a higher social class than its former peers.

Below the class of Collier, candidates for refurbishment are selected by Colliers. Candidates for the class of Collier are selected by the Master Carbonators, and candidates for the latter class directly by The Grand Carbonator. An Elf cannot become The Grand Carbonator. If The Grand Carbonator retires, a new one is constructed by The Chimney Man.

Lastly, refurbishment has no corresponding opposite process; if an Elf does something that causes it to fall below its social class, only decomissioning awaits it.

== Translation
The following is an Elvish rendition of JRR Tolkien’s Ring Verse, as translated and adapted by the Elvish poet #w[Tǫrxí];; Elves of course don’t wear rings, so the verse refers to ferrules instead. Other parts of the poem that would have likewise been unfamiliar to the common Canary have been replaced with more Elvish concepts as well. Without further ado: #sd[read translation]

== Sentence Analysis
Finally, let’s take a closer look at one of the sentences of the translation as it serves as a good example of some of the quirks of Elvish grammar. The sentence in question is #i[Ų́rų́ gan txadą́ cuncutǫn ún dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo núgį́], lit. ‘that there are nine for mortal men doomed to retire’.

The marker #w[ų́rų́] marks that the entire clause is an object of the verb #w[tshų́’á] ‘declare’ in the first clause of the poem. It can be translated as the English subordinator ‘that’ in this context.

The evidentiality marker #w[gan] qualifies the copula, which has no root. It is required here to prevent #i[ų́rų́] from affecting only the following noun phrase, as it must precede a verb (marker) to affect the entire clause.

#w[txadą́ cuncutǫn] is simply the word for the number 9 (whose default work order is 11) raised by 7 work orders to give it work order 4 to match #w[rųtí] ‘ferrule’ in the a preceding clause, which is elided here. Thus, this phrase literally means ‘nine of the thing with work order 4’.

The complement of the PP headed by #w[ún] ‘for’ is the rest of the clause.

The relative clause #i[dun cą sán túsą ų́xį́ shąnų́ dun tų́r shardo] ‘which are destined to retire‘ is fairly complicated on its own. Relative clauses in Elvish _precede_ the noun they modify, which in this case is #w[shardo núgį́] ‘mortal humans’. Notably, the relative pronoun #w[cą] is not the first word in the clause. Rather, because it is the subject of a clause with a lazy verb, it is preceded by the lazy agent marker #w[dun].

The complement of #w[túsą] ‘to be destined’ is yet another clause, viz. #i[shąnų́ dun tų́r shardo] ‘the mortal ones retire’.
This inner clause is preceded by the lazy theme marker #w[ų́xį́], which marks that the clause is the theme of #w[túsą].

The sequence #w[tų́r shardo núgí] is actually short for #w[tų́r shardo shardo núgí]. That is, we have a SAP #w[tų́r shardo] ‘the mortal ones’, which agrees with #w[núgį́] ‘human’, followed by the noun #w[shardo núgį́] ‘mortal humans’, which is also the referent of the SAP.

In such situations, that is, when a SAP is followed immediately by its referent, it is not uncommon for the same adjective to appear twice in a row (since it is both part of the SAP and also modifies the noun). This is rather awkward, so Elvish instead contracts the two into a single instance of the adjective. This phenomenon is known as _SAP contraction_. It is fairly easily identified as the sequence ‘invoice marker + adjective + noun’ isn’t otherwise valid in Elvish.

So in sum, this sentence is a dependent clause that acts as the theme of a preceding clause and which contains a relative clause whose theme is yet _another_ clause, and both inner clauses either modify or reference a noun that occurs later on in the sentence.

== Outro
#sd[Outro]