---
date: "2020-06-30"
tags:
  - logic
---

# Norms and truth values

There's this thing some people who write papers are worried about: norms don't have truth values, but other people are still treating them as if they had.
[Wikipedia](https://en.wikipedia.org/wiki/Imperative_logic) demonstrates:

> Consider:
>
>     P1. Take all the books off the table!
>     P2. Foundations of Arithmetic is on the table.
>     C1. Therefore, take Foundations of Arithmetic off the table!
>
> However, an argument is valid if the conclusion follows from the premises. […] Since imperatives are neither true nor false and since they are not proper objects of belief, none of the standard accounts of logical validity apply to arguments containing imperatives.

### Papers that talk about this

- Makinson and van der Torre, [Input/output logic](https://icr.uni.lu/leonvandertorre/papers/fotfs03.pdf)
- Alchourrón and Martino, [Logic without truth](https://dl.acm.org/doi/pdf/10.1145/74014.74036)
<!--
- I'm not quite sure what the point of this is but here's someone justifying that norms are real.
> Now, in the model of practical reasoning proposed in this thesis (§ 7), we will argue that agents’ inferential mechanism dwells on four elements: commitments, expectations, abilities and susceptibilities. When an agent reasons (or seems to reason)
according to this model (or any other theory of mind), these elements become real as real entities ‘out there’, because their attribution explains to a good extent visible effect […]
> Interestingly, these four elements were selected in analogy with Hohfeld’s four main categories of primitive normative concepts: duties, claims, powers and liabilities (§ 4.3). Therefore, we may apply the same argument to norms, concluding that norms are also real.
-->

### Meng's take

I think a norm can be lifted to have truth values if we phrase them declaratively.
“A Company must have a locally resident director.” Here the `must` is on a Company, but there is no clear statement of or else what? If an obligation that is not satisfied does not impose a corresponding penalty, is it really an obligation?

“If a Company does not have a locally resident director at time t, it is not a valid Company and its name will be removed from the Register of Valid Companies at time t+30 unless at it has by that time gained a locally resident director.”

That is more like a declarative prescription which can be assigned a truth value.

“If a Company does not have a locally resident director at time t, it is not a valid Company, and the Registrar, once it has become aware of this fact, is obliged to remove its name from the Register of Valid Companies 30 days from the time it becomes aware of the fact (provided the Company has not regained validity by obtaining a locally resident director), and if the Registrar fails to do so, then the Registrar accrues Ten Mistake Points.”

That reads like a specification. It is not something which can be assigned a truth value; it is something which assigns truth values! From that spec, we can assign a truth value to a sequence of events; Hvitved (using the language of CSP and process calculi) would call it a “conforming trace”.

Norms can assign truth values e.g. “x is valid according to `v(x)`, where `v` is given
by some <dmn>/FEEL construct `v :: X -> Bool`, and `X` is a well-formed set of
`Map SymbolName (Maybe Bool)`.
If we want <default_logic>, we layer in a set of defaults `Map SymbolName Bool`.
