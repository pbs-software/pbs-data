# Taking cue from Roger Bivand's maptools:
.PBSdataEnv <- new.env(FALSE, parent=globalenv())  # be sure to exportPattern("^\\.PBS") in NAMESPACE

.onAttach <- function(lib, pkg)
{
	pkg_info <- utils::sessionInfo( package="PBSdata" )$otherPkgs$PBSdata
	if( is.character( pkg_info$Packaged ) )
		pkg_date <- strsplit( pkg_info$Packaged, " " )[[1]][1]
	else
		pkg_date  <- date()
	
	userguide_path <- system.file( "doc/PBSdata-UG.pdf", package = "PBSdata")
	year <- substring(date(),nchar(date())-3,nchar(date()))

	packageStartupMessage("
-----------------------------------------------------------
PBS Data ", pkg_info$Version, " -- Copyright (C) 2004-",year," Fisheries and Oceans Canada
(Data objects for PBS packages)

Packaged on ", pkg_date, "
Pacific Biological Station, Nanaimo

'Torture the data, and it will confess to anything.' (Ronald Coase)
-----------------------------------------------------------

")
}
.onUnload <- function(libpath) {
	rm(.PBSdataEnv)
}

