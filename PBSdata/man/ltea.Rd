\name{ltea}
\docType{data}
\alias{ltea}
\title{Topo: Longspine Thornyhead Exploratory Management Areas}
\description{
  PolySet of polygons describing management areas for Longspine
  Thornyhead \emph{Sebastolobus altivelis} during the 2000 and 2001 
  fishing years (April 1 to March 31).
}
\usage{data(ltea)}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting the two Longspine Thornyhead management regions during
  fishing years 2000 and 2001 (Schnute \emph{et al.} 2004). Fishing years start
  April 1 and end March 31. The division between the traditional west
  coast of Vancouver Island fishery and the northern exploratory area is
  defined by a line 230\eqn{^\circ}{deg} True from Lookout Island (\code{\link{pl230}}).
}
\references{
  Schnute, J., Haigh, R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  The British Columbia Longspine Thornyhead fishery: analysis of survey and 
  commercial data (1996--2003). \emph{Canadian Science Advisory Secretariat, 
  Research Document} \bold{2004/059}, 75 pp.\cr
  \url{http://www.dfo-mpo.gc.ca/csas/CSAS/publications/ResDocs-DocRech/2004/2004_059_E.htm}
}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){
  if (!require(PBSmapping, quietly=TRUE)) stop("`PBSmapping` package is required")
  data(ltea,nepacLL)
  plotMap(ltea,xlim=range(ltea$X),ylim=range(ltea$Y),col=c("chartreuse","pink"))
  addPolys(nepacLL,col="gold")
  text(c(-127.23,-130.64), c(48.97,51.27),c("Established","Exploratory"),cex=.8)
  invisible() }
pbsfun()
})
}
}
\seealso{
  \code{\link{pl230}}, \code{\link{ltxa}}, \code{\link{ltsa}}
}
\keyword{datasets}
