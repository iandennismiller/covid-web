---
layout:     post
category:   blog
title:      Data Sources
date:       2020-03-21
tags:       data
image:      /media/thumb-big.jpg
excerpt:    This blurb ends up in twitter and facebook cards.
published:  false
---

## Background

This work was inspired by other projects, including [LitCovid](https://www.ncbi.nlm.nih.gov/research/coronavirus/).

## Method

### Obtaining data

This work begins with a list of DOIs that were obtained from The Eye's [CoronaVirusPapers](https://the-eye.eu/CoronaVirusPapers/):

```
wget https://the-eye.eu/CoronaVirusPapers/ -O data/doi.html
xmllint \
    --html \
    --xpath '//html/body/p/a/following-sibling::a/text()' \
    data/doi.html > data/doi.txt
```
