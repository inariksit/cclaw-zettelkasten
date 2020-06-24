---
date: "2020-06-23"
tags:
  - expert_system
  - document_assembly
  - open_source
  - todo
---

# Docassemble

[Docassemble](https://docassemble.org) is an open-source Python-based web interview and document automation
tool written by Jonathan Pyle, which is a lawyer and programmer in Philadelphia.

Jonathan works in the non-profit civil legal aid sector in the United States, and built docassemble to help
accelerate the process of generating interviews from document templates.

The basic intuition is this: if the document already says...

```
<if the_client_is_seeking_damages> I seek damages in the amount of < damages_amount >. < end if >
```

... then why should I have to ALSO tell the web interface not to ask for `damages_amount` unless
`the_client_is_seeking_damages` is true. It should already know that.

So he built a tool that could figure out what questions to ask and in what order on the basis of the code
in the document template that you are building. Then you just need to explain how to ask each
question.

## Relationship to Expert Systems, Logic Programming

The basic technical feature of Docassemble is that it catches undefined attribute errors, and instead of
displaying them to the user, searches the interview file for a question or code block that will
define that variable, pattern matching in a number of ways. If it finds a code block, (which is just
raw Python written into the YAML file), it executes that Python code, and then tries again to execute
the code it was running before. If it finds a question block, it displays that question to the user,
collects the information (so the undefined attribute error won't happen the next time), and tries again.

This is, in effect, a sort of backward chaining method (if it doesn't know the value of a variable, it
looks for a way to "define" it, in the way that a logical reasoner looks for a way to "prove" it). And
elements of forward chaining can be put into code blocks that are run each iteration, so that anything
that can be calculated won't be sought.

There are little ways in which the distinction shows up, particularly in how Python deals with disjunctions,
which is a left-to-right method.

```
---
code: |
  if over_18 or in_active_military_service:
    eligible_to_draft_will = true
  else:
    eligible_to_draft_will = false
---
```

Because of the "if it didn't work try it again" (called "idempotent")
method that Docassemble uses to run code, if the above
block did not have an `else:` clause, then the interview would not function properly. So the representation
of rules like this one is not isomorphic with the rules, because it doesn't allow you to express other
ways of being eligible elsewhere, or to have rules that override this one. All the rules that can be used
to draw a conclusion must be combined into a single rule.

Also, if the interview already knows that `in_active_military_service` is true, it will still ask whether or
not the user is `over_18`, just because that appears first in the list left-to-right, and so will generate the first
undefined attribute error. So that question will be asked even though it is not logically required to
calculate anything the user wants to know.

So it behaves in a way that is similar to a backward-chaining logical reasoner in some ways, and similar
to a forward-chaining reasoner in others, but it is actually neither.

## Popularity

Docassemble has seen a very large increase in use over the last three years or so, was named one of the top
web tools for lawyers in 2018 (along with two or three other tools that were built with Docassemble), and is
now recommended for use by non-profit civil legal aid organizations by the main civil legal aid funder in
the United States, the Legal Services Corporation.

Its popularity in legal applications comes in part from the fact that it was developed by a lawyer for legal
purposes, and has cache in that community. But the backward-chaining implementation also abstracts away or
allows you to re-use logic that is already in the document, which does in fact reduce time-to-prototype when
developing an interview and the document already exists.

Because it is Python, and gives you access to run arbitrary Python, and it's module system is Python's module
system, it is also very extensible, and can be made to play nicely with others.

For those who are comfortable with Python, one of Docassemble's biggest strengths is its ability to use
arbitrarily complicated algebraic data types defined as Python objects using docassemble's custom list
types, as well as the ability to use object references to create as complicated
a representation of relevant facts as they like.

## Downsides

One major downside with Docassemble is that it generates interviews, not apps. The presumption is that each
screen will add to the data the interview has collected. The main mechanism for changing previous
answers is to "reverse the flow of time" and have the interview forget what it was most recently told.

There are review mechanisms that have been added as a means to get around some of this difficulty, but they
are not generated automatically, and are difficult to make work in intuitive ways with complicated data structures.

Other tools in a similar space, like Oracle Policy Automation and Neota Logic, allow the user to navigate
arbitrarily around different screens in the interview, and clicking "continue" always returns the user to the
next question that is currently required and unanswered.

## Complexity

Even though Docassemble comes as a docker container with a web-based IDE included on the server, learning
YAML and Python is still considered too difficult for many users, which has led to a number of efforts to
build simpler interfaces to get access to Docassemble's features. Those include Documate, and Community.Lawyer.

None gives the user access to docassemble's list collection or algebraic data type capabilities, so they are
far less powerful.

## Rules as Code Integration

<blawx> has a module that can be used in a docassemble server to simplify the process of having the Blawx
reasoner answer questions using Docassemble interview data and rules encoded in the Blawx tool.

## Smart Contract Integrations

I'm not aware of any.
