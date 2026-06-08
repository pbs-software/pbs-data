\name{extractParks}
\alias{extractParks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Extract Park Polygons
}
\description{
  Extract park polygons from City of Vancouver \code{CSV} files.
  The algorithm could be expanded to include other shapes
  from other \code{CSV} files (like MPAs, etc.)
}
\usage{
extractParks(pname="parks-polygon-representation.csv", pattern, plot=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pname}{\code{character} -- name of CSV file containing georeferenced shapes}
  \item{pattern}{\code{character} -- string patterns to subset park polygons}
  \item{plot}{\code{logical} -- if \code{TRUE}, plot the extraction using PBSmapping}
}
\details{
  Uses highly-specific character matching.
  For instance, the City of Vancouver exports polygons using a series of 
  nested brackets `[]' for primary and secondary polygon IDs.
}
\value{
  A PBSmapping PolySet with column names: \code{'PID'}, \code{'SID'},
  \code{'POS'}, \code{'X'}, and \code{'Y'}.
  
  At present, the function only creates the data object
  \code{\link[PBSdata]{vanparks}} (both returned and saved
  as a binary \code{RDA} file).
}
\references{
  City of Vancouver -- 
  \href{https://opendata.vancouver.ca/explore/dataset/parks-polygon-representation/export/}{Open Data Portal}
}
\author{
  \href{mailto:rowan.haigh@dfo-mpo.gc.ca}{Rowan Haigh}, Program Head -- Offshore Rockfish\cr
  Pacific Biological Station (PBS), Fisheries & Oceans Canada (DFO), Nanaimo BC\cr
  \emph{locus opus}: remote office, Vancouver BC\cr
  Last modified \code{Rd: 2026-06-08}
}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\seealso{
In package \pkg{PBSdata}:\cr
  \code{\link[PBSdata]{vanparks}}\cr
In package \pkg{PBSmapping}:\cr
  \code{\link[PBSmapping]{plotMap}},
  \code{\link[PBSmapping]{addPolys}},
  \code{\link[PBSmapping]{addPoints}},
  \code{\link[PBSmapping]{as.PolySet}},
  \code{\link[PBSmapping]{as.EventData}}\cr
In package \pkg{PBStools}:\cr
  \code{\link[PBSmodelling]{expandGraph}}
}
\examples{
\dontrun{
out = extractParks(pname="parks-polygon-representation.csv",
   pattern=c("Stanley", "Kits", "West"), plot=TRUE)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{manip}
\keyword{hplot}
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
\concept{Topo}
% \concept{ ~cpt2 }
% Use only one concept per line.
