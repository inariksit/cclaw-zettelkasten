---
date: "2020-06-15"
tags:
  - paper
  - todo
---

# Computable contracts (Surden, 2012)

Paper by Harry Surden from 2012.

(Inari: read up to page 46, TODO read the rest.)

## Challenges

> [A]ssessment consists of two broad phases:
> 1) the _understanding_ of what has been promised under what conditions; and
> 2) the _comparison_ of what was promised contractually to what has (or has not) happened.

Problem with 1: Computers don't understand human language.
Problem with 2: Terms of contracts are often intentionally vague (_“abstract, unstated, or flexible”_), to prepare for unseen circumstances. Computers can't apply common sense in such situations.

## Solution

Solution to both: write contracts as computer programs.

The paper breaks it down a bit more. Solution to 1) is writing contracts as computer __data__, and the approach is called _“contract-as-data”_ or _“data-oriented contracting”_.

Solution to 2) is to encode also the __rules__ how to fulfil the contract. When both the contract terms and their completion criteria are in computer-readable[^1] format, then we have a _“computable contract”_.

A contract can also be partially computable or data-oriented: some aspects of the contract are encoded in machine-readable format, and others only in natural language.

Standard, reusable formats and languages[^2] are preferred, as well as UI that enforces structural data.


## Examples

Most examples in the paper are about financial contract: the terms (data) are who will pay what to whom, and the completion criteria is the state of the parties' bank accounts.

Computable contracts allow us to do more things than traditional. Surden gives an example of movie streaming and geographical constraints. In a traditional contract, the company would express the condition verbally ("only authorized in the US"), but a computational contract may be equipped with software that recognizes the geographic location of a user based on an IP address. Surden says, _"The parties might agree that such an assessment, while imperfect, is an efficient and sufficiently accurate representation of their intended condition of performance and geographic location and is preferable to the traditional written clause."_

## Limitations

Basically: not suitable for complex or vague contracts.

Surden mentions briefly the possiblity of _"data corruption or erroneously executed contracts"_, and that agreements may include a process for dealing with such unexpected scenarios.

## Implications

* Effect in drafting
* New things we can do with contracts
* Reduced costs

<!-- Part V explores how reductions in transaction costs
can impact legal scope, using copyright’s “fair use” doctrine as an example. -->


[^1]: _"Thus, some data-oriented contracts might be represented as computer-database records, others using data-description languages, and others using computer programming languages."_

[^2]: _"Rather than defining the meaning of contract data themselves, parties might instead incorporate existing data standards. Data- standards are specifications that provide shared formats for data, and descriptions for how data should be interpreted, and are capable of expressing standard contracting scenarios. Such standards are often created by a centralized body and are often publically available."_
