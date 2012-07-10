\name{locality}
\docType{data}
\alias{locality}
\title{Topo: Localities in Pacific Marine Fisheries Commission Minor Areas}
\description{
  PolySet of polygons for fishing ground localities within PMFC minor areas.
}
\usage{data(locality)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{SID...}{secondary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 5,942 vertices trace 237 contours which describe 237 fishing grounds.

  A data frame attached as an attribute called \code{PolyData} gives details 
  on the 237 fishing localities. \code{PolyData} has 7 columns: \cr
  \code{PID........}{primary polygon ID,} \cr
  \code{SID........}{secondary polygon ID,} \cr
  \code{label......}{numeric area combining PMFC \code{minor} area and locality number,} \cr
  \code{major......}{PMFC \code{\link{major}} area,} \cr
  \code{minor......}{PMFC \code{\link{minor}} area,} \cr
  \code{locality...}{code of fishing ground within \code{minor},} \cr
  \code{name.......}{name of the ground used by fishermen.}
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region) 
  for delimiting groundfish fishing localities within Pacific Marine 
  Fisheries Commission (PMFC) minor areas.

  The international PMFC established areas along the North American 
  Pacific coast from California to Alaska (Tagart, 1991). These 
  correspond roughly to reporting regions for the U.S. triennial 
  surveys. They also fit into a Canadian scheme of dividing the coast 
  into major areas, where Canadian areas 3--9 correspond to PMFC areas 
  3C, 3D, 5A, 5B, 5C, 5D, and 5E. The major areas have hierarchical 
  breakdowns into minor areas and localities (Table 3.2, Fig. 3.2a, 
  Schnute \emph{et al.} 2001). The major areas cover the BC coast, and the 
  minor areas simply cover the coast with a larger number of 
  subdivisions. Based on historic fishing grounds, each minor area 
  contains localities. These typically leave holes, so that a minor
  area can consist of various defined localities plus other
  regions. Each locality has a code number within the minor area,
  where \code{9} always means \sQuote{other}, \emph{i.e.}, outside the identified
  localities. Another code \code{0} denotes an unknown locality, rather
  than \code{9}. Simplified, majors cover the BC coast, so do minors, but
  localities do not.
}
\references{
  Schnute, J.T., Haigh, R., Krishka, B.A., and Starr, P. (2001) Pacific
  Ocean Perch assessment for the west coast of Canada in 2001. \emph{Canadian
  Science Advisory Secretariat, Research Document} \bold{2001/138}. 90 pp.\cr
  \url{http://www.dfo-mpo.gc.ca/csas/Csas/publications/ResDocs-DocRech/2001/2001_138_e.htm}

  Tagart, J.V. (1991) Population dynamics of Yellowtail Rockfish
  (\emph{Sebastes flavidus}) stocks in the northern California to
  southwest Vancouver Island region. Ph. D. thesis, University of
  Washington. 323 pp.
}
\examples{
\dontrun{
pbsfun=function(ex=1){
  require(PBSmapping)
  if (ex==1) {
    data(locality)
    plotMap(locality,border="cornflowerblue")
    addLabels(attributes(locality)$PolyData,polys=locality,
      placement="CENTROID",col="gray40",cex=.5) }
  if(ex==2) {
    data(locality,nepacLL)
    plotMap(locality,xlim=c(-130.2,-127),ylim=c(49.8,52.1),col="aliceblue")
    addPolys(nepacLL,col="#b9ed3f")
    pdata <- attributes(locality)$PolyData
    pdata$label <- gsub("[/-]"," ",pdata$name)
    pdata$label=sapply(sapply(pdata$label,strsplit,split=" "),paste,collapse="\n")
    addLabels(pdata,polys=locality,placement="CENTROID",cex=.65,col="red") }
  invisible() }

pbsfun(1); pbsfun(2)
}
}
\seealso{
  \code{\link{major}}, \code{\link{minor}}, \code{\link{srfa}}
}
\keyword{datasets}
