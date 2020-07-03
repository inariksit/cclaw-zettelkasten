---
date: "2020-06-17"
tags:
  - legal_issues
---

# Fundamental Limits on Automation of Legal Reasoning

Regardless of the technology employed, there are some as-of-yet
unavoidable limitations on legal services that can be effectively automated in
rule-based systems. The same limits may not apply to machine learning tools.

## Unforeseen Considerations
All methods of automating legal servicers involve setting out what factors the
computer needs to consider. This list can be underspecified. Given a rule "no
vehicles in the park", the legal knowledge engineer may say that the inputs are
"is it a vehicle" and "is it in the park?" In real life, if the person was
describing an ambulance, the human expert might realize that there was a
purposive or statutory exception to the rule, and whether the vehicle is an
emergency vehicle should be considered, and changes the result.

Rule-based systems do not have any knowledge by which they might discover that
an answer is "strange" and look for uncertainty. Indeed, there will usually not
even be a way for the user to specify the type of vehicle, because the inputs
will be rerstricted, so the automated system can't even learn the things that it
would need to know in order to recognize that it was badly designed.

(For a longer discussion, see [No Vehicles in the Park](https://digitalcommons.law.seattleu.edu/cgi/viewcontent.cgi?article=1623&context=sulr).)

### Mitigations
* Susskind suggested limiting the users of <legal_expert_systems> to lawyers, so that
  they ought to know themselves if the answers are strange, or relevant
  information has been left out.
* More realistically, you can limit automation to legal questions about which
  it is unlikely that additional factors will be relevant. This makes strictly-
  interpreted areas of law more attractive.
* Waivers where the user accepts the risks associated with the possibility that
  the tool fails to consider a relevant factor, and that disavow legal advice.
* In the <smart_contract> context, the parties can agree to be bound by the
  result from the encoding even if other relevant factors exist. There may be
  limits, such as unconscionability, to how far this can work.

## Unknown Terms
The common law is, in one conception of it, a law that exists prior to its being
defined. That is to say, when a new principle of common law is used in court,
it is said that this principle has not been created so much as discovered.

Similarly, contracts are not all written. Some contracts arise by verbal
agreement, others by mere behaviour.

In such situations, it's possible that the relevant legal rules aren't known
sufficiently well to automate them.

### Mitigations
* Don't just make it up. Have an authority, or don't automate.

## Unavailability of Input Factors
In order to be able to automate a legal service, that legal service would need
to rely on information that is available to it, or can be provided by the user
at the time of use.

Consider a tool designed to tell a person whether or not they are receiving
adequate spousal support. That, in most jurisdictions, will depend on the
income of the other spouse, which will often not be known by the user.

### Mitigations
* Focus on scenarios in which the user or users are likely to have access to
  all relevant information at the time of use.
