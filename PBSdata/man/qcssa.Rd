\name{qcssa}
\docType{data}
\alias{qcssa}
\title{Topo: Queen Charlotte Sound Survey Strata}
\description{
  PolySet of polygons describing the survey strata for the Queen
  Charlotte Sound synoptic groundfish survey.
}
\usage{data(qcssa)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID.....} primary polygon ID\cr
    \code{POS.....} position of each vertex within a given polygon\cr
    \code{X.......} longitude coordinates\cr
    \code{Y.......} latitude coordinates\cr
    \code{strat...} stratum descriptor
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting 2 areal strata for the Queen Charlotte Sound synoptic
  groundfish survey (Stanley \emph{et al.} 2004). The two areal strata divide
  the central BC coast region into a northern and southern
  component. Four depth zones (50--125 m, 125--200 m, 200--330 m, 330--500 m)
  are used in the survey but not delimited in this PolySet.
}
\references{
  Stanley, R.D., Starr, P., Olsen, N. and Haigh, R. (2004)
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2004/2004_028-eng.htm}{%
  Summary of results of the 2003 Queen Charlotte Sound bottom trawl survey}. 
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2004/028}, 50 p.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nepacLL,qcssa,envir=.PBSdataEnv)
    plotMap(nepacLL,xlim=c(-132.8,-126.9),ylim=c(50.5,52.9),border="grey")
    pdata=attributes(qcssa)$PolyData
    addPolys(qcssa,polyProps=pdata); addPolys(nepacLL,border="grey")
    addPolys(qcssa,border="black");  addLabels(pdata,cex=1.2)
    box(); invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
  \code{\link[PBSdata]{ltsa}}, \code{\link[PBSdata]{wcvisa}}
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2004-07-19}
}
\keyword{datasets}
\concept{topo}

