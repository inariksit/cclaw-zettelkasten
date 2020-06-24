---
date: "2020-06-18"
tags:
  - todo
---

# SUMO

SUMO (Suggested Upper-Merged Ontology) has the approach of _domain_ ontologies and _merge_ ontologies. Example:

* Top level
```
            Entity
            /    \
      Abstract   Physical
      / | | \    /    |  \
  Attribute … … Object … Process
```
* Domain ontology
```
          AirportsFromAtoK
           /      |      \
     <fine-grained distinctions>
        /    /    |    \     \
    Arlanda  …    …  Heathrow  …

```

All entries in SUMO are part of a single tree, starting from `Entity`. A domain ontology about airports is linked to the top level ontology, in a distant subtree of physical entities.

TODO: I don't know how the linking works in practice, or if the technical details have any relevance to the scope of CCLAW readings. ([Niles, Pease (2001)](https://dl.acm.org/doi/pdf/10.1145/505168.505170) seems to describe the merging process, read later if interested.)

## SUO-KIF

SUMO is written in SUO-KIF, which has the expressive power of first-order logic.

TODO: terminology confusion: Pease (2009) [Standard Upper Ontology Knowledge Interchange Format](http://ontolog.cim3.net/file/resource/reference/SIGMA-kee/suo-kif.pdf) calls these just Statements and Rules. In other sources I see both called axioms. Example formulations from Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf):
> […] axioms that specify the behaviour of relations and the connections between various concepts.
> Regarding the SUMO axioms, they are of two kinds: simple and quantified formulas.


### Statements (or "simple formulas")
Example from Pease (2009) [Standard Upper Ontology Knowledge Interchange Format](http://ontolog.cim3.net/file/resource/reference/SIGMA-kee/suo-kif.pdf)

“Kofi Annan is a human and he occupies the position of Secretary General at the United Nations.”

    (and
      (instance KofiAnnan Human)
      (occupiesPosition KofiAnnan SecretaryGeneral UnitedNations))

“Silvio Berlusconi is not the president of Libya.”

    (not
      (occupiesPosition SilvioBerlusconi President Libya))

### Rules (or "quantified formulas")

“If a person is sleeping he or she cannot perform an intentional action”.

    (=> (and
        (instance ?P Human)
        (attribute ?SL Asleep))
      (not
        (exists ?ACT
          (and
            (instance ?ACT IntentionalProcess)
            (overlaps ?ACT ?SL)
            (agent ?ACT ?P)))))

### Predicates

Examples from from Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf)

Predicates like `occupiesPosition` and `instance` are also part of the stuff that SUMO is built of.

    (instance instance BinaryPredicate)

Furthermore, it's possible to specify the types of the arguments of a predicate. The following example limits the arguments of the predicate `address`.

    (instance address BinaryPredicate)
    (domain address 1 Agent)
    (domain address 2 Address)

More complicated example (higher-order function):

    (=> (and
           (instance ?ROLE CaseRole)
           (?ROLE ?ARG1 ?ARG2)
           (instance ?ARG1 ?PROC)
           (subclass ?PROC Process))
        (capability ?PROC ?ROLE ?ARG2))

Enache explains:

> […] CaseRole is a kind of binary predicate, so the meaning of the axioms is applying the function to an instance of the first argument which is a type and the second argument, which is an instance already. A possible interpretation of the capability function would be the ability / possibility to perform a certain
action. This interpretation would require a modal logic system, and a specific modality operator.

### Functions

TODO: what is the difference of predicate and function in SUMO?

- It seems like functions are like predicates but they are written with uppercase letters, like classes and instances. E.g. `(instance MultiplicationFn CommutativeFunction)`

- In Enache (2010) page 18, there's a Hierarchy of Relations, which goes like

                     Relation
                  /  |  |  |  \
                /    …  …  …   \
        SingleValuedRelation …  Predicate
               /                / … … … \
           Function      BinaryPredicate QuaternaryPredicate
          /   |  | | \
         /   …  …  …  \
      UnaryFunction … QuintaryFunction

## Type system

Quotes from Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf)

> Another difficulty is the fact that the SUO-KIF framework where everything is expressed as a predicate, and the task of checking the consistency is passed to the automated prover. As seen from the definition of first-order terms and formulas, the only type checking that can be done is that functions and predicates are applied to the right number of arguments. Also, the representation of all concepts in one hierarchy gives rise to constructions that belong ultimately to higher-order logic, and cannot be translated and checked by a first-order automated prover.

> (page 18) … in SUMO, functions and predicates do not only take instances as arguments, but also subclasses of a certain class,

I'm confused about types, instances, classes, predicates, functions and all that stuff (especially what is a general ontology thing and what is specific to SUMO), but it seems like the authors of SUMO aren't doing a perfect job either.

> (page 20) Regarding difficulties of the translation of SUMO definitions to GF, we name the presence of concepts that appear both as subclass and instance, in the same file or in different files. For example, in Mid-level-ontology-
>
>      (subclass PoliticalFigure Celebrity)
>      (subclass ReligiousFigure Celebrity)
>      (instance Celebrity SocialRole)
> This is an example of bad design of the ontology that should be overcome in the translation to GF, as it is not possible in a type system that something could be both a type and an instance of a type.
