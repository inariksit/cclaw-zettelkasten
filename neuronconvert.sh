#!/usr/bin/env nix-shell
#! nix-shell -p sd
#! nix-shell -i bash

# Migration script for https://github.com/srid/neuron/pull/450

# Limitations
# - Only works if ?cf (or &cf) is at the end (usually the case)
# - Will replace even in code blocks (!).
# - Will also replace in raw HTML tags (if you use them).

# **WARNING**: 
# Backup, or use Git to sanity check what this script modifies.

sd "<(z:[^>\s]+)(\&|\?)cf>" "[[\$1]]" *.md
sd "<(z:[^>\s]+)>" "[[[\$1]]]" *.md

sd "<([^:$>\s]+)(\&|\?)cf>" "[[\$1]]" *.md   
sd "<([^:$>\s]+)>" "[[[\$1]]]" *.md   