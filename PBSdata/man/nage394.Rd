\name{nage394}
\alias{nage394}
\docType{data}
\title{
  Data: Age Frequency by Year for Rougheye Rockfish
}
\description{
  An age frequency matrix by calendar year for Rougheye Rockfish 
  (\emph{Sebastes aleutianus}) from research surveys along the BC coast.
}
\usage{
data(nage394)
}
\format{
  Matrix with 114 rows (ages 6 to 119) and 11 columns (years 1980,
  1982, 1993, 1996, 1997, 2000, 2001, 2002, 2006, 2007, 2008) 
  comprising age frequencies for rougheye rockfish.
}
\source{
  Fisheries and Oceans Canada database: \code{GFBioSQL} on the server \code{SVBCPBSGFIIS}.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmodelling",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nage394,envir=.PBSdataEnv)
    plotBubbles(nage394,dnam=TRUE,hide0=TRUE,size=0.1)
    invisible() }
  pbsfun()
} else
  cat("Load PBSmodelling package to see the example.\n")
})
}
\keyword{datasets}
