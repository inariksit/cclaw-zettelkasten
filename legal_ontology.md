---
date: "2020-06-17"
tags:
  - concept
  - ontology
---

# Legal ontology

[!["Things defined in Black's Law Dictionary"](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/things.png "Things are the subjects of dominion or property, as distinguished from person. They are distributed into three kinds: (1) Things real or immovable, comprehending lands, tenements, and hereditable: (2) things personal or movable, comprehending goods and chattels: and (3) things mixed. partaking of the characteristics of the trio former")](https://en.wikisource.org/wiki/Page:Black%27s_Law_Dictionary_(Second_Edition).djvu/1161){#pic .ui .floated .right .medium .image}

Formal decription of the legal domain[^1] in an <ontology>.

_"Good news: lawyers have been doing it almost as long as Aristotle-and you all think like ontology engineers"_ -- [Burkhard Schafer, ReMeP 2020](https://www.remep.net/wp-content/uploads/2020/06/Burkhart-Schafer_Legal-Ontologies-a-very-short-introduction_ReMeP2020.pptx.pdf)

(See also rest of the slides from ReMeP 2020's panel [Legal Ontologies: Why Are They Relevant In Practice?](https://www.remep.net/materials-2020/))

## Types of legal ontologies
For explanation on core, domain and lexical ontology, see <ontology_interoperability>.

### Legal core ontologies

A legal core ontology defines basic concepts like _legal role_, _process_, _place_, _time_, etc. Typically, core ontologies have few concepts that are very general to the overall domain (legal domain, not subdomains like civil law), ordered from general to specific (see [genus--differentia](https://en.wikipedia.org/wiki/Genus%E2%80%93differentia_definition)). Legal core ontologies don't get out of date very often: the knowledge is so generic and foundational that contents of individual laws rarely affect them.

#### Example from 1930

![Legal acts in (Windscheid, 1930)](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_acts.png)


<!-- (https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_acts.png) -->


<!-- [Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) describe legal core ontologies: -->

<!-- > Core ontologies are normally built on the knowledge elicited from legal experts and -->
<!-- > include the formalisation of basic concepts with which legal theory commonly agrees. -->
<!-- > In their specialisations in domain ontologies, the choice about the levels of generalisation is -->
<!-- > left to the developers; it mainly depends on the kind of applications and the results one -->
<!-- > expects to achieve, as they are expected to support classification, reasoning and the -->
<!-- > decision making process. -->


#### Some (modern) legal core ontologies
* FOLaw (Functional Ontology of Law), Valente, A. (1995) _"is addressed to describing the
epistemological aspects of law as a control system of social behaviours."_
* LRI-Core (Breuker and Winckels 2003), _") is a core ontology that covers the main concepts that are common to all legal domains. It starts with four main categories: **physical concepts, mental concepts, roles, and abstract concepts**. The notion of ‘what can happen to an object’ is pursued."_
* CLO (Core Legal Ontology) (Gangemi et al. 2003) _"organises legal concepts
and relations on the basis of formal properties defined in the DOLCE+ foundational
ontology library (Masolo et al. 2002)"_
* [LKIF-Core](https://github.com/RinkeHoekstra/lkif-core#readme) (Hoekstra et al. 2007), written in <owl>, _"is […] a **library of ontologies** relevant for the legal domain than a monolithic body of definitions. The most abstract concepts are defined in five closely related modules: **top, place, mereology, time and space-time**. LKIF’s top ontology is largely based on the top-level of LRI-Core but has less ontological commitment in the sense that it imposes less restrictions on subclasses of the top categories."_
<!-- _"is a modular collection of basic legal concepts aimed at supporting the implementation of rule-based knowledge bases for regulatory decision support systems."_  -->

Might be relevant to read/skim Breuker & Hoekstra [Epistemology and ontology in core ontologies: FOLaw and LRI-Core, two core ontologies for law](http://ceur-ws.org/Vol-118/paper2.pdf)


### Legal domain ontologies

Legal domain ontologies gather together concepts that belong to a particular domain. The number of concepts is usually higher than in core ontologies, and domain ontologies need to be updated more often, when laws change.

[Sartor et al. (2010)](https://link.springer.com/book/10.1007/978-94-007-0120-5) list the following applications for legal domain ontologies. TODO: add links to actual ontologies. (The book didn't have links.)

* Inference drawing
* Information retrieval
* Integrate XML DTDs and schemas that define rights ecpression languages and rights data dictionaries
* Legal advice
* Legal information retrieval, management
* Represent causality
* Represent concepts in European directives
* Represent crimes in Italian/Dutch/… law
* Represent internal revenue code
* Represent layman knowledge on liability cases
* Represent procedural stages of Spanish civil hearings
* Semantically enrich legal texts
<!-- * Represent top-level concepts (e.g. ownership) -->


[Ashley (2010)]() presents a domain ontology for supporting case-based reasoning. Previous cases are encoded in an ontology, so that lawyers can find relevant analogies, despite shallow dissimilarities---Ashley names, among others, a hunter scaring away ducks another hunter is about to shoot, and a baseball spectator picking a baseball from another fan who caught it first, but dropped because others tackled him.

> [T]he domain ontology will have to represent some fundamental categories of human agency (See Breuker and Hoekstra 2004b) such as:
> * Interference: not interfering, interfering physically with, preventing someone’s reaching a goal
> * Intentionality: acting unintentionally, negligently, knowingly or intentionally
> * Objectiveness of intention: hiding ones intentions, being ambiguous about them or manifesting them clearly”


TODO: where should things like [Lynx: Legal Knowledge Graph](http://www.lynx-project.eu/) be placed?

<!-- > [L]aw explicitly constitutes only some of its concepts and only in part (relying for the rest in common-sense and the knowledge of legal experts). -->


### Lexical ontologies applied to legal material

For example:
* [JurWordNet](https://www.fi.muni.cz/gwc2004/proc/111.pdf), where Italian <wordnet> is extended for legal domain.


## Logical semantics of legal rules

Many ontology languages are based on <description_logics>, which aren't powerful enough represent the logical semantics required for legal rules. [Mitrović et al. (2019)](https://www.researchgate.net/publication/338937692_Modeling_Legal_Terminology_in_SUMO) model legal knowledge in <sumo>, which is written in a more expressive language.

> It also addresses computational sufficiency by being **written in a higher order logic**, so that we can at least have the capability of automated reasoning about beliefs, intent, temporal qualification, modality and many other issues that cannot be captured explicitly in a less expressive logic.

TODO: write more about this. SUMO lacks a lot of legal concepts because it is a general-purpose ontology. Contrast with actual legal ontologies, with more accurate _ontology_ but less powerful axioms, and hence, more limited reasoning.

<!-- that such work has typically employed logics that are incapa- ble of representing the full semantics of a domain that relies heavily on higher-order logical issues such as belief and intent. Such work typically just elucidates a taxon- omy, which then must be used informally, with most of the semantics in the intuition of the user, rather than expressed in a formal system and available for automated computation. -->







[^1]: _“[L]egal ontologies can be considered the formal description of the domain of legal discourse. A decision to make is, therefore, what counts as “legal discourse”. However, it is difficult to identify one single legal discourse since it has been highlighted that different levels of legal language exist (Tiscornia 2005), among which we can identify the following: (i) __the discourse of the legislator__ (laws and regulations); (ii) __the discourse of the judges__ (judgements and other judicial decisions); (iii) __the discourse of the doctrine__ (studies on several legal subdomains, systematising legislator and judges’ discourses); (iv) __the discourse of legal theory__ (legal works having a general content, not addressing a particular legal system).”_ ([Fernández-Barrera, Sartor (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_2), emphasis mine)
