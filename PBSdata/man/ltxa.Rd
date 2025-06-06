\name{ltxa}
\docType{data}
\alias{ltxa}
\title{Topo: Longspine Thornyhead Experimental Management Areas}
\description{
  PolySet of polygons describing management areas for Longspine Thornyheads 
  \emph{Sebastolobus altivelis} in effect since the 2002 fishing year.
}
\usage{data(ltxa)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID....} primary polygon ID\cr
    \code{POS....} position of each vertex within a given polygon\cr
    \code{X......} longitude coordinates\cr
    \code{Y......} latitude coordinates\cr
    \code{name...} name of management region
}
\details{
  A PolyData set attached as an attribute called \code{PolyData} gives 
  the names of the five Longspine Thornyhead experimental areas as 
  labels, along with label position information and zone colour.
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting five Longspine Thornyhead management regions effective
  since the 2002 fishing year (Schnute \emph{et al.} 2004). The five regions
  from south to north are: \cr
  \code{WCVI........} (48\eqn{^\circ}{deg} 5\eqn{^\prime}{'} to 50\eqn{^\circ}{deg} 5\eqn{^\prime}{'})\cr
  \code{Triangle....} (50\eqn{^\circ}{deg} 5\eqn{^\prime}{'} to 51\eqn{^\circ}{deg})\cr
  \code{Tidemarks...} (51\eqn{^\circ}{deg} to 51\eqn{^\circ}{deg} 56\eqn{^\prime}{'})\cr
  \code{Flamingo....} (51\eqn{^\circ}{deg} 56\eqn{^\prime}{'} to 53\eqn{^\circ}{deg} 5\eqn{^\prime}{'})\cr
  \code{Rennell.....} (53\eqn{^\circ}{deg} 5\eqn{^\prime}{'} to 54\eqn{^\circ}{deg} 40\eqn{^\prime}{'})
}
\references{
  Schnute, J., Haigh R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
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
    data(nepacLL,ltxa,envir=.PBSdataEnv)
    xlim=c(-134.2,-125); ylim=c(48.5,54.40)
    pdata=attributes(ltxa)$PolyData
    plotMap(ltxa,xlim=xlim,ylim=ylim,polyProps=pdata)
    addPolys(nepacLL,col="gainsboro")
    addLabels(pdata,cex=.9)
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
  \code{\link[PBSdata]{ltea}}, \code{\link[PBSdata]{ltsa}}, \code{\link[PBSdata]{pl230}}
}
\keyword{datasets}
\concept{topo}

