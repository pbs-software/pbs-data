\name{ltmose07}
\docType{data}
\alias{ltmose07}
\alias{ltmose12}
\title{Topo: Longspine Thornyhead Fishing Grounds (WCVI)}
\description{
  PolySet of polygons describing 7 (or 12) Longspine Thornyhead fishing 
  grounds off the west coast of Vancouver Island according to Brian Mose (CGRCS).
}
\usage{
data(ltmose07)
data(ltmose12)
}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...} primary polygon ID\cr
    \code{POS...} position of each vertex within a given polygon\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\details{
  \code{ltmose07}: 55 vertices trace 7 contours that describe 7 fishing grounds. \cr
  \code{ltmose12}: 82 vertices trace 12 contours that describe 12 fishing grounds.

  A data frame attached as an attribute called \code{PolyData} gives the names 
  assigned to the 7 (or 12) fishing grounds by Brian Mose.
  \code{PolyData} has 2 columns: \cr 
  \code{PID.....} primary polygon ID,\cr
  \code{label...} name of the fishing ground.
}
\source{
  Brian Mose, Canadian Groundfish Research and Conservation Society\cr
  August 7, 1959 -- August 13, 2024 (age 65)
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
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(ex=1){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    if (ex==1) {
      data(ltmose07,nepacLL,envir=.PBSdataEnv)
      xlim=extendrange(ltmose07$X); ylim=extendrange(ltmose07$Y)
      plotMap(ltmose07,xlim=xlim,ylim=ylim,border="lightseagreen",lwd=2)
      addPolys(nepacLL,col="sandybrown")
      addLabels(attributes(ltmose07)$PolyData,polys=ltmose07,
        placement="CENTROID",col="purple4") }
    if (ex==2) {
      data(ltmose12,nepacLL,envir=.PBSdataEnv)
      xlim=extendrange(ltmose12$X); ylim=extendrange(ltmose12$Y)
      plotMap(ltmose12,xlim=xlim,ylim=ylim,border="red",lwd=2)
      addPolys(nepacLL,col="moccasin")
      addLabels(attributes(ltmose12)$PolyData,polys=ltmose12,
        placement="CENTROID",col="darkblue",cex=.8) }
    invisible() }
  pbsfun(1); pbsfun(2)
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2014-07-04}
}
\seealso{
  \code{\link[PBSdata]{ltsa}}, \code{\link[PBSdata]{ltxa}}, \code{\link[PBSdata]{ltea}}
}
\keyword{datasets}
\concept{topo}
