\name{major}
\docType{data}
\alias{major}
\title{Topo: Pacific Marine Fisheries Commission Major Areas}
\description{
  PolySet of polygons for BC's PMFC major areas.
}
\usage{data(major)}
\format{
  Data frame comprising 4 columns: \cr
    \code{PID...}{primary polygon ID} \cr
    \code{POS...}{position of each vertex within a given polygon} \cr
    \code{X.....}{longitude coordinates} \cr
    \code{Y.....}{latitude coordinates}
}
\details{
  The 301 vertices trace 8 contours which describe 8 PMFC major areas in BC.

  A PolyData set attached as an attribute called \code{PolyData} gives details 
  on the 8 major PMFC areas. \code{PolyData} has 4 columns: \cr
  \code{PID.....}{primary polygon ID,} \cr
  \code{major...}{numeric code of PMFC major area,} \cr
  \code{label...}{PMFC alpha-numeric designation, and} \cr
  \code{name....}{geographic name of the PMFC major area.}
}
\source{
  Polygon data in use at Fisheries and Oceans Canada (Pacific region)
  for delimiting Pacific Marine Fisheries Commission (PMFC) major areas.

  The international PMFC established areas along the North American
  Pacific coast from California to Alaska (Tagart 1991). These
  correspond roughly to reporting regions for the U.S. triennial
  surveys. They also fit into a Canadian scheme of dividing the coast
  into major areas, where Canadian areas 3--9 correspond to PMFC areas
  3C, 3D, 5A, 5B, 5C, 5D, and 5E. The major areas have hierarchical
  breakdowns into minor areas and localities (Table 3.2, Fig. 3.2a,
  Schnute \emph{et al}. 2001). The major areas cover the BC coast, and the
  minor areas simply cover the coast with a larger number of
  subdivisions. Based on historic fishing grounds, each minor area
  contains localities. These typically leave holes, so that a minor area
  can consist of various defined localities plus other regions. Each
  locality has a code number within the minor area, where \code{9} always
  means \sQuote{other}, \emph{i.e.}, outside the identified localities. Another code
  \code{0} denotes an unknown locality, rather than \code{9}. Simplified, majors
  cover the BC coast, so do minors, but localities do not.
}
\references{
  Schnute, J.T., Haigh, R., Krishka, B.A. and Starr, P. (2001) Pacific
  Ocean Perch assessment for the west coast of Canada in 2001. \emph{Canadian
  Science Advisory Secretariat, Research Document} \bold{2001/138}, 90 pp.\cr
  \url{http://www.dfo-mpo.gc.ca/csas/Csas/publications/ResDocs-DocRech/2001/2001_138_e.htm}

  Tagart, J.V. (1991) Population dynamics of Yellowtail Rockfish
  (\emph{Sebastes flavidus}) stocks in the northern California to
  southwest Vancouver Island region. Ph. D. thesis, University of
  Washington. 323 pp.
}
\examples{
\dontrun{
pbsfun=function(){
  require(PBSmapping); data(major,nepacLL)
  plotMap(nepacLL,xlim=c(-134.2,-124),ylim=c(47.5,55),border="grey")
  addPolys(major,border="purple")
  addLabels(attributes(major)$PolyData,col="goldenrod",cex=1.5)
  invisible() }
pbsfun()
}
}
\seealso{
  \code{\link{pmfc}}, \code{\link{minor}}, \code{\link{srfa}}, \code{\link{locality}} \cr
  \bold{\code{PBSdata}}: \code{gma.popymr}
}
\keyword{datasets}
