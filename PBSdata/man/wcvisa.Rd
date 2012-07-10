\name{wcvisa}
\docType{data}
\alias{wcvisa}
\title{Topo: West Coast of Vancouver Island Survey Strata}
\description{
  PolySet of polygons describing the survey strata for the west coast of
  Vancouver Island synoptic groundfish survey.
}
\usage{data(wcvisa)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{SID...}{secondary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}

  A PolyData set attached as an attribute called \code{PolyData} gives
  the following for each \code{PID} and \code{SID}: \cr 
  \code{ID} = polygon ID from the ArcView dump, \cr
  \code{grid} = unique depth identifier, where 101 = 50--125 m, 102 = 125--200 m,
  103 = 200--330 m, and 104 = 330--500 m, \cr
  \code{index} = index used to identify SIDs in PIDs, \cr
  \code{orient} = polygon orientation where 1 = solid and -1 = hole, and \cr
  \code{col} = colour for each polygon in one of the four depth strata.
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting 4 depth strata for the west coast of Vancouver Island
  synoptic groundfish survey. The four depth zones are 50--125 m, 125--200 m,
  200--330 m, and 330--500 m. This survey is complementary to both the
  deeper longspine thornyhead survey (Schnute \emph{et al.} 2004) and the 
  Queen Charlotte Sound survey (Stanley \emph{et al.} 2004).
}
\references{
  Schnute, J., Haigh R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  The British Columbia longspine thornyhead fishery: analysis of survey and 
  commercial data (1996-2003). \emph{Canadian Science Advisory Secretariat, 
  Research Document} \bold{2004/059}, 75 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/csas/CSAS/publications/ResDocs-DocRech/2004/2004_059_E.htm}

  Stanley, R.D., Starr, P., Olsen, N. and Haigh, R. (2004) Summary of results 
  of the 2003 Queen Charlotte Sound bottom trawl survey. \emph{Canadian Science 
  Advisory Secretariat, Research Document} \bold{2004/028}, 50 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/csas/CSAS/publications/ResDocs-DocRech/2004/2004_028_E.htm}
}
\examples{
\dontrun{
pbsfun=function(){
  require(PBSmapping); data(wcvisa,nepacLL)
  pdata=attributes(wcvisa)$PolyData
  plotMap(nepacLL,xlim=c(-129.0,-124.3),y=c(48.0,50.8),border="grey")
  addPolys(wcvisa,polyProps=pdata)
  box(); invisible() }
pbsfun()
}
}
\seealso{
  \code{\link{ltsa}}, \code{\link{qcssa}}
}
\keyword{datasets}
