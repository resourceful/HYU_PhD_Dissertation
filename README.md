#Hanyang University Dissertation Template
=======================================

Written by Seongjin Lee <insight@hanyang.ac.kr>

This package provides all the files needed to typeset the PhD disseratation at Hanyang University. Though it may need some tweaking, it can be also used to produce MS dissertation at Hanyang University,. The format and the style of this template is based on the requirements of Hanyang University; however, you have to check with up-to-date format and style recommended by the department.


## Getting Started
* Make sure you have following font: batang, gulim, nanum, Hoefler Text, Arita-buriL, and Inconsolata. The files are in fonts directory. Make symbolic link of the directory to /usr/share/fonts (if you are using Linux). After linking the font files, `fc-cache' to let the system know. 
* Fill in basic information about the dissertation in `/frontmatter/manuscript_info.tex'. 
* Provide pdf author information in `DisserationHYU.cls' -- hyperref package setting at 21st line 
* Build your dissertation using `script/build.dissertation'

## LaTeX Class and style file for the dissertation
* DissertationHYU.cls: Defines necessary packages for the dissertation
* style/HYUstyle.sty: Defines the order of presentation of the dissertation

## Directory Structure
* style: style file for the dissertation
* frontmatter: the documents that appear before the main body
* chapters: the main body of the dissertation. Put your manuscripts here.
* figures: figurese for the dissertation
* endmatter: the documents that apear after the main body
* script: a script file to build the dissertation
* fonts_dissertation: in case you don't have the fonts used in the dissertation template

## Build
 ./script/build.disseration

