---
date: "2020-06-15"
tags:
  - concept
  - todo
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

## Types of CNLs

[Kuhn (2014)](https://www.aclweb.org/anthology/J14-1005.pdf) introduces the PENS classification scheme:

<!-- @article{kuhn2014survey, -->
<!--   title={A survey and classification of controlled natural languages}, -->
<!--   author={Kuhn, Tobias}, -->
<!--   journal={Computational linguistics}, -->
<!--   volume={40}, -->
<!--   number={1}, -->
<!--   pages={121--170}, -->
<!--   year={2014}, -->
<!--   publisher={MIT Press} -->
<!-- } -->

* __Precision__: "Ambiguity, predictability, andformality  of  definition"
* __Expressiveness__: how many different things can you say with the language
* __Naturalness__: "Grammar modifications, understandability, and natural look-and-feel"
* __Simplicity__: how is the grammar defined? a simple CFG that fits one page, or no complete description exists?

Quote from the paper:

> PENS  drastically  simplifies  things  by  restricting  each  ofits four dimensions to five classes, to be numbered from 1 to 5. These five classes are non-overlapping and consecutively cover the one-dimensional space between the two extremes: English on the one end and propositional logic on the other. For precision and simplicity, English is on the bottom end of the scale in class 1, which we write as P¹ and S¹. Propositional logic is on the opposite end of the scale in class 5, represented withP5and S5. For expressiveness and naturalness, the roles are switched: English is at the top end (E⁵ and N⁵) and propositional logic at the bottom (E¹ and N¹). In this way, the scheme defines a conceptual space for CNLs that includes natural and formal languagesas  special  cases.  Combining  the  four  dimensions  gives  5⁴=625  classes,  representedwith shorthand such as P¹E⁵N⁵S¹ for English and P⁵E¹N¹S⁵for propositional logic. The difficult and interesting part of this intellectual exercise is where and how to draw the borders between the five classes of each dimension.
