\name{ssid}
\alias{ssid}
\docType{data}
\title{
  Code: Survey Series Information
}
\description{
  A list object of data frames detailing survey information.
}
\usage{
data(ssid)
}
\format{
  A list of data frames, one for each database, of survey series.

  \code{gfb} (GFBioSQL): \cr
  Data frame with 118 series (rows) and 5 fields.
  \tabular{ll}{
  \code{ssid}     \tab survey series ID number; also repeated as row names. \cr
  \code{desc}     \tab survey description \cr
  \code{nsurv}    \tab number of surveys in the series \cr
  \code{original} \tab logical: if \code{TRUE}, the series comprises an original set of surveys; \cr
                  \tab if \code{FALSE}, the series has been derived for some special purpose. \cr
  \code{trawl}    \tab logical: if \code{TRUE}, the series comprises trawl surveys.
  }
}
\source{
  The original survey table can be obtained from \code{GFBioSQL} using: \cr
  \code{getData("SURVEY","GFBioSQL")} \cr
  after loading the package \pkg{PBStools}.
}
\examples{
local(envir=.PBSdataEnv,expr={
  # To see the original GFBioSQL survey series:
  data(ssid,envir=.PBSdataEnv)
  print(ssid$gfb[ssid$gfb$original,])
})
}
\seealso{
  \pkg{PBStools}: \code{getData}, \code{makeSSID}
}
\keyword{datasets}
