\name{bledge}
\docType{data}
\alias{bledge}
\title{Topo: Beginner's Ledge for Longspine Thornyhead (WCVI)}
\description{
  PolySet of one polygon describing an area off the west coast of
  Vancouver Island dubbed ``Beginner's Ledge'' by Brian Mose.
}
\usage{data(bledge)}
\format{
  Data frame comprising 4 columns:
  \tabular{ll}{
    \code{PID} \tab {primary polygon ID} \cr
    \code{POS} \tab {position of each vertex within a given polygon} \cr
    \code{X}   \tab {longitude coordinates (\eqn{^\circ}{deg}W)} \cr
    \code{Y}   \tab {latitude coordinates (\eqn{^\circ}{deg}N)}
  }
}
\details{
  The 5 vertices trace 1 contour which forms Beginner's Ledge.
}
\source{
  Brian Mose (1959-2024), Canadian Groundfish Research and Conservation Society, New Westminster BC

  In 1996, the groundfish trawl fleet started targeting WCVI Longspine 
  Thornyhead in an area known as Beginner's Ledge, and subsequently moved 
  away from this location, possibly due to local depletion. Brian Mose 
  supplied a set of coordinates that approximates this region.
}
\section{Dates}{
  Last modified \code{Rd: 2025-06-03}\cr
  Last modified \code{data: 2023-06-13}
}
\references{
  Haigh, R. and Schnute, J.T. (2003) 
  \href{https://www.tandfonline.com/doi/abs/10.1577/1548-8675\%282003\%29023\%3C0120\%3ATLTFAT\%3E2.0.CO\%3B2}{%
The longspine thornyhead fishery along the west coast of Vancouver Island, British Columbia, Canada: portrait of a developing fishery}.
  \emph{North American Journal of Fisheries Management} \bold{23}, 120--140.

  Schnute, J., Haigh R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2004/2004_059-eng.htm}{%
The British Columbia longspine thornyhead fishery: analysis of survey and commercial data (1996-2003)}.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2004/059}, 75 p. \cr
  
}
\examples{
\dontrun{
require(PBSmapping); require(PBSdata)
data(bledge,nepacLL,isobath);
plotMap(nepacLL, xlim=c(-128,-124.5), ylim=c(48,50), col="orange");
addPolys(bledge, col="chartreuse", border="darkgreen", lwd=2);
z <- is.element(isobath$PID,c(100,500,1000));
addLines(isobath[z,], polyProps=attributes(isobath)$PolyData);
}
}
\keyword{datasets}
\concept{topo}

