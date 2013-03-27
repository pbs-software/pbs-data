## twice seems enough for now -- could also use texi2dvi, not portably
../inst/doc/PBSdata-UG.pdf: PBSdata-UG.Rnw
	pdflatex PBSdata-UG.Rnw
	pdflatex PBSdata-UG.Rnw
	mv PBSdata-UG.pdf ../inst/doc
	@rm -f PBSdata-UG.aux PBSdata-UG.log PBSdata-UG.out
