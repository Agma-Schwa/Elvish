#import "@preview/wordometer:0.1.5" : word-count, total-words
#import "base/src/lib.typ": *
#show : setup.with(compact: true)

#let elvish = plugin("plugin/target/wasm32-unknown-unknown/release/elvish.wasm")
#let ipa(s) = {
    if s == none { "<NONE>" }
    else [
        #render-dictionary-node(
            json(elvish.ipa_impl(bytes(if type(s) == str { s } else { s.text })))
        )
    ]
}

#let w(s) = { [_#[#s]_ #box[/#ipa(s)/]] }
#let sd(it) = text(fill: rgb("#dd8542"), [[#it]])
#set page(footer: align(center, context counter(page).display("1 / 1", both: true)))
#set par(first-line-indent: 0pt, spacing: 1.5em)

Word Count: #total-words

#set par.line(numbering: "1")
#show heading : set par.line(numbering: none)
#show : word-count

== INTRO
#sd[Fade in slide with a picture of Tolkien] John Ronald Reuel /ruːl/ Tolkien is a man who probably needs no introduction. He is considered by many as the father of modern fantasy literature; most know him by his most famous works, _The Hobbit_ and _The Lord of the Rings_, which have left a profound impact on the fantasy genre. Some of you might know him as a professor of English Language and Literature or from his work around Old English, the most famous of which is probably his translation of the Anglo-Saxon epic _Beowulf_.

However, since you’re watching this video, the part of Tolkien’s work that you are probably most interested in is his conlangs, among which the Elvish languages of Quenya and Sindarin are probably the most well-known.

But today’s video isn’t a biography of Tolkien’s life, so without further ado, let’s take a look at Elvish! #sd[show slide with 'Elvish' in the centre]

#sd[TODO: The intro could probably be improved quite a bit...]

== Fake Phonology Intro
As ever, let’s start by talking about the phonology of Elvish. The table here shows the Elvish consonant phoneme inventory #sd[Show Sindarin phoneme table]. The consonants are #sd[start reading the consonants, up to the middle of the 'stop' row, then interrupt]... wait hold on that doesn’t look right. Er... #sd[1/2 second pause], I think I got the wrong table. Where did I... Er, never mind let’s start with the vowels #sd[show Elvish vowel table].

As you can see, Elvish has a very simple 6-vowel system #sd[show vowel chart w/o click and ogoneks], well _technically_ it’s more than that #sd[show slide w/ ogoneks], but we’ll get back to that later. I think this is pretty self-explanatory, so I’m not even going to bother pronouncing these. Now where did I put the consonants... #sd[cut to Agma flipping through some pages trying to find a specific one]. AHA, THERE, there it is #sd[show Elvish consonants]. As I was saying the Elvish consonant phoneme inventory is not too complicated in terms of number. There are a total of 15 consonants in Elvish.

Now, reading out sounds is nice and all, but I feel like in order to get a proper understanding of the language we should start with a proper text so we can fully appreciate the elegance and euphony of the Elvish language. Recently, I gave our Discord members a short sentence in Elvish and asked them to provide their best attempt at a rendition of it. This is what I got #sd[Play everyone’s audio clips as usual].

What can I say, an attempt was made I suppose. Sorry guys, but you got it all wrong. I saw some of you caught on to what was happening this time when we didn’t provide any IPA, but the _correct_ way to pronounce this sentence is obviously #sd[Show slide w/ IPA and read the sentence].

Isn’t that beautiful? Euphonic? Now, if you’re a bit confused about my pronunciation just now, that wasn’t because I’m really bad at Sindarin, or Quenya. No, this is _Elvish_; except that the Elves we’re talking about here... are not Tolkien’s Elves. No, they’re Santa’s Elves #sd[slide w/ elf on the shelf], or, should I say... Santaa’s #sd[stress the ‘aa’] Elves #sd[show Santaa video thumbnail].

== Phonology (for real this time)
Now, let’s take a step back and take a proper look at the phoneme inventory. Over here, we have the Elvish consonant table, this time with IPA. The Elvish consonants are: #sd[read consonants]. See Elves have very stiff tongues and as a result are incapable of articulating consonants that would require the tongue to bend to any meaningful extent. This is why the alveolar sounds are all _laminar_, that is, articulated with the _blade_ rather than the tip of the tongue touching the alveolar ridge. Another consequence of this is the palato-velar series of sounds, which results from the fact that any attempt to make contact with either the palatal or velar region of the mouth results in the tongue touching nearly the entire roof of the mouth.

