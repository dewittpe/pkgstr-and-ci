---
title: "Your R Scripts Suck"
subtitle: "Using R Packages and Continous Integration to Build Reproducible Reports"
author:
  "Peter E. DeWitt, Ph.D.<br><pdewitt@neptuneinc.org>"
date: January 2018
output:
  ioslides_presentation:
    keep_md: true
    template: template.html
    css: style.css
    widescreen: true
    self_contained: false
---

# Preface
Not going to be a safe space...

## Adopt these tools because ...

<p>
  <img src="me.jpeg" width=120 height=120 style="float:left">
  Me: The following tools will facilitate high quality reproducible reports... 
</p>

<p>
&nbsp;
</p>
<p>
&nbsp;
</p>

<p>
  <img src="eyeroll.gif" width=120 height=120 align="top" style="float:left">
  Audience: ... I do just fine.  I make reproducible reports.  This [expletive]
  just wants to complicate things...
</p>

## Okay, fine. how about this?

* "Do this, it is good for you."  ... that is as effective as telling my toddler
  to each vegetables.

* Instead, I'm going to revisit some of the less pleasant experiences in my
  career and show how R packages, version control, and CI would have prevented
  these events from ever taking place.

&nbsp;
<p style="text-align:right"> *"Learn from the mistakes of others.* </p>
<p style="text-align:right"> *You can't live long enough to make them all yourself."* </p> 
<p style="text-align:right"> *-- Eleanor Roosevelt* </p>


# 01: Do not rely on scripts

## Consider the following

* You've done an data analysis project.  Wrote `imporant-script.R`.

* Your colleague will run the script.

* Your supervisor, the one that *thinks* they are a data analyst will run your
  script.

* You work is part of a federally funded project and is subject to Freedom Of
  Information Act (FOIA).  Joe Public is a supper sceptic and is looking for any
  reason to discredit the work.

* Excrement flows down hill.  Where are you on the company organization chart?

## Example

* I have copied several of the data sets from the
  [nycflights13](https://cran.r-project.org/package=nycflights13) package as
  .csv

* Generated an `imporant-script.R` file

* Let's look at the file and the output.

* The output file `imporant-script.Rout` was generated via:
  
```
R CMD BATCH --no-timing imporant-script.R
```


