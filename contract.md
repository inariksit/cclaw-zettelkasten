---
date: "2020-06-17"
tags:
  - concept
---

# Contract

_Contract_ means slightly different things in different fields. Following description paraphrased from [Camilleri (2017)](https://gupea.ub.gu.se/bitstream/2077/53815/1/gupea_2077_53815_1.pdf).

### Legal contract

Normative text that describes an agreement between parties. The parties are bound by law to fulfil the contract. (Even if the contract is [ridiculous](https://www.rt.com/business/man-outsmarts-banks-wins-court-221/).)

### Financial contract

A promise of payment between parties. It's kind of like money or other valuable goods, just potential sort of those. This means people sell and trade them, and they can change in value just like any goods.

Explanation that makese sense for a functional programmer:
Peyton Jones and Eber (2003) _[How to write a financial contract](https://citeseerx.ist.psu.edu/viewdoc/download;jsessionid=F1689CB5CC0D35AD06ACE3DD04FF14D2?doi=10.1.1.14.7885&rep=rep1&type=pdf)_

### Blockchain smart contract

Like previous, this is also a promise of exchanging goods between parties.

Unlike previous, a smart contract doesn't require third parties to make it reliable. It's reliable because it's
- Written as code. This means that conditions can be automatically validated. "Did Alice pay Bob 50 dollars" is not up to negotiation, it can be checked automatically.
- Distributed publicly in a decentralized system. This means that Bob can't just burn the contract after Alice has paid (or hack the server of a single provider that hosts the contract).

### Software engineering

Quote Camilleri:

> Specification of software in terms of assertions and pre- and post-conditions.

(Probably not relevant for the scope of CCLAW readings.)
