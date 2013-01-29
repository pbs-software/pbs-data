\name{bgcp}
\docType{data}
\alias{bgcp}
\title{Topo: Biogeochemical Provinces}
\description{
  Polygons outlining the biogeochemical provinces of the world's oceans 
  as defined by Dr. Alan Longhurst and others.
}
\usage{data(bgcp)}
\format{
  Data frame comprising 5 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{SID...}{secondary polygon ID} \cr
    \code{POS...}{numeric position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}

  The geographic data are centered at 0 degrees on the Greenwich prime 
  meridian and span -180 to 180 degrees.
}
\details{
  The 13,451 vertices trace 131 contours with 18 holes. In total, 
  there are 57 polygons describing the biogeochemical provinces (BGCP).
  This dataset was provided by Dr. Reg Watson (\url{http://www.ecomarres.com/contact.html})
  as an ArcView shapefile which was imported to R using \code{PBSmapping} commands: \cr
  \code{bgcp=importShapefile("long_all.shp")} 

  A data frame attached as an attribute called \code{PolyData} gives 
  details of the 57 polygons. \code{PolyData} has 19 columns: \cr
  \code{PID} = primary polygon ID, \cr
  \code{X} = the polygon centroid's longitude, \cr
  \code{Y} = the polygon centroid's latitude, \cr
  \code{prov} = numeric code for the BGCP province, \cr
  \code{bgcp} = alpha code for the BGCP province, \cr
  \code{bid} = numeric code for the 5 biomes, \cr
  \code{biome} = biome name (short title), \cr
  \code{col} = default polygon colour for each of the biomes, \cr
  \code{label} = name of the BGCP, \cr
  \code{numblk} = number of blocks (rasters comprising the BGCP ?), \cr
  \code{seablk} = number of sea blocks (rasters comprising the BGCP ?), \cr
  \code{algald} = algal density code?, \cr
  \code{mindep} = minimum depth in BGCP (units?), \cr
  \code{maxdep} = maximum depth in BGCP (units?), \cr
  \code{avgdep} = average depth in BGCP (units?), \cr
  \code{pperim} = the length of the polyline outlining the polygon (?), \cr
  \code{parea} = area of the BGCP (?), \cr
  \code{area} = area of the BGCP (?), \cr
  \code{perim} = the length of the polyline outlining the polygon (?).
}
\source{
  Dr. Reg Watson (\url{http://www.ecomarres.com/}) -- email:

  \emph{Hi Rowan} \cr
  \emph{Well, you can have the shapefiles which we constructed from text files 
  sent us by Longhurst's group. We were interested in only one version. 
  I believe it was their 1995 version as this one had had tuna densities described for it. 
  There have been many other versions since.}

  \emph{I don't believe there are any rights issues with this shapefile expect for the 
  work we put into it some years ago (and the scientists who defined it like Trevor Pratt).} \cr
  \emph{Cheers, Reg}
}
\references{
  Longhurst, A. (2007). \emph{Ecological Geography of the Sea.} Elsevier / Academic Press, 
  Burlington, MA. 542 pp. \cr
  \url{http://www.mar.dfo-mpo.gc.ca/science/ocean/BedfordBasin/Papers/Longhurst1998/Provinces/EcologicalGeographyOfTheSea.htm}

  Pauly, D., Christensen, V., Froese, R., Longhurst, A., Platt, T., Sathyendranath, S.,
  Sherman, K. and Watson, R. (2000) Mapping fisheries onto marine ecosystems: a proposal 
  for a consensus approach for regional, oceanic and global integrations. 
  \emph{ICES CM} \bold{2000/T:14}.
}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){
  opar = par(no.readonly=TRUE); on.exit(par(opar))
  if (!require(PBSmapping, quietly=TRUE)) stop("`PBSmapping` package is required")
  data(bgcp,envir=.PBSdataEnv)
  pdata <- attributes(bgcp)$PolyData
  plotMap(bgcp,polyProps=pdata,plt=c(.05,.99,.05,.99))
  pdata$label=pdata$bgcp
  addLabels(pdata,cex=.7) }
pbsfun()
})
}
}
\seealso{
  \code{\link{ltmose12}}, \code{\link{qcb}}, \code{\link{trawlability}}
}
\keyword{datasets}
