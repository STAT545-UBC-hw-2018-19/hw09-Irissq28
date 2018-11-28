# STAT547 Homework 09 repo

**NOTE**
Here is the link to the [original version](https://github.com/STAT545-UBC/make-activity) that my homework was seeded with.

## Overview

The task of this homework is to modify the make pipeline. For more information, please check the [assignment details](http://stat545.com/Classroom/assignments/hw09/hw09.html).

I	added the **letter_freq** sets in Makefile. The purpose of this set is to display and illustrate the frequecy of each letter in word.txt file.

Here are the links to the main folders. Original files are bolded. :smile:

[R script](https://github.com/STAT545-UBC-students/hw09-Irissq28/tree/master/R)

* letter_freq.R
* **histogram.r**

[output](https://github.com/STAT545-UBC-students/hw09-Irissq28/tree/master/output)

* letter_freq.html
* letter_freq.md
* **report.html** 
* **report.md**


[data](https://github.com/STAT545-UBC-students/hw09-Irissq28/tree/master/data)

* letter_freq.tsv
* **histogram.tsv**
* **words.txt**

[images](https://github.com/STAT545-UBC-students/hw09-Irissq28/tree/master/images)

* letter_freq.png
* **histogram.png**


make-activity
=============

The commit history of this repository reflects what a student might do as she works through [this activity](http://stat545-ubc.github.io/automation04_make-activity.html) from [STAT 545](http://stat545-ubc.github.io). This fully developed example shows:

  * How to run an R script non-interactively
  * How to use `make`
    - to record which files are inputs vs. intermediates vs. outputs
    - to capture how scripts and commands convert inputs to outputs
    - to re-run parts of an analysis that are out-of-date
  * The intersection of R and `make`, i.e. how to
    - run snippets of R code
    - run an entire R script
    - render an R Markdown document (or R script)
  * The interface between RStudio and `make`
  * How to use `make` from the shell
  * How Git facilitates the process of building a pipeline
