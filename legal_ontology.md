---
date: "2020-06-17"
tags:
  - approach
---

# Legal ontology

Model legal knowledge in an <ontology>.

Say that you write a law that says

> You have the obligation to pay taxes.

Maybe you link your law to <wordnet> and make sure you have the right sense of "you", "have", "obligation", "pay" and "taxes". Now you can translate it into any other language that has a [linked WordNet](https://github.com/GrammaticalFramework/gf-wordnet#readme) with the same identifiers.

Now you know that _obligation_ in the sense `06785951` 'a legal agreement specifying a payment or action and the penalty for failure to comply' is translated into Bulgarian as _обвързаност_.

But this advanced NLP system has still no idea how _obligation_ relates to other concepts in the world. In a legal ontology, you can specify relations and rules like "if you are __obliged__ to do something, you are also __permitted__ to do it."
Example from Mitrović et al. _[Modeling Legal Terminology in SUMO](https://www.researchgate.net/publication/338937692_Modeling_Legal_Terminology_in_SUMO)_

    (=>
      (modalAttribute ?FORMULA Obligation)
      (modalAttribute ?FORMULA Permission))

See also: <legalruleml>

## Comment from Jason
The above example is of a lexical ontology, not a legal one, just applied to a legal source material. A legal ontology does not "allow you to specify relations and rules". Ontological languages usually do not support the logical semantics required for legal rules, and are limited to things like Description Logic. LegalRuleML is not an example of either an ontology, or an ontology langauge. It is an interchange language for legal rule expressions, and it allows you to link parts of those expressions to elements in ontologies by IRI.

An example of a legal ontology is 
[LKIF Core](https://github.com/RinkeHoekstra/lkif-core), which defines concepts like legal role, process, place, time, etc., and is written in the OWL language.



