\name{isobath}
\docType{data}
\alias{isobath}
\title{Topo: Isobaths (100 to 1800 m, at 100 m intervals)}
\description{
  PolySet of polylines describing isobaths from 100 m to 1800 m at 100 m increments.
}
\usage{data(isobath)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polyline ID} \cr
    \code{SID...}{secondary polyline ID} \cr
    \code{POS...}{position of each vertex within a given polyline} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 23,922 vertices trace 92 contours which describe 18 isobaths.

  A data frame attached as an attribute called \code{PolyData} gives 
  four columns on 18 isobaths: \cr
  \code{PID.....}{primary polyline ID,} \cr
  \code{SID.....}{secondary polyline ID,} \cr
  \code{label...}{isobath in metres, and} \cr
  \code{col.....}{colour code for each isobath.}
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

  Schnute, J.T., Olsen, N., and Haigh, R. 1999. Slope rockfish assessment
  for the west coast of Canada in 1999. \emph{Canadian Stock Assessment Secretariat, 
  Research Document} \bold{99/184}, 104 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/csas/CSAS/publications/ResDocs-DocRech/1999/1999_184_e.htm}
}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){ 
  opar = par(no.readonly=TRUE); on.exit(par(opar))
  if (!require(PBSmapping, quietly=TRUE)) stop("`PBSmapping` package is required")
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
})
}
}
\seealso{
  \code{\link{bctopo}}, \code{\link{ltsa}}, \code{\link{qcssa}}, \code{\link{wcvisa}}
}
\keyword{datasets}
