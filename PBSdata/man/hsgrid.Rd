\name{hsgrid}
\docType{data}
\alias{hsgrid}
\title{Topo: Hecate Strait Assemblage Survey Grid}
\description{
  PolySet of polygons for the Hecate Strait Assemblage Survey grid.
}
\usage{data(hsgrid)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID....}{primary polygon ID} \cr
    \code{POS....}{position of each vertex within a given polygon} \cr
    \code{X......}{longitude coordinates} \cr
    \code{Y......}{latitude coordinates} \cr
    \code{cell...}{cell designation within survey grid, where rows span A-L and columns span 1-6}
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting the Hecate Strait survey grid.

  Each grid cell is 10 nm by 10 nm. The grid extent spans
  -131\eqn{^\circ}{deg} 48' 30" to -130\eqn{^\circ}{deg} 6'
  30" of longitude and 52\eqn{^\circ}{deg} 30' to 54\eqn{^\circ}{deg} 
  30' of latitude. The 12 rows are designated A-L. The 6
  columns are designated 1-6.
}
\references{
  Fargo, J. and Tyler, A.V. (1992) Statistical testing of research trawl
  data with implications for survey design. \emph{Netherlands Journal of Sea
  Research} \bold{29}, 97--108.
}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){
  if (!require(PBSmapping, quietly=TRUE)) stop("`PBSmapping` package is required")
  data(nepacLL, hsgrid)
  xlim=extendrange(hsgrid$X,f=0.2); ylim=extendrange(hsgrid$Y,f=0.1)
  plotMap(nepacLL,xlim=xlim,ylim=ylim,col="aliceblue")
  addPolys(hsgrid,border="blue",lwd=2)
  addLabels(extractPolyData(hsgrid),placement="CENTROID",
    polys=hsgrid,col="red")
  invisible() }
pbsfun()
})
}
}
\seealso{
  \code{\link{ltsa}}, \code{\link{qcssa}}, \code{\link{wcvisa}}
}
\keyword{datasets}
