\name{srfs}
\docType{data}
\alias{srfs}
\title{Topo: Slope Rockfish Assessment Subareas}
\description{
  PolySet of polygons for Queen Charlotte Sound (QCS) gullies used in slope 
  rockfish assessments.
}
\usage{data(srfs)}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 285 vertices trace 3 contours which describe the 3 QCS gulllies.

  A PolyData set attached as an attribute called \code{PolyData} gives the names 
  assigned to the 3 gullies. \code{PolyData} has 3 columns:
  \tabular{lcl}{
    \code{PID}    \tab = \tab primary polygon ID, \cr
    \code{srfsub} \tab = \tab two-letter code for the gully, and \cr
    \code{label}  \tab = \tab name of the QCS gully.
  }
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting Queen Charlotte Sound gully boundaries in slope 
  rockfish assessments.

  Slope rockfish assessment boundaries \code{\link{srfa}} were originally 
  set up to delimit two main fishing grounds (Goose Island and Moresby Gullies) 
  for the slope complex of species. Consequently, the boundaries do not 
  follow those of the PMFC areas even though the names are similar (3C, 
  3D, 5AB, 5CD, 5EN, 5ES). Schnute \emph{et al}. (2001) attempt to clarify the 
  various groundfish boundaries.

  Gully boundaries \code{srfs} further subdivide the QCS region for assessment 
  purposes, primarily the Pacific ocean perch catch-age model.
}
\references{
  Schnute, J.T., Haigh, R., Krishka, B.A. and Starr, P. (2001) Pacific 
  ocean perch assessment for the west coast of Canada in 2001. \emph{Canadian
  Science Advisory Secretariat, Research Document} \bold{2001/138}, 90 pp.\cr
  \url{http://www.dfo-mpo.gc.ca/csas/Csas/publications/ResDocs-DocRech/2001/2001_138_e.htm}
}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){
  opar = par(no.readonly=TRUE); on.exit(par(opar))
  if (!require(PBSmapping, quietly=TRUE)) stop("`PBSmapping` package is required")
  data(srfs,nepacLL,envir=.PBSdataEnv)
  plotMap(nepacLL,xlim=c(-134.2,-125),y=c(50,55),border="grey")
  addPolys(srfs,border="coral",lwd=2)
  addLabels(attributes(srfs)$PolyData,col="navy",cex=0.8)
  box(); invisible() }
pbsfun()
})
}
}
\seealso{
  \code{\link{srfa}}, \code{\link{popa}}, \code{\link{major}}, 
  \code{\link{minor}}, \code{\link{locality}}
}
\keyword{datasets}
