\name{trawlability}
\docType{data}
\alias{trawlability}
\title{Topo: Fisher Knowledge of Towable Bottom}
\description{
  PolySet of polygons describing areas of \dQuote{trawlability} on the central 
  coast of BC (Queen Charlotte Sound) and the west coast of The Queen Charlotte 
  Islands.
}
\usage{data(trawlability)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{SID...}{secondary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 13,673 vertices trace 77 contours with 11 holes, all of which describe 
  66 polygons by trawlability and region (CC, QCI).

  A PolyData set attached as an attribute called \code{PolyData} describes 
  areas of trawlability in two regions (CC = central coast, QCI = west coast 
  of the Queen Charlotte Islands). Trawlability rating (1:4) is subjective: \cr
  \code{1} = net stays on bottom, \cr
  \code{2} = rolling bottom, net occasionally leaves bottom, \cr
  \code{3} = rolling bottom, net frequently leaves bottom, and \cr
  \code{4} = cannot set the net.

  \code{PolyData} has 7 columns: \cr
  \code{PID} = primary polygon ID, \cr
  \code{ID} = an ID comprising 3 digits - the first gives trawlability rating 
  and the last two simply give the order in which the area was digitized, \cr
  \code{REGION} = region along the BC coast (see above), \cr
  \code{col} = colour code for trawlability rating, \cr
  \code{label} = label indicating bottom type code, \cr
  \code{brief} = brief description of bottom type, \cr
  \code{full} = full description of bottom type.
}
\source{
  Rowan Haigh, Pacific Biological Station, Nanaimo BC.
  Digitized  using a GTCO Super L II Plus from UTM charts marked by expert fishermen.

  A workshop in August 1999 solicited the opinions of commercial fishers on what 
  constituted trawlable bottom. Their knowledge of the sea floor has accrued 
  after decades of fishing along the BC coast. As a starting 
  point we chose the central coast (CC) because this area hosts some of the 
  highest trawling activity. Fishers with extensive experience in the CC 
  region, along with representatives of the Canadian Groundfish and Conservation 
  Society (CGRCS) and DFO, participated in the exercise.

  The results were presented at a subsequent meeting with the CGRCS, and 
  members in attendance chose the chart of one fisherman as being most 
  representative of bottom trawlability with respect to the design of slope 
  rockfish surveys. It should be noted that within any one of these polygons, 
  there may be small areas of trawl type other than that indicated. 
  Additionally, an area's trawl classification may vary depending on the 
  vessel master's experience, the vessel's technology, and the type of gear and vessel.

  Another set of fishermen coded the bottom along the west coast of the Queen 
  Charlotte Islands using the same classification scheme.
}
\references{
  Schnute, J.T., Olsen, N. and Haigh, R. (1999) Slope rockfish assessment 
  for the west coast of Canada in 1998. \emph{Canadian Stock Assessment Secretariat, 
  Research Document} \bold{99/184}, 104 pp.\cr
  \url{http://www.dfo-mpo.gc.ca/csas/CSAS/publications/ResDocs-DocRech/1999/1999_184_e.htm}
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(trawlability,nepacLL,envir=.PBSdataEnv)
    pdata=attributes(trawlability)$PolyData
    plotMap(nepacLL,xlim=c(-134.3,-127.4),y=c(49.7,54.7),border="grey")
    addPolys(trawlability,polyProps=pdata)
    leglab=sapply(split(paste(pdata$label,pdata$brief,sep=": "),
      pdata$col),unique)
    leglab=leglab[order(leglab)]
    legend(x="bottomleft",fill=names(leglab),
      legend=leglab,bty="n",cex=.8,inset=.025)
    box(); invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
  \code{\link[PBSdata]{qcb}}, \code{\link[PBSdata]{ltmose07}}
}
\keyword{datasets}

