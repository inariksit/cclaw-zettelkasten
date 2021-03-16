---
date: 2020-08-12
tags:
  - ontology
---

# Top ontology and domain ontologies

A __domain ontology__ describes details of a particular domain. Examples of domain ontologies are a biomedical ontology (or even more specific, only about neurology), or an ontology about airports.

In contrast, a __top ontology__ (synonyms: __upper ontology__, __top-level ontology__, __foundation ontology__) _"describes very general concepts that are the same across all domains. The aim is to have a large number on ontologies accessible under this upper ontology.”_ (Mascardi et al. (2007) [A Comparison of Upper Ontologies](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf))

[[[sumo]]] and [[[cyc]]] are big, well-known top ontologies. [Mascardi et al.](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf) list other big ones (in 2007). [Wikipedia](https://en.wikipedia.org/wiki/Upper_ontology#Available_upper_ontologies) has a more up-to-date list.[^1].

## Purpose of top ontology

[Breuker and Hoekstra (2010)](https://www.researchgate.net/publication/227256484_A_Cognitive_Science_Perspective_on_Legal_Ontologies) list two roles for an upper ontology.

### 1. Structure of classes for domain ontologies to attach to

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



### 2. Properties for free thanks to inheritance

For instance, say that a core ontology has a class `PhysicalObject` and includes axioms such as physical objects have a mass and they leave a shadow. Then a domain ontology about furniture hangs its concepts under an appropriate subclass, and all of its chairs and tables get the properties of having a mass and leaving a shadow.

<!-- > “The first one is to provide a _structure of classes_ where a _domain ontology can hang its main concepts_ as subclasses. It gives a starting position for more detailed modeling. -->
<!-- > The second role is even more interesting: by inheritance one gets already defined properties for free, which helps in consistency checking.” -->

## Core ontology

The term __core ontology__ is sometimes used. If I (Inari) have understood correctly, a core ontology is sort of an upper ontology for a domain. So a true upper ontology is super generic, starting from `Entity`, core ontology would start from the most general concepts for a given field, like (for legal domain) _legal role_, _process_, _place_, _time_, etc.

Some legal core ontologies are listed in [[[legal_ontology]]].


[^1]: Heuristic of relevance: does the ontology have its own Wikipedia page. Wikipedia remarks _"Note that the lack of fresh releases does not imply inactivity or uselessness."_ This is true especially for an upper ontology. The purpose is to be compact and general, and that kind of information doesn't need to be updated.
