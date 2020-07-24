---
date: "2020-06-18"
tags:
  - todo
  - ontology
---

# SUMO

SUMO (Suggested Upper-Merged Ontology) has the approach of _domain_ ontologies and an _upper_ ontology. Example:

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

SUMO is written in SUO-KIF. Unlike most ontology languages, SUO-KIF is __not__ among <description_logics>.

### Expressivity

_Quote from Mitrović et al. (2019) [Modeling Legal Terminology in SUMO](https://www.researchgate.net/publication/338937692_Modeling_Legal_Terminology_in_SUMO)_

> The existing SUMO model has most of the elements needed for a legal framework. It is implemented in a higher-order language, which, unlike a description logic or even first-order logic, allows us to use entire formulas as arguments to relations.

SUMO is also translated into <owl>: [http://www.adampease.org/OP/SUMO.owl](http://www.adampease.org/OP/SUMO.owl).

## Terms
_Note that in many other ontologies, these would be called **concepts**._

Terms are the basic building blocks of SUMO (and other ontologies). All of the `CamelCased` thingies in the examples above are terms (`Entity`, `AirportsFromAtoK`, `Heathrow`, …).

If you [browse SUMO online](http://sigma.ontologyportal.org:8080/sigma/Browse.jsp?kb=SUMO&lang=EnglishLanguage), you need to type the term in the text box where it says **KB Term**.


SUO-KIF is untyped, so there is no formal difference what kind of role the terms may take.

- Class, like `AirportsFromAtoK`, `DeonticAttribute`
- Individual, like `Heathrow`
- Predicate, like `occupiesPosition`, `instance`. More about predicates after Axioms are introduced.
- Function, like `WhenFn`, which takes a process and turns it into a time interval. More about functions after predicates.


## Axioms
Pease (2009) [Standard Upper Ontology Knowledge Interchange Format](http://ontolog.cim3.net/file/resource/reference/SIGMA-kee/suo-kif.pdf) calls these just Statements and Rules. In other sources I see both called axioms[^1].

#### Statements (or "simple formulas")
_Example from Pease (2009) [Standard Upper Ontology Knowledge Interchange Format](http://ontolog.cim3.net/file/resource/reference/SIGMA-kee/suo-kif.pdf)_

“Kofi Annan is a human and he occupies the position of Secretary General at the United Nations.”

    (and
      (instance KofiAnnan Human)
      (occupiesPosition KofiAnnan SecretaryGeneral UnitedNations))

“Silvio Berlusconi is not the president of Libya.”

    (not
      (occupiesPosition SilvioBerlusconi President Libya))

#### Rules (or "quantified formulas")
_Example from Pease (2009) [Standard Upper Ontology Knowledge Interchange Format](http://ontolog.cim3.net/file/resource/reference/SIGMA-kee/suo-kif.pdf)_

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

## Predicate

_Examples from from Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf)_

As mentioned in Terms, predicates like `occupiesPosition` and `instance` are also part of the stuff that SUMO is built of. What is an instance?

    (instance instance BinaryPredicate)

Just like any terms, predicates (and functions--more about them soon!) can be nicely placed in a hierarchy.

                         Relation
                      /  |  |  |  \
                     /   …  …  …   \
            SingleValuedRelation …  Predicate
                   /                / … … … \
                  …       BinaryPredicate QuaternaryPredicate


Furthermore, we can specify the types of the arguments of a predicate, using another predicate called `domain`.
Predicates have also an arity: binary predicates are an instance of `BinaryPredicate`, quaternary predicates of `QuaternaryPredicate` and so on. As the graph shows, `BinaryPredicate` and other arities are all subclasses of `Predicate`, so

The following example defines the arguments of the predicate `homeAddress`.

    (instance homeAddress BinaryPredicate)
    (domain homeAddress 1 PermanentResidence)
    (domain homeAddress 2 Human)

And of course, `domain` is itself a `TernaryPredicate`, and its arguments are [defined by using `domain`](http://sigma.ontologyportal.org:8080/sigma/TreeView.jsp?lang=EnglishLanguage&simple=yes&kb=SUMO&term=domain)

    (instance domain TernaryPredicate)
    (domain domain 1 Relation)
    (domain domain 2 PositiveInteger)
    (domain domain 3 SetOrClass)

<!--
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
-->

## Function

Let's add functions to the graph we saw previously.


                         Relation
                      /  |  |  |  \
                     /   …  …  …   \
            SingleValuedRelation …  Predicate
                   /                / … … … \
               Function      BinaryPredicate QuaternaryPredicate
              /  |  |  \         ⌇
             /   |  |   \      homeAddress
            /    …  …    \
    UnaryFunction … QuaternaryFunction
                                    ⌇
                                StreetAddressFn

To illustrate the differences and similarites, consider the (binary) predicate `homeAddress` and the (quaternary) function [`StreetAddressFn`](http://sigma.ontologyportal.org:8080/sigma/Browse.jsp?lang=EnglishLanguage&flang=SUO-KIF&kb=SUMO&term=StreetAddressFn).


* Both predicates and functions have _domain_. We saw the domains of `homeAddress` already, here is it for `StreetAddressFn`:

  ```
  (domain StreetAddressFn 1 StationaryArtifact)
  (domain StreetAddressFn 2 Roadway)
  (domain StreetAddressFn 3 City)
  (domain StreetAddressFn 4 Nation)
  ```

* Both predicates and functions have _arity_.
  ```
  (instance homeAddress BinaryPredicate)
  (instance StreetAddressFn QuaternaryFunction)
  ```

* Functions construct new arguments to predicates, and unlike predicates, functions have _range_. This is easier to illustrate with a simpler function, [`WhenFn`](http://sigma.ontologyportal.org:8080/sigma/Browse.jsp?kb=SUMO&lang=EnglishLanguage&flang=SUO-KIF&term=WhenFn).
  ```
  (domain WhenFn 1 Physical)
  (range WhenFn TimeInterval)
  ```

  `WhenFn` takes a physical entity and returns a time interval. Say we want to talk about an individual murder (instance of `Murder`, which is an indirect subclass of `Physical`), then `WhenFn` applied to that murder is an instance of `TimeInterval`.

  ```
  (instance ?MURDER Murder)
  (instance (WhenFn ?MURDER) TimeInterval)
  ```
  And we can use that `WhenFn ?MURDER` just like any time expression, e.g. as an argument to a predicate like [`earlier`](http://sigma.ontologyportal.org:8080/sigma/Browse.jsp?lang=EnglishLanguage&flang=SUO-KIF&kb=SUMO&term=earlier), which takes time intervals as argument.

  ```
  (earlier ?T
           (WhenFn ?MURDER))
  ```

## Type system

Or rather lack of one. It seemed to cause some problems when translating SUMO to GF.

Quotes from Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf)

> Another difficulty is the fact that the SUO-KIF framework where everything is expressed as a predicate, and the task of checking the consistency is passed to the automated prover. As seen from the definition of first-order terms and formulas, the only type checking that can be done is that functions and predicates are applied to the right number of arguments. Also, the representation of all concepts in one hierarchy gives rise to constructions that belong ultimately to higher-order logic, and cannot be translated and checked by a first-order automated prover.

> (page 18) … in SUMO, functions and predicates do not only take instances as arguments, but also subclasses of a certain class,

Given the untyped nature of SUMO, it's easy to get confused about types, instances, classes, predicates, functions and all that stuff.

> (page 20) Regarding difficulties of the translation of SUMO definitions to GF, we name the presence of concepts that appear both as subclass and instance, in the same file or in different files. For example, in Mid-level-ontology-
>
>      (subclass PoliticalFigure Celebrity)
>      (subclass ReligiousFigure Celebrity)
>      (instance Celebrity SocialRole)
> This is an example of bad design of the ontology that should be overcome in the translation to GF, as it is not possible in a type system that something could be both a type and an instance of a type.


[^1]: Example formulations from Enache (2010) [Reasoning and Language Generation in the SUMO Ontology](http://publications.lib.chalmers.se/records/fulltext/116606.pdf):   "[…] Axioms that specify the behaviour of relations and the connections between various concepts."; "SUMO axioms […] are of two kinds: simple and quantified formulas."
