#import "base/src/lib.typ" : *
#show : setup

// TODO: Write a Elvish-to-IPA function in Typst.

= Phonology
- No lips -> no rounded or labial
- Stiff tongue -> no apical sounds; only laminal consonants

== Consonants
#rowtable(
    hlineat(1),
    vlineat(1),
    [            & Alveolar         & Palatovelar         & Uvulo-Glottal ],
    [ Nasal      &                  &                     & ɴˀ ⟨n⟩    ],
    [ Stop       & d̻ t̻    ⟨d, t⟩    & c͡k ɟ͡g      ⟨c g⟩    & ʔ  ⟨’⟩    ], // etc.
    [ Fricative  & s̻ s̻ʰ   ⟨s sh⟩    & ç͡x ç͡xʰ     ⟨ch x⟩   & ],
    [ Affricate  & t̻͡s̻ t̻͡s̻ʰ ⟨ts, tsh⟩ & c͡kç͡x ɟ͡gç͡xʰ ⟨tch tx⟩ & ],
    [ Trill      &                  & r̠͡ʀ̟         ⟨r⟩      & ],
)

- r̠͡ʀ̟ is a coarticulated palatal-velar trill (yes, Elves can do that)

== Vowel

// the palatal-velar click) is a vowel because clicks are ingressive.

#rowtable(
    hlineat(1),
    vlineat(1),
    [             & Front      & Center & Back        & Click  ],
    [ Close       & i↓ ɪ↓ ⟨i, í⟩ &        & ɯ↓ ɯ̽↓ ⟨u, ú⟩  &        ],
    [ Open        & a↓ ɐ↓ ⟨a, á⟩ &        &             &        ],
    [ Palatovelar &            &        &             & ᵏǂ ⟨o⟩ ]
)

- Any vowel can be followed by #super[ʄ͡ɠ] ⟨◌̨⟩, which signifies the ‘velar quality’, e.g. _ų́_ /ɯ̽#super[ʄ͡ɠ]↓/.

== Phonotactics
#partitle[Classes]
```
S = d, t, c, g
F = s, sh, ch, x
A = ts, tsh, tch, tx
T = r,
V = i, í, u, ú, a, á, o
Q = ̨
```
#partitle[Phonotactics]
```
[S|F|A|T]V(Q)([S|F|’]V(Q))
```

#partitle[Example word]
// TODO: /#ipa[tshǫ’ǫ]/
_tshǫ’ǫ _ /ˈt̻͡s̻ʰᵏǂ#super[ʄ͡ɠ]\.ʔᵏǂ#super[ʄ͡ɠ]/ ‘ribbon’

// TODO: Make the noun (phrase) ‘cellar door’ sound as horrible as possible.
