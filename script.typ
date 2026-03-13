#import "base/src/lib.typ": *
#show : setup.with(compact: true)

#let elvish = plugin("plugin/target/wasm32-unknown-unknown/release/elvish.wasm")
#let ipa(s) = {
    if s == none { "<NONE>" }
    else [
        /#render-dictionary-node(
            json(elvish.ipa_impl(bytes(if type(s) == str { s } else { s.text })))
        )/
    ]
}

#let sd(it) = text(fill: rgb("#dd8542"), [[#it]])
#set page(footer: align(center, context counter(page).display("1")))
#set par(first-line-indent: 0pt, spacing: 1.5em)
#set par.line(numbering: "1")

== INTRO
#sd[Fade in slide with a picture of Tolkien] John Ronald Reuel /ruːl/ Tolkien is a man who probably needs no introduction. He is considered by many as the father of modern fantasy literature; most know him by his most famous works, _The Hobbit_ and _The Lord of the Rings_, which have leaving a profound impact on the fantasy genre. Some of you might also know as a professor of English Language and Literature and from his work around Old English, the most famous of which is probably his translation of the Anglo-Saxon epic _Beowulf_.

However, since you’re watching this video, the part of Tolkien’s work that you might be most interested in are his conlangs, among which the Elvish languages of Quenya and Sindarin are probably the most popular.

But today’s video isn’t a biography of Tolkien’s life, so without further ado, let’s take a look at Elvish! #sd[show slide with 'Elvish' in the centre]

#sd[TODO: The intro could probably be improved quite a bit...]

== Fake Phonology Intro
As ever, let’s start by talking about the phonology of Elvish. The table here shows the Elvish consonant phoneme inventory #sd[Show Sindarin phoneme table]. The consonants are #sd[start reading the consonants, up to the middle of the 'stop' row, then interrupt]... wait hold on that doesn’t look right. Er... #sd[1/2 second pause], I think I got the wrong table. Where did I... Er, never mind let’s start with the vowels #sd[show Elvish vowel table].

As you can see, Elvish has a very simple 6-vowel system #sd[show vowel chart w/o click and ogoneks], well _technically_ it’s more than that #sd[show slide w/ ogoneks], but we’ll get back to that later. I think this is pretty self-explanatory, so I’m not even going to bother pronouncing these. Now where did I put the consonants... #sd[cut to Agma flipping through some pages trying to find a specific one]. AHA, THERE, there it is #sd[show Elvish consonants]. As I was saying the Elvish consonant phoneme inventory is not too complicated in terms of number. There are a total of 15 consonants in Elvish.

Now, reading out sounds is nice and all, but I feel like in order to get a proper understanding of a language we should start with a proper text so we can fully appreciate the elegance and euphony of the Elvish language. Recently, I gave our Discord members a short sentence in Elvish and asked them to provide their best attempt at a rendition of it. This is what I got #sd[Play everyone’s audio clips as usual].

Isn’t that beautiful? Euphonic? Now, the especially astute amongst you may have noticed that this is in fact not Sindarin, nor Quenya, but at the same time I also never said it was! No, this is _Elvish_; except that the Elves we’re talking about here... are not Tolkien’s Elves. No, they’re Santa’s Elves, or, should I say... Santaa’s #sd[stress the ‘aa’] Elves.

== Phonology (for real this time)
Now, let’s take a step back and take a proper look at the phoneme inventory. Over here, we have the Elvish consonant table, this time with IPA. The Elvish consonants are: #sd[read consonants]. See Elves have very stiff tongues and as a result are incapable of articulating consonants that would require the tongue to bend to any meaningful extent. This is why the alveolar sounds are all _laminar_, that is, articulated with the _blade_ rather than the tip of the tongue touching the alveolar ridge. Another consequence of this is the palato-velar series of sounds, which results from the fact that any attempt to make contact with either the palatal or velar region of the mouth results in the tongue covering nearly the entire roof of the mouth.

On to the vowels #sd[show vowels table w/o click/ingressive/ogonek; do not read them yet]. Elvish vowels can be categorised into four groups. There are tense and lax variants of /a/, /i/, and /u/. The _lax_ variants are written with an acute. This isn’t _that_ strange though. No, the interesting part is that all Elvish vowels are _ingressive_ #sd[show IPA w/ ingressive markers]. That is, we have #sd[read ingressive vowels].

Now, do you know what other sounds are always ingressive? Clicks! Elvish actually has the voiceless palato-velar click, that being #sd[attempt to pronounce #ipa[o]]. Since it’s ingressive, it is naturally considered a vowel as well #sd[show slide w/ click]. Lastly, any vowel can be subscripted with an ogonek, which signifies the ‘velar quality’ #sd[show slide w/ velar quality], e.g. ⟨ą⟩ #ipa[ą].

Now, the crucial part here is that _only_ the vowels are ingressive. The consonants are, of course, are all egressive. What this means is that speaking Elvish requires the speaker to constantly flip-flop back and forth between egressive and ingressive when articulating consonants and vowels.

Equipped with this knowledge, we can revisit the sentence from before and re-evaluate everyone’s attempts and... what can I say, an attempt was made I suppose. Sorry guys, but you got it all wrong. See, the _correct_ way to pronounce this sentence is obviously #sd[Show slide w/ IPA and read the sentence].
