---
date: "2020-06-30"
tags:
  - logic
  - todo
---

# Default logic

[Lawsky (2017)](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3088206)  presents the case for default logic[^1] in use of legal reasoning.

Lawsky argues that standard logic is not well suited to model legal rules. Legal reasoning involves scenarios that were not anticipated by laws ("runtime exceptions"), and sometimes one has to revise the conclusions one may have drawn from incomplete data.

## Defeasibility

Standard logic is _monotonic_: if you have a syllogism like "P1: Aristotle is a man, P2: all men are mortal, ∴ Aristotle is mortal", then no further information[^2] can negate the conclusion "Aristotle is mortal".

Default logic is _nonmonotonic_. The rules are not as strict as in monotonic logic. Rather, you have a collection of _default rules_ that are ordered by their _strength_, and then you can draw conclusions based on them. It's a feature, not a bug, that the rules may contradict each other. Ordering them removes conflicts.

(NB. Lawsky admits that nonmonotonic logic isn't _necessary_ for expressing defeasible reasoning, but it's _preferable_, because the translation from statute to logic is simpler. But it's totally possible to translate default logic into classical logic.)

### Default rules

Lawsky argues that real laws look a lot like default rules, with varying strengths. Here is an example from the paper.

    R1: Interest payments are deductible
    R2: Personal interest payments are not deductible
    R3: Personal interest payments, if it's for acquiring a residence,
        with acquisition indebtedness up to $1 million, are deductible.

Now R1-3 are easy to express as default rules. We give them the following ordering: more specific rules match first.

    R3 > R2 > R1

## Questions and comments

I (Andreas) think in DMN tables classic logic corresponds to the Unique rule and default logic corresponds to the First rule.

It seems to me (Inari) that the claim "default logic matches legal reasoning" comes /from syntactic similarity. The example statutes are drafted in the style "in general, birds fly; however, penguins don't fly; however, African penguins do fly."[^3] But there is an implicit "except when they don't fly; see §182c for information about non-flying birds" in every general statement.

All of this could be expressed in a programming language using `if/(elif/)*else`. The ordering of the rules is just the order of the cases in the if-block.

    case InterestPayment of
      PersonalInterest && ForBuyingHouse && ItCostThisMuch n
        | n <= 1000000 -> Deductible
      PersonalInterest -> not Deductible
      _                -> Deductible

Maybe there is value of having _defeasible reasoning_ as an abstraction, which can be implemented as if/else or switch/case--such details are programming language specific, and don't need to be in the abstraction. I agree that the order from general to specific is a good way to order things for humans, and we lose that in the if/else syntax. (But this is just a matter of concrete syntax--we could as well have a programming language where the order is reversed!)

However, wouldn't it be equally expressive to encode the process in a decision tree? Asking if the interest payment is personal interest is just the first step, which doesn't lead to a decision, but to more questions. Only when the whole tree is traversed, do we get a conclusion (`Deductible`, `¬Deductible`) or `error: "Not enough information/Ambiguous situation, ask a court."`

Then again, in real life you don't get a `Nothing` if you don't know whether your interest should be deductible or not. If you don't inform the tax authorities about your special circumstances, you probably get a default decision based on the limited information they have and what they assume. So in that sense, making decisions and later overriding them does model the real world.

> More generally, in many situations there may be a variety of different “right” answers to a question of law, depending on the precise question one is asking. The right answer might be, for example, “the answer that is most compliant with the law,” or the right answer might be “the advice that a tax lawyer should give a risk-averse client,” or the right answer might be “the conclusion a judge would reach.” Default logic’s formalization will in fact be able to provide any of those three answers (and others!), even though the answers might be different than one another, depending on the priority the formalizer gives to the various rules.

So here we add the property of flexible reordering of the rule weights. Maybe this would be more elegantly formulated as a data type, or something like a typeclass. (TODO: sketch this in Haskell.)

### Meng's take

Suppose we have a simple function `f1 :: a -> b -> Bool`. Suppose we have only `a` and do not yet know `b`. We call `f1 a` and get back a partially applied `f1' :: b -> Bool`. In English, we would say “the answer is: it depends”.

Let’s call those semantics Classical Haskell. In the Classical Haskell monad `m`, we have a function `f2 :: m (a -> b -> c) -> m a -> m b -> m c`.
And calling `f2 (m a)` gives `f2' :: m b -> m c`. So that’s basically `ap`.

But in the Defeasible Monad `n`, a function `f3 :: n (a -> b -> c) -> n a -> n b -> n c` allows you to say `f3 (n a)` gives `f3' :: n c` because who has time to wait for `b`?
We’re too busy! Life is too short! `n` lifts every `a`, `b`, `c` to `HasDefault a`, `HasDefault b`, `HasDefault c` and if `f3` isn’t given `n b` then it just runs a `fromMaybe b` and carries on! If it turns out that the value of `n b` is actually not the default `fromMaybe b` then throw a runtime exception, we’ll fix it in court! Or we’ll say, run the function again with `f3 (n a) (n b)` and we’ll get a different `n c` result, but to cover up our embarrassment at being found out as guilty of jumping to conclusions, we’ll just call it non-monotonic reasoning!

---

As Lawsky says, default logics can be interpreted into classical logics; the apparent contradiction between rule fragments can be resolved when they are composed into complete rules; just as the `if/elsif/else` construct is a way of composing multiple rule fragments into a single coherent rule, a `default/unless/exception` construct can be equally treated as different syntax for the same thing. In that case, what is the usefulness of default logic to us? The syntax thing is a red herring. The value of default logic is good-old reasoning under uncertainty: being able to `fromMaybe` a default value to an unknown; and being able to prioritize conflicting rules, so that a resolution always proceeds deterministically.

## Examples in real world

- <catala> is based on default logic.
- <legalruleml> has an option `DefeasibleStrength` for rules that may be overriden.



[^1]: Original source for default logic: R. Reiter, A Logic for Default Reasoning, 13 ARTIFICIAL INTELLIGENCE 81 (1980).

[^2]: Of course, you can have a direct negation of P1 or P2 or the whole syllogism, but that would be a contradiction and render the whole set of statements unsatisfiable. So not a meaningful thing to do. If you want to model the state of _your knowledge_ instead of the world, then of course you can make the statements "30th June _I thought_ people were mortal, so _I concluded_ that Aristotle is mortal. 1st July _I learned_ that people in fact aren't mortal, so _I revised_ my views on Aristotle". (I guess that would be some kind of temporal logic? :-P)

[^3]: Fictional example, [they don't](https://en.wikipedia.org/wiki/African_penguin).
