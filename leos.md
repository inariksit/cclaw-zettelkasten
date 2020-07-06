---
date: "2020-07-06"
tags:
  - Rules_as_Code
  - todo
---

# LEOS

Todo: Tags?

[LEOS (Legislative Editing Open Software)](https://joinup.ec.europa.eu/solution/leos-open-source-software-editing-legislation) is the open source version
of a piece of software developed for use inside the European Union for drafting software, called "EdiT" (), which is intended to work as a replacement
for their current tool, called LegisWrite, which is a Microsoft Word add-on.

It is like a project management tool for legislative drafting in a complicated environment, allowing for features like translations, reviewers, etc.

It is not clear whether it is actually being used in production, yet. It is described as a pilot. It is written in Java and uses Maven.

It uses <akoma_ntoso> as its storage language for the legislative texts, but that is used as a storage format only. The XML is not exposed to the user,
and there does not seem to be an export feature.

It is potentially relevant to the Centre's work in that it is open source, and it is a platform for legislative drafting. It is the sort of thing
that Rules as Code capabilities could be added to for demonstration purposes.

It is focused on the project management aspects of legislative drafting, not the actual drafting process. The editing environment is not Microsoft
Word, but a custom web interface where you have to explicitly add parts, and can edit only one part at a time.