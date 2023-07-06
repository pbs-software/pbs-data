\name{seamounts}
\alias{seamounts}
\docType{data}
\title{
  Topo: Seamounts Along the BC Coast
}
\description{
  Seamount geographic locations as \code{PolyData} summary events. (There are no associated polygons at this time.)
}
\usage{data(seamounts)}
\format{
  A data frame with 29 observations on the following 7 variables.
  \describe{
    \item{\code{PID}}{-- primary polygon ID}
    \item{\code{X}}{-- longitude coordinate (degrees W)}
    \item{\code{Y}}{-- latitude coordinate (degrees N)}
    \item{\code{Z}}{-- depth (m) at peak of seamount}
    \item{\code{label}}{-- seamount name (for labelling (X,Y) coordinates)}
    \item{\code{group}}{-- group number (initially supplied by Lisa Lacko)}
    \item{\code{area}}{-- region off the BC coast, where \cr
          \code{"BC"} = inside Exclusive Economic Zone (EEZ, 200-nautical mile limit), \cr
          \code{"GOA"} = Gulf of Alaska, \cr
          \code{"NEP"} = Northeast Pacific Ocean}
  }
}
\details{
  This \code{PolyData} set can be used by \code{addPoints} and \code{addLabels}
  to supplement maps with seamount locations.
}
\source{
  Lisa Lacko (Pacific Biological Station, Nanaimo BC) supplied seamount data for PIDs 1--22.

  Seamount data for PIDs 23--29 are extracted from NOAA's National Geophysical Data Center: \cr
  \url{https://www.ngdc.noaa.gov/mgg/global/relief/ETOPO5/GAZETEER/BGNGAZ/BGNGAZ.TXT} \cr
  NGDC data are supplemented with depths from various websites like \code{wikipedia}.
}
\section{Dates}{
  Last modified \code{Rd: 2023-06-06}\cr
  Last modified \code{data: 2014-12-16}
}
\keyword{datasets}
