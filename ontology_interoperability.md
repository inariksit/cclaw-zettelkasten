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
An ontology can be __domain-specific__, meant to cover a domain in fine detail. Contrast with __upper__ ontologies, which are more general and have a small number of concepts.

The term __core ontology__ is sometimes used. If I (Inari) have understood correctly, a core ontology is sort of an upper ontology for a domain. So a true upper ontology is super generic, starting from `Entity`, core ontology would start from the most general concepts for a given field, like (for legal domain) _legal role_, _process_, _place_, _time_, etc.


### Formality
A __lightweight__ (or __language-oriented__) ontology is not much more than a collection of concepts: little hierarchy, few axioms. Technically, a completely flat lexicon is a lightweight ontology.

In contrast, __heavyweight__ (more __formal__ or __highly axiomatized__) ontologies have more structure. [Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) describe as follows: _"Formal ontologies are composed of a relatively small set of concepts, defined by a high number of constraints which encode the relations between individuals of classes through cardinality restrictions, property range and domain, disjointness, transitive and symmetric properties."_


### Building methods
Ontology learning from texts is __bottom-up__[^1]. Find a word in a text, relate it to other words[^2] and put it in an ontology. The resulting ontology has usually a high level of detail (see "Granularity"), but not a lot of structure (see "Formality").

In contrast, __top-down__ starts from conceptual models. Take a generic concept, and build a structure by specialization. The resulting ontology is more structured--it's more likely that an ontology built top-down is _heavyweight_ and _upper_, but this does not have to be the case. It's completely possible to build a _lightweight_, _domain_ ontology by top-down method.

Combination of the two is called __middle-out__: start from the middle, generalize upwards and specialize downwards. See [El Ghosh et al. (2016)](https://www.researchgate.net/publication/304814412_Towards_a_Middle-out_Approach_for_Building_Legal_Domain_Reference_Ontology) for more info.
<!-- Bottom-up approach does a better job at modeling reality than thinking of [intensional](https://en.wikipedia.org/wiki/Extensional_and_intensional_definitions) descriptions while sitting in an armchair, but both have their weaknesses: it's easy to introduce inconsistencies in bottom-up, and easy to get stuck with a bad abstraction in top-down.  -->


## Upper ontology and domain ontologies

A __domain ontology__ describes details of a particular domain. Examples of domain ontologies are a biomedical ontology (or even more specific, only about neurology), or an ontology about airports.

In contrast, an __upper ontology__ (synonyms: __top-level ontology__, __foundation ontology__) _"describes very general concepts that are the same across all domains. The aim is to have a large number on ontologies accessible under this upper ontology.”_ (Mascardi et al. (2007) [A Comparison of Upper Ontologies](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf))

In the following picture, the domain ontologies of Neurology and Airports are connected to an upper ontology, which starts from very generic terms. (Made-up example, not from any real ontology.)

              Entity
              /  |  \
            … … … … … …
        Biology  …  Geography
        / | | \ … … / | | \
     … … … … … … … … … … … … …
         |                 \
      Neurology           Europe
      / | | \            /   |  \
     … … … … … … … … … … … … … … …
     |                         |
    Optic nerve          Heathrow airport


<sumo> is a big, well-known upper ontology. [Mascardi et al.](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf) list other big ones (in 2007). [Wikipedia](https://en.wikipedia.org/wiki/Upper_ontology#Available_upper_ontologies) has a more up-to-date list.[^3]

Some upper ontologies on the legal domain (called __legal core ontologies__) are listed in <legal_ontology>.

## Conceptual ontologies and lexical ontologies

<wordnet> is sometimes called a "__lexical__ ontology". Its material is words, and the relations are particularly relevant for words. They include
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
List of <wordnet> synsets in multiple languages.

<!-- (Technically, the entities on the concept layer are _pointers_ to a list of synsets, like C2 points to `synset-supplier` and `synset-fornitore`. Conceptually this is no different from if C2 were just a list `[supplier, fornitore]`.) -->

#### Lexicons

Monolingual terminologies which are structured into a <wordnet>. The lexical level contains the relations mentioned before in this section (synonymy, antonymy, derivation, …)

<!-- > [judges] link general and abstract legislative statements to their linguistic manifestation -->

### Ajani et al. (2009): Legal Taxonomy Syllabus

[![Image from Ajani et al. 2009](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_taxonomy_syllabus_example.png){#pic .ui .floated .medium .image .right}](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_taxonomy_syllabus_example.png)

Another example is Ajani et al. (2009) [Legal Taxonomy Syllabus](https://www.researchgate.net/publication/238716915_Legal_Taxonomy_Syllabus_version_20), a multilevel ontology of EU and national levels. There's an ontology of concepts for EU and for each national system, shown in the small ovals.
On a separate level, there are _terms_ in different languages, shown in the rectangles. Those terms are mapped to the appropriate concepts.

The design is similar to the previous, but without the wordnet synset layer. The "concept" layer seems to correspond to the "Domain Ontology" in Biasiotti and Tiscornia, and the "term" layer looks like a flat version of "Lexicons": the terms don't have a hierarchy of their own.


[^1]: Biasiotti and Tiscornia (2010) argue that legal ontologies need to be built bottom-up: _"Since legal domain is strictly dependent on its own textual nature, a methodology for ontology construction must privilege a bottom–up approaches, based on a solid theoretical model."_

[^2]:[Herbelot (2011)](https://web.archive.org/web/20130704143830/http://www.peerpress.de/discoursecpp.pdf) on ontology extraction: _"— a subfield of natural language processing which, put simply, specialises in producing lists. […] Well-loved ontology extraction tasks include the retrieval of Oscar nominees, chemical reactions and dead presidents. In this kind of research, the machine is asked, for instance, to produce a list of things that are ‘like lorries’ and is expected to duly return (given the current state of the art): `truck car motorcycle plane engine hamster.` Because lorries have wheels and hamsters have too."_

[^3]: Heuristic of relevance: does the ontology have its own Wikipedia page. Wikipedia remarks _"Note that the lack of fresh releases does not imply inactivity or uselessness."_ This is true especially for an upper ontology. The purpose is to be compact and general, and that kind of information doesn't need to be updated.
