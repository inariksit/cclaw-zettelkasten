---
date: "2020-06-17"
tags:
  - expert_system
---

# DataLex

[DataLex](http://austlii.community/foswiki/DataLex/WebHome) is a legal expert system.

You can encode some set of rules using almost-normal text. A user-facing application is generated from that description.

Example application in Jason Moris: [“Rules as Code” Can and Should Be Done Without Programmers](https://medium.com/@jason_90344/rules-as-code-can-and-should-be-done-without-programmers-fb3e0f4dafa5#e2e0). The encoded text is shown below.

```
PERSON the physician
PERSON the individual

LINK Section 2 of the Mental Health Act
TO https://www.canlii.org/en/ab/laws/stat/rsa-2000-c-m-13/latest/rsa-2000-c-m-13.html#sec2

GOAL RULE Section 2 of the Mental Health Act PROVIDES

Section 2 of the Mental Health Act applies, and the physician may issue an
admission certificate in prescribed form with respect to the individual ONLY IF

the physician has examined the individual in the last 24 hours AND

the physician is of the opinion that the individual is suffering
from mental disorder AND

the physician is of the opinion that the individual is likely to cause
harm to the individual or others or to suffer substantial mental or physical
deterioration or serious physical impairment AND

the physician is of the opinion that the individual is unsuitable for admission
to a facility other than as a formal patient
```

## Upsides

DataLex is an excellent example of the ability to have an interface automatically generated on
the basis of the ontology being used inside the rules. It uses the natural language ways in
which the propositions are expressed and pre-defined algebraic types like "PERSON" 
to generate intuitive-sounding questions in a chat-bot interface.

The rules are extremely readable, and it has features designed specifically for describing
the legal provenance of a rule.

Unlike many systems that use controlled natural language interfaces for expressing the code,
DataLex is quite forgiving to beginners, because all syntactical symbols are in ALL CAPS.
Everything between the symbols is just the name of a proposition. So it's a lot easier to
write valid DataLex statements as a beginner, because so little of what you are writing has
syntactical meaning.

## Downsides

The chat-bot interface is actually just a web-patina on 1980s style expert system technology.
The logic used is propositional logic, not predicate logic, which limits
the kinds of logical expressions that can be used. There is no defeasibility, no deontic
modes, etc.

While available for public use for free on the website, the code is owned by AustLII, and
proprietary. 

Having the GOAL defined as a tag on one of the RULES in the system violates the architectural
premise that the application (the purpose to which the rules are being put) should be isolated
from the rules.