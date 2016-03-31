\name{testdatC}
\docType{data}
\alias{testdatC}
\title{Data: Fisheries Catch Data with Species by Column}

\description{
  Fisheries catch and effort data where the catch of each species 
  forms separate columns in the data frame.
}
\usage{data(testdatC)}

\format{
  A data frame with 9,565 rows and 11 columns: \cr
    \code{EID....}{Event identification number} \cr
    \code{X......}{Longitude (degrees W) at start position of tow} \cr
    \code{Y......}{Latitude (degrees N) at start position of tow} \cr
    \code{X2.....}{Longitude (degrees W) at end position of tow} \cr
    \code{Y2.....}{Latitude (degrees N) at end position of tow} \cr
    \code{date...}{Date in YYYY-MM-DD format} \cr
    \code{fdep...}{Depth (m) of fishing} \cr
    \code{eff....}{Duration (min) of trawl tow} \cr
    \code{cfv....}{Fictitious vessel number} \cr
    \code{POP....}{Pacific ocean perch \emph{Sebastes alutus} catch (kg) in tow} \cr
    \code{LST....}{Longspine thornyhead \emph{Sebastolobus altivelis} catch (kg) in tow}
}
\details{
  Data subset for use with the GUI \code{dePeche Mode}.% \code{\link{creatMap}}.
}
\source{
  Fisheries and Oceans Canada database \code{PacHarvest}
}
\seealso{
  \code{\link[PBSdata]{testdatR}} %, \code{\link{createMap}} 
}
\keyword{datasets}

