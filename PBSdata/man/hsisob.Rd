\name{hsisob}
\docType{data}
\alias{hsisob}
\title{Topo: Hecate Strait Isobaths}
\description{
  PolySet of polylines that trace the 20m and 50m isobaths in Hecate Strait (BC).
}
\usage{data(hsisob)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID....}{primary polygon ID} \cr
    \code{SID....}{secondary polygon ID} \cr
    \code{POS....}{position of each vertex within a given polygon} \cr
    \code{X......}{longitude coordinates} \cr
    \code{Y......}{latitude coordinates} 
}
\details{
  The 3,151 vertices trace 2 contours. \code{PID}s are either \code{20} or \code{50}.
}
\note{
  Contours originally in ArcView as raster-interpolations of NOAA satellite 
  bathymetry data, were exported using Norm Olsen's Visual Basic tool called 
  \code{Shp2PBSMap} to an ACCESS database, consarnit.
}
\source{
  Norm Olsen, Pacific Biological Station, Nanaimo BC
}
\references{
  \url{http://www.star.nesdis.noaa.gov/sod/lsa/AltBathy/}
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nepacLL,hsisob,envir=.PBSdataEnv)
    pdata=attributes(hsisob)$PolyData
    xlim=extendrange(hsisob$X,f=0.2); ylim=extendrange(hsisob$Y,f=0.1)
    plotMap(nepacLL,xlim=xlim,ylim=ylim,col="aliceblue")
    addLines(hsisob,col=c("red","blue"),lwd=1)
    addLabels(pdata,adj=0,polyProps=pdata)
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
  \code{\link[PBSdata]{isobath}}, \code{\link[PBSdata]{hsgrid}}
}
\keyword{datasets}
