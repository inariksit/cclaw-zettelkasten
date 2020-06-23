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
