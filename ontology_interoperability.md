---
date: "2020-07-07"
tags:
  - todo
  - ontology
---

# Interoperability between ontologies

There are many different ontologies.

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

TODO: describe the approach by Boella and Rossi (2010)

> “A modular model of legal knowledge is thus proposed, which relies on the following layers: lightweight ontologies at the first layer, service ontologies at the second layer, an intermediate layer converting service concepts into domain concepts, and finally the fourth layer constituted by the core ontology. The model is illustrated through the research undertaken in the framework of the ICT4LAW project. Ontologies play a pivotal role in the project, since they enable the mapping between norms and the organisation’s internal processes and regulations.”

_“Approaches to Legal Ontologies: Theories, Domains, Methodologies: 1 (Law, Governance and Technology Series)”._