On to the vowels #sd[show vowels table w/o click/ingressive/ogonek; do not read them yet]. Elvish vowels can be categorised into four groups. There are tense and lax variants of /a/, /i/, and /u/. The _lax_ variants are written with an acute. This isn’t _that_ strange though. No, the interesting part is that all Elvish vowels are _ingressive_ #sd[show IPA w/ ingressive markers]. That is, we have #sd[read ingressive vowels].

Now, do you know what other sounds are always ingressive? Clicks! Elvish actually has the voiceless palato-velar click, that being #sd[attempt to pronounce /#ipa[o]/]. Since it’s ingressive, it is naturally considered a vowel as well #sd[show slide w/ click]. Lastly, any vowel can be subscripted with an ogonek, which signifies the ‘velar quality’ #sd[show slide w/ velar quality], e.g. ⟨ą⟩ /#ipa[ą]/.

Now, the crucial part here is that _only_ the vowels are ingressive. The consonants are, of course, are all egressive. What this means is that speaking Elvish requires the speaker to constantly flip-flop back and forth between egressive and ingressive when articulating consonants and vowels.

== Cultural Background
Now for an interlude: I’m assuming a lot of you are familiar with the Sapir-Whorf hypothesis, but for anyone who isn’t, it conjectures that the language we speak determines the way we think. This hypothesis is from the 1920s, and most of modern linguistics considers it to be abject nonsense, so why am I talking about this? Well, the relationship between the Elves and Elvish is the exact opposite! That is, many aspects of the Elvish language are a direct consequence of the strict rules and hierarchy of Elvish society. Thus, in order to understand Elvish, we must understand the Elves themselves.

So, what are Elves, really? Well, as we’ve established, these Elves are Santa’s Elves, or rather, Santaa’s Elves. Every year, on the 24th night of December, The Chimney Man travels the world to distribute ‘gifts’ among the people. The most prominent of His ‘gifts’ is Coal. Have you ever wondered where all of that Coal comes from? That’s right, the Coal is mined by the Elves. In fact this is the only thing the Elves do: An entire society dedicated to Coal mining.

== Work Order
It is thus perhaps not surprising that Elves emphasise work above all else. Elvish grammar has a system much akin to animacy in other languages, and it is vital to determining word order in Elvish. The highest ‘animacy’, and thus primacy in a clause, goes to that which is working the hardest. This is 'Work Order' #sd[show slide w/ ‘Work Order’]. There are 11 work orders in Elvish, numbered 1 to 11, with 1 being the highest and 11 the lowest. The work orders are: #sd[show slide w/ work orders, revealing one at a time]

Number 1: The Chimney Man. In any circumstance in which The Chimney Man is referenced, He will always have the highest Work Order, for He is always working the Hardest. Except for the day after Christmas, of course.

Number 2: Coal. Elves mine Coal, eat Coal, and breathe air laden with Coal dust. It should come as no surprise that Coal is considered the most important aspect of Elvish society and thus placed just below The Chimney Man.

#sd[TODO: Move some of the more detail descriptions here elsewhere]
Number 3: Master Carbonator. At the very top of Elvish society stands the council of Master Carbonators. This council consists of a dozen or so Elves who are assigned a work order of 3. The council is ruled over by the Grand Carbonator. It is the sole Elf that is assigned a work order of 2, and who is thus considered equally important to the Elves as Coal itself. The Grand Carbonator is effectively the right-hand Elf of The Chimney Man and reports to Him in person every Christmas Eve.

Number 4: Collier. These are highly experienced Elves that have been working in the Coal industry for at least 100 years and are typically regional overseers. Only Elves at the rank of Collier or above enjoy the privilege of having their names capitalised in writing, and only they are entitled to wear #w[rǫngi] ‘cloaks’.

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

== Tense
There are two systems around which all of Elvish grammar revolves. One is work order, which we just discussed. The other is tense. The Elvish tense system is based on the hibernation cycle of The Chimney Man. #sd[slide] The Chimney Man wakes up and is awake on Christmas Eve. Starting at around 29 December, the Chimney Man enters REM sleep before sinking further into Non-REM Phases 1, 2, and 3 on 4 May, 26 August, and 10 November.

