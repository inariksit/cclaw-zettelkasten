---
date: "2020-06-17"
tags:
  - formalism
  - language
---

# DataLex

[DataLex](http://austlii.community/foswiki/DataLex/WebHome) is a high-level language for encoding legal texts. The look and feel is like normal text with rigid typographical rules:

Example: ([source](https://medium.com/@jason_90344/rules-as-code-can-and-should-be-done-without-programmers-fb3e0f4dafa5#e2e0))

```
PERSON the physician
PERSON the individual

LINK Section 2 of the Mental Health Act TO https://www.canlii.org/en/ab/laws/stat/rsa-2000-c-m-13/latest/rsa-2000-c-m-13.html#sec2

GOAL RULE Section 2 of the Mental Health Act PROVIDES

Section 2 of the Mental Health Act applies, and the physician may issue an admission certificate in prescribed form with respect to the individual ONLY IF

the physician has examined the individual in the last 24 hours AND

the physician is of the opinion that the individual is suffering from mental disorder AND

the physician is of the opinion that the individual is likely to cause harm to the individual or others or to suffer substantial mental or physical deterioration or serious physical impairment AND

the physician is of the opinion that the individual is unsuitable for admission to a facility other than as a formal patient
```
