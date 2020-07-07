---
date: "2020-06-17"
tags:
  - concept
---

# Legal ontology

Model legal knowledge in an <ontology>.

An example of a legal ontology is
[LKIF Core](https://github.com/RinkeHoekstra/lkif-core), which defines concepts like legal role, process, place, time, etc., and is written in the <owl> language.


## Applications

_Quotes from “Approaches to Legal Ontologies: Theories, Domains, Methodologies: 1 (Law, Governance and Technology Series)”._

The book Approaches to Legal Ontologies lists the following applications for legal ontologies in 2010.

### General

* General language for expressing legal knowledge
* General architecture for legal problem solving
* Legal knowledge base
* Support knowledge acquisition for legal domain ontologies
* Extension to the legal domain of WordNet (JurWordnet, only in Italian)

### Domain

* Legal advice
* Legal information retrieval, management
* Represent layman knowledge on liability cases
* Represent crimes in Italian/Dutch/… law
* Represent procedural stages of Spanish civil hearings
* Represent concepts in European directives
* Represent top-level concepts (e.g. ownership)
* Represent internal revenue code
* Represent causality
* Integrate XML DTDs and schemas that define rights ecpression languages and rights data dictionaries
* Semantically enrich legal texts

And some quotes thrown in, TODO paraphrase or remove.

> Legal ontologies have been proposed as conceptual models for the most diverse legal applications, such as information retrieval, interoperability frameworks and inference drawing, among others. This explains the current wide typology of legal ontologies in terms of granularity (domain-specific vs. core), degree of formality (highly axiomatised vs. lexical or language-oriented), methodologies of development (top–down vs. bottom–up and middle-out), and knowledge sources for concept and term extraction (official legal sources vs. legal expert interview and ethnographic work)

> [L]aw explicitly constitutes only some of its concepts and only in part (relying for the rest in common-sense and the knowledge of legal experts).


## Material, links
Slides from ReMeP 2020's panel [Legal Ontologies: Why Are They Relevant In Practice?](https://www.remep.net/materials-2020/)

Possibly related: [Lynx: Legal Knowledge Graph](http://www.lynx-project.eu/)



## Not to be confused with
	
*# A lexical ontology applied to a legal source material

`grep "law" WordNet.txt > myLawWords.txt`

This is not a legal ontology.


*# Legal rules expressed in <legalruleml>
LegalRuleML is not an example of either an ontology, or an ontology language. It is an interchange language for legal rule expressions, and it allows you to link parts of those expressions to elements in ontologies by IRI.

## Jason's comment moved out of context

> "Ontological languages usually do not support the logical semantics required for legal rules, and are limited to things like Description Logic."

Can you clarify this?

* This [Wikipedia page](https://en.wikipedia.org/wiki/Ontology_language#Classification_by_structure_(logic_type)) says that OWL is DL-based, and LKIF Core is written in OWL, is that a contradiction?
* How about the languages that are based on first-order logic? The wikipedia page names Common Logic, CycL and KIF.
* SUMO is written in KIF, and my example of axioms (which I moved to <ontology>) was from a paper called [Modeling Legal Terminology in SUMO](https://www.researchgate.net/publication/338937692_Modeling_Legal_Terminology_in_SUMO), so does that count? Or is it just that SUO-KIF (the language in which SUMO's axioms are written) is powerful enough to support legal _rules_, but in that paper they just chose to model legal _terminology_?