These five phases form the five Elvish tenses, which are each marked by a particle that precedes the verb. For instance, the REM Tense lasts from 29 December to 3 May. So, how exactly is this used to express tense? At any point in time, the Present Tense in Elvish is whatever sleep phase The Chimney Man is in when the utterance is spoken. For instance, on 2 February, The Chimney Man is in REM sleep, and thus, the REM Sleep Tense is the Present Tense. The tense after that, in this case the Non-REM Phase 1 Tense, is the Future Tense, and the tense after that forms a future-in-the-future. Similarly, the tense preceding the current tense is the Past Tense, in this case the Awake Tense, and tense before that serves as the pluperfect.

But wait, what is the tense two tenses before the REM Sleep Tense if there’s only the Awake Tense before it? Well, obviously, it wraps, like so #sd[slide w/ cycle], so in this case, the pluperfect would be the Non-REM Phase 3 Tense. What this means is that the meaning of any of these five tenses is completely dependent on the time of utterance. Conversely, if you don’t know when an utterance is spoken, you will have no idea how to interpret any of the tenses.

Recall our example sentence, ‘The Elf crouches on the table’ from before #sd[slide]. This sentence is in the REM Sleep Tense and thus only has that meaning if spoken between 29 December and 3 May. If spoken on 4 May, its meaning changes to ‘The Elf crouched on the table’ #sd[slide];; we would have to change its tense to the Non-REM Phase 1 Tense to preserve the original meaning #sd[slide]. Conversely, if this new sentence was spoken on 3 May, it would instead mean ‘The Elf will crouch on the table’.

This is further complicated during reported speech, as the tense of the sentence is taken to be relative to the time at which the utterance was spoken, not the time at which is is described. For instance, a sentence spoken _during_ the REM Sleep Phase but _in_ the Awake Tense is in the Past Tense. Irrespective of when it is paraphrased, it will remain in the Awake Tense. If the paraphrase happens to be spoken during the Non-REM Phase 3, then we end up with a sentence in which the Awake Tense denotes the Past Tense, even though it would normally be the Future Tense during that time of the year.

Finally, if we return to the list of tenses from earlier #sd[slide], you might notice that there’s a gap between the Awake Tense and REM Sleep Tense that leaves a few days unaccounted for. As nobody truly knows when _exactly_ the Chimney Man falls asleep, the few days following Chrismtas are an enigma to Elvish speakers. They cannot—and, out of respect and fear for the Chimney Man, will not—express anything related to time. During this time, which often spans from 25 December until 28 December, all tense marking is dropped. This is known as the ‘Temporal Void’.

== Adjectives
Now that we know how tense works, we can talk about adjectives! Wait, how are those related? Well, you’ll see. Adjectives on their own are fairly simple; there is no agreement in the normal sense and they simply precede the noun they qualify. What makes adjectives complicated in Elvish is not the adjectives themselves, but rather a construct know as the ‘standalone adjective phrase’ or ‘SAP’.

A very common idiom in Elvish is to refer to a noun (phrase) in the domain of discourse by an adjective that describes it. These are SAPs, and they largely replace pronouns in Elvish, as while Elvish _does_ have pronouns, those are only used to refer to Elves, but more on that later.

SAPs consist of an adjective preceded by a so-called _invoice particle_; syntactically, SAPs are treated as
though they were nouns; in particular, they may be preceded by the usual noun particles and even other adjectives.

In writing, it is common for the first mention of a noun phrase to be accompanied by one or more adjectives that may later on be
used to refer to it. For example, a fat Elf with the name #w[txǫncų] might be introduced as #w[txų́dí txǫncų] or ‘Fat Txǫncų’ and then later on referred to as #w[sį́ txų́dí] ‘the fat one’, where #w[sį́] is one of the possible invoice particles.

So what is this ‘invoice particle’? The invoice operates in a similar way to adjective-noun agreement, except that it is really noun-clause agreement. That is, each noun is assigned a ‘tense’ based on its initial phoneme #sd[show table], and the appropriate invoice particle depends on the noun’s inherent tense as well as the tense of the clause. Tenses are assigned an integer value between $1$ and $5$ as you can see here #sd[table].

