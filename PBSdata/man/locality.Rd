\name{locality}
\docType{data}
\alias{locality}
\alias{locality.plus}
\title{Topo: Localities in PMFC Minor Areas}
\description{
  PolySet of polygons for fishing ground localities within 
  Pacific Marine Fisheries Commission (PMFC) minor areas.
}
\usage{
data(locality)
data(locality.plus)
}
\format{
  Data frame comprising 5 columns:\cr
    \code{PID...} primary polygon ID\cr
    \code{SID...} secondary polygon ID\cr
    \code{POS...} position of each vertex within a given polygon\cr
    \code{X.....} longitude coordinates\cr
    \code{Y.....} latitude coordinates
}
\details{
  In \code{locality}, 5942 vertices trace 237 contours which describe 237 fishing grounds.\cr
  In \code{locality.plus}, 7686 vertices trace 287 contours with 12 holes; these polygons describe fishing grounds and named areas not previously identified as fishing grounds.

  A data frame attached as an attribute called \code{PolyData} gives details 
  on the 237 (or 287) fishing localities. \code{PolyData} has these columns:\cr
  \code{PID........} primary polygon ID,\cr
  \code{SID........} secondary polygon ID,\cr
  \code{X..........} centroid X-value (longitude),\cr
  \code{Y..........} centroid Y-value (latitude),\cr
  \code{label......} numeric area combining PMFC \code{minor} area and locality number,\cr
  \code{major......} PMFC \code{\link[PBSdata]{major}} area,\cr
  \code{minor......} PMFC \code{\link[PBSdata]{minor}} area,\cr
  \code{locality...} code of fishing ground within \code{minor},\cr
  \code{name.......} name of the ground used by fishermen (or devised),\cr
  \code{ID.........} unique code comprising major, minor, and locality.
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
  Schnute, J.T., Haigh, R., Krishka, B.A., and Starr, P. (2001) 
  \href{https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2001/2001_138-eng.htm}{%
  Pacific Ocean Perch assessment for the west coast of Canada in 2001}.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2001/138}. 90 pp.

  Tagart, J.V. (1991) 
  Population dynamics of Yellowtail Rockfish (\emph{Sebastes flavidus}) stocks in the 
  northern California to southwest Vancouver Island region.
  Ph. D. thesis, University of Washington. 323 pp.
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(ex=1){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    par(mfrow=c(1,1), mar=c(3,3,0.5,0.5), oma=c(0,0,0,0), mgp=c(2,0.5,0))
    if (ex==1) {
      data(locality,package="PBSdata",envir=.PBSdataEnv)
      plotMap(locality,border="cornflowerblue",plt=NULL)
      pdata <- attributes(locality)$PolyData
      #addLabels(pdata,polys=locality,placement="CENTROID",col="gray40",cex=.5)
      addLabels(pdata,placement="DATA",col="gray40",cex=.5)
    } else if (ex==2) {
      data(locality,nepacLL,envir=.PBSdataEnv)
      xlim=c(-130.2,-127); ylim=c(49.8,52.1)
      plotMap(locality,xlim=xlim,ylim=ylim,plt=NULL)
      addPolys(locality, col="aliceblue")
      addPolys(nepacLL,col="lemonchiffon")
      pdata <- attributes(locality)$PolyData
      pdata$label <- gsub("[/-]"," ",pdata$name)
      pdata$label=sapply(sapply(pdata$label,strsplit,split=" "),paste,collapse="\n")
      addLabels(pdata,placement="DATA",cex=.65,col="blue")
      box()
    } else if (ex==3) {
      data(locality.plus,nepacLL,envir=.PBSdataEnv)
      xlim=c(-134.8,-129); ylim=c(51.2,54.8)
      plotMap(nepacLL,xlim=xlim, ylim=ylim, plt=NULL, cex.axis=1.2, cex.lab=1.5)
      addPolys(locality.plus, border="orange")
      addPolys(nepacLL,border="gainsboro",col="honeydew")
      pdata <- attributes(locality.plus)$PolyData
      pdata$label <- gsub("[/-]"," ",pdata$name)
      pdata$label=sapply(sapply(pdata$label,strsplit,split=" "),paste,collapse="\n")
      pdata = pdata[is.element(pdata$SID,1),]
      addLabels(pdata,placement="DATA",col="black",cex=.6)
      box()
    }
    invisible() }
  pbsfun(1); pbsfun(2); pbsfun(3)
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\section{Dates}{
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2017-10-16}
}
\seealso{
  \code{\link[PBSdata]{major}}, \code{\link[PBSdata]{minor}}, \code{\link[PBSdata]{srfa}}
}
\keyword{datasets}
\concept{topo}

