\name{qcb}
\docType{data}
\alias{qcb}
\title{Topo: Queen Charlotte Basin Surficial Geology}
\description{
  PolySet of polygons describing the surficial geology of 
  Queen Charlotte Sound and Hecate Strait.
}
\usage{data(qcb)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{SID...}{secondary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 21,843 vertices trace 190 polygons (255 contours, 65 holes) which 
  describe 9 broad categories of surficial geology in the Queen Charlotte Basin. 
  The data were imported from an ArcView geographic projection shapefile 
  (provided by Lisa Lacko, PBS) called \code{QCB_geo.shp} available on the 
  groundfish geo-server \code{SVBCPBSGFIIS}.

  A data frame attached as an attribute called \code{PolyData} gives 
  details of the 190 polygons. \code{PolyData} has 8 columns: \cr
    \code{PID...........}{primary polygon ID,} \cr
    \code{gisID.........}{original polygon ID in \code{QCB_geo.shp},} \cr
    \code{pmfc..........}{a loose set of \code{PMFC} codes,} \cr
    \code{len...........}{polygon circumference (km),} \cr
    \code{area..........}{polgon area (km\eqn{^2}{.sq}),} \cr
    \code{description...}{detailed description of surficial geology,} \cr
    \code{label.........}{simplified category for surficial geology, and} \cr
    \code{col...........}{colour for each category.}
}
\source{
  Abstract from Barrie \emph{et al.} (1991):
  
  The northwestern Canadian continental shelf, including Dixon Entrance, 
  Hecate Strait and Queen Charlotte Sound, can be divided into four surficial 
  geological units all overlying Tertiary bedrock within the Queen Charlotte 
  Basin. They include:

  (1) glacial till, deposited primarily in the troughs 
  between banks and considered to be late Wisconsinan in age;

  (2) glaciomarine mud, deposited in the troughs as ice retreated from the shelf;

  (3) Queen Charlotte sands and gravels, outwash deposition in the north and sublittoral
  sand deposition in the south during sea level low stand and subsequent 
  reworking during transgression; and 

  (4) Queen Charlotte muds, deposited within the troughs of the region from late Wisconsinan times until present.

  These units are a result of a glaciation ending 15,000--13,000 years BP followed 
  by relative sea level lowering by approximately 100 m, that persisted until 
  10,500 years ago, and a subsequent transgression that occurred over approximately 
  1500 years in a series of steps. 
}
\references{
  Barrie, V., Bornhold, B.D., Conway, K.W. and Luternauer, J.L. (1991)
  Surficial geology of the northwestern Canadian continental shelf.
  \emph{Continental Shelf Research} \bold{19S(8--10)}, 701--715 pp.

  Sinclair, A.F., Conway, K.W. and Crawford, W.R. (2005) 
  Associations between bathymetric, geologic and oceanographic features and 
  the distribution of the British Columbia bottom trawl fishery. 
  \emph{In} The Spatial Dimension of Ecosystem Structure and Dynamics. \bold{ICES} CM 2005/L:25.
}
\examples{
\dontrun{
pbsfun=function(){
  require(PBSmapping); data(nepacLL,qcb)
  pdata=attributes(qcb)$PolyData
  leglab=sapply(split(pdata$label,pdata$col),function(x){
    y=unique(x);paste(y,collapse=" / ")})
  leglab=leglab[order(leglab)]
  xlim=c(-132.5,-127.5); ylim=c(50.5,55)
  plotMap(nepacLL,xlim=xlim,ylim=ylim,border="grey")
  addPolys(qcb,border=FALSE, polyProps=pdata)
  legend("bottomleft",fill=names(leglab),legend=leglab,bty="n",cex=.8)
  invisible() }
pbsfun()
}
}
\seealso{
  \code{\link{trawlability}}, \code{\link{hsgrid}}
}
\keyword{datasets}

