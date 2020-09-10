---
date: 2020-09-10
tags:
  - natural_language
---

# Ambiguity of "and"

[Okrent (2009)](http://inthelandofinventedlanguages.com/) writes:

> To all the language curmudgeons out there who insist that people ought to speak more logically, I say, be careful what you wish for.
> […]
>
> Do you know how good we have it, how much easier our speaking lives are made by the fact that language and logic part ways? Consider the word "and." Why, you barely have to know what you mean when you say it! When you say you “like ham and eggs” do you have to specify whether you like each of those things as evaluated on its own merits separately or whether you like them served together as an entrée? No. You just lazily throw out your "and" and let context do the rest of the work for you. When you say you “woke up and ate breakfast” do you mean that you woke up first and then ate breakfast? Or did you do the two things simultaneously? Or, maybe your breakfast was asleep, so you woke it up and then ate it.
<!--Pshaw, you say. You know what I mean. Perhaps I do, says the Lojbanist. Perhaps I don’t.-->


## By part of speech

### Between noun phrases


#### Joint entity: Alice and Bob carried the piano.
  * A "true" NP conjunction: [Alice and Bob] did the action together as a collective entity.
  * Same meaning if I like [ham and eggs] as one dish.
  * Related ambiguity with plural: "The stockholders shall notify Acme" -- each stockholder separately or all as a collective entity?


#### Shorthand for clausal conjunction: Alice and Bob studied at the same school.
  * Alice studied at the school and Bob studied at the school—two separate events, maybe at the same time, maybe at different times. The conjunction between NPs is shorthand for conjunction between _clauses_.
  * Same meaning if I like ham and I like eggs.

#### Reciprocal: Alice and Bob are friends.
  * Reciprocal is subtly different from joint entity. Alice and Bob are not just one entity that fulfil the predicate "friend", but rather they are friends with each other: `friend(Alice,Bob) && friend(Bob,Alice)`.
  * If the sentence continues "with Carol", then the meaning can be:
    * Alice and Bob as a joint entity (Carol is primarily friends with the couple and never hangs out with Alice or Bob alone), or
    * Shorthand for clausal conjunction: Alice is a friend of Carol and Bob is a friend of Carol.

### Between adjectives

#### Intersection: temporary and part-time employees
* Meaning: "those employees who are both temporary and part-time"

#### Union: temporary and part-time employees
* Meaning: "temporary employees and part-time employees"

#### Noun phrases following a quantifier: Every director and officer
Related, even though director and officer are noun phrases. (This classification is not very systematic. :-P)
* "every person who is both a director and an officer"
* "every director and every officer"

### Between verb phrases

#### Temporally overlapping: I sat and sighed
* Presumably sighing happened while sitting.

#### Temporally in sequence: I washed and cut a carrot
* First washed, then cut.

#### Shared object(s): Acme sells and issues preferred stock
* Both verbs are transitive, so this is shorthand for "sells preferred stock and issues preferred stock".

#### Not sharing objects: I woke up and ate breakfast
* The first verb is intransitive, so the brackets go [woke up] and [ate breakfast], not waking up the breakfast.

### Between clauses
TODO examples.

Check out [Lojban](https://mw.lojban.org/papri/ELG._Conjunctions), they have had a lot of fun with avoiding ambiguity.

## By type of language

### In language of discretion

Ken Adams distinguishes between all of the previous as a subject or object, and according to the type of language: "Acme _may_ sell widgets and stock" has different interpretations from "Acme _shall_ sell widgets and stock".

* Acme shall sell A and B -- no ambiguity.
* Acme may sell A and B -- does it have a permission to sell only A, only B or both, or only both? Ken Adams suggests the following disambiguations:
  * Acme may sell A and B, as opposed to one or other of them.
  * Acme may sell either A or B, or both of them.
  * Acme may sell A and B, considered collectively.

## What do we need to represent in L4?

A lot of Ken Adams' stuff is just concrete syntax issues. But which ones should have language constructs in L4?
