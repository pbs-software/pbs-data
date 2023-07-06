\name{eez.bc}
\alias{eez.bc}
\docType{data}
\title{
  Topo: Exclusive Economic Zone for BC Coast
}
\description{
  This polyline shows the 200-mile Exclusive Economic Zone (EEZ) for the BC coast.
  The PolySet subsets a larger Canadian one called \code{Canada_Political} that 
  resides in the package \code{PBSvault} (source: Lisa Lacko, DFO).
}
\usage{data("eez.bc", package="PBSdata")}
\format{
  A data frame with 3986 observations on the following 6 variables. \cr
    \code{PID......}{primary polygon ID} \cr
    \code{POS......}{vertex position} \cr
    \code{X........}{longitude expressed as a negative real number that represents \eqn{^\circ}{deg}W} \cr
    \code{Y........}{latitude expressed a positive real number that represents \eqn{^\circ}{deg}N} \cr
    \code{oldPID...}{original PID in a Polyset imported from ArcView's \code{Canada_Political} shapefile} \cr
    \code{oldPOS...}{ditto for POS}
}
\details{
  This PolySet is a polyline, so use \code{PBSmapping} functions \code{plotLines} or \code{addLines}.
}
\source{
  Lisa Lacko, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
\seealso{
  \bold{PBSmapping:}\cr
  \code{plotLines},
  \code{addLines}\cr
  \bold{PBSvault:}\cr
  \code{Canada_Political}
}
\section{Dates}{
  Last modified \code{Rd: 2023-03-14}\cr
  Last modified \code{data: 2014-07-04}
}
\keyword{datasets}

