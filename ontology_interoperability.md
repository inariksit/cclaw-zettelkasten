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

In the following picture, the domain ontologies of Neurology and Airports are connected to an upper ontology, which starts from very generic terms. Note that this is not the actual hierarchy of any real ontology, just a hypothetical example.

              Entity
              /  |  \
            … … … … … …
        Biology  …  Geography
        / | | \ … … / | | \
     … … … … … … … … … … … … …
         |                 \
      Neurology           Europe
      / | | \            /   |  \
     … … … … … … … … … … … … … … …
     |                         |
    Optic nerve          Heathrow airport


<sumo> is a big, well-known upper ontology. 

## "The multi-layered legal information perspective"

According toBoella and Rossi, it is difficult to create ontologies that work for legal rules
independent of time and place. Law is a combination of legal texts and their interpretation and
implementation in different jurisdictions.

> law is always fragmented in several conceptual frameworks
> with different features and objectives. And these conceptual frameworks may change
> according to time and events in the practice of law.

> It is precisely because law is inherently multilevel, that we need to maintain several levels in the
> ontological structure in order to explain the different aspects of law.

So they propose a modular model with 4 levels.

### Level 1
Lightweight ontologies
> foundational ontologies to the particularities of the legal domain.

### Level 2
Service ontologies

### Level 3
Intermediate between L1 and L2

### Level 4
Core ontology


> core ontology of law that can clarify the fundamentals of law. 

> Among the most well-known core ontologies, FOLaw (Functional Ontology of Law) (Valente 1995), 
> LRI-Core (Breuker and Winckels 2003), 
> CLO (Core Legal Ontology) (Gangemi et al. 2003) may be mentioned


_“Approaches to Legal Ontologies: Theories, Domains, Methodologies: 1 (Law, Governance and Technology Series)”._



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
