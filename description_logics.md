---
date: "2020-07-10"
tags:
  - logic
  - ontology
  - todo
---

# Description logics


_Description logics_ (DL) are a family of logics, often used in ontologies.
(For more discussion on logics, see <logics_formalisms_languages_applications>)

Most DLs are decidable fragments of first-order logic.
[Krötzsch et al. (2013)](https://arxiv.org/abs/1201.4089) explain that there are many DLs, because different applications require different expressivity from the logic.
There is a tradeoff between expressivity and performance: inferring easy things is fast, inferring complex things is slow (or undecidable).

## Basics

### Individuals

Single individuals in the domain.
Correspond to __constants__ in first-order logic.

Examples: `garfield`, `jon`.

### Concepts / Classes

Concepts are sets of individuals, or classes of individuals.
Correspond to __unary predicates__ in first-order logic.

Examples: `Cat`. Top (⊤) and bottom (⊥) are special concepts.

### Roles
Binary relations between the individuals.
Correspond to __binary predicates__ in first-order logic.

Examples: `owner`.

## Axioms

Axioms are usually divided in three groups: assertional (ABox), terminological (TBox) and relational (RBox).

The following examples contain operations that are not common to all description logics. I'm following mostly [Krötzsch et al. (2013)](https://arxiv.org/abs/1201.4089), which describes SROIQ. There are resources that explain which DLs allow which operation (e.g. [Table 1](https://www.lesliesikos.com/description-logics/)), but such resources are much more helpful after reading through a list of the operations.

### ABox (Assertional axioms)

`Cat(garfield)` is a _concept assertion_ about a named individual Garfield, who belongs to the set of cats. In other words, Garfield is a cat.

`owner(jon,garfield)` is a _role assertion_, describing a relation between Garfield and its owner Jon.

Equality and inequality between individuals are also assertions.
For example, `garfield ≠ jon` asserts that Garfield and Jon are two different individuals, and `jon = jon_arbuckle` asserts that the two names _Jon_ and _Jon Arbuckle_ refer to the same individual.

### TBox (Terminological axioms)

TBox axioms describe relationships between _concepts_.

#### Concept inclusion
`Cat ⊑ Animal` is a _concept inclusion_ for "cats are animals".

#### Concept equivalence

`Mother ≡ Parent ⊓ Woman` is a _concept equivalence_ between a shorthand name and its definition using _concept intersection_.


### RBox (Relational axioms)

RBox axioms describe relationships between roles.

(These are not included in the most basic description logics. TODO: restructure this zettel.)

#### Role inclusion

`motherOf ⊑ parentOf` is a _role inclusion_ for "motherhood is parenthood". All mothers are also parents.

##### Role composition

`brotherOf ◦ parentOf ⊑ uncleOf` is a _complex role inclusion_: the brother of my parent is my uncle. The left-hand side `brotherOf ◦ parentOf` is a _role composition_.

[Krötzsch et al. (2013)](https://arxiv.org/abs/1201.4089) on role composition:

> Note that role composition can only appear on the left-hand side of
> complex role inclusions. Furthermore, in order to retain decidability
> of reasoning, complex role inclusions are governed by additional
> structural restrictions that specify whether or not a collection
> of such axioms can be used together in one ontology.

Explanation why unrestricted role composition becomes undecidable, and how to restrict: [https://youtu.be/GdmI85J9fOE](https://youtu.be/GdmI85J9fOE?t=318)

#### Disjoint roles

 `Disjoint(parentOf, childOf)` expresses that one can't be the parent and the child of the same individual.

#### Reflexivity
#### Symmetry
#### Transitivity

TODO

## SROIQ? SHOIN⁽ᴰ⁾? WTF?


See "Table 1. Common Letters in Description Logic Names" at [https://www.lesliesikos.com/description-logics/](https://www.lesliesikos.com/description-logics/).
