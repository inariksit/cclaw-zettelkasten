---
date: "2020-07-07"
tags:
  - todo
  - ontology
---

# Interoperability between ontologies

Ontologies can differ in several axes. The following are from _Approaches to Legal Ontologies_:

#### Building methods 
Ontology learning from texts is __bottom-up__[^1]. Find a word in a text, relate it to other words[^2] and put it in an ontology.


In contrast, __top-down__ starts from conceptual models. First come up with an [intensional](https://en.wikipedia.org/wiki/Extensional_and_intensional_definitions) description, then set out to populate that class with individuals, which you may find in texts or by sitting in an armchair for a longer time.

<!-- Top-down vs. bottom-up is like [intensional vs. extensional](https://en.wikipedia.org/wiki/Extensional_and_intensional_definitions) -->

<!-- > core legal ontologies, usually built top-down with the goal of representing intensional descriptions of legal concepts as classes for guiding the interpretation of the world and explaining common sense reasoning. -->

#### Levels of formalisation 
If an ontology is just a collection of concepts, it can be called __lightweight__. (Technically, a completely flat lexicon is a lightweight ontology.) 

In contrast, __heavyweight__ (or more __formal__) ontologies have more structure. [Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) describe as follows: _"Formal ontologies are composed of a relatively small set of concepts, defined by a high number of constraints which encode the relations between individuals of classes through cardinality restrictions, property range and domain, disjointness, transitive and symmetric properties."_

#### Granularity 
How specific things to express: "furniture" or "armchair" -- TODO check if this is the definition or did I misinterpret


Furthermore, there are many different ontologies. Here are approaches for interoperability between them.


## Domain ontology vs. upper ontology

A __domain ontology__ describes details of a particular domain. Examples of domain ontologies are a biomedical ontology (or even more specific, only about neurology), or an ontology about airports.

In contrast, an __upper ontology__ (synonyms: __top-level ontology__, __foundation ontology__, __core ontology__) _"describes very general concepts that are the same across all domains. The aim is to have a large number on ontologies accessible under this upper ontology.”_ (Mascardi et al. (2007) [A Comparison of Upper Ontologies](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf))

In the following picture, the domain ontologies of Neurology and Airports are connected to an upper ontology, which starts from very generic terms. Note that this is not the actual hierarchy of any real ontology, just a made-up example.

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


<sumo> is a big, well-known upper ontology. Other big ones (in 2007) are listed in [Mascardi et al](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf). [Wikipedia](https://en.wikipedia.org/wiki/Upper_ontology#Available_upper_ontologies) has a more up-to-date list. (Heuristic of relevance: does the ontology have its own Wikipedia page.) Wikipedia remarks _"Note that the lack of fresh releases does not imply inactivity or uselessness." This is true especially for an upper ontology. The purpose is to be compact, and that kind of information doesn't need to be updated.


## Conceptual vs. lexical ontologies

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

![Multilingual ontology on consumer law (Biasiotti and Tiscornia, 2010)](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/biasiotti_tiscornia_2010.png){#avatar .ui .floated .medium .image}

#### Domain Ontology
Core elements in consumer law and their relations to each other.

#### Concepts
List of synsets in multiple languages. See <wordnet> for definition of _synset_.

<!-- (Technically, the entities on the concept layer are _pointers_ to a list of synsets, like C2 points to `synset-supplier` and `synset-fornitore`. Conceptually this is no different from if C2 were just a list `[supplier, fornitore]`.) -->

#### Lexicons

Monolingual terminologies which are structured into a <wordnet>. The lexical level contains the relations mentioned before in this section (synonymy, antonymy, derivation, …)

<!-- > [judges] link general and abstract legislative statements to their linguistic manifestation -->

### Ajani et al. (2009): Legal Taxonomy Syllabus

Another example is Ajani et al. (2009) [Legal Taxonomy Syllabus](https://www.researchgate.net/publication/238716915_Legal_Taxonomy_Syllabus_version_20), a multilevel ontology of EU and national levels. There's an ontology of concepts for EU and for each national system. On a separate level, there are _terms_ in different languages, which are mapped to the appropriate concepts. Like the previous, but without wordnet layer. Picture from the paper:

![Image from Ajani et al. 2009](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_taxonomy_syllabus_example.png)



### Boella and Rossi (2010): The multi-layered legal information perspective


<!--
> law is always fragmented in several conceptual frameworks
> with different features and objectives. And these conceptual frameworks may change
> according to time and events in the practice of law.

> It is precisely because law is inherently multilevel, that we need to maintain several levels in the
> ontological structure in order to explain the different aspects of law.

> Thus, the ontology that can be constructed adopting the proposed model can be a partial
> one and a specialised one. Our experience with the ICT4LAW project is that rather than
> employing a unified knowledge model starting from one single perspective, it is better to
> work on the several single layers without assuming their reducibility to another layer or
> not. -->


Boella and Rossi propose a model with 4 levels of ontologies. Like Biasiotti and Tiscornia, they include the distinction between _concepts_ and _terms_. But they allow for more complications: the concepts may be _organized_ in different ways, and the terms may be _used_ in different ways.

As a concrete use case, they present an EU law "Markets in Financial Instruments Directive" (MIFID).

- Financial enterprises (such as banks) in EU countries need to comply to MIFID and national regulations.
- MIFID is _implemented_ by the national legislators in the EU countries.
- An ontology that represents MIFID needs to represent concepts on European and national levels. Potential misalignments:
    1. Term and concept don't match, due to one or both of
      - EU _term_ is already used in national law for a different _concept_.
      - EU _concept_ is already used in national law with a different _term_.
    2. Same term for the same concept in both EU and national, but different legal interpretation.
    
According to Boella and Rossi, it is difficult to create ontologies that work for legal rules
independent of time and place. Law is a combination of _legal texts_ and their _interpretation and
implementation_ in different jurisdictions.

This 4-level ontology would really need a picture, but they have none.

#### Level 1: "Lightweight ontologies"

After reading the article, I have no clue why they call it "lightweight" and what is the opposite. Other descriptions from the paper:
* “L1 allows multiple representations of the same domains, according to several extensional ontologies obtained by the legal literature.”
* "foundational ontologies to the particularities of the legal domain."
* "legal statements about company organisation provided by L1"
* "L1 of the procedural model […] permits to elaborate extensional ontologies related to the described domain."

#### Level 2: "Service ontologies"

Would be nice to have an actual concrete example in that paper. Just quoting here.

* “The second layer (L2) is constituted by service ontologies, enabling the definition of roles and behaviours for agents in charge of executing tasks related to the specific domains considered by L1.”
* "internal company organisation as shown in L2"
* "definition of the roles and behaviours for agents in charge of executing tasks related to the scope of MIFID (L2)"


#### Level 3: Link between L1 and L2

The ontologies L1 and L2 don't need to match each other. Matching and comparison of L1 and L2 is the job of L3.

* “The third layer (L3) is devoted to link L1–L2, allowing to convert service concepts into/from domain concept ones, through a refinement in terms of ontological relations.”
* "This comparison may allow to discover the misalignments between internal company organisation as shown in L2 and the legal statements about company organisation provided by L1."


#### Level 4: "Core ontology"

[Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) describe a legal core ontology:

> Core ontologies are normally built on the knowledge elicited from legal experts and
> include the formalisation of basic concepts with which legal theory commonly agrees.
> In their specialisations in domain ontologies, the choice about the levels of generalisation is
> left to the developers; it mainly depends on the kind of applications and the results one
> expects to achieve, as they are expected to support classification, reasoning and the
> decision making process.

I imagine that legal core ontology has the role of upper ontology in general. Few concepts, lot of axioms.

Examples of core ontologies:
* FOLaw (Functional Ontology of Law), Valente, A. (1995) _"is addressed to describing the
epistemological aspects of law as a control system of social behaviours."_
* LRI-Core (Breuker and Winckels 2003), 
* CLO (Core Legal Ontology) (Gangemi et al. 2003) _"organises legal concepts
and relations on the basis of formal properties defined in the DOLCE+ foundational
ontology library (Masolo et al. 2002)"_
* [LKIF-Core](https://github.com/RinkeHoekstra/lkif-core#readme) (Hoekstra et al. 2007) _"is a modular collection of basic legal concepts aimed at supporting the implementation of rule-based knowledge bases for regulatory decision support systems."_

For more information, see Breuker & Hoekstra [Epistemology and ontology in core ontologies: FOLaw and LRI-Core, two core ontologies for law](http://ceur-ws.org/Vol-118/paper2.pdf)





<!-- > the European vs national levels and the multisystemic issues are considered.  -->
<!-- > This is realized by means of separated ontologies, a common one for the -->
<!-- > European level, whose concepts have linguistic realizations in the different languages of -->
<!-- > the EU, and distinct ones for the national systems, whose concepts have linguistic -->
<!-- > realizations in the respective national languages. The European and national levels are -->
<!-- > related via an __implementation link between concepts__ to indicate how the national system -->
<!-- > has implemented a concept present in a directive and _with which terminology_. -->


<!--In the model we propose, lightweight ontologies are normally built, reviewed, and
maintained by several types of knowledge experts, according to the expertise of different
legal systems or domain experts. This constitutes the first layer (L1) that represents
information about legal content as interpreted at a certain time by a certain community of
experts. In our current project Legal Taxonomy Syllabus (Rossi and Vogel 2004; Ajani et
al. 2007, 2010) we have lightweight ontologies of European different legal vocabulary and
concepts (EU and five national jurisdictions) related to specific domains, such as
consumer law. L1 allows multiple representations of the same domains, according to
several extensional ontologies obtained by the legal literature.
The second layer (L2) is constituted by service ontologies, enabling the definition of roles
and behaviours for agents in charge of executing tasks related to the specific domains
considered by L1.
The third layer (L3) is devoted to link L1–L2, allowing to convert service concepts into/from
domain concept ones, through a refinement in terms of ontological relations. The fourth
layer (L4) is constituted by the state of art in core concepts ontology, but it is constantly
enriched by the results of intensional semantics derived from the outcomes of the
procedural model (L1–L3) applied to numerous legal systems and domains. The L4 is
based on a set of orthogonal concepts that provide a basis for defining the legal process
in a more complex way, independently from single applications.
-->

[^1]: Biasiotti and Tiscornia (2010) argue that legal ontologies need to be built bottom-up: _"Since legal domain is strictly dependent on its own textual nature, a methodology for ontology construction must privilege a bottom–up approaches, based on a solid theoretical model."_

[^2]:[Herbelot (2011)](https://web.archive.org/web/20130704143830/http://www.peerpress.de/discoursecpp.pdf) on ontology extraction: _"— a subfield of natural language processing which, put simply, specialises in producing lists. […] Well-loved ontology extraction tasks include the retrieval of Oscar nominees, chemical reactions and dead presidents. In this kind of research, the machine is asked, for instance, to produce a list of things that are ‘like lorries’ and is expected to duly return (given the current state of the art): `truck car motorcycle plane engine hamster.` Because lorries have wheels and hamsters have too."_
