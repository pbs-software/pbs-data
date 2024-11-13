\name{isobath}
\docType{data}
\alias{isobath}
\title{Topo: Isobaths (100 to 1800 metres)}
\description{
  PolySet of polylines describing isobaths from 100 m to 1800 m at 100 m increments.
}
\usage{data(isobath)}
\format{
  Data frame comprising 5 columns:\cr
    \code{PID...} primary polyline ID\cr
    \code{SID...} secondary polyline ID\cr
    \code{POS...} position of each vertex within a given polyline\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\details{
  The 23,922 vertices trace 92 contours which describe 18 isobaths.

  A data frame attached as an attribute called \code{PolyData} gives 
  four columns on 18 isobaths: \cr
  \code{PID.....} primary polyline ID,\cr
  \code{SID.....} secondary polyline ID,\cr
  \code{label...} isobath in metres, and\cr
  \code{col.....} colour code for each isobath.
}
\source{
  Polyline data in use at Fisheries and Oceans Canada (Pacific region)
  for describing isobaths from 100 m to 1800 m at 100 m increments off
  the British Columbia coast.

  Isobaths are an interpolation from a bathymetry grid in ArcView. The
  grid was created from a triangular irregular network (TIN) that was
  created from Canadian Hydrographic Service digital natural resource
  maps (Section 3.6, Schnute \emph{et al.} 1999).
}
\references{
  Environmental Systems Research Institute. (1996). ArcView GIS: the 
  geographic information system for everyone. ESRI Press, Redlands, California.

  Schnute, J.T., Olsen, N., and Haigh, R. 1999.
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/1999/1999_184-eng.htm}{%
  Slope rockfish assessment for the west coast of Canada in 1999}.
  \emph{Canadian Stock Assessment Secretariat, Research Document} \bold{99/184}, 104 pp. \cr
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(isobath,nepacLL,envir=.PBSdataEnv)
    xlim = c(-131.5,-128); ylim = c(50.5,52.5)
    ptemp = attributes(isobath)$PolyData
    plotMap(nepacLL,xlim=xlim,ylim=ylim,col="orange")
    itemp = clipLines(isobath[is.element(isobath$PID,
      c(200,500,1000)),],xlim=xlim,ylim=ylim)
    addLines(itemp,polyProps=ptemp)
    warn=options()$warn; options(warn=-1)
    addLabels(ptemp,polys=itemp,placement="MEAN_XY",cex=.8,adj=1); box()
    options(warn=warn); invisible() }
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
  \code{\link[PBSdata]{bctopo}}, \code{\link[PBSdata]{ltsa}}, \code{\link[PBSdata]{qcssa}}, \code{\link[PBSdata]{wcvisa}}
}
\keyword{datasets}
\concept{topo}

