---
date: "2020-06-17"
tags:
  - language/interchange
  - todo
---

# LegalRuleML

XML-based language for writing legal rules in machine-readable format.

A legal document written in LegalRuleML isn't runnable by itself; just like an XML document isn't a _program_ but rather _data_.

Once you know roughly the type of thing LegalRuleML is, you can read Athan et al. (2015) [LegalRuleML: Design Principles and Foundations](https://www.researchgate.net/publication/277498922_LegalRuleML_Design_Principles_and_Foundations). Before that, read the sample contract.

## Sample contract

From [Lam et al (2016)](https://www.researchgate.net/publication/304480296_Enabling_Reasoning_with_LegalRuleML).

> r1: Goods marked as “Special Order” are subject to a 5% surcharge.

Rule 1 translates to LegalRuleML as follows.

### Overview

    <lrml:PrescriptiveStatement key="r1">
      <ruleml:Rule key=":ruletemplate1">
        <METADATA>
        <ACTUAL RULE CONTENT>
      </ruleml:Rule>
    </lrml:PrescriptiveStatement>

It's a prescriptive statement that has key `r1`, and it has a Rule in it.
Inside the Rule, there is first some metadata and then the actual rule content.

### Metadata

        <lrml:hasStrength>
          <lrml:DefeasibleStrength
             key="str1"
             iri="http://example.org/legalruleml/ontology#defeasible1"/>
        </lrml:hasStrength>

This rule has metadata about the rule _strength_: whether or not it can be overriden[^1]. This rule can be, hence its strength is Defeasible. To make this not just meaningless characters on the contract writer's computer, the property `DefeasibleStrength` refers to a shared resource by an [IRI](https://en.wikipedia.org/wiki/Internationalized_Resource_Identifier).

### Rule content

#### Premise

        <ruleml:if>
          <ruleml:Atom key=":atom2">
            <ruleml:Rel iri=":specialOrder"/>
            <ruleml:Ind>X</ruleml:Ind>
          </ruleml:Atom>
        </ruleml:if>

It starts with a _premise_, constructed as an if-clause[^2].
The syntax of LegalRuleML is clear enough: `<if>statement</if>`.

Inside the atom there are two things:
- Relation: `<ruleml:Rel iri=":specialOrder"/>`
- Individual: `<ruleml:Ind>X</ruleml:Ind>`.

`Rel` describes/refers to whatever the relation is, and `Ind` binds some individual X that we can refer to in the _conclusion_ (then-clause). Two or more Atoms can be combined with `And`, `Or`.

#### Conclusion

        <ruleml:then>
          <lrml:Obligation>
            <ruleml:Atom key=":atom3">
              <ruleml:Rel iri=":surcharge"/>
              <ruleml:Ind>X</ruleml:Ind>
            </ruleml:Atom>
          </lrml:Obligation>
        </ruleml:then>

The conclusion completes the rule with an `Obligation`:
* If an `<Ind>X</Ind>` is marked as special order,  (_premise_)
* then that `<Ind>X</Ind>` is subject to surcharge. (_conclusion_)

In addition to `Obligation`, there are other types of deontic operators, such as permissions, prohibitions, rights.

## Comparison to other languages

Quoting Jason's summary:

> So it’s not for documenting laws, and it’s not for writing code, it’s for documenting logical models of laws that may be implemented in code elsewhere.

Contrast with
- <akoma_ntoso>, which is for documenting laws
- ??? which is for writing code
- TODO: other langs/tools and how it differs (eventually move to another page)



[^1]: By e.g. rule 2, which says "Premium customers are exempt from special order surcharge."
[^2]: Just like original does implicitly: "goods marked as _special order_" is syntactic sugar for "if good is marked as _special order_".
