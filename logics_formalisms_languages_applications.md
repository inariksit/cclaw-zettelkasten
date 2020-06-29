---
date: "2020-06-24"
tags:
  - basics
  - todo
---

# Logics, Formalisms, Languages, and Applications

TODO: Add links

The purpose of this Zettel is to try and define some of the categories of things
we are talking about, here, and maybe help draw boundaries around some of the
tags that we're using to organize them.

I am not a programming language expert, so this is my novice understanding of
what we're talking about. Some of these concepts are pretty clearly distinct
from one another, and some overlap heavily.

## What is a "Logic"?

A "logic" is a strict way of writing things down, where if the things you
write down are true,
and you follow the derivation rules, you can generate new
statements that you can be confident are also true.

There are a lot of different logics out there, each with their own sets of rules that
you can use to generate new knowledge from the knowledge you already have. They
are designed for different functions, and some of them
are designed specifically for computation, like lambda calculus.

## What is a Programming Language?

A programming language is a strict way of writing things down where there is
a piece of software that can take that writing and turn it into a set of
instructions that will accomplish the things that the language allows for.

So, a programming language is a logic, plus a way of writing that logic
so that the computer can read it, and can do the derivations
for you. Most popular programming languages implement lambda calculus, and
computations get described as functions.

In declarative logic programming,
the logic implemented by the programming langauge may be something more like
predicate logic, or modal logic,
or defeasible logic, and the computations get described as sets of rules,
or a set of rules with modes, or a set of rules and exceptions to those rules.

(See the following list for languages that have an entry in this zettelkasten.)

 <z:zettels?tag=language/**>


## What is a "Formalism"?

A formalism is any strict way of
writing things down. A logic is a formalism. A programming languages is a
formalism. But if you have a strict way of saying things, and no rules
that can be implemented by a computer or a person in order to derive new
statements, then your formalism isn't a logic.

And if it gives you a strict way of writing things down for use in a computer,
but there is no way to take what you have written down and generate new
information from it, then it is not a programming language.

As an example, LegalRuleML allows you to write down, in a strictly formalized
way, statements of law. But the LegalRuleML standard explicitly states that
there is *no semantic meaning* applied to those statements. You can't build
a LegalRuleML compiler, because there is no logic to implement.

Now, you can take LegalRuleML, and you can convert it into very similar
statements in, for example, deontic modal logic. And you can run a deontic
modal reasoner on those statements and generate new information. You might
also be able to automatically convert from LegalRuleML into that deontic
modal langauge, effectively making it possible to execute statements
written in LegalRuleML. Now is it a programming language?

Yeah. Because you created a set of rules for taking statements (LegalRuleML)
and turning them into new statements (deontic modal logic code). Then you
automated them. So you have turned LegalRuleML into a programming langauge.

## What is an Application?

Is Microsoft Word an application? Yes.
Is it a programming tool? Well, it is analogous to an integrated
development environment for writing the XML code that is used to describe
word documents. And that XML code can be used to generate new information,
for example PDF code that describes the same document. So there is a
formalism, and there is a logic, and it automatically generates new
information. By the definition above, DOCX, at least, is a programming
language, and Microsoft Word is a programming tool.

If that seems intuitively wrong, it may be because of misconceptions we
have about programming. Specifically, that it's
supposed to be hard, and it's supposed to be general purpose.

Not so. And if we let ourselves draw a hard/easy or general/specific
distinction between a
programming language and an application, and conceive of what we are
building as a programming langauge, we give ourselves an
excuse for building things that are unnecessarily hard and complicated.

So for our purpsoes, I think things that are stereotypical programming
languages, like ErgoAI, and things that are visual tools like Neota
Logic, should be in the same main category: tools.
