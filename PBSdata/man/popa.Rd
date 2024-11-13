\name{popa}
\docType{data}
\alias{popa}
\title{Topo: Pacific Ocean Perch Population Areas}
\description{
  PolySet of polygons for areal boundaries that delimit Pacific Ocean Perch 
  (\emph{Sebastes alutus}) population clusters based on POP catch/CPUE patterns.
}
\usage{data(popa)}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...} primary polygon ID\cr
    \code{POS...} position of each vertex within a given polygon\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\details{
  The 58 vertices trace 6 contours which describe 6 population areas 
  for Pacific Ocean Perch.

  An attribute dataset called \code{PolyData} gives the names 
  assigned to the 6 POP areas: \cr
  \code{PID.....} primary polygon ID,\cr
  \code{label...} population area label, and\cr
  \code{col.....} colour code for the area.
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting the population boundaries in POP assessments. 
  Originally defined in UTM units.

  Existing slope rockfish assessment boundaries cut right through the
  logical POP population units based on catch and CPUE patterns (Schnute
  \emph{et al}. 2001). The new regions delimit six populations: \cr
  \tabular{lcl}{
    \code{QCI} \tab = \tab Queen Charlotte Islands (west and north), \cr
    \code{MR}  \tab = \tab Moresby Gully including lower Hecate Strait \cr
    \code{MI}  \tab = \tab Mitchell's Gully \cr
    \code{GS}  \tab = \tab Goose Island Gully, \cr
    \code{NVI} \tab = \tab west coast of Vancouver Island north of Brooks Peninsula \cr
    \code{SVI} \tab = \tab west coast of Vancouver Island south of Brooks Peninsula
  }
}
\references{
  Schnute, J.T., Haigh, R., Krishka, B.A. and Starr, P. (2001)
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2001/2001_138-eng.htm}{%
  Pacific Ocean Perch assessment for the west coast of Canada in 2001}.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2001/138}, 90 p.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nepacLL,popa,envir=.PBSdataEnv)
    plotMap(nepacLL,xlim=c(-134.2,-124),ylim=c(47.5,55),border="grey")
    addPolys(popa,border="firebrick")
    addLabels(attributes(popa)$PolyData,col="orangered",cex=1.2)
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
  \code{\link[PBSdata]{major}}, \code{\link[PBSdata]{minor}}, \code{\link[PBSdata]{locality}}, 
  \code{\link[PBSdata]{srfa}}, \code{\link[PBSdata]{srfs}}
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2008-09-16}
}
\keyword{datasets}
\concept{topo}

