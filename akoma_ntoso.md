---
date: "2020-06-17"
tags:
  - language/markup
  - todo
---

# Akoma Ntoso

A markup language for legal documents. Example ([source](https://docs.oasis-open.org/legaldocml/akn-core/v1.0/os/part1-vocabulary/akn-core-v1.0-os-part1-vocabulary.html)):


```xml
<point eId="sec_2__list_1__point_2">
  <num>(2) </num>
  <content eId="sec_2__list_1__point_2__content">
    <p>
      <def refersTo="#americaCupRaceManagement"
           class="definition">America's cup race management.
      </def>
      The term ``America<eol breakAt="4" breakWith="-"/>'s Cup Race Management''
      means the entity established to provide for independent, professional, and
      neutral race management of the America's Cup sailing competitions.
    </p>
  </content>
</point>
```

This can be rendered as normal text. Attributes like `@number` (not shown in this example) allow specifying a page number or line number for the elements.

> (2) AMERICA'S CUP RACE MANAGEMENT---The term "America's Cup
Race Management" means the entity established to provide for
independent, professional, and neutral race management of the
America's Cup sailing competitions.

TODO: relation to legal ontologies

- [Akoma Ntoso web page](http://www.akomantoso.org/)
- [OASIS LegalDocumentML TC](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=legaldocml)
