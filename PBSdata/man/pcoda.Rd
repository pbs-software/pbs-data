\name{pcoda}
\alias{pcoda}
\docType{data}
\title{
  Topo: Hecate Strait Pacific Cod Monitoring Survey Areas
}
\description{
  Simple polygons that outline the Hecate Strait Pacific Cod Monitoring Survey areas: \cr \cr
    \code{TPBW...}Two Peaks / Butterworth \cr
    \code{SG.....}Shell Ground \cr
    \code{WR.....}White Rocks \cr
    \code{RI.....}Reef Island \cr
    \code{HS.....}Horseshoe 
}
\usage{data(pcoda)}
\format{
  A data frame with 206 observations on the following 4 variables. \cr
    \code{PID...}{primary polygon ID} \cr
    \code{POS...}{vertex position} \cr
    \code{X.....}{longitude (degrees West)} \cr
    \code{Y.....}{latitude (degrees North)}
}
\details{
Abstract from Sinclair and Workman (2002): \cr
  A stratified random bottom trawl survey has been designed and implemented to monitor
  changes in the abundance of Pacific cod in the Hecate Strait area in collaboration
  between the Canadian Groundfish Research and Conservation Society (CGRCS) and
  Fisheries and Oceans Canada (DFO). The survey focuses on areas of known Pacific cod
  distribution and consists of 5 monthly sampling trips between March and July. The first 
  full set of surveys was conducted in 2002. The initial results are encouraging. The
  survey met expectations for variance of the population index with a coefficient of
  variation of 20\%. If this can be met in future surveys, there is a good chance the survey
  will detect changes in population abundance of a magnitude necessary for management.
  The size frequency data collected were consistent with previous observations of the
  stock. Juvenile fish were found primarily on the Shell Ground area where they had been
  reported in the past. Adult fish were found in the other main areas. This suggests that it
  should be possible to monitor the movement of relatively strong year-classes through the
  population as they recruit.
}
\source{
  Norm Olsen, Pacific Biological Station, Nanaimo BC
}
\references{
  Sinclair, A. and Workman, G. (2002) 
  A review of Pacific cod (\emph{Gadus macrocephalus}) monitoring surveys in Hecate Strait, March - July, 2002. 
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2002/130}, 59 p.

  Sinclair, A.F. and Starr, P.J. (2005) 
  Assessment of Pacific cod in Hecate Strait (5CD) and Queen Charlotte Sound (5AB), January, 2005. 
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2005/026}, 97 p.
}
\seealso{
  \code{\link[PBSdata]{ltmose07}}
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nepacLL,pcoda,envir=.PBSdataEnv)
    xlim=extendrange(pcoda$X,f=0.2); ylim=extendrange(pcoda$Y,f=0.1)
    plotMap(nepacLL,xlim=xlim,ylim=ylim,plt=NULL,col="gainsboro")
    pdata=attributes(pcoda)$PolyData
    addPolys(pcoda,polyProps=pdata)
    addLabels(pdata,polys=pcoda,placement="CENTROID",font=2)
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\keyword{datasets}

