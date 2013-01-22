\name{bctopo}
\docType{data}
\alias{bctopo}
\title{Topo: British Columbia Sea Floor Topography}
\description{
  Data frame of sea floor topography downloaded from \cr
  \url{http://topex.ucsd.edu/cgi-bin/get_data.cgi} \cr and reformatted for 
  use in by \code{makeTopography} in \code{PBSmapping}.
}
\usage{data(bctopo)}
\format{
  Data frame with 3 columns: \cr
    \code{x...}{Longitude in degrees West (original \code{x} - 360)} \cr
    \code{y...}{Latitude in degrees North} \cr
    \code{z...}{Sea floor depth in metres (negative value of original)}
}
\details{
  The data frame comprises 406,877 rows (georeferenced depth observations) and 3 columns.
  This data set was extracted from the TOPEX main using the following boundaries:
  west (-134.5\eqn{^\circ}{deg}), east (-124.5\eqn{^\circ}{deg}), south (48\eqn{^\circ}{deg}), north (55\eqn{^\circ}{deg}).
  Details on how to obtain a different delimited set are provided in the help
  file for \code{makeTopography} in the package \pkg{PBSmapping}.
}
\source{
  \url{http://topex.ucsd.edu/cgi-bin/get_data.cgi}
}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
pbsfun=function(xlim=c(-128.5,-124.5),ylim=c(48,50.5),zlev=c(123,1234)) { 
  if (!require(PBSmapping, quietly=TRUE)) stop("`PBSmapping` package is required")
  data(bctopo,nepacLL)
  zx=bctopo$x>=xlim[1] & bctopo$x<=xlim[2] &!is.na(bctopo$x)
  zy=bctopo$y>=ylim[1] & bctopo$y<=ylim[2] &!is.na(bctopo$y)
  topo=bctopo[zx&zy,]
  bathy = makeTopography(topo)
  bCL   = contourLines(bathy,levels=zlev)
  bCP   = convCP(bCL,projection="LL",zone=9)
  bPoly = bCP$PolySet
  plotMap(nepacLL,xlim=xlim,ylim=ylim,col="moccasin")
  addLines(bPoly,col=c("red","blue"))
  invisible() }
pbsfun()
})
}
}
\references{
  Smith, W.H.F., and Sandwell, D.T. (1997)
  Global seafloor topography from satellite altimetry and ship depth soundings,
  \emph{Science} \bold{277}: 1957--1962. \cr
  \url{http://topex.ucsd.edu/marine_topo/mar_topo.html}
}
\seealso{
  %\code{\link{calcHabitat}}, 
  \code{\link[PBSdata]{isobath}} \cr
  \pkg{PBSmapping}: \code{\link[PBSmapping]{makeTopography}}, \code{\link[PBSmapping]{convCP}}
}
\keyword{datasets}

