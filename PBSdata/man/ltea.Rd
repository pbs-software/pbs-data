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
    \code{PID...} primary polygon ID\cr
    \code{POS...} position of each vertex within a given polygon\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting the two Longspine Thornyhead management regions during
  fishing years 2000 and 2001 (Schnute \emph{et al.} 2004). Fishing years start
  April 1 and end March 31. The division between the traditional west
  coast of Vancouver Island fishery and the northern exploratory area is
  defined by a line 230\eqn{^\circ}{deg} True from Lookout Island (\code{\link[PBSdata]{pl230}}).
}
\references{
  Schnute, J., Haigh, R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2004/2004_059-eng.htm}{%
  The British Columbia Longspine Thornyhead fishery: analysis of survey and commercial data (1996--2003)}.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2004/059}, 75 pp.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(ltea,nepacLL,envir=.PBSdataEnv)
    plotMap(ltea,xlim=range(ltea$X),ylim=range(ltea$Y),col=c("chartreuse","pink"))
    addPolys(nepacLL,col="gold")
    text(c(-127.23,-130.64), c(48.97,51.27),c("Established","Exploratory"),cex=.8)
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2014-07-04}
}
\seealso{
  \code{\link[PBSdata]{pl230}}, \code{\link[PBSdata]{ltxa}}, \code{\link[PBSdata]{ltsa}}
}
\keyword{datasets}
\concept{topo}
