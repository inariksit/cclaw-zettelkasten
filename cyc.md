---
date: "2020-07-23"
tags:
  - ontology
  - todo
---

# Cyc

[Cyc](https://en.wikipedia.org/wiki/Cyc) is a large general ontology.

The main Cyc ontology is commercial, but there is a research license, and no longer maintained [OpenCyc](https://web.archive.org/web/20170227201513/http://www.opencyc.org/). OpenCyc 4.0 can be downloaded on [GitHub](https://github.com/asanchez75/opencyc).

<!--Installation instructions say it's tested with Java 6 and 7, but I managed to get most of it working with [Java 8](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html). (Maybe the parts that don't actually require an older version.)-->

## Design

Cyc is divided in modules called _microtheories_. A microtheory contains _assertions_ (same as _axioms_ in <sumo>).

Assertions within a microtheory need to be consistent with each other, but they can be inconsistent with other microtheories.

For instance, to run a query about whether the planet Earth is able to run a marathon, one has to choose microtheories `UniverseDataMt` and `SportsMt`.

```
Mt : (MtUnionFn UniverseDataMt SportsMt)
EL Query :
(not
  (behaviorCapable PlanetEarth Marathon doneBy))
```

## CycL

_Quotes from [Panton et al. (2006)](https://books.google.se/books?id=OFq7BQAAQBAJ&pg=PA6&lpg=PA6&dq=cycl+truth+values+%22monotonically+true%22&source=bl&ots=9v9II9wwO-&sig=ACfU3U0bBtiPpfIq2cM7kNV8SdKoZUax9g&hl=sv&sa=X&ved=2ahUKEwjgodia6eXqAhWOp4sKHQkyCAoQ6AEwC3oECAoQAQ#v=onepage&q&f=false)_

Cyc is written in a language called CycL.

#### Based on first-order predicate logic
> [CycL] is essentially an augmented version of first-order predicate calculus (FOPC). All of the FOPC connectives, such as _and_, _or_, and _implies_ are present, as are the quantifiers. One crucial extension was the ability to handle _default reasoning_; aside from intrinsically definitional information (e.g. "All dogs are mammals"), there are few general statements one can make about the world that cannot have exceptions [, such as] "Dogs have four legs".

#### 5 truth values
> CycL contains five possible truth values: _monotonically false, default false, unknown, default true_, and _monotonically true_.

#### Default logic
> Default assertions can be overridden by new knowledge, whether it comes from a person using Cyc or is derived by Cyc's own inference engine. Instead of using only a single support or line of reasoning to determine if an assertion is true or false, Cyc's inference engine uses argumentation. This is the process of weighing various arguments, pro and con, to arrive at a truth value for the assertion.

## Differences between Cyc and SUMO
Cyc has been around since 1984, and has inspired other ontologies and knowledge bases. <sumo> (released in 2000) is very similar to Cyc.
Since there is already a long zettel about <sumo>, I'll just list some things in which Cyc is different.

### Modules and consistency

Cyc is subdivided in _microtheories_. SUMO is also modular, with an upper ontology, mid-level ontology and domain ontologies. But Cyc doesn't require all microtheories to be consistent with each other, whereas the whole SUMO is consistent.

For example, a microtheory could describe a fictional world, and that wouldn't be consistent with others that describe the real world.

### Syntax

#### Prefixes

Cyc prefixes everything with `#$`. I seriously don't understand why. It seems to be literally everything. ([source](https://web.archive.org/web/20070203144047/http://www.cyc.com/cycdoc/ref/cycl-syntax.html#predicate%20arity)):

>  CYC® constants are referred to with the prefix `#$` (read "hash-dollar"). These characters are sometimes omitted in documents describing CycL, and they may be omitted by certain interface tools. But in these CYC® Documentation pages, the policy will be to use the "#$" prefix when referring to CYC® constants.

#### Arity of functions and predicates

In SUMO, the arity of a function or predicate is expressed by it being an instance of a class, e.g. `(instance homeAddress BinaryPredicate)`.

Cyc has also the same classes `{Unary,Binary,…}{Predicate,Fn}`. In addition, functions and predicates use a predicate `arity` to express arity, e.g. `(#$arity #$spouse 2)`
