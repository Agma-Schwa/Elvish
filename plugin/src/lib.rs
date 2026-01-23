use aho_corasick::{AhoCorasick, MatchKind};
use lazy_static::lazy_static;
use wasm_minimal_protocol::*;

initiate_protocol!();

static PATTERNS: &[&str] = &[
    "n",
    "d", "t", "c", "g", "’",
    "s", "sh", "ch", "x",
    "ts", "tsh", "tch", "tx",
    "r",
    "i", "í", "u", "ú", "a", "á", "o",
    "į", "į́", "ų", "ų́", "ą", "ą́", "ǫ",
];

static REPLACEMENTS: &[&str] = &[
    "ɴˀ",
    "d̻", "t̻", "c͡k", "ɟ͡g", "ʔ",
    "s̻", "s̻ʰ", "ç͡x", "ç͡xʰ",
    "t̻͡s̻", "t̻͡s̻ʰ", "c͡k͡ç͡x", "c͡k͡ç͡xʰ",
    "r̠͡ʀ̟",
    "i↓", "ɪ↓", "ɯ↓", "ɯ̽↓", "a↓", "ɐ↓", "ᵏǂ",
    "i$↓", "ɪ$↓", "ɯ$↓", "ɯ̽$↓", "a$↓", "ɐ$↓", "ᵏǂ$",
];


lazy_static! {
    static ref IPA_TRIE: AhoCorasick = AhoCorasick::builder()
        .match_kind(MatchKind::LeftmostLongest)
        .build(PATTERNS)
        .unwrap();
}

#[wasm_func]
pub fn ipa_impl(s: &[u8]) -> Vec<u8> {
    const { assert!(PATTERNS.len() == REPLACEMENTS.len()); };
    IPA_TRIE.replace_all_bytes(s, REPLACEMENTS)
}
