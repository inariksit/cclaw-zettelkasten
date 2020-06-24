---
date: '2020-06-24'
---

# DMN extension: Constraint tables

An extension presented in Deryck et al (2019) [Adding Constraint Tables to the DMN Standard: Preliminary Results](https://link.springer.com/epdf/10.1007/978-3-030-31095-0_12?sharing_token=T8v3lMSxpSJgFhvD_fwUdve4RwlQNchNByi7wbcMAY5pcW0U9i0vB_kQZ7JON7wJ3nX-nu33DL_K3v4pZINXS1NXsYL8C86GfKYW4hhuX9HytCawt_i2HPofbAZx23hwmEtctn_Oz2-nZ40RUILzrYkwKN900-sh22mq7YT53C0%3D)

## Properties

- Tables can be translated into first-order logic, and they can be given to a SAT/SMT solver
- Outputs can contain the same FEEL expressions as inputs, including multiple values or negation. This makes sense due to the semantics of constraint tables.

## Semantics

ingredient1 | ingredient2 | dish1      | dish2
----------- | ----------- | ---------- | -----
banana      | apple       | fruitsalad | pie
tomato      | potato      | soup       | stew

### Decision table

- row = _conjunction_ of cells
- table = _disjunction_ of rows

```
(ingredient1=banana ^ ingredient2=apple ^ dish1=fruitsalad ^ dish2=pie)
v
(ingredient1=tomato ^ ingredient2=potato ^ dish1=soup ^ dish2=stew)
```

### Constraint table

- row = _implication_ from (conjunction of) inputs to (conjunction of) outputs
- table = _conjunction_ between implications

```
(ingredient1=banana ^ ingredient2=apple  => dish1=fruitsalad ^ dish2=pie)
^
(ingredient1=tomato ^ ingredient2=potato => dish1=soup ^ dish2=stew)
```

## Hit policy E*

The authors introduce a new hit policy E* (for 'Every').

E* expresses that every row must be satisfied. This makes sense, because the rows are now implications about _constraints_, not about the concrete state of our pantry.

In traditional DMN, _if input, then output_ translates into "if input satisfies constraints, then output is chosen". In constraint tables with E* hit policy, _if input, then output_ translates into a literal implication: "if input satisfies constraints, then output must satisfy constraints".

<!-- For example, traditional DMN: "if it's warm outside, wear a t-shirt". E*: "if it's warm, don't wear a sweater". So when it's warm, you are free to wear whatever except sweater. And when it's cold, you can wear anything, including sweater. -->

 ## Questions

Is there a way to compile constraint tables into traditional DMN? Would be useful both for debugging and for ease of implementation

Show in which cases the constraints would be unsolvable.
