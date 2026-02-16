#!/usr/bin/env bash

set -eu

cat words.txt | shuf | head -n1
