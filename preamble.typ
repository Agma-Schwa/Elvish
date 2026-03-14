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

#let santaa(x) = text(size: 11pt, style: "italic", font: "Charis SIL", x)
#let preamble(it) = {
    let l(dx: 0pt, dy: 0pt) = box(
        width:0pt,
        height: 0pt,
        move(
            dx: dx,
            dy: dy,
            align(left, line(length: .25em, stroke: .05em))
        )
    )

    let triple-line = {
        l(dx: -.22em, dy: -.30em)
        l(dx: -.24em, dy: -.22em)
        l(dx: -.26em, dy: -.14em)
    }

    let rotated-line = {
        box(
            width: 0pt,
            height: 0pt,
            move(
                dx: -.13em,
                dy: -.376em,
                rotate(
                    315deg,
                    align(left + bottom, line(length: .25em, stroke: .06em))
                )
            )
        )
    }

    // These are calibrated for Charis SIL Italic; DO NOT CHANGE the font
    // or style, else these will have to be redone from scratch.
    show "hh": [h#l(dx: -.25em, dy: -.22em)]
    show "ħħ": [ħ#l(dx: -.25em, dy: -.22em)]
    show "hhh": [h#l(dx: -.24em, dy: -.27em)#l(dx: -.26em, dy: -.17em)]
    show "ħħħ": [ħ#l(dx: -.24em, dy: -.27em)#l(dx: -.26em, dy: -.17em)]
    show "hhhh": [h#triple-line]
    show "ħħħħ": [ħ#triple-line]
    show "hhhhh": [h#triple-line#rotated-line]
    show "ħħħħħ": [ħ#triple-line#rotated-line]

    show : setup.with(compact: true)
    show "↓" : [#h(-.15em)↓#h(-.15em)] // Reduce kerning a bit to save space.
    show "ʄ͡ɠ": [ʄ#box(move(dy: .2em)[\u{0361}])ɠ]
    it
}