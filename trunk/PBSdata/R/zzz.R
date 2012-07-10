.onLoad <- function(lib, pkg)
{
	pkg_info <- utils::sessionInfo( package="PBSdata" )$otherPkgs$PBSdata
	if( is.character( pkg_info$Packaged ) )
		pkg_date <- strsplit( pkg_info$Packaged, " " )[[1]][1]
	else
		pkg_date  <- "unkown"
	
	userguide_path <- system.file( "doc/PBSdata-UG.pdf", package = "PBSdata")
	
	packageStartupMessage("
-----------------------------------------------------------
PBS Data ", pkg_info$Version, " -- Copyright (C) 2004-2012 Fisheries and Oceans Canada
(Data objects for PBS packages)

A complete user guide 'PBSdata-UG.pdf' is located at 
", userguide_path, "

Packaged on ", pkg_date, "
Pacific Biological Station, Nanaimo
-----------------------------------------------------------

")
}

