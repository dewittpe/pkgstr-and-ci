# Package Structure and Continuous Integration
Presentation and Examples for building R packages, structure and testing,
continuous integration, and workflows.

## Preface
I have given some version of this talk to several different groups with the
focus being "best practices."  As a sales pitch, that has been a monumental
failure.

From my point of view, those who have not adopted these tools and
workflow (or a similar set of tools and workflow) have not encountered a
situation where the tools presented would prevent or fix errors,
irreproducibility, or interpersonal difficulties related to collaboration.

As such, this presentation will shift the focus from "do this because best
practices," a holistic and noble, but minimally motivating point, to a "cover
your ass" approach.  Don't have your job/career messed up by someone else's naivete,
incompetence, or a corporate organization chart (excrement flows down hill...
Where are you on the organization chart?)

## Topic 1 -- Do Not Rely on Scripts
A contrived example, but will show that one should not rely on a .R file to
generate reproducible results.  Some of the issues are minor, some are major.

The concern you should have as the analyst: when your supervisor, or Joe Public
runs your script and fails to generate the same results you reported in a
memo, internal report, white paper, or other publication who will be held
initially responsible?  You will.  How sufficient is the defence of "you didn't
evaluate the script correctly" when `source('important-script.R')` was the
evaluation method.

## Topic 1.1 -- Migrating from script to package
With a few simple calls and file edits, we can move the script
`important-script.R`  to a package that will build as expected for all users.

## Topic 2 -- Consistent Documentation
  
## Topic 3 -- Automated Testing

## Topic 4 -- Automated Build

