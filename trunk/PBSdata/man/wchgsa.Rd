\name{wchgsa}
\alias{wchgsa}
\docType{data}
\title{
  Topo: West Coast Haida Gwaii Survey Area
}
\description{
  PolySet of active blocks (4 km\eqn{^2} each) that are used in the West Coast Haida Gwaii Synoptic Survey series.
  The original projection is UTM zone 9 but this PolySet reports vertices in geographic (LL) projection.
  The coordinates can be converted to UTM using the function \code{convUL} in the \pkg{PBSmapping} package.
}
\usage{data(wchgsa)}
\format{
  A PolySet with 6725 vertices that outline 1345 square polygons (in UTM space).
  \describe{
    \item{\code{PID}}{primary polygon ID (1345 PIDs)}
    \item{\code{POS}}{vertex position within each PID}
    \item{\code{X}}{longitude coordinates in degrees West}
    \item{\code{Y}}{latitude coordinates in degrees North}
  }
}
\details{
  The data object \code{wchgsa} has the following attributes: 
  \tabular{ll}{
  \code{names}             \tab {PolySet names: \code{c("PID", "POS", "X", "Y")}} \cr
  \code{row.names}         \tab {Numbers as strings: \code{c("1", "2", ..., "6725")}} \cr
  \code{class}             \tab {\code{c("PolySet", "data.frame")}} \cr
  \code{PolyData.original} \tab {Original PolyData create by \code{importShapefile}} \cr
  \code{parent.child}      \tab {Parent-child relationship between PID and SID; as there are no SIDs,} \cr
                           \tab {all values are set to 1. Essentially this vector comes from a list component} \cr
                           \tab {labelled \code{pStarts} made by \pkg{maptools}'s \code{Rshapeget} function.} \cr
  \code{shpType}           \tab {Shape type: 1=points, 3=polyline, 5=polygon} \cr
  \code{prj}               \tab {Projection details of the original source shapefile.} \cr
  \code{xml}               \tab {XML meta information.} \cr
  \code{projection}        \tab {PBSmapping projection, either \code{"LL"} or \code{"UTM"}.} \cr
  \code{zone}              \tab {PBSmapping zone used as the central meridian for a UTM projection} \cr
                           \tab {(\code{wchgsa} originally came from UTM Zone 9).} \cr
  \code{PolyData}          \tab {Tailored PolyData set for \code{wchgsa}, which includes fields:}\cr
                           \tab {...\code{DEPTH} = depth (m)} \cr
                           \tab {...\code{BLOCK} = active block number} \cr
                           \tab {...\code{SSID}  = survey series ID} \cr
                           \tab {...\code{GC}    = grouping code (survey stratum identifier)} \cr
                           \tab {...\code{col}   = colour for each stratum (GC)} \cr
                           \tab {...\code{stratum} = depth limits of the block's stratum} \cr
                           \tab {...\code{area}  = stratum area (km\eqn{^2})}
  }
}
\source{
  Norm Olsen, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
\examples{
\dontrun{
pbsfun = function() {
  opar = par(no.readonly=TRUE)
  on.exit(par(opar))
  require(PBSmapping)
  data(wchgsa,nepacLL)
  xlim = extendrange(wchgsa$X)
  ylim = extendrange(wchgsa$Y)
  par(mar=c(4,3,1.2,0.5), mgp=c(1.6,0.5,0))
  plotMap(wchgsa,xlim=xlim,ylim=ylim,polyProps=attributes(wchgsa)$PolyData,border="grey",plt=NULL)
  addPolys(nepacLL,col="ivory")
  invisible() }
pbsfun()
}
}
\keyword{datasets}
