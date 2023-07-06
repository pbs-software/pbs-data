\name{gwaiihaanas}
\alias{gwaiihaanas}
\docType{data}
\title{
  Topo: Gwaii Haanas National Park Reserve
}
\description{
  Simple boundary data object outlining the Gwaii Haanas National Park Reserve.
}
\usage{
data("gwaiihaanas", package="PBSdata")
}
\format{
  A data frame with 9 observations on the following 5 variables.
  \describe{
    \item{\code{PID}}{primary polygon identifier (only 1 at present)}
    \item{\code{SID}}{seconadry polygon identifier (no real SIDs in this simple boundary object)}
    \item{\code{POS}}{vertex position}
    \item{\code{X}}{longitude coordinates in degrees West}
    \item{\code{Y}}{latitude coordinates in degrees North}
  }
}
\details{
  The object has the following attributes:
  \tabular{ll}{
  \code{class}       \tab \code{c("PolySet","data.frame")} \cr
  \code{projection}  \tab \code{"LL"} \cr
  \code{description} \tab "GWAII HAANAS NATIONAL MARINE CONSERVATION AREA" \cr
  \code{url}         \tab http://laws-lois.justice.gc.ca/eng/acts/C-7.3/page-16.html#sched2 [defunct] \cr
  \code{PolyData}    \tab A data frame with 1 record on the following 5 variables: \cr
                     \tab \code{c("PID","X","Y","col","border","label")} \cr
  \code{exceptions}  \tab Parcels of land excluded from Gwaii Haanas \cr
                     \tab A data frame with 7 record on the following 9 variables: \cr
                     \tab \code{c("PID","SID","POS","latdeg","latmin","latsec","londeg","lonmin","lonsec")}
  }
}
\section{Dates}{
  Last modified \code{Rd: 2023-06-06}\cr
  Last modified \code{data: 2014-07-04}
}
\references{
\href{https://laws-lois.justice.gc.ca/eng/regulations/SOR-96-93/FullText.html}{Gwaii Haanas National Park Reserve Order}
}
\keyword{datasets}
\concept{topo}

