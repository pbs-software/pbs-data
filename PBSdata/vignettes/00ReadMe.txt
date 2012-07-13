Vignette Notes
==============

1. We've taken the 'makefile' concept from RODBC, presumably to help build 
   vignettes in UNIX-based operating systems. The makefile contents are:

   ## twice seems enough for now -- could also use texi2dvi, not portably
   ../inst/doc/PBSdata-UG.pdf: PBSdata-UG.Rnw
   pdflatex PBSdata-UG.Rnw
   pdflatex PBSdata-UG.Rnw
   mv PBSdata-UG.pdf ../inst/doc
   @rm -f PBSdata-UG.aux PBSdata-UG.log PBSdata-UG.out

   According to Jim Uhl (Oracle DBA and VMS system manager, Vancouver Island 
   University, Nanaimo, BC) the cryptic first line:

   ../inst/doc/PBSdata-UG.pdf: PBSdata-UG.Rnw
   can be interpreted as:

   ../inst/doc/PBSdata-UG.pdf depends on PBSdata-UG.Rnw - if the latter
   changes, do the following actions to rebuild
   ../inst/doc/PBSdata-UG.pdf

   When 'make' runs it will check the timestamps of the two files to
   decide whether or not to run the actions.
  
2. We include the Journal of Statistical Software control files 
   (jss.bst, jss.cls) in the package 'vignettes' folder to enforce the proper 
   implementation of citations and the bibliography.
   
   A straight-forward build from the command line:
   
   R CMD INSTALL --build --compact-docs %1
   
   seems to find these files in the R installation, presumably at:
   C:\Apps\R\R2151\share\texmf\bibtex\bst  and
   C:\Apps\R\R2151\share\texmf\tex\latex
   but our build routines use a an R script file:
   
   Rscript.exe build.r
   
   that calls the install command (above) using the R function 'system'.
   For some reason, this method does not implement the bibliography
   build unless we place the jss files into the vignettes folder.
   (Even placing jss files into a directory on the path does not seem to work.)


