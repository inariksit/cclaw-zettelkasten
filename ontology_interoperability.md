---
date: "2020-07-07"
tags:
  - todo
  - ontology
---

# Interoperability between ontologies

Ontologies can differ in several axes. The following are from _Approaches to Legal Ontologies_:

#### Building methods 
bottom up vs. top down approach -- TODO definition

#### Levels of formalisation 
lightweight vs. heavyweight ontologies -- TODO definition

#### Granularity 
how specific things to express: "furniture" or "armchair" -- TODO check if this is the definition or did I misinterpret



Furthermore, there are many different ontologies. Here are approaches for interoperability between them.


## Domain ontology vs. upper ontology

Domain ontologies describe details of a particular domain. Examples of domain ontologies are a biomedical ontology (or even more specific, only about neurology), or an ontology about airports.

In contrast, an _upper ontology_ (synonyms: _top-level ontology_, _foundation ontology_) "describes very general concepts that are the same across all domains. The aim is to have a large number on ontologies accessible under this upper ontology.” (Mascardi et al. (2007) [A Comparison of Upper Ontologies](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf))

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


<sumo> is a big, well-known upper ontology. Other big ones (in 2007) are listed in Mascardi et al.

## Boella and Rossi (2010): The multi-layered legal information perspective

According to Boella and Rossi, it is difficult to create ontologies that work for legal rules
independent of time and place. Law is a combination of legal texts and their interpretation and
implementation in different jurisdictions.

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


So they propose a modular model with 4 levels. Some core assumptions behind the design:

- Distinction between _concepts_ and _terms_.
- Concepts may be organized in different ways, and terms may be used in different ways.

As a result, all national systems can't be covered by a single taxonomy. 
As a concrete use case, they present an EU law "Markets in Financial Instruments Directive" (MIFID).

- Financial enterprises (such as banks) in EU countries need to comply to MIFID and national regulations.
- MIFID is _implemented_ by the national legislators in the EU countries.
- An ontology that represents MIFID needs to represent concepts on European and national levels. Potential misalignments:
    1. Term and concept don't match, due to one or both of
      - EU _term_ is already used in national law for a different _concept_.
      - EU _concept_ is already used in national law with a different _term_.
    2. Same term for the same concept in both EU and national, but different legal interpretation.


### Level 1: "Lightweight ontologies"

After reading the article, I have no clue why they call it "lightweight" and what is the opposite. Other descriptions from the paper:
* “L1 allows multiple representations of the same domains, according to several extensional ontologies obtained by the legal literature.”
* "foundational ontologies to the particularities of the legal domain."
* "legal statements about company organisation provided by L1"
* "L1 of the procedural model […] permits to elaborate extensional ontologies related to the described domain."

### Level 2: "Service ontologies"

Would be nice to have an actual concrete example in that paper. Just quoting here.

* “The second layer (L2) is constituted by service ontologies, enabling the definition of roles and behaviours for agents in charge of executing tasks related to the specific domains considered by L1.”
* "internal company organisation as shown in L2"
* "definition of the roles and behaviours for agents in charge of executing tasks related to the scope of MIFID (L2)"


### Level 3: Link between L1 and L2

The ontologies L1 and L2 don't need to match each other. Matching and comparison of L1 and L2 is the job of L3.

* “The third layer (L3) is devoted to link L1–L2, allowing to convert service concepts into/from domain concept ones, through a refinement in terms of ontological relations.”
* "This comparison may allow to discover the misalignments between internal company organisation as shown in L2 and the legal statements about company organisation provided by L1."


### Level 4: "Core ontology"

* “The L4 is based on a set of orthogonal concepts that provide a basis for defining the legal process in a more complex way, independently from single applications.”
* "core ontology of law that can clarify the fundamentals of law."

TODO: read Breuker & Hoekstra [Epistemology and ontology in core ontologies:FOLaw and LRI-Core, two core ontologies for law](http://ceur-ws.org/Vol-118/paper2.pdf)

Examples of core ontologies:
* FOLaw (Functional Ontology of Law), from “Valente, A. (1995). Legal Knowledge Engineering: A Modelling Approach”
* LRI-Core (Breuker and Winckels 2003), 
* CLO (Core Legal Ontology) (Gangemi et al. 2003) 
* [LKIF-Core](https://github.com/RinkeHoekstra/lkif-core#readme) (Hoekstra et al. 2007)


### Legal Taxonomy Syllabus

Another example (the authors' previous work) is [Legal Taxonomy Syllabus](https://www.researchgate.net/publication/238716915_Legal_Taxonomy_Syllabus_version_20), a multilevel ontology of EU and national levels. There's an ontology of concepts for EU and for each national system. On a separate level, there are _terms_ in different languages, which are mapped to the appropriate concepts. Concrete example:

![Image from Ajani et al. 2009](https://raw.githubusercontent.com/inariksit/cclaw-zettelkasten/master/legal_taxonomy_syllabus_example.png)



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
