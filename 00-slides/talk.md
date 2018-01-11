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

<div style="width: 100%; display: table;">
 <div style="display: table-row">
  <div id="leftcol" style="width: 50%; display: table-cell; vertical-align: top;">

* I have copied several of the data sets from the
  [nycflights13](https://cran.r-project.org/package=nycflights13) package as
  .csv

* There are five subdirectorys to represent five different users.
  
* `imporant-script.R`: a simple data load, explore, simple
  summary and a simple regression model.


* The `each-user.sh` bash script will evaluate `imporant-script.R` in each user
  directory.

* Let's review some files on the next slide.

</div> <!-- end id="leftcol" -->
<div id="rightcol" style="display: table-cell; vertical-align: top;">
<iframe src="tree.html"></iframe>
</div> <!-- end id="rightcol"-->
</div> <!-- end table-row -->
</div>

## Example: `important-script.R`

<iframe src="important-script.R.html"></iframe>

## Example: `each-user.sh`

<iframe src="each-user.sh.html"> </iframe>

## Example: Evaluate `important-script.R`

<img src="01-example-image-01.png">

* My version and user01 have the same output.

* No other user has the same output!

* Maybe the differences are minor?

* Let's look at the output and then the differences between the "expected" and
  the output for users 02, 03, 04, and 05.

## Expected Output
<iframe src="important-script.Rout.html"> </iframe>

## Diff between Primary and User01
<iframe src="vs-user01.html"> </iframe>

## Diff between Primary and User02 
<iframe src="vs-user02.html"> </iframe>

## Diff between Primary and User03 
<iframe src="vs-user03.html"> </iframe>

## Diff between Primary and User04 
<iframe src="vs-user04.html"> </iframe>

## Diff between Primary and User05 
<iframe src="vs-user05.html"> </iframe>

## Why?!?!

* First, Running the scripts with `--vanilla` gives the same result

<img src="everything-is-okay-vanilla.png">

## Why?!?!

* Why, then, are the outputs different for the five users when
  `important-script.R` is evaluated?

  * Each user has their own `.Rprofile` (see next slide) in the working directory (or home directory)

  * Read `help(".First")`

* Questions for you:

  * Do you know how to run `R --vanilla`? 
    * in Linux? OSX? Windows?  Command line?  GUI? RStudio Desktop? RStudio Server?
      NppToR? Emacs Speaks Statistics (ESS)? (neo)Vim? Nvim-R?

  * Do the people you work with and for know how to evaluate `R --vanilla`

  * What if you are user02, user03, user04, or user05 and your supervisor or Joe
    Public is user01?

## The .Rprofile files
<iframe src="rprofiles.html"> </iframe>


# 01.1: The simplest R Package

<p style="text-align:right"> *"We love the R build process.* </p>
<p style="text-align:right"> *It is robust, cross-platform, reliable, and rather predicatable.* </p>
<p style="text-align:right"> *It. Just. Works."* </p> 
<p style="text-align:right"> *-- Dirk Eddelbuettel* </p>


