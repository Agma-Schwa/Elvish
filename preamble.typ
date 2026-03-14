#import "base/src/lib.typ" : *

#let elvish = plugin("plugin/target/wasm32-unknown-unknown/release/elvish.wasm")
#let ipa(s) = {
    if s == none { "<NONE>" }
    else {
        render-dictionary-node(
            json(elvish.ipa_impl(bytes(if type(s) == str { s } else { s.text })))
        )
    }
}

#let w(s) = { [_#[#s]_ #box[/#ipa(s)/]] }
#let i(s) = { [_#[#s]_] }

// Tie bars and ogoneks may collide, so space this out a bit more.
#gloss-set-line-spacing(.6em)
#gloss-show-numbers(false)
#gloss-set-ipa-function(ipa)
#gloss-set-replacements((
    "---": [---],
    ..gloss-default-replacements
))

#let preamble(it) = {
    show : setup.with(compact: true)
    show "↓" : [#h(-.15em)↓#h(-.15em)] // Reduce kerning a bit to save space.
    show "ʄ͡ɠ": [ʄ#box(move(dy: .2em)[\u{0361}])ɠ]
    it
}