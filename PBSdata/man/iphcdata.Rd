\name{iphcdata}
\alias{iphcdata}
\docType{data}
\title{
  Data: IPHC Survey Historical Data
}
\description{
  A list object containing fixed datasets for the 
  IPHC longline surveys in 1995-2002 and 2013.
}
\usage{
data("iphcdata", package="PBSdata")
}
\format{
  A list of 7 data frames:

  Three data frames of count data for 1995|2003 IPHC surveys:\cr
  \code{countData1995} -- dimension = c(1235, 4)\cr
  \code{countData1995rs} -- dimension = c(365, 4), random sample?\cr
  \code{countData2013}  -- dimension = c(1304, 4)\cr
  with 4 fields each:\cr
  \code{year.......}{1995 or 2013, depending on the dataset}\cr
  \code{station....}{station name, to link with \code{setData1995} or \code{setData2013}}\cr
  \code{specName...}{species name for the counts for that set}\cr
  \code{specCount..}{count of that species for that set}

  Three data frames of station data for 1995|2003 IPHC surveys:\cr
  \code{setData1995} -- dimension = c(120, 5)\cr
  \code{setData1995rs} -- dimension = c(39, 5), random sample?\cr
  \code{setData2013} -- dimension = c(170, 8)\cr
  with 5 fields for 1995 and 8 fields for 2013:\cr
  \code{lat..........}{1995 | 2013 latitude of station}\cr
  \code{lon..........}{1995 | 2013 longitude of station}\cr
  \code{station......}{1995 | 2013 station name}\cr
  \code{effSkate.....}{1995 effective skate number of the set, as calculated by IPHC}\cr
  \code{usable.......}{1995 | 2013 whether or not the set is usable,
    as determined by IPHC plus four extra that had no hooks enumerated
    except for Pacific Halibut, and so are not usable by DFO}\cr
  \code{year.........}{2013 for this data set}\cr
  \code{avgDepthlon..}{2013 average depth of set}\cr
  \code{effSkateIPHC.}{2013 effective skate number of the set, as calculated by IPHC}\cr
  \code{E_it20.......}{2013 effective skate number of the set based on the
    first 20 hooks only, calculated as the 
    (number of hooks observed) / (number of hooks retrieved) * effSkateIPHC}
  
  One data frame of set-by-set level data (with species counts) from 1996 to 2002:\cr
  \code{data1996to2002} -- dimension = c(8569, 13)\cr
  with 13 fields :\cr
  \code{year.........}{year}\cr
  \code{station......}{station name}\cr
  \code{set..........}{set number within a trip (double check that)}\cr
  \code{lat..........}{latitude of station}\cr
  \code{lon..........}{longitude of station}\cr
  \code{depthAvge....}{average depth of set}\cr
  \code{spCodeIPHC...}{species code as used by the IPHC}\cr
  \code{spNameIPHC...}{species name as used by the IPHC}\cr
  \code{E_it.........}{effective skate number of the set calculated by IPHC (based on obs. hook numbers)}\cr
  \code{catchCount...}{count of that species for that set}\cr
  \code{skates.......}{number of skates on that set}\cr
  \code{hooksObserved.}{number of hooks observed on that set}\cr
  \code{usable.......}{whether or not the set is usable, as determined by IPHC}
}
\details{
  \code{countData1995} -- dataset containing counts of each species 
  for each Setline Grid station for the 1995 IPHC survey.

  \code{countData1995rs} -- dataset containing counts of the 
  RS (Random Sample?) stations for the 1995 IPHC survey.

  \code{countData2013} -- dataset containing counts of each species
  for each station for the 2013 IPHC survey.

  \code{setData1995} -- dataset containing details of the Setline Grid
  stations for the 1995 IPHC survey; one set was deployed at each station.

  \code{setData1995rs} -- dataset containing details of the RS (Random Sample?)
  stations for the 1995 IPHC survey; one set was deployed at each station.
  Currently not using these data but including here for completeness.

  \code{setData2013} -- dataset containing details of the stations for 
  the 2013 IPHC survey; one set was deployed at each station.

  \code{data1996to2002} -- dataset containing details of the catches at 
  each station from 1996 to 2002 for the IPHC survey. 
  Note that 1996 is based on all hooks being enumerated while 1997-2002 is for first 20 only.
  This is taken into account in \code{get_iphc_1996to2002()} which should be used to extract these data.
  The values of \code{effSkateIPHC} here have already been corrected to give an effective skate number
  based on the true number of hooks observed for 1997-2002.
}
\note{
  Datasets come from the R package \href{https://github.com/pbs-assess/gfiphc}{gfiphc}, maintained by Andrew M. Edwards.
}
\references{
  \href{https://github.com/pbs-assess/gfiphc}{gfiphc} -- An R package for extracting and analysing groundfish data from the IPHC longline survey in BC.
}
\source{
  \code{countData1995} -- Originally from file \code{1995IPHCSetlineData.xlsx} that
  \emph{Lynne Yamanaka} received from \emph{Aaron Ranta} at the IPHC.

  \code{countData2013} -- Originally from file \code{2013.20-SampleInfo.csv}
  from an IPHC spreadsheet.
  See private \code{yeye15Reproduce} repo by \emph{Andrew Edwards} for data-raw.

  \code{setData1995} -- Originally from file \code{1995IPHCSetlineData.xlsx}
  that \emph{Lynne Yamanaka} received from Aaron Ranta at the IPHC.

  \code{setData2013} -- Originally from file \code{2013.20-SampleInfo.csv}
  from an IPHC spreadsheet.
  See private \code{yeye15Reproduce} repo by \emph{Andrew Edwards} for data-raw.

  \code{data1996to2002} -- Originally from the file 2B AllSpecies 96-02 roundlll.xls that came
  from the IPHC, which \emph{Rowan Haigh} extracted into 'IPHC 2B Catch.rda', 
  \emph{Andrew Edwards} preprocessed in iphc9602.Snw for Yelloweye 2014 assessment, and then
  tidied further in private yeye15reproduce repository.
}
\examples{
\dontrun{
data(iphcdata)
require(PBSmodelling)
unpackList(iphcdata)
view(iphcdata)
}
}
\author{
  \href{mailto:andrew.edwards@dfo-mpo.gc.ca}{Andrew M. Edwards}, PBS, Nanaimo BC
}
\section{Dates}{
  Last modified \code{Rd: 2023-03-14}\cr
  Last modified \code{data: 2019-08-23}
}
\keyword{datasets}
\concept{data}
\concept{iphc}
