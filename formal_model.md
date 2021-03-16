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


### Languages in which to build models about contracts

- Logics:
  - Deontic logic
  - Propositional dynamic logic
- Lee (1988) [A logic model for electronic contracting](https://www.sciencedirect.com/science/article/abs/pii/0167923688900966)
- Peyton Jones and Eber (2003) _[How to write a financial contract](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.14.7885)_ A combinator library in Haskell for representing [[[financial_contract]]].
- Milosevic et al. (2004) [Business Contract Language](https://www.researchgate.net/publication/4085228_On_design_and_implementation_of_a_contract_monitoring_facility) _"A BCL contract consists of a set of roles along with a set of policies […] The roles define the parties involved in a contract, and the policies define the obligations and rights agreed upon by the parties. […] Governatori and Milosevic [36] later seek to formalise BCL by mapping it to a fragment of deontic logic extended with contrary-to-duty obligations. "_
- Prisacariu, Schneider (2009): [Contract Language](http://www.cse.chalmers.se/~gersch/icail09.pdf) _"a logic for expressing electronic contracts based on a combination of deontic, dynamic, and temporal logics. "_
- Martínez et al. (2010): [C-O diagrams](http://www.cse.chalmers.se/~gersch/scc2010.pdf)
- Gulliksson, Camilleri (2016): [Simplified Contract Language](http://publications.lib.chalmers.se/records/fulltext/243893/243893.pdf)
- Haeusler et al. (2010) [Intuitionistic ALC (iALC)](http://arademaker.github.io/files/loait2010-article.pdf)
  Explanation: [ALC](https://en.wikipedia.org/wiki/Description_logic#The_description_logic_ALC) is one of the core Description Logics. ALC is extended with intuitionistic logic, because _"Classical negation forces the negation of a proposition to be part of a concept, but in the context of “the law” the negation of a valid law does not have to be valid either. Besides the ontological complexity of dealing with legal statements together with non-legal ones by defining concepts that are outside jurisprudence, Classical negation can lead to unnecessary incoherent situations […]"_
