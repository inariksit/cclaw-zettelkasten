---
date: "2020-06-15"
tags:
  - paper
  - todo
---

# Computable contracts (Surden, 2012)

Paper by Harry Surden from 2012.

(Inari: read up to page 23, TODO read the rest.)

### Challenges

> [A]ssessment consists of two broad phases:
> 1) the _understanding_ of what has been promised under what conditions; and
> 2) the _comparison_ of what was promised contractually to what has (or has not) happened.

Problem with 1: Computers don't understand human language.
Problem with 2: Terms of contracts are often intentionally vague (_“abstract, unstated, or flexible”_), to prepare for unseen circumstances. Computers can't apply common sense in such situations.

### Solution

Solution to both: write contracts as computer programs.

The paper breaks it down a bit more. Solution to 1) is writing contracts as computer __data__, and the approach is called _“contract-as-data”_ or _“data-oriented contracting”_.

Solution to 2) is to encode also the __rules__ how to fulfil the contract. When both the contract terms and their completion criteria are in computer-readable[^1] format, then we have a _“computable contract”_.

A contract can also be partially computable or data-oriented: some aspects of the contract are encoded in machine-readable format, and others only in natural language.

### Examples

Most examples in the paper are about financial contract: the terms (data) are who will pay what to whom, and the completion criteria is the state of the parties' bank accounts.

### Limitations

Basically: not suitable for complex or vague contracts.

### Implications

* Effect in drafting
* New things we can do with contracts
* Reduced costs

<!-- Part V explores how reductions in transaction costs
can impact legal scope, using copyright’s “fair use” doctrine as an example. -->


[^1]: _"Thus, some data-oriented contracts might be represented as computer-database records, others using data-description languages, and others using computer programming languages."_
