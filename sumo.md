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
Example from

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
