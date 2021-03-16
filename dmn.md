---
date: "2020-06-26"
tags:
  - language/programming
  - tool
---

# DMN

DMN (Decision Model and Notation) is a modeling language for specifying decisions and rules.

Website: [omg.org/dmn/](https://www.omg.org/dmn/), simulator: [camunda.com/dmn/simulator](https://camunda.com/dmn/simulator/).

The idea is to be a friendly user interface for non-programmers to specify programs. The cells of the table are written in FEEL ("Friendly Enough Expression Language").

A single row (referred to as a "rule" in the spec) specifies the output of the input cells in the same row. Like in the example below, "in winter for 5-8 guests, serve stew".

```
| Season (input) | Number of guests (input) | Dish (output) |
| Winter         |                      5-8 | Stew          |
```

The whole table specifies the whole problem: other rows contain different seasons and guest counts. Executing a table means giving the inputs (Spring, 12 guests) and getting the output from the table.

```
| Season (input) | Number of guests (input) | Dish (output)   |
| Winter         |                      5-8 | Stew            |
| -              |                     >=10 | Instant noodles |
| Spring         |                      <10 | Risotto         |

```

## Specification

The official specification is at [https://www.omg.org/spec/DMN/1.3/PDF](https://www.omg.org/spec/DMN/1.3/PDF).


## Extensions

### Verify and optimize

Calvanese et al (2016) [Semantics and Analysis of DMN Decision Tables](https://arxiv.org/pdf/1603.07466.pdf) go beyond just executing DMN tables. They have a tool where you can verify and optimize tables, e.g. the order of the rows. [http://dmn.cs.ut.ee](http://dmn.cs.ut.ee/?example])


### Constraint tables

[[[dmn_constraint_tables_extension]]] by Deryck et al (2019) allows FEEL expressions

### DMN2RuleML

There is a tool available for converting DMN decision tables into RuleML, on which
[[[legalruleml]]] is based, called [DMN2RuleML](http://stark-cove-78485.herokuapp.com/decision-table).

## NLG

There's a preliminary [GF grammar](https://github.com/smucclaw/dmnmd/tree/master/languages/gf#readme) for DMN tables.
In order to create more fluent language, instead of "when HEADER is VALUE". the GF grammar needs explicit constructors in the abstract syntax to create a column of e.g. event, location, time or Boolean expression.
