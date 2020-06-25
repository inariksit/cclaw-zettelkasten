---
date: "2020-06-23"
tags:
  - language/ontology
  - todo
---

# OWL

A family of ontology languages based on [description logics](https://www.lesliesikos.com/description-logics/).

- [Compact description on Leslie Sikos' homepage](https://www.lesliesikos.com/web-ontology-language/)
- [Wikipedia article](https://en.wikipedia.org/wiki/Web_Ontology_Language)
- To prevent confusion about naming conventions, see [wikipedia.org/wiki/Description_logic#Terminology_compared_to_FOL_and_OWL](https://en.wikipedia.org/wiki/Description_logic#Terminology_compared_to_FOL_and_OWL)

TODO: where it is used/relevance/adoption, what kind of things it can express?


## Comparison with other formalisms
_All quotes from Pease, [Why use OWL](https://www.xfront.com/why-use-owl.html)_

### XML

> A set of OWL statements by itself (and the OWL spec) can allow you to conclude another OWL statement whereas a set of XML statements, by itself (and the XML spec) does not allow you to conclude any other XML statements. To employ XML to generate new data, you need knowledge embedded in some procedural code somewhere, rather than explicitly stated, as in OWL.

Pease gives the following example.

> [T]he statements
>
>     (motherOf subProperty parentOf)
>     (Mary motherOf Bill)
>
> when stated in OWL, allows you to conclude
>
>     (Mary parentOf Bill)
>
> based on the logical definition of "subProperty" as given in the OWL spec. The same information stated in XML does not allow you to assert the third fact. XML itself provides no semantics for its tags.

### RDF

First a bit of terminology.
- [RDF](https://www.lesliesikos.com/resource-description-framework/) (Resource Description Framework) is a _data model_, where one can express relations in form of subject--predicate--object triples.
- RDF is also a _vocabulary_, which contains a set of basic terms (defined [here](https://www.w3.org/1999/02/22-rdf-syntax-ns)). These terms can appear in any role of a subject--predicate--object triple.
- RDFS is another vocabulary, for expressing even more relationships. See picture below: the predicate `type` comes from RDF-the-vocabulary, and the other predicates come from RDFS and a zoo vocabulary.

![Example of RDF and RDFS](https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Regime_entailment_basic.svg/300px-Regime_entailment_basic.svg.png)

According to Pease, the mother/parent example can be expressed in RDF-the-model using RDFS-the-vocabulary, but OWL is still more expressive.

> Other web languages such as RDFS go a step further than XML, and could support the example just given, but OWL offers a host of other standard properties such as equivalence ("childOf" on an English genealogy site is the same as "enfantDe" on a French site), or that particular properties are unique (a social security number is associated with only one individual).
