\name{vanparks}
\alias{vanparks}
\docType{data}
\title{
  Topo: City of Vancouver Parks
}
\description{
  Parks managed by the City of Vancouver
}
\usage{data("vanparks")}
\format{
  A data frame with 28,106 observations on the following 5 variables.
  \describe{
    \item{\code{PID}}{(\code{numeric}) -- primary polygon ID}
    \item{\code{SID}}{(\code{numeric}) -- secondary polygon ID}
    \item{\code{POS}}{(\code{numeric}) -- vertex numbers}
    \item{\code{X}}{(\code{numeric}) -- longitude (deg W)}
    \item{\code{Y}}{(\code{numeric}) -- latitude (deg N)}
  }
}
\details{
  A PolySet of Vancouver parks for those interested in such things.
  
  From the city's website:\cr
  Parks - polygon representation\cr
  This data set provides information on the names and locations of City parks.
  The data may be displayed as point features (a single point representing 
  the location of the park; this is unlikely to be the geometric centroid of
  the park) or polygon features (a polygon to show the extent of the park boundaries).
}
\source{
  City of Vancouver -- 
  \href{https://opendata.vancouver.ca/explore/dataset/parks-polygon-representation/export/}{Open Data Portal}
}
\section{Dates}{
  Last modified \code{Rd: 2026-06-08}\cr
  Last modified \code{data: 2026-06-08}
}
\examples{
\dontrun{
  expandGraph()
  xlim = extendrange(vanparks$X); ylim=extendrange(vanparks$Y)
  data("nepacLLhigh", package="PBSmapping")
  plotMap(nepacLLhigh, xlim=xlim, ylim=ylim, col="gainsboro", border="gainsboro",
    plt=NULL, cex.axis=1.2, cex.lab=1.5)
  addPolys(vanparks, col="lightseagreen")
  addPoints(attributes(vanparks)$PolyData, pch=20, cex=1.2, col="red")
  box()
}
}
\seealso{
In package \pkg{PBSdata}:\cr
  \code{\link[PBSdata]{extractParks}}\cr
In package \pkg{PBSmapping}:\cr
  \code{\link[PBSmapping]{plotMap}},
  \code{\link[PBSmapping]{addPolys}},
  \code{\link[PBSmapping]{addPoints}},
  \code{\link[PBSmapping]{as.PolySet}},
  \code{\link[PBSmapping]{as.EventData}}\cr
In package \pkg{PBStools}:\cr
  \code{\link[PBSmodelling]{expandGraph}}
}
\keyword{datasets}
\concept{Topo}

