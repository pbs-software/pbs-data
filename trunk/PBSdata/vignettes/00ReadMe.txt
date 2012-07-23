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
--------------------------------------------------------------------------------

2. We include the Journal of Statistical Software control files 'jss.bst' and 
   'jss.cls' in the package 'vignettes' folder to enforce the proper rendering
   of citations and bibliography (though these are probably redundant).

   A straight-forward build from the command line:

   R CMD INSTALL --build --compact-docs %1

   seems to find these files in the R installation, presumably at:
   C:\Apps\R\R2151\share\texmf\bibtex\bst  and
   C:\Apps\R\R2151\share\texmf\tex\latex
   
   However, our build routine calls an R script file from the command line:

   Rscript.exe build.r

   that downloads the latest source code from Google Code using SVN and creates
   the source package first. In past, Tortoise SVN had .svn directories at 
   practically every node and so we had to package the source while excluding 
   SVN nonsense. The newly packed source is then unpacked to a temporary 
   directory from which we then create the binary package. All this book-keeping
   is controlled by an R script called 'build.r', and calls to R CMD are passed
   from R to the operating system using the R function 'system' (or 'shell').
   This method does not implement the bibliography build unless we instruct the
   initial source build command to NOT rebuild package vignettes:

   system("R CMD build --no-vignettes --compact-vignettes PBSdata", wait=TRUE)

   The binary build for Windows then appears to behave:

   system("R CMD INSTALL --build --compact-docs PBSdata", wait=TRUE)

   If we allow the source build to rebuild vignettes, the bibliography 
   reconstruction becomes a hit or miss proposition (mostly miss).
--------------------------------------------------------------------------------

