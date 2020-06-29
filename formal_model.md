---
date: "2020-06-17"
tags:
  - concept
---

# Formal model

Real {contracts,programs} are large and complex.
They are written in an unsuitable language for formal representation, e.g. {English,Python}.

To make it easier to test/reason about {contracts,programs}, we can build a _model_ in some formal language. This model is a simplification of the underlying {contract,program}.

"[All models are wrong, some are useful](https://en.wikipedia.org/wiki/All_models_are_wrong)".


### Languages in which to build models

- Logics:
  - Deontic logic
  - Propositional dynamic logic
- Prisacariu, Schneider (2009): [Contract Language](http://www.cse.chalmers.se/~gersch/icail09.pdf)
- Martínez et al. (2010): [C-O diagrams](http://www.cse.chalmers.se/~gersch/scc2010.pdf)
- Gulliksson, Camilleri (2016): [Simplified Contract Language](http://publications.lib.chalmers.se/records/fulltext/243893/243893.pdf)
- Haeusler et al. (2010) [Intuitionistic ALC (iALC)](http://arademaker.github.io/files/loait2010-article.pdf)  
  Explanation: [ALC](https://en.wikipedia.org/wiki/Description_logic#The_description_logic_ALC) is one of the core Description Logics. ALC is extended with intuitionistic logic, because _"Classical negation forces the negation of a proposition to be part of a concept, but in the context of “the law” the negation of a valid law does not have to be valid either. Besides the ontological complexity of dealing with legal statements together with non-legal ones by defining concepts that are outside jurisprudence, Classical negation can lead to unnecessary incoherent situations […]"_
