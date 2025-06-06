\name{ltsa.bad}
\docType{data}
\alias{ltsa.bad}
\title{Topo: No-Trawl Zones in Longspine Thornyhead Survey Area}
\description{
  PolySet of polygons describing 26 no-trawl zones in the Longspine Thornyhead 
  survey strata off the west coast of Vancouver Island, according to Chris Roberts (CGRCS).
}
\usage{data(ltsa.bad)}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...} primary polygon ID\cr
    \code{POS...} position of each vertex within a given polygon\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\details{
  The 983 vertices trace 26 contours which describe the 26 no-trawl areas 
  in the Longspine Thornyhead survey strata.

  A data frame attached as an attribute called \code{PolyData} gives details on 
  the 26 no-trawl zones specified by Chris Roberts. \code{PolyData} has 4 columns: \cr
  \code{PID......} primary polygon ID,\cr
  \code{BM6......} fishing ground \code{\link[PBSdata]{ltmose07}} in which the no-trawl polygon occurs,\cr
  \code{label....} one-word label describing the zone, and\cr
  \code{detail...} detailed description of the zone.

  Note there are numerous no-trawl zones in the Quatsino region (BM7, strata G); however,
  these were not mapped at the time this data file was created.
}
\source{
  Chris Roberts, Canadian Groundfish Research and Conservation Society, New Westminster BC.
}
\references{
  Starr, P.J., Krishka, B.A. and Choromanski, E.M. (2002) 
  \href{https://publications.gc.ca/site/eng/462859/publication.html}{%
  Trawl survey for Thornyhead biomass estimation off the West Coast of Vancouver Island, September 15 to October 2, 2001}.
  \emph{Canadian Technical Report of Fisheries and Aquatic Sciences} \bold{2421}, 60 pp.

  Starr, P.J., Krishka, B.A. and Choromanski, E.M. (2002)
  \href{https://publications.gc.ca/site/eng/422382/publication.html}{%
  Longspine Thornyhead random stratified trawl survey off the West Coast of Vancouver Island, September 6--23, 2002}.
  \emph{Canadian Technical Report of Fisheries and Aquatic Sciences} \bold{2558}, 81 pp.

  Krishka, B.A., Starr, P.J. and Choromanski, E.M. (2005)
  \href{https://publications.gc.ca/site/eng/422422/publication.html}{%
  Longspine Thornyhead random stratified trawl survey off the West Coast of Vancouver Island, September 4--21, 2003}.
  \emph{Canadian Technical Report of Fisheries and Aquatic Sciences} \bold{2577}, vi + 93 pp.

  Schnute, J., Haigh R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2004/2004_059-eng.htm}{%
  The British Columbia Longspine Thornyhead fishery: analysis of survey and commercial data (1996--2003)}.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2004/059}, 75 pp.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(ltsa,ltsa.bad,envir=.PBSdataEnv)
    plotMap(ltsa,border="grey")
    addPolys(ltsa.bad,col="pink",border="red");
    addLabels(attributes(ltsa.bad)$PolyData,polys=ltsa.bad,
      placement="MEAN_XY",col="blue",cex=0.7,adj=-.3) 
    invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2014-07-04}
}
\seealso{
  \code{\link[PBSdata]{ltmose07}},  \code{\link[PBSdata]{trawlability}}
}
\keyword{datasets}
\concept{topo}

