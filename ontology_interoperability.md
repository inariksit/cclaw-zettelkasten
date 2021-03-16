---
date: "2020-07-07"
tags:
  - ontology
---

# Interoperability between ontologies

Ontologies can differ in several axes. The following are from _Approaches to Legal Ontologies_:

<!-- > the current wide typology of legal ontologies in terms of granularity (domain-specific vs. core), degree of formality (highly axiomatised vs. lexical or language-oriented), methodologies of development (top–down vs. bottom–up and middle-out), and knowledge sources for concept and term extraction (official legal sources vs. legal expert interview and ethnographic work) -->

### Topology

[Fernández-Barrera and Sartor (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_2) divide ontologies by topology. __Rooted tree__ is a strict `is-a` taxonomy, whereas __operational family__ has a more diverse structure, with loops.

<!-- > “On the other hand, operational families of concepts, will not necessarily follow the model of a rooted tree, and will acquire more diverse structures. This is due to the fact that concepts in an operational family are not necessarily related to a single beginner, but can form looped structures. ” -->

In practice, most ontologies allow both: `is-a` hierarchy as a backbone, and other relations in addition.


### Granularity
An ontology can be __domain-specific__, meant to cover a domain in fine detail. Contrast with __upper__ ontologies, which are more general and have a small number of concepts. __Core__ ontology is used for a general ontology within a domain: an "upper ontology" for just legal domain is better described as a _legal core ontology_. For more details, see [[[top_ontology_domain_ontologies]]].


### Formality
A __lightweight__ (or __language-oriented__) ontology is not much more than a collection of concepts: little hierarchy, few axioms. Technically, a completely flat lexicon is a lightweight ontology.

In contrast, __heavyweight__ (more __formal__ or __highly axiomatized__) ontologies have more structure. [Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) describe as follows: _"Formal ontologies are composed of a relatively small set of concepts, defined by a high number of constraints which encode the relations between individuals of classes through cardinality restrictions, property range and domain, disjointness, transitive and symmetric properties."_


### Building methods
Ontology learning from texts is __bottom-up__[^1]. Find a word in a text, relate it to other words[^2] and put it in an ontology. The resulting ontology has usually a high level of detail (see "Granularity"), but not a lot of structure (see "Formality").

In contrast, __top-down__ starts from conceptual models. Take a generic concept, and build a structure by specialization. The resulting ontology is more structured--it's more likely that an ontology built top-down is _heavyweight_ and _upper_, but this does not have to be the case. It's completely possible to build a _lightweight_, _domain_ ontology by top-down method.

Combination of the two is called __middle-out__: start from the middle, generalize upwards and specialize downwards. See [El Ghosh et al. (2016)](https://www.researchgate.net/publication/304814412_Towards_a_Middle-out_Approach_for_Building_Legal_Domain_Reference_Ontology) for more info.
<!-- Bottom-up approach does a better job at modeling reality than thinking of [intensional](https://en.wikipedia.org/wiki/Extensional_and_intensional_definitions) descriptions while sitting in an armchair, but both have their weaknesses: it's easy to introduce inconsistencies in bottom-up, and easy to get stuck with a bad abstraction in top-down.  -->

See also [[[conceptual_and_lexical_ontologies]]]


[^1]: Biasiotti and Tiscornia (2010) argue that legal ontologies need to be built bottom-up: _"Since legal domain is strictly dependent on its own textual nature, a methodology for ontology construction must privilege a bottom–up approaches, based on a solid theoretical model."_

[^2]:[Herbelot (2011)](https://web.archive.org/web/20130704143830/http://www.peerpress.de/discoursecpp.pdf) on ontology extraction: _"— a subfield of natural language processing which, put simply, specialises in producing lists. […] Well-loved ontology extraction tasks include the retrieval of Oscar nominees, chemical reactions and dead presidents. In this kind of research, the machine is asked, for instance, to produce a list of things that are ‘like lorries’ and is expected to duly return (given the current state of the art): `truck car motorcycle plane engine hamster.` Because lorries have wheels and hamsters have too."_
