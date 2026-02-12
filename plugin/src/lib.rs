use aho_corasick::{AhoCorasick, MatchKind};
use dictgen::{LanguageOps, Node, Options};
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


struct ElvishOps;
impl LanguageOps for ElvishOps {
    fn to_ipa(&self, word: &str) -> dictgen::Result<Option<Node>> {
        const { assert!(PATTERNS.len() == REPLACEMENTS.len()); };
        let replaced = IPA_TRIE.replace_all(word, REPLACEMENTS);
        if replaced.contains('$') {
            let mut nodes = Vec::<Node>::new();
            let mut first = true;
            for part in IPA_TRIE.replace_all(word, REPLACEMENTS).split('$') {
                if first {
                    first = false
                } else {
                    nodes.push(Node::builtin_with_args(
                        dictgen::BuiltinMacro::Superscript,
                        vec![Node::text("ʄ͡ɠ")],
                    ));
                }
                nodes.push(Node::text(part));
            }

            Ok(Some(Node::group(nodes)))
        } else {
            Ok(Some(Node::text(replaced)))
        }

    }
}

#[wasm_func]
pub fn ipa_impl(s: &[u8]) -> Result<Vec<u8>, String> {
    let ops = ElvishOps {};
    let node = ops.to_ipa(str::from_utf8(s).unwrap())?;
    Ok(serde_json::to_string(&node).unwrap().into_bytes())
}

#[wasm_func]
pub fn generate_dictionary(contents: &[u8]) -> Result<Vec<u8>, String> {
    let ops = Box::new(ElvishOps {});
    let json = dictgen::parse_and_generate(
        ops,
        str::from_utf8(contents).map_err(|e| e.to_string())?,
        Options { always_include_ipa: true, ..Default::default() }
    )?;
    Ok(json.into_bytes())
}
