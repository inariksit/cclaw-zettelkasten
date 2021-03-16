---
date: 2020-08-26
tags:
  - ontology
---

# Conceptual ontologies and lexical ontologies

_Related to [[[ontology_interoperability]]]._

[[[wordnet]]] is sometimes called a "__lexical__ ontology". Its material is words, and the relations are particularly relevant for words. They include
synonymy (_big, large_);
antonymy (_big, small_);
hyponymy and hypernymy (_chair, furniture_);
meronymy and holonymy (_chair, legs_); and more linguistic things like derivation (_bank, banker_).

This is in contrast with ontologies that try to model the world, or humans' __conceptual__ understanding of the world.

In a simple model, words are the linguistic realisation of a concept, and hence words are automatically present in a conceptual ontology.
In a multilayer model, the conceptual and the lexical levels are both present in an ontology, with an intermediate layer (or several) between them.

### Biasiotti and Tiscornia (2010): Linguistic perspectives on legal ontologies

[Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) provide a design for a multilingual ontology in the domain of consumer law.

[![Multilingual ontology on consumer law (Biasiotti and Tiscornia, 2010)](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/biasiotti_tiscornia_2010.png){#avatar .ui .floated .medium .image}](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/biasiotti_tiscornia_2010.png)

#### Domain Ontology
Core elements in consumer law and their relations to each other.

#### Concepts
List of [[[wordnet]]] synsets in multiple languages.

<!-- (Technically, the entities on the concept layer are _pointers_ to a list of synsets, like C2 points to `synset-supplier` and `synset-fornitore`. Conceptually this is no different from if C2 were just a list `[supplier, fornitore]`.) -->

#### Lexicons

Monolingual terminologies which are structured into a [[[wordnet]]]. The lexical level contains the relations mentioned before in this section (synonymy, antonymy, derivation, …)

<!-- > [judges] link general and abstract legislative statements to their linguistic manifestation -->

### Ajani et al. (2009): Legal Taxonomy Syllabus

[![Image from Ajani et al. 2009](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_taxonomy_syllabus_example.png){#pic .ui .floated .medium .image .right}](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_taxonomy_syllabus_example.png)

Another example is Ajani et al. (2009) [Legal Taxonomy Syllabus](https://www.researchgate.net/publication/238716915_Legal_Taxonomy_Syllabus_version_20), a multilevel ontology of EU and national levels. There's an ontology of concepts for EU and for each national system, shown in the small ovals.
On a separate level, there are _terms_ in different languages, shown in the rectangles. Those terms are mapped to the appropriate concepts.

The design is similar to the previous, but without the wordnet synset layer. The "concept" layer seems to correspond to the "Domain Ontology" in Biasiotti and Tiscornia, and the "term" layer looks like a flat version of "Lexicons": the terms don't have a hierarchy of their own.
