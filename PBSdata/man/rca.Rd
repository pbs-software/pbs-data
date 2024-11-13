\name{rca}
\docType{data}
\alias{rca}
\title{Topo: Rockfish Conservation Areas}
\description{
  PolySet of polygons for BC inshore Rockfish Conservation Areas 2007.
}
\usage{data(rca)}
\format{
  Data frame comrising 5 columns:
  \tabular{ll}{
    \code{PID} \tab primary polygon ID\cr
    \code{SID} \tab secondary polygon ID\cr
    \code{POS} \tab position of each vertex within a given polygon\cr
    \code{X}   \tab longitude coordinates\cr
    \code{Y}   \tab latitude coordinates
  }
}
\details{
  The 21,733 vertices trace 3,567 contours with 3,357 holes. There are 
  192 PIDs, details of which can be found in the \code{PolyData} object 
  attached as an attribute.
}
\note{
  The source shapefile was imported to R using the \bold{PBSmapping} 
  function \code{importShapefile}. The PolySet was then thinned 
  using \code{thinPolys} with \code{tol=0.05} and \code{filter=1}.
}
\source{
  Lisa Lacko, Fisheries and Oceans Canada, PBS Groundfish. \cr
  Original ArcView shapefile = \code{RockfishConservationAreas.shp}.

  In May 2002, the Minister of Fisheries and Oceans announced a 
  preliminary conservation strategy for rebuilding Pacific inshore Rockfish 
  stocks. One of the key elements of the strategy included the development 
  of a network of closed areas coastwide. These closed areas, Rockfish 
  Conservation Areas (RCAs), restrict fishing activity that has a significant 
  impact on rockfish. The areas are to act as protected refugia for rockfish 
  and Lingcod.

  The Rockfish Conservation Areas are to act as protected refugia for 
  rockfish and Lingcod. This will allow the animals residing within the closed 
  area to maintain a high level of productivity and thereby supply larvae for 
  other depleted areas. Due to the sedentary nature of the rockfish and their 
  tendency to be long-lived, the closed areas will be in effect for many 
  years, i.e. (20--25 years). Monitoring programs will measure the success of 
  the closed area element of the strategy over time.
}
\references{
  \href{https://www.pac.dfo-mpo.gc.ca/fm-gp/maps-cartes/rca-acs/index-eng.html}{Rockfish Conservation Area maps}
}
\examples{
local(envir=.PBSdataEnv,expr={
if(any(grepl("PBSmapping",.packages()))) {
  pbsfun=function(xlim=c(-124,-123.4),ylim=c(48.77,49.25)){
    if (dev.cur()>1) {
      oldpar=par(no.readonly=TRUE); on.exit(par(oldpar)) }
    data(nepacLLhigh,rca,envir=.PBSdataEnv)
    plotMap(nepacLLhigh,xlim=xlim,ylim=ylim,col="gainsboro",border="darkgrey")
    pdata=attributes(rca)$PolyData
    addPolys(rca,col="skyblue")
    addLabels(pdata,cex=0.65,polys=rca,placement="CENTROID",col="red")
    box(); invisible() }
  pbsfun()
} else
  cat("Load PBSmapping package to see the example.\n")
})
}
\seealso{
In package \pkg{PBSmapping}:\cr
  %\code{\link[PBSmapping]{importShapefile}},
  \code{\link[PBSmapping]{thinPolys}}
}
\section{Dates}{
  Last modified \code{Rd: 2024-05-22}\cr
  Last modified \code{data: 2018-08-27}
}
\keyword{datasets}
\concept{topo}
