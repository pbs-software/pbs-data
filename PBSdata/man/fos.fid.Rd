\name{fos.fid}
\docType{data}
\alias{fos.fid}
\title{Code: Fishery Codes in GFFOS}
\description{
  Data frame of fishery codes found in a data table called 
  \code{GFFOS.FISHERY} in the Oracle database \code{ORADEV}.
}
\usage{data(fos.fid)}
\format{
  Data frame comprising 3 columns: \cr
    \code{fid...........}{Fishery identification number} \cr
    \code{fishery.......}{Fishery name} \cr
    \code{description...}{Short description of the fishery}
}
\details{
  The data frame comprises 59 rows (fisheries) and 3 columns. The data
  come from the Oracle table \code{GFFOS.FISHERY}.
}
\source{
  Norm Olsen, Pacific Biological Station, Nanaimo BC
}
\examples{
local(envir=.PBSdataEnv,expr={
# Quick reference to fishery:
pbsfun=function(fid=c(17,21,23,48)) {
  data(fos.fid,envir=.PBSdataEnv)
  fishery=fos.fid[fid,]$fishery
  names(fishery)=fid
  return(fishery) }
pbsfun()
})
}
\seealso{
  \code{\link[PBSdata]{spn}}, \code{\link[PBSdata]{species}}
}
\keyword{datasets}
