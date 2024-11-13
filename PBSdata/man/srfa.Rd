\name{srfa}
\docType{data}
\alias{srfa}
\title{Topo: Slope Rockfish Assessment Areas}
\description{
  PolySet of polygons for areal boundaries used in slope rockfish assessments.
}
\usage{data(srfa)}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...} primary polygon ID\cr
    \code{POS...} position of each vertex within a given polygon\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\details{
  The 334 vertices trace 7 contours which describe 7 slope rockfish assessment areas.

  A PolyData set attached as an attribute called \code{PolyData} gives the names 
  assigned to the 7 SRF areas. \code{PolyData} has 4 columns: 
  \tabular{lcl}{
    \code{PID}   \tab = \tab primary polygon ID, \cr
    \code{label} \tab = \tab slope rockfish assessment area label, \cr
    \code{MNL}   \tab = \tab combination of PMFC areas - major (M), minor (N), and \cr
                 \tab   \tab locality (L) - that make up the SRF areas, and \cr
    \code{col}   \tab = \tab colour code for the area.
  }
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting the boundaries in slope rockfish assessments.

  Slope rockfish assessment boundaries were originally set up by Bruce Leaman 
  and/or Laura Richards to delimit the two main fishing grounds (Goose Island 
  and Moresby Gullies) for the slope complex of species. Consequently, the 
  boundaries do not follow those of the PMFC areas even though the names are 
  similar (3C, 3D, 5AB, 5CD, 5EN, 5ES). Schnute \emph{et al}. (2001) attempt 
  to clarify the various groundfish boundaries.
}
\references{
  Schnute, J.T., Haigh, R., Krishka, B.A. and Starr, P. (2001)
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2001/2001_138-eng.htm}{%
  Pacific ocean perch assessment for the west coast of Canada in 2001}.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2001/138}, 90 p.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nepacLL,srfa,envir=.PBSdataEnv)
    plotMap(nepacLL,xlim=c(-134.2,-124),y=c(47.5,55),border="grey")
    addPolys(srfa,border="cornflowerblue",lwd=2)
    addLabels(attributes(srfa)$PolyData,col="indianred",cex=0.9)
    box(); invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
  \code{\link[PBSdata]{major}}, \code{\link[PBSdata]{minor}}, \code{\link[PBSdata]{locality}}, 
  \code{\link[PBSdata]{srfs}}, \code{\link[PBSdata]{popa}}
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2008-09-16}
}
\keyword{datasets}
\concept{topo}

