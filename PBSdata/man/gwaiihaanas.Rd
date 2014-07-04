\name{gwaiihaanas}
\alias{gwaiihaanas}
\docType{data}
\title{
  Topo: Gwaii Haanas National Park Reserve
}
\description{
  Simple boundary data object outlining the Gwaii Haanas National Park Reserve.
}
\usage{data(gwaiihaanas)}
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
  \code{url}         \tab \url{http://laws-lois.justice.gc.ca/eng/acts/C-7.3/page-16.html\#sched2} \cr
  \code{PolyData}    \tab A data frame with 1 record on the following 5 variables: \cr
                     \tab \code{c("PID","X","Y","col","border","label")} \cr
  \code{exceptions}  \tab Parcels of land excluded from Gwaii Haanas \cr
                     \tab A data frame with 7 record on the following 9 variables: \cr
                     \tab \code{c("PID","SID","POS","latdeg","latmin","latsec","londeg","lonmin","lonsec")}
  }
}
\source{
\url{http://laws-lois.justice.gc.ca/eng/acts/C-7.3/page-16.html\#sched2}
}
\keyword{datasets}

