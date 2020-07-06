---
date: "2020-07-06"
tags:
  - brain_dump
---

# NLG from DMN

## Data types

The FEEL [data types](https://www.omg.org/spec/DMN/1.3/PDF) (p. 106) are:

> number, string, boolean, days and time duration, years and months duration, time and date

The time-related data types can be translated into GF functions such as the following:

    Duration,   -- {Week,[3..5]}   ~ "Between 3 and 5 weeks"
    TimeClock,  -- {Time,14:00}    ~ "At 2 PM", "At any time"
    TimeDate    -- {Date,25th May} ~ "On 25th May", "At any date"
     : NP -> FEELexp -> FCell ;

The rest of the types don't have an obvious semantics in itself. For instance, a numerical type can be a count of some objects, a measurement such as width or height, a serial number, or tons of other things. In order to express the column in natural language, we need to know what the column header is.

## WordNet

In the ideal world, I'd try the following:

- In the XML format, include WordNet identifier.
- The WordNet identifiers are mapped to [GF](https://github.com/GrammaticalFramework/gf-wordnet) and to [SUMO](https://github.com/ontologyportal/sumo/tree/master/WordNetMappings)
- Use SUMO-to-WordNet mappings to tell us that 05136466 _length_ is mapped to `LengthMeasure`, and SUMO will tell us how `LengthMeasure` relates to the rest of the world. Use GF to translate _length_ with the right sense into 10+ languages, with correct inflection table, grammatical gender and such.

However, GF is mapped to WordNet 3.1 and SUMO to WordNet 3.0.

- TODO: is there a mapping between the versions?

If not, let's try with only WordNet. There is an ontology there too, just much smaller (fewer relations) than in e.g. SUMO or Cyc.

There is a [Haskell library for WordNet](https://hackage.haskell.org/package/WordNet-1.1.0/docs/NLP-WordNet.html) (version-agnostic, depends on the actual database files). It has these relations:

```
-- | The different types of relations which can hold between WordNet Synsets.
data Form = Antonym | Hypernym | Hyponym | Entailment | Similar
          | IsMember | IsStuff | IsPart
          | HasMember | HasStuff | HasPart
          | Meronym | Holonym | CauseTo | PPL | SeeAlso
          | Attribute | VerbGroup | Derivation | Classification | Class | Nominalization
```
