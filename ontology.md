---
date: "2020-06-17"
tags:
  - concept
  - todo
---

# Ontology

Collection of concepts and their relationships, in a machine-readable format.

<sumo> is a big, well-known general ontology.

### Taxonomy

The basic building block of an ontology is a hierarchy of concepts. Higher nodes represent general concepts, lower nodes more specific. Example:

              Entity
              /  |  \
        Biology  …  Geography
        / | | \ … … / | | \
     … … … … … … … … … … … … …
         |                 \
      Neurology           Europe
      / | | \            /   |  \
     … … … … … … … … … … … … … … …
     |                         |
    Optic nerve          Heathrow airport


Just a tree of arbitrary labels isn't particularly useful. That's why ontologies may have some of the following features.

(TODO: is the distinction Individual vs. Class meaningful? Or does it depend on the ontology?)

### Relationships

So far we've seen only taxonomy membership in a strict tree structure.
* Spice Girls `is-a` Band
* Wannabe `is-a` Song

But we can also have other _relationships_.
* Spice Girls `perform` Wannabe
* Wannabe `year` 1996

Furthermore, the relation links themselves can be the subject or object in another relation.
* Perform `is-a` Action
* is-a `is-a` Relation

See [RDF](https://en.wikipedia.org/wiki/Resource_Description_Framework), a data model based on such triples. ([OWL](https://en.wikipedia.org/wiki/Web_Ontology_Language) supports RDF-based syntax too.)


### Mapping to lexical resources

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

### Axioms
Say that you want to reason about a piece of text that says

> You have the obligation to pay taxes.

In the previous step we linked an ontology to <wordnet>, so that our ontology nodes "obligation", "pay" and "taxes" map to the correct WordNet synsets. Now we can translate it into any other language that has a [linked WordNet](https://github.com/GrammaticalFramework/gf-wordnet#readme) with the same identifiers. The word _obligation_ is mapped to WordNet sense `06785951` 'a legal agreement specifying a payment or action and the penalty for failure to comply', and that in turn is translated into Bulgarian as _обвързаност_.

But this advanced NLP system has still no idea how _obligation_ relates to other concepts in the world. To cover this, we can specify axioms like "if you are __obliged__ to do something, you are also __permitted__ to do it".
Examples from Mitrović et al. _[Modeling Legal Terminology in SUMO](https://www.researchgate.net/publication/338937692_Modeling_Legal_Terminology_in_SUMO)_, using the SUO-KIF language ("Standard Upper Ontology Knowledge Interchange Format").

    (=>
      (modalAttribute ?FORMULA Obligation)
      (modalAttribute ?FORMULA Permission))


The arrow is only in one direction: permission doesn't imply obligation, but obligation implies permission. Below is a SUO-KIF statement for an equivalence: prohibition means no permission.

    (<=>
      (modalAttribute ?FORMULA Prohibition)
      (not
        (modalAttribute ?FORMULA Permission))
      )

Finally, we can map the axioms to a format that theorem provers understand and reason about the ontology. Examples and links to original sources in Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf).


## Use of "Ontology" in Expert Systems

The word ontology with regard to expert systems is also used to refer to the data structure of known data objects, and their relationships to one another. This may not be an external resource such as a pre-populated OWL ontology, but may be defined inside the programming language itself, for example as object-oriented programming class definitions.

In this context the "ontology" is usually distinguished from the "rules".

As an example, in Oracle Intelligent Advisor, the "Data" tab sets out objects, sub-objects, attributes, and relationships, including cardinality and bi-directionality. These are all things that ontology languages like OWL allow you to specify, and which could conceivebaly be imported from an OWL library.

"Rules" on the other hand, specify the implications arising from different conditions, and have a semantic meaning which is more complicated than can be expressed in the logic of ontology languages, which are usually based on Description Logic.

In this sense "a person must pay taxes on their income" is a rule, but the fact that "a person has an income" is an ontological fact, which might be expressed as a class definition, and referred to as `person.income`.
