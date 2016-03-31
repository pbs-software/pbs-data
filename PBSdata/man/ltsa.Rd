\name{ltsa}
\docType{data}
\alias{ltsa}
\title{Topo: Longspine Thornyhead Survey Strata (WCVI)}
\description{
  PolySet of polygons describing the survey strata for Longspine
  Thornyheads off the west coast of Vancouver Island (WCVI).
}
\usage{data(ltsa)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{SID...}{secondary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 9,837 vertices trace 30 contours which form 21 survey strata. 

  A data frame attached as an attribute called \code{PolyData} describes 
  zonation information for each of the 21 strata. \code{PolyData} has 4 columns: \cr
  \code{PID.....}{primary polygon ID,} \cr
  \code{dep.....}{shallowest depth of depth strata,} \cr
  \code{azone...}{areal zone, and} \cr
  \code{dzone...}{depth zone.}

  The Longspine Thornyhead survey strata comprise 7 areal zones: \cr
  \code{A = Barkley}, \cr
  \code{B = Loudon/Clayoquot}, \cr
  \code{C = Clayoquot/Estevan}, \cr
  \code{D = Nootka/500 Line}, \cr
  \code{E = Esperanza/Kyuquot}, \cr
  \code{F = Cape Cook/Winter Harbour}, \cr
  \code{G = Quatsino} \cr
  and three depth zones \code{1:3} (500--800 m, 800--1200 m, 1200--1600 m).
}
\source{
  Rowan Haigh, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC.

  Survey details can be found in Starr \emph{et al.} (2002, 2004) and Krishka 
  \emph{et al.} 2005. Survey assessment appears in Schnute \emph{et al.} (2004).
}
\references{
  Krishka, B.A., Starr, P.J. and Choromanski, E.M. (2005) Longspine Thornyhead 
  random stratified trawl survey off the West Coast of Vancouver Island, 
  September 4--21, 2003. \emph{Canadian Technical Report of Fisheries and Aquatic 
  Sciences} \bold{2577}, vi + 93 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/libraries-bibliotheques/tech-eng.htm}

  Schnute, J., Haigh R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  The British Columbia Longspine Thornyhead fishery: analysis of survey and 
  commercial data (1996--2003). \emph{Canadian Science Advisory Secretariat, 
  Research Document} \bold{2004/059}, 75 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/csas/CSAS/publications/ResDocs-DocRech/2004/2004_059_E.htm}

  Starr, P.J., Krishka, B.A. and Choromanski, E.M. (2002) Trawl survey for 
  Thornyhead biomass estimation off the West Coast of Vancouver Island, 
  September 15 to October 2, 2001. \emph{Canadian Technical Report of Fisheries and 
  Aquatic Sciences} \bold{2421}, 60 pp.

  Starr, P.J., Krishka, B.A. and Choromanski, E.M. (2002) Longspine Thornyhead 
  random stratified trawl survey off the West Coast of Vancouver Island, 
  September 6--23, 2002. \emph{Canadian Technical Report of Fisheries and Aquatic 
  Sciences} \bold{2558}, 81 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/libraries-bibliotheques/tech-eng.htm}
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(ltsa,envir=.PBSdataEnv)
    plotMap(ltsa,border="grey50",col=c("lightgreen","pink","skyblue"))
    pdata <- attributes(ltsa)$PolyData
    addLabels(pdata,polys=ltsa,placement="CENTROID",cex=.75,col="red3") 
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
  \code{\link[PBSdata]{ltmose07}}, 
  \code{\link[PBSdata]{ltea}}, 
  \code{\link[PBSdata]{ltxa}}, 
  \code{\link[PBSdata]{qcssa}}, 
  \code{\link[PBSdata]{wcvisa}}
}
\keyword{datasets}
