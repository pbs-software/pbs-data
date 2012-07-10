\name{eez.bc}
\alias{eez.bc}
\docType{data}
\title{
  Topo: Exclusive Economic Zone for BC Coast
}
\description{
  This polyline shows the 200-mile Exclusive Economic Zone (EEZ) for the BC coast.
  The PolySet subsets a larger Canadian one called \code{Canada_Political} that 
  resides ion the package \pkg{PBSdata}.
}
\usage{data(eez.bc)}
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
  This PolySet is a polyline so use \code{plotLines} or \code{addLines}.
}
\source{
  Lisa Lacko, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
%\seealso{
%  \code{\link[PBSdata]{Canada_Political}}, \code{\link[PBSmapping]{plotLines}}, \code{\link[PBSmapping]{addLines}}
%}
\keyword{datasets}

