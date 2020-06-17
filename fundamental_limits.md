---
date: "2020-06-17"
tags:
  - Legal Issues
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

### Mitigations
* Susskind suggested limiting the users of Expert Systems to lawyers, so that
  they ought to know themselves if the answers are strange, or relevant
  information has been left out.
* More realistically, you can limit automation to legal questions about which
  it is unlikely that additional factors will be relevant. This makes strictly-
  interpreted areas of law more attractive.
* Waivers where the user accepts the risks associated with the possibility that
  the tool fails to consider a relevant factor, and that disavow legal advice.