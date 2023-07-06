\name{bctopo}
\docType{data}
\alias{bctopo}
\title{Topo: British Columbia Sea Floor Topography}
\description{
  Data frame of sea floor topography downloaded from \cr
  \url{https://topex.ucsd.edu/cgi-bin/get_data.cgi} \cr and reformatted for 
  use in by \code{makeTopography} in \code{PBSmapping}.
}
\usage{data("bctopo", package="PBSdata")}
\format{
  Data frame with 3 columns: \cr
    \code{x...}{Longitude in degrees West (original \code{x} - 360)} \cr
    \code{y...}{Latitude in degrees North} \cr
    \code{z...}{Sea floor depth in metres (negative value of original)}
}
\details{
  The data frame comprises 488,117 rows (georeferenced depth observations) and 3 columns.
  This data set was extracted from the TOPEX main using the following boundaries:
  west (-134.5\eqn{^\circ}{deg}), east (-122.5\eqn{^\circ}{deg}), south (48\eqn{^\circ}{deg}), north (55\eqn{^\circ}{deg}).
  Details on how to obtain a different delimited set are provided in the help
  file for \code{makeTopography} in the package \code{PBSmapping}.
}
\note{
	Previous version only extended eastward to -124.5\eqn{^\circ}{deg}W.
	Current version extends to -122.5\eqn{^\circ}{deg}W (and used to be called \code{'bctopo2'}, locally).
}
\source{
  Topography Ocean Experiment (TOPEX):\cr
  \href{https://topex.ucsd.edu/cgi-bin/get_data.cgi}{Extract XYZ grid -- topography or gravity}

  Last accessed for \code{bctopo} on 2017-01-24.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(xlim=c(-128.5,-124.5),ylim=c(48,50.5),zlev=c(123,1234)) { 
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(bctopo,nepacLL,envir=.PBSdataEnv)
    zx=bctopo$x>=xlim[1] & bctopo$x<=xlim[2] &!is.na(bctopo$x)
    zy=bctopo$y>=ylim[1] & bctopo$y<=ylim[2] &!is.na(bctopo$y)
    topo=bctopo[zx&zy,]
    bathy = makeTopography(topo)
    bCL   = contourLines(bathy,levels=zlev)
    bCP   = convCP(bCL,projection="LL",zone=9)
    bPoly = bCP$PolySet
    plotMap(nepacLL,xlim=xlim,ylim=ylim,col="moccasin",cex.axis=1.2,cex.lab=1.5)
    addLines(bPoly,col=c("red","blue"))
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\references{
  Smith, W.H.F., and Sandwell, D.T. (1997)
  \href{https://topex.ucsd.edu/marine_topo/mar_topo.html}{Global seafloor topography from satellite altimetry and ship depth soundings}.
  \emph{Science} \bold{277}: 1957--1962. \cr
}
\seealso{
  \code{PBSdata:}\cr
  \code{\link[PBSdata]{isobath}} \cr
  \code{PBSmapping:}\cr
  \code{makeTopography},
  \code{convCP}
}
\section{Dates}{
  Last modified \code{Rd: 2023-06-06}\cr
  Last modified \code{data: 2017-01-24}
}
\keyword{datasets}

