---
date: "2020-07-09"
tags:
  - natural_language
  - todo
---

# Structures of legal language

Many authors have compiled lists of the structures that appear in legal language. The point of view is different depending on if the person who compiled the list is a lawyer, a linguist or a computer scientist. This zettel documents some of the existing classifications.

Note that linguistic structures are orthogonal to the types of legal language. For example, a _conditional clause_ (linguistic structure) can appear in languages of _obligation, discretion, prohibition_ and _policy_ (types of legal language).

## Law

### Adams

#### Front of the contract

Title, introductory clause, definitions, … TODO


#### Recitals

A contract includes background information in a part that is called _recitals_. Adams names three kinds of recitals:

1. __Context recitals__: relationships between the parties, previous transactions by the parties, etc.
2. __Purpose recitals__: what the parties wish to accomplish. (Terms of the contract are listed in the main part.)
3. __Simultaneous-transaction recitals__: describe other components of the transaction, if there are any.


#### Main contract

Ken Adams introduces 10 main [Categories of Contract Language](https://www.adamsdrafting.com/wp/wp-content/uploads/2018/02/Quick-Reference-MSCD4.pdf). In the linked table, the categories are given examples and subcategories.


1. __Agreement__
1. __Performance__
1. __Obligation__
1. __Discretion__
1. __Prohibition__
1. __Policy__
1. __Condition__
1. __Declaration__
1. __Intention__
1. __Recommendation__

Some of these categories are logically linked together, like negating an obligation means discretion. (Something something Hohfeld.)


#### Pragmatics

Adams talks a lot about pragmatics[^1]. Jason's take on that:

> My perspective on it is that legal language is a form of communication. Success is measured in communication by whether or not the ideas in the first brain end up in the target brain, with the least necessary effort. Human brains are designed to fill in gaps in natural language. Which is what Adams is talking about when he talks about pragmatics. We imply intent (or sometimes use explicit statements of purpose), in order to create a mental model of the motivations of the individual who wrote the contract, and interpret it to mean whatever meaning is most consistent with that mental model.


## Linguistics

### Biasiotti and Tiscornia

[Biasiotti and Tiscornia (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_9) list typical linguistic structures in legal documents. Emphasis mine.

<!-- > Despite the lack of specific rules governing the use of language, several legal documents -->
<!-- > have indeed fixed narrative structures, so that it is possible to detect semantic templates -->
<!-- > from typical linguistic structures, on the basis of a finite set of linguistic expressions and -->
<!-- > syntactic structures that can be considered in some way domain independent. -->


> * a __model of the logical structure__ of legislative texts, understood as a set of statements,
>  that enable the following elements to be identified:
>
>   * information about the __document structure__: enacting authority, class of source, time,
>  publishing date, versioning, subject, partitions, etc. (Agnoloni et al. 2007),
>   * classification of legislative statements according to their __illocutive function__ (to _define_,
>  to _prohibit_, to _oblige_, to _sanction_ …. ) (Biagioli et al. 2008).
>   * __distinction of language levels__, for example, _norms that talk about other norms_ (to
>  _repeal_ them, to _amend_ them, etc.); (Spinosa et al. 2009).


In a traditional contract, some of these things would appear in _recitals_, some of them in Adams' categories of _policy_ or _declaration_.

"Illocutive function" looks like Adams' categories of contract language. (Perhaps excluding some of the more meta categories?)

"Distinction of language levels" doesn't seem to have an exact counterpart in Adams. It's a rather meta thing to do. But norms that talk about other norms would likely be in Adams' category of policy. Quoting Adams (emphasis mine), _“There are two kinds of policy. First, those that state rules governing a thing, event, or circumstance. And second, __those that address the scope, meaning, or duration of a contract__ or part of a contract.”_


> * __dependency relations between classes of statements__ (for example, between a definition
> and a norm that uses the defined concept, between a norm that obliges and one that
> provides sanctions in the case of the breach of the obligation, etc.) (Biagioli et al. 2008).

Jason's take on that this means: _"The dependency relations I take to mean "this term is used in sections x, y, and z", which is implicit in the fact that the same words are used. That's what you make explicit when you do a decision diagram in DMN."_


> * a __model of inner structure of legislative statements__, based on:
>   * the _interpretation of syntactic elements_ (even if, unless, notwithstanding, and/or, but
>  otherwise, after, …) _in terms of logical connectives_ among propositions (Allen 1986),
>  expressing disjunctions or conjunctions of factual conditions, linked by logical
>  implication to a legal effect or a legal qualification of a status;
>   * the distinction between the _deontic classification of behaviour_ and the _set of
>  regulated behaviours_: the former is knowledge domain independent, the latter
>  expresses common sense knowledge (Francesconi 2009).

The _interpretation of syntactic elements in terms of logical connectives_ looks like formal semantics? That should be present in a computational approach.

As for deontic classification of behaviour and the set of regulated behaviours, I don't understand what that means. (TODO find out if it's worth finding out?)

<!--

> Case law requires a different profile:
>
> * analysis of __rhetorical structures in legal judgements__, to identify the basic components:
>  facts of the case, decisions, arguments and grounds (Wyner 2008);
> * distinction among arguments and non arguments (facts, complaints, reason for and
>  against the decision) (Wyner 2008);
> * extraction of the logical argumentative structure of the case, argument and rule, on
>  which build a grammar of argument for automatic argument extraction (Wyner 2009);
> * identification of factors in semantic terms, i.e., relevant elements on which the decision
>  for or against a side in a case is based (see Chapter 6 by Ashley, this volume).
-->

## Computer science

### Hvitved

[Hvitved (2012)](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.724.7779) lists 16 requirements for contract formalisation.

1. Contract model, contract language, and a formal semantics
2. Contract participants
3. (Conditional) commitments
4. Absolute temporal constraints
5. Relative temporal constraints
6. Reparation clauses
7. Instantaneous and continous actions
8. Potentially infinite and repetive contracts
9. Time-varying, external dependencies (observables)
10. History-sensitive commitments
11. In-place expressions _[such as arithmetic expressions]_
12. Parametrised contracts
13. Isomorphic encoding _["formal encodings that are in one-to-one correspondence with the informal paper contracts"]_
14. Run-time monitoring
15. Blame assignment
16. Amenability to compositional analysis

Here's Jason's explanation:

> Because we are typically dealing with other people with whom there is a great deal of shared understanding, a great deal can be left unsaid, and implied from context. Contract Law has various ways in which that context can be explicitly taken into account by judges if the terms of a contract come into dispute. Standard procedure in the industry, behaviour of the parties, etc.
>
> Now, if a computer becomes one of the targets, the natural language contracts won't work. They rely too much on shared common knowledge that the computer doesn't have. So Hvitved, for example, is looking at the parts of the understanding that you actually need to communicate in order to automate. Which is a subset of what you need to communicate between humans in a natural language. There is neither room for nor necessity for subtle implications about purpose, for example.
>
>And at the same time, there is the need to have formal structures to set out the implications for things that do need to be specified for the computer, like the meaning of relative datetime references, e.g.
>
> So there are things Hvitved needs to say that Adams doesn't. And there are things that Adams needs to say that Hvitved doesn't. But if you think of natural language and hvitved's contract language as two different computer languages that run on completely different processing architectures, and have no common compiler target, and are paradigmatically different, I think you get a better idea of the task at hand.

[^1]: For instance, in 3.303 Adams comments on a sentence _"Widgetco may sell one or more Vehicles except [Ford]"_. If we abandon all pragmatics, we notice that nothing is said about the Ford vehicle, so technically Widgetco could sell it and not breach the contract. But pragmatics suggests that the sentence was formulated in this way because the authors wanted to say something about the Ford, and actually meant "Widgetco may sell one or more vehicles, but it may not sell the Ford."
