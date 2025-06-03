\name{bctopo}
\docType{data}
\alias{bctopo}
\title{Topo: British Columbia Sea Floor Topography}
\description{
  Data frame of sea floor topography downloaded from \cr
  \verb{https://topex.ucsd.edu/cgi-bin/get_data.cgi} (deprecated?)\cr 
  and reformatted for use in by \code{makeTopography} in \code{PBSmapping}.
}
\usage{data("bctopo", package="PBSdata")}
\format{
  Data frame with 3 columns:
  \tabular{ll}{
    \code{x} \tab longitude in degrees West (global \code{x} - 360)\cr
    \code{y} \tab latitude in degrees North\cr
    \code{z} \tab sea floor depth in metres (negative value of original)
  }
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
  Formerly: \href{https://topex.ucsd.edu/cgi-bin/get_data.cgi}{Extract XYZ grid -- topography or gravity} (\emph{deactivated})

  Currently unsure where this portal exists (NOAA undergoing reorganisation? 250603).
  
  Check out: \href{https://topex.ucsd.edu/marine_topo/mar_topo.html}{%
  Global Topography v.27.1 Apr 7, 2025}
  
  Possible interest: \href{https://www.ncei.noaa.gov/maps/grid-extract/}{%
  National Centers for Environmental Information grid extract}
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
  \emph{Science} \bold{277}: 1957--1962.
}
\seealso{
In package \pkg{PBSdata}:\cr
  \code{\link[PBSdata]{isobath}}\cr
In package \pkg{PBSmapping}:\cr
  \code{\link[PBSmapping]{makeTopography}},
  \code{\link[PBSmapping]{convCP}}
}
\section{Dates}{
  Last modified \code{Rd: 2025-06-03}\cr
  Last modified \code{data: 2023-06-06}
}
\keyword{datasets}
\concept{topo}