There are five invoice particles, which are assigned an integer value between $-2$ and $2$. Intuitively, the invoice particle adjusts the tense of the noun to match the tense of the clause. That is, the appropriate invoice particle for a noun is selected as follows: #sd[slide] let $d$ be defined as the difference of $T(C)$ and $T(N)$ where $T(C)$ is the tense of the clause, and $T(N)$ the tense of the noun. The value $v$ of the appropriate invoice particle is then given by this formula #sd[slide], that being $d$ if its absolute value is less than $3$, and the opposite sign of $d$ times $5$ minus the absolute value of $d$ otherwise:
$
  v := cases(
    d"," & "if" |d| < 3,
    -"sgn"(d) dot (5 - |d|)"," &"otherwise."
  )
$

For instance, recall our example of the fat Elf #w[txų́dí txǫncų] above. The noun #w[txǫncų] is of the Awake tense since it starts with #w[tx]. In a sentence in the REM Sleep Rense, the formula above gives $1$ #sd[slide], and thus, the appropriate invoice particle is the one with value 1, that being #w[sį́], resulting in this SAP #sd[slide].

By contrast, in a sentence in the Non-REM Phase 2 tense, the formula ultimately yields $-2$, and thus, the appropriate SAP is #w[cų́r txų́dí] #sd[slide].

In addition to replacing pronouns, SAPs are also used to snsure a clause or phrase observes proper work order. This phenomenon is known as _extraposition_. For instance, suppose we want to say #sd[slide] ‘three ferrules for the Master Carbonators under the mine’—if you don’t know what a ferrule is, it’s this metal band here #sd[slide] on a pickaxe.

Obviously, the Master Carbonators have the highest work order, so they must be placed first. A naive translation would thus be \*#w[ún xúsųrǫngi tsírǫ ną́n tchų́’i ta-rųtí] which literally means ‘for the Master Carbonators under the mine, three ferrules’. However, this phrase is ill-formed because #w[ną́n] ‘mine’, a noun with work order 6, precedes #w[rųtí] ‘ferrule’, a noun with work order 4.

To correct this, we need to move ‘mine’ to the end of the clause, but we can’t simply move the entire enclosing PP as that would change the meaning of the phrase: we’d get #w[ún xúsųrǫngi tchų́’i ta-rųtí tsírǫ ną́n], which means ‘three ferrules under the mine for the Master Carbonators’—it’s now the ferrules that are under the mine and not the Master Carbonators!

Instead, the proper solution is to replace the problematic noun in the PP with a SAP. The noun is then left stranded as far back in the clause as possible, but of course preceding any nouns with lower work order. In this case, there is no adjective qualifying the noun, so the adjective #w[xún] is used instead. This adjective normally means ‘proper’, but in this context, it has no meaning and only serves as an expletive, in other words to provide something the invoice particle can be attached to. Thus, a grammatical rendition that preserves the meaning of what we want to communicate would be #w[ún xúsųrǫngi tsírǫ tų́r xún tchų́’i ta-rųtí ną́n].

== Physical Description
Let me paint you a picture: #sd[_Literally_ show a timelapse of you drawing an Elf while you’re explaining what Elves look like] The body and mental state of an Elf are optimised for the mining of Coal, with all unnecessary aspects of life removed. The complexion of an Elf is a dark grey, because they are always covered in layers of Coal dust. As the Elvish eye is designed to thrive in dry and dusty environments, Elves never need to close their eyes and thus lack eyelids. The only protection around their eyes is formed by multiple layers of eye lashes, which keep the Coal dust out of their vision.

The throats and mouths of Elves are likewise covered in dust, making Elvish articulation extremely hoarse and grating. Their tongues are stiff and don’t bend. Elves also have no lips, making their sharp and pointy teeth, which are perpetually stained black by the consumption of Coal, clearly visible; it is for this reason that Elvish lacks labial sounds and rounded vowels.

Elves have inverted knees, which improves crawling in tunnel conditions. Their ears are pointy, but they point downwards to avoid colliding with the low ceiling of their mines; to that end, low-ranking Elves are also almost always hunched down so as to fit in even lower tunnels. Elves are mostly bald, the most hair they have on their bodies is their eye lashes.

Lastly, Elves have no gender and are all referred to as ‘it’. They do not, and for that matter, cannot, reproduce and are instead all created by The Chimney Man.

== Translation

== Sentence Analysis
#sd[analyse the complicated sentence and also explain SAP contraction here as well as relative clauses.]


== Culture
 Above the common Elvish miner, who in Elvish society is dubbed a ‘canary’, are the upper classes of Elvish society.