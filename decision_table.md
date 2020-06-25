---
date: "2020-06-17"
tags:
  - method
  - tool
  - formalism
---

# Decision table

A decision table is a way of recording what inputs should result in what
outputs for a given rule, function, or equivalent.

They are used in the DMN standard, as well as in Oracle Intelligent Advisor.

They consist of a set of either rows or columns that represent inputs, and
another set that represent outputs. Depending on the formalism, `-` can be
used in an input row to indicate that the input value is irrelevant.

In DMN, how a decision table is read depends on it's "hit policy". For example
the first rule that matches, any rules that match (as long as they all have
the same output), or all rules that match (and the output can be multiple).

In OIA, decision tables always use the first hit policy, and a final default
row is mandatory.

A single row of a DMN decision table is referred to as a "rule" in the spec,
which is confusing.

Depending on what the decision table can return, it may be considered like
a declarative rule, or as more of a shorthand for a decision tree.

The intended benefit of decision tables is their accessibility for non-
technical users. Just read the rows, top to bottom, left to right (assuming
a horizontal orientation for the table). If all the inputs match your
scenario, the outputs listed are true.

Decision tables are used in non-automted contexts because they can be faster
for a human being to navigate than an equivalent decision-tree or set of
rules if the input variables are listed in an optimal order.


Related: <dmn_constraint_tables_extension>

For implementation of DMN-related things, see Calvanese et al (2016)
[Semantics and Analysis of DMN Decision Tables](https://arxiv.org/pdf/1603.07466.pdf).
