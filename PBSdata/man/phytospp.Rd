\name{phytospp}
\alias{phytospp}
\docType{data}
\title{
  Code: Species Codes for Phytoplankton
}
\description{
  Data frame of phytoplankton species described primarily by six-letter codes.
  Heterotrophic micro- and nanoplankton species also appear in the code table.
}
\usage{data(phytospp)}
\format{
  A data frame with 477 observations on the following 16 variables.
  \tabular{lrl}{
   \code{code}       \tab character \tab Six-letter code where typically the first three letters refer to the genus \cr
                     \tab           \tab and the last three letters refer to the species. If the species is not known, \cr 
                     \tab           \tab then the six letters refer to the genus. \cr
   \code{species}    \tab character \tab Species name in latin (no common names exist). Note that codes may refer to \cr
                     \tab           \tab previously recognised taxonomic names; however, the field \code{species} will \cr
                     \tab           \tab report the currently acceptable name. \cr
   \code{class}      \tab character \tab Taxonomic class of the species. \cr
   \code{type}       \tab character \tab Simplified description of class (usually without the suffix \sQuote{phyceae}). \cr
   \code{toxin}      \tab character \tab Acronym describing a potential suite of toxins (e.g., PSP). \cr
   \code{group}      \tab character \tab General category of microplankton for summary purposes. \cr
   \code{gras}       \tab logical   \tab If \code{TRUE}, species is \sQuote{Generally Recognised As Safe}; potentially fallible at present. \cr
   \code{authority}  \tab character \tab Taxonomic source description for currently accepted name. \cr
   \code{holotype}   \tab logical   \tab If \code{TRUE}, species is the holotype for the genus. \cr
   \code{basionym}   \tab character \tab A previously published legitimate name-bringing or epithet-bringing synonym \cr
                     \tab           \tab from which a new name is formed for a taxon of different rank or position. \cr
   \code{homotype}   \tab character \tab Homotypic synonyms -- names that have same (holo)type and same taxonomic rank. \cr
   \code{heterotype} \tab character \tab Heterotypic synonyms -- names that have different (holo)types. \cr
   \code{water}      \tab character \tab Habitat code (B=brakish, F=fresh, M=marine) \cr
   \code{sog}        \tab logical   \tab If \code{TRUE}, the species is found in the Strait of Georgia. \cr
   \code{nacp}       \tab logical   \tab If \code{TRUE}, the species is found in the North American Carbon Program. \cr
   \code{bc}         \tab logical   \tab If \code{TRUE}, the species is found in British Columbia.
  }
}
\details{
  Codes are those created originally by Haigh (1988) and only 
  represent a small fraction of the numerous microplankton species.

  Information on taxonomy comes from the online databases:\cr
  phytoplankton: \href{http://www.algaebase.org}{AlgaeBase}
}
\source{
  Rowan Haigh, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
\references{
  Haigh, R. (1988) 
  The effect of stratification on microplankton communities in the northern Strait of Georgia. 
  M.Sc. Thesis, Department of Oceanography, University of British Columbia, February 1988. xiii + 287 p.

  Guiry, M.D. and Guiry, G.M. (2013) 
  AlgaeBase. World-wide electronic publication, National University of Ireland, Galway. 
  \url{http://www.algaebase.org}; searched on 25 April 2013. 
}
\keyword{datasets}

