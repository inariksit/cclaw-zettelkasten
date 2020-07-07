---
date: "2020-06-17"
tags:
  - concept
  - todo
  - ontology
---

# Ontology

Collection of concepts and their relationships, in a machine-readable format.

## Origins and etymology

_Quotes from "Approaches to Legal Ontologies: Theories, Domains, Methodologies: 1 (Law, Governance and Technology Series)"_ 

The name "ontology" has its roots in philosophy.

> ontology is understood as “the science of what is, of the kinds and structures of objects, properties, events, processes and relations in every area of reality” (Smith 2003)

If representing the true nature of reality sounds too ambitious, we can also say that ontologies _“are meant to provide the structures though which agents conceptualise (possibly wrongly) reality, rather than reality itself.”_

Ontologies are relevant in at least:
- Philosophy
- Artificial intelligence
- Information management
- Knowledge engineering
- Cognitive science

  > “for understanding how terms acquire different meanings __(which postulate different ontologies)__, we need to refer to cognitive science, i.e., to the basic architecture through which humans conceptualise the world according to their basic concerns. Cognitive science can provide the foundation for the most abstract ontological concepts.”

## Taxonomy

The basic building block of an ontology is a hierarchy of concepts (or "terms"). Higher nodes represent general concepts, lower nodes more specific. For example, see the trees below. (Made up

```
         Furniture
          /    \
       Chair   Table
       /  \    /  \
Armchair … … … … KitchenTable

```

Depending on the ontology, the concepts may be classes, individuals (or "particulars"), properties or any other term that an ontology engineer likes.
Quote from _Mascardi et al. (2007) [A Comparison of Upper Ontologies](http://personales.upv.es/prosso/resources/MascardiEtAl_WOA07.pdf)_, comparing SUMO and DOLCE:

> DOLCE has been carefully crafted with respect to strong principles. DOLCE is an “ontology of particulars”; it does have universals (classes and properties), but the claim is that they are only employed in the service of describing particulars. In contrast, SUMO could be described as an ontology of both particulars and universals. It has a hierarchy of properties as well as classes. This is a very important feature for practical knowledge engineering, as it allows common features like transitivity to be applied to a set of properties, with an axiom that is written once and inherited by those properties, rather than having to be rewritten, specific to each property.

Here is an example (still made up) of classes and individuals. `AirportsInSweden` is a subclass of `AirportsInEurope`, and `Arlanda` is an instance of `AirportsInSweden`. If the ontology contains an appropriate _axiom_ (more on those later) about class inheritance, then a reasoner will know that `Arlanda` is also an instance of `AirportsInEurope`.

```
          AirportsInEurope                        -- classes
           /      |      \
AirportsInSweden … … … AirportsInGreatBritain     -- classes
        /    /    |      /     \
    Arlanda  …    …   Heathrow  …                 -- individuals

```

Whether an ontology has "classes" and "individuals" or some other concepts, is a matter of the particular ontology.

or combining ontologies on different domains and levels of detail, see <ontology_interoperability>.


<!--No matter what kind of entities there are in an ontology, just a tree of arbitrary labels isn't particularly useful. That's why ontologies may have some of the following features.-->

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

Depending on the language of the ontology, it may be possible to express more complex relationships between the concepts. Depending on the ontology, these may be called with a variety of names.
For instance, <sumo> uses the term _axiom_; [Cyc](http://slor.sourceforge.net/e_ocyc.htm) uses _theories_ and _facts_.

__In this zettelkasten, I will use the term _axiom_, unless I'm talking about a specific ontology that has established jargon.__

Some examples of axioms:
* all mothers are parents ([source](https://www.xfront.com/why-use-owl.html))
* if a person is sleeping, they can't perform an intentional action ([source](http://ontolog.cim3.net/file/resource/reference/SIGMA-kee/suo-kif.pdf))

### Reasoning

Based on the terms and the axioms, we can now ask questions and draw conclusions that aren't explicitly stated before.

Pease gives the following example in _[Why use OWL](https://www.xfront.com/why-use-owl.html)_:

> [T]he statements
>
>     (motherOf subProperty parentOf)
>     (Mary motherOf Bill)
>
> when stated in OWL, allows you to conclude
>
>     (Mary parentOf Bill)
>
> based on the logical definition of "subProperty" as given in the OWL spec.



## Mapping to lexical resources

[Niles and Pease (2003)](http://www.adampease.org/professional/Niles-IKE.pdf) map mid-level entries from <sumo> to <wordnet>. WordNet itself has some relations like synonymy and hypernymy, and I'm not quite sure how they work together with the relations of an ontology (TODO: read the linked paper).

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
