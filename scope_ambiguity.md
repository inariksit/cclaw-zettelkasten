---
date: "2020-06-15"
tags:
  - natural_language
---

# Scope ambiguity

Example from <normalized_legal_drafting_query_method>

> Persons who are doctors and lawyers qualify.

What is the scope of _and_?

1. _[Persons who are doctors] and [persons who are lawyers] qualify_
1. Persons who are [doctors and lawyers] qualify


We will 100% need to support all kinds of scope ambiguity. Natural language
contracts are full of it. People like reading it and writing it. To spell out
"persons who are doctors qualify and persons who are lawyers qualify"
sounds like the worst kind of robotic <cnl>.

A full explicit sentence is useful for a human-directed ambiguity check
("did you mean … or …"), but not as the primary compilation target.
