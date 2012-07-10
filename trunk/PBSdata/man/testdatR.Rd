\name{testdatR}
\docType{data}
\alias{testdatR}
\title{Data: Fisheries Catch Data with Species by Row}

\description{
  Fisheries catch and effort data where the catch of each species 
  appears on separate rows under one catch column in the data frame.
}
\usage{data(testdatR)}

\format{
  A data frame with 10,567 rows and 12 columns: \cr
    \code{EID....}{Event identification number} \cr
    \code{spp....}{Species HART code as a character string: \cr
    \code{......."396"} = Pacific Ocean Perch \emph{Sebastes alutus}; \cr
    \code{......."626"} = Dover Sole \emph{Microstomus pacificus}} \cr
    \code{X......}{Longitude (degrees W) at start position of tow} \cr
    \code{Y......}{Latitude (degrees N) at start position of tow} \cr
    \code{X2.....}{Longitude (degrees W) at end position of tow} \cr
    \code{Y2.....}{Latitude (degrees N) at end position of tow} \cr
    \code{tcat...}{Total biological catch (kg) in trawl tow} \cr
    \code{eff....}{Duration (h) of trawl tow} \cr
    \code{cpue...}{Catch per unit effort (kg/h) of trawl tow} \cr
    \code{fdep...}{Depth (m) of fishing} \cr
    \code{cfv....}{Fictitious vessel number} \cr
    \code{date...}{Date in YYYY-MM-DD format}
}
\details{
  Data subset for use with the GUI \code{dePeche Mode}. %\code{\link{map}}.
}
\source{
  Fisheries and Oceans Canada database: \code{PacHarvest}
}
\seealso{
  \code{\link[PBSdata]{testdatC}} %, \code{\link{map}}
}
\keyword{datasets}

