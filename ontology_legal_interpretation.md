---
date: 2020-08-07
tags:
  - ontology
---

# Legal ontology vs. legal interpretation


[Fernández-Barrera and Sartor (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_2)
 argue that _legal concepts_ depend on the _legal norms_ in which they appear. Because of that, establishing legal concepts in an <ontology> is actually a central part of _legal interpretation_.

> __[T]he characterization of legal concepts__ […] concerns __establishing what norms hold in a legal system__ and thus what norms have to be applied by judges and imposed upon the party. It is not an activity dealing with mere descriptive linguistics: __it is rather a central aspect of legal interpretation.__

It follows that <legal_ontology> is constantly evolving, and it needs to be prepared for legal change. Introducing new legal norms, as well as changing and deprecating old ones, makes static conceptual hierarchies also deprecated.

Fernández-Barrera and Sartor suggest that legal interpretation and ontology engineering should evolve together. Furthermore, legal ontologies should reflect up-to-date rulings of court cases.

> This requires that lawyers (and ontological engineers working with legal knowledge) have the ability to continuously adjust their onto-terminological constructions as the law evolves (taking into account the need to implement legal values), and at the same time to make conceptual analyses bear on the interpretation of legal norms and on the soluion of legal cases.

## Multi-layered legal ontologies

According to [Boella and Rossi (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_8), it is difficult to create ontologies that work for legal rules
independent of time and place. Law is a combination of _legal texts_ and their _interpretation and
implementation_ in different jurisdictions.
Legal concepts may be organized in different ways in different jurisdictions,
and natural language terms that correspond to the concepts may be used in different ways in different languages.

<!--
> law is always fragmented in several conceptual frameworks
> with different features and objectives. And these conceptual frameworks may change
> according to time and events in the practice of law.

> It is precisely because law is inherently multilevel, that we need to maintain several levels in the
> ontological structure in order to explain the different aspects of law.

> Thus, the ontology that can be constructed adopting the proposed model can be a partial
> one and a specialised one. Our experience with the ICT4LAW project is that rather than
> employing a unified knowledge model starting from one single perspective, it is better to
> work on the several single layers without assuming their reducibility to another layer or
> not. -->

For example, the EU laws are written on the EU level, but _implemented_ by the national legislators in the EU countries. Any ontology that represents EU laws needs at least two levels of representation: the European and the national level. There is potential for misalignments:
* Term and concept don't match, due to one or both of
  - EU _term_ is already used in national law for a different _concept_.
  - EU _concept_ is already used in national law with a different _term_.
* EU and national levels use the same term for the same concept, but different _legal interpretation_.
  - [Fernández-Barrera and Sartor (2010)](https://link.springer.com/chapter/10.1007/978-94-007-0120-5_2) give the following example: _“personal data” according to the EU definition only covers data concerning a physical person (a human) while the Italian definition also includes data concerning “legal persons, bodies or associations”._

To model the complexity, Boella and Rossi suggest a multi-layer ontology, with 4 different levels. They don't have a concrete example nor a picture, so this is pretty abstract, and I may have misunderstood something. (For terms like lightweight and core ontology, see <ontology_interoperability>.)

### Level 1: Lightweight domain ontologies

Lightweight means little formalisation; not much more than a list of terms. These terms are obtained from actual documents. There can be multiple Level 1 ontologies of the same domain; for different languages, or for different time.

<!-- * “L1 allows multiple representations of the same domains, according to several extensional ontologies obtained by the legal literature.” -->
<!-- * "foundational ontologies to the particularities of the legal domain." -->
<!-- * "legal statements about company organisation provided by L1" -->
<!-- * "L1 of the procedural model […] permits to elaborate extensional ontologies related to the described domain." -->

### Level 2: "Service ontologies"

Would be nice to have an actual concrete example in that paper. Just quoting here: _“The second layer (L2) is constituted by service ontologies, enabling the definition of roles and behaviours for agents in charge of executing tasks related to the specific domains considered by L1.”_

<!-- > * "internal company organisation as shown in L2" -->
<!-- > * "definition of the roles and behaviours for agents in charge of executing tasks related to the scope of MIFID (L2)" -->


### Level 3: Link between L1 and L2

The ontologies L1 and L2 are built independent of each other. Matching and comparison of L1 and L2 is the job of L3.

<!-- > * “The third layer (L3) is devoted to link L1–L2, allowing to convert service concepts into/from domain concept ones, through a refinement in terms of ontological relations.” -->
<!-- > * "This comparison may allow to discover the misalignments between internal company organisation as shown in L2 and the legal statements about company organisation provided by L1." -->


### Level 4: Core ontology

In this model, I didn't quite grasp what it's used for, but here's a quote.

> Conversely, the definition of the roles and behaviours for agents in charge of executing tasks related to the scope of MIFID (L2), without considering the need of matching this ontology with the ontology of L1, gives the possibility to work in L3 with a contrastive comparison. This comparison may allow to discover the misalignments between internal company organisation as shown in L2 and the legal statements about company organisation provided by L1. In this way, the ontology of legal potentialities may emerge in the particular company choices, the black letter rule of the law and the legal interpretation about it.
> The verification of these potentialities can be done by the orthogonal concepts of L4 that may offer solutions adopted in similar cases by the means of broader conceptual frameworks.



<!--In the model we propose, lightweight ontologies are normally built, reviewed, and
maintained by several types of knowledge experts, according to the expertise of different
legal systems or domain experts. This constitutes the first layer (L1) that represents
information about legal content as interpreted at a certain time by a certain community of
experts. In our current project Legal Taxonomy Syllabus (Rossi and Vogel 2004; Ajani et
al. 2007, 2010) we have lightweight ontologies of European different legal vocabulary and
concepts (EU and five national jurisdictions) related to specific domains, such as
consumer law. L1 allows multiple representations of the same domains, according to
several extensional ontologies obtained by the legal literature.
The second layer (L2) is constituted by service ontologies, enabling the definition of roles
and behaviours for agents in charge of executing tasks related to the specific domains
considered by L1.
The third layer (L3) is devoted to link L1–L2, allowing to convert service concepts into/from
domain concept ones, through a refinement in terms of ontological relations. The fourth
layer (L4) is constituted by the state of art in core concepts ontology, but it is constantly
enriched by the results of intensional semantics derived from the outcomes of the
procedural model (L1–L3) applied to numerous legal systems and domains. The L4 is
based on a set of orthogonal concepts that provide a basis for defining the legal process
in a more complex way, independently from single applications.
-->
