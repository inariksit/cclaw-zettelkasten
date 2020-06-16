---
date: "2020-06-15"
---

# Controlled Natural Language

Based on real natural languages, but restricted in one or more ways described below.

This entry is paraphrased from [SIGCNL definition](https://www.sigcnl.org/index.html).

## Types of restrictions

### Vocabulary
Example: only words related to seafaring or instruction manuals.

### Grammar
Example: don't allow [PP attachment](https://www.gabormelli.com/RKB/Prepositional_Phrase_Attachment_Task) ambiguity:

> I saw the man with a telescope

Variations [man with a telescope] and [saw with a telescope] need to be marked explicitly:

1. I saw the (man with a telescope)  
1. I (saw with a telescope) the man

### Semantic

Example: TODO


## Purposes

### Improve communication among humans

Example: [Maritime English](https://en.wikipedia.org/wiki/Standard_Marine_Communication_Phrases)

People who work on ships need to learn a specific subset of English. When your ship hits an iceberg, you say:

> “I am fast in ice. I require assistance”.

instead of "the ship has crashed in ice, can somebody help me?"

This allows people to work on ships without knowing the full English language.

See also [Simplified Technical English](https://en.wikipedia.org/wiki/Simplified_Technical_English).

### Facilitate (semi-)automated NLP

Example: [Set of expressions for describing accessibility of places](https://www.aclweb.org/anthology/W15-3301.pdf)

The CNL described makes it possible to automatically translate accessibility descriptions to other languages, and to generate them from a database of structured input.

### Enable automated reasoning and formal knowledge representation

Example: [Attempto Controlled English](https://en.wikipedia.org/wiki/Attempto_Controlled_English)

A fragment of (semi-natural) English which can be unambiguously translated into first-order logic.
