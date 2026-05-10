#!/usr/bin/env bash

set -eu

pushd plugin
cargo build --release
./target/release/elvish-dictgen ../elvish.dict.txt > ./target/dict.json
popd

scp ./plugin/target/dict.json nguhserver:/srv/nguh.org/static/elvish-dictionary.json
