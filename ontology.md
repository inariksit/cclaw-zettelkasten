---
date: "2020-06-17"
tags:
  - concept
  - todo
---

# Ontology

Collection of concepts and their relationships, in a machine-readable format.

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


<sumo> is a big, well-known upper ontology. (Most of the examples here are from SUMO, but the general concepts of taxonomy, relationships etc. aren't limited to SUMO.)

## Taxonomy

The basic building block of an ontology is a hierarchy of concepts (or "terms"). Higher nodes represent general concepts, lower nodes more specific. For example, see the tree above.

Depending on the ontology, the concepts may be classes, individuals (or "particulars"), properties or any of the following (and probably tons of other things I have missed). Quote from Mascardi et al. (2007) [A Comparison of Upper Ontologies](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf), comparing SUMO and DOLCE:

> DOLCE has been carefully crafted with respect to strong principles. DOLCE is an “ontology of particulars”; it does have universals (classes and properties), but the claim is that they are only employed in the service of describing particulars. In contrast, SUMO could be described as an ontology of both particulars and universals. It has a hierarchy of properties as well as classes. This is a very important feature for practical knowledge engineering, as it allows common features like transitivity to be applied to a set of properties, with an axiom that is written once and inherited by those properties, rather than having to be rewritten, specific to each property.


No matter what kind of entities they are, just a tree of arbitrary labels isn't particularly useful. That's why ontologies may have some of the following features.

## Relationships

So far we've seen only taxonomy membership in a strict tree structure.
* Spice Girls `is-a` Band
* Wannabe `is-a` Song

But we can also have other _relationships_.
* Spice Girls `perform` Wannabe
* Wannabe `year` 1996

Furthermore, the relation links themselves can be the subject or object in another relation.
* Perform `is-a` Action
* is-a `is-a` Relation

See [RDF](https://en.wikipedia.org/wiki/Resource_Description_Framework), a data model based on subject--predicate--object triples.

### Axioms / Assertions / Theories / Facts / Rules

Depending on the language of the ontology, it may be possible to express more complex relationships between the concepts. Depending on the ontology, these may be called with a variety of names. <sumo> uses the term _axioms_; [Cyc](http://slor.sourceforge.net/e_ocyc.htm) uses _theories_ and _facts_.


## Mapping to lexical resources

[Niles and Pease (2003)](http://www.adampease.org/professional/Niles-IKE.pdf) map mid-level entries from <sumo> to <wordnet>. WordNet itself has some relations like synonymy and hypernymy, and I'm not quite sure how they work together with the relations of an ontology (TODO: read the whole 2003 paper).

Main point is that a concept in an ontology corresponds to one or more synonym sets in WordNet. Consider a corner of ontology like the following:

                Entity
                /    \
          Abstract   Physical
          / | | \    /    |  \
      Attribute …  …     …    …
        / | \
           Measure
           /     \
    TimeMeasure  LengthMeasure


The concept `Measure` is mapped to a number of WordNet synonym sets, such as
* _space_ 00014887 '3-dimensional expanse in which everything is located'
* _time_ 15160774	'the fourth coordinate that is required (along with three spatial dimensions) to specify a physical event'
* _length_ 05136466 'the linear extent in space from one end to the other'
* …

And `LengthMeasure` is mapped only to 00014887 _space_ and 05136466 _length_.


## Use of "Ontology" in Expert Systems

The word ontology with regard to expert systems is also used to refer to the data structure of known data objects, and their relationships to one another. This may not be an external resource such as a pre-populated OWL ontology, but may be defined inside the programming language itself, for example as object-oriented programming class definitions.

In this context the "ontology" is usually distinguished from the "rules".

As an example, in Oracle Intelligent Advisor, the "Data" tab sets out objects, sub-objects, attributes, and relationships, including cardinality and bi-directionality. These are all things that ontology languages like OWL allow you to specify, and which could conceivebaly be imported from an OWL library.

"Rules" on the other hand, specify the implications arising from different conditions, and have a semantic meaning which is more complicated than can be expressed in the logic of ontology languages, which are usually based on Description Logic.

In this sense "a person must pay taxes on their income" is a rule, but the fact that "a person has an income" is an ontological fact, which might be expressed as a class definition, and referred to as `person.income`.

## Languages for writing ontologies

<z:zettels?tag=language/ontology>
