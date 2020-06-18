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

See [RDF](https://en.wikipedia.org/wiki/Resource_Description_Framework), a data model based on such triples.

### Axioms
TODO

### Mapping to logic
TODO

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

And `LengthMeasure` is mapped only to 00014887 _space_.


## Ontology extraction

Quote from [Herbelot, 2011](https://web.archive.org/web/20130704143830/http://www.peerpress.de/discoursecpp.pdf)

> [O]ntology extraction — a subfield of natural language processing which, put simply, specialises in producing lists. […] Well-loved ontology extraction tasks include the retrieval of Oscar nominees, chemical reactions and dead presidents. In this kind of research, the machine is asked, for instance, to produce a list of things that are ‘like lorries’ and is expected to duly return (given the current state of the art)  
>
>    `truck car motorcycle plane engine hamster.`  
>
> Because lorries have wheels and hamsters have too.
