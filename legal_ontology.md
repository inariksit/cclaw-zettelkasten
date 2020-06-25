---
date: "2020-06-17"
tags:
  - concept
---

# Legal ontology

Model legal knowledge in an <ontology>.

An example of a legal ontology is
[LKIF Core](https://github.com/RinkeHoekstra/lkif-core), which defines concepts like legal role, process, place, time, etc., and is written in the <owl> language.

### Material
Slides from ReMeP 2020's panel [Legal Ontologies: Why Are They Relevant In Practice?](https://www.remep.net/materials-2020/)

### Possibly related
[Lynx: Legal Knowledge Graph](http://www.lynx-project.eu/)


## Not to be confused with

#### A lexical ontology applied to a legal source material

`grep "law" WordNet.txt > myLawWords.txt`

This is not a legal ontology.


#### Legal rules expressed in <legalruleml>
LegalRuleML is not an example of either an ontology, or an ontology language. It is an interchange language for legal rule expressions, and it allows you to link parts of those expressions to elements in ontologies by IRI.

## Jason's comment moved out of context

> "Ontological languages usually do not support the logical semantics required for legal rules, and are limited to things like Description Logic."

Can you clarify this?

* This [Wikipedia page](https://en.wikipedia.org/wiki/Ontology_language#Classification_by_structure_(logic_type)) says that OWL is DL-based, and LKIF Core is written in OWL, is that a contradiction?
* How about the languages that are based on first-order logic? The wikipedia page names Common Logic, CycL and KIF.
* SUMO is written in KIF, and my example of axioms (which I moved to <ontology>) was from a paper called [Modeling Legal Terminology in SUMO](https://www.researchgate.net/publication/338937692_Modeling_Legal_Terminology_in_SUMO), so does that count? Or is it just that SUO-KIF (the language in which SUMO's axioms are written) is powerful enough to support legal _rules_, but in that paper they just chose to model legal _terminology_?
