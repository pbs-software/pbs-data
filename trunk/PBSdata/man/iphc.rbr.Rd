\name{iphc.rbr}
\docType{data}
\alias{iphc.rbr}
\alias{iphc.rer}
\alias{iphc.yyr}
\title{Data: Longline Indices of Rockfish Catch from the IPHC SSA}

\description{
  Catch and CPUE indices for the catch of three rockfish (Redbanded 
  \emph{Sebastes babcocki}, Rougheye \emph{S. aleutianus}, and Yelloweye 
  \emph{S. ruberrimus}) from the International Pacific Halibut 
  Commission's (IPHC) standardized stock assessment (SSA) survey using longline skates. 
  
  Last update Feb 15, 2008 (Lisa Lacko)
}
\usage{
  data(iphc.rbr)
  data(iphc.rer)
  data(iphc.yyr)
}

\format{
  A data frame with 998 rows and 5 columns, where each row represents a longline set: \cr
    \code{year......}{Calendar year} \cr
    \code{station...}{Station identifier} \cr
    \code{effsk.....}{Number of effective skates per longline} \cr
    \code{pcs.......}{Catch of rockfish (pieces)} \cr
    \code{cpue......}{CPUE of rockfish (pieces/effective skate)}
}
\details{
  Aside from these three example data objects, the IPHC rockfish bycatch data
  are housed in an \code{SQL} table maintained by Lisa Lacko in the DFO database
  \code{GFBioSQL}. The \code{SQL} query \code{gfb_iphc.sql} extracts information
  for the specified species (HART code), and the \code{trend} GUI controls the
  plotting routines. \cr

  \bold{excerpt from Obradovich \emph{et al}. (2008) Introduction:}

The International Pacific Halibut Commission's (IPHC) Standardized Stock Assessment
(SSA) survey is a fixed-station longline survey that extends from southern Oregon to the
Bering Sea. This survey is directed to index Halibut abundance and provide
accompanying biological samples to assess the Pacific Halibut stock. The British
Columbia (regulatory area 2B) portion of this survey has been conducted annually in
various configurations since 1963 (\url{www.iphc.washington.edu}). Since 2003, the IPHC
has provided the opportunity to deploy an additional technician during the survey to
identify the catch to species on a hook-by-hook basis and to collect biological samples
from rockfish (Yamanaka et al. 2004, 2007, and 2008, Lochead et al. 2006). Between
2003 and 2006, a contractor was hired to conduct this onboard sampling, but in 2007 the
IPHC was contracted by DFO to provide the third technician for this survey. In addition
to Halibut, many other groundfish species are commonly caught on the survey including
Spiny Dogfish (\emph{Squalus acanthias}), Sablefish (\emph{Anoplopoma fimbria}), and rockfishes
(\emph{Sebastes} spp.).

Similar to past reports, this report summarizes the catch and effort by location and the
biological data for the rockfish species caught incidentally during the survey. Selected
stations were used to construct catch rate indices for Yelloweye (\emph{Sebastes ruberrimus}),
Quillback (\emph{S. maliger}), Redbanded (\emph{S. babcocki}), and Rougheye (\emph{S. aleutianus}) rockfishes
using partial hook-by-hook data between 1996 and 2002 and complete species
enumerations in 1995 and 2003 to 2007. In this year's summary, new catch rate indices
are constructed between 2003 and 2007, using all stations in the survey. Catch and effort
data collected from the IPHC SSA survey in British Columbia provide informative
coastwide relative abundance indices for many groundfish species.
}
\source{
  International Pacific Halibut Commission (IPHC), P.O. Box 95009, 
  Seattle, WA  98145-2009, U.S.A
}
\references{
  Lochead, J.K., Yamanaka, K.L. and Dykstra, C. (2006) 
  Summary of non-Halibut catch from the standardized stock assessment 
  survey conducted by the International Pacific Halibut Commission in 
  British Columbia from June 1 to August 12, 2004. \emph{Canadian Technical 
  Report of Fisheries and Aquatic Sciences} \bold{2657}, ix + 52 p.

  Obradovich, S.G., Yamanaka, K.L., Cooke, K., Lacko, L.C. and Dykstra, C. (2008)
  Summary of non-Halibut catch from the Standardized Stock Assessment Survey 
  conducted by the International Pacific Halibut Commission in British 
  Columbia from June 4 to July 7, 2007. \emph{Canadian Technical Report 
  of Fisheries and Aquatic Sciences} \bold{2807}, x + 83 p.

  Schnute, J., Haigh, R., Krishka, B., Sinclair, A. and Starr, P. (2004) 
  The British Columbia Longspine Thornyhead fishery: analysis of survey 
  and commercial data (1996--2003). \emph{Canadian Science Advisory Secretariat, 
  Research Document} \bold{2004/059}, 75 p.

  Yamanaka, K.L., Lochead, J.K. and Dykstra, C. (2004) Summary of 
  non-Halibut catch from the standardized stock assessment survey 
  conducted by the International Pacific Halibut Commission in British 
  Columbia from May 27 to August 11, 2003. \emph{Canadian Technical Report 
  of Fisheries and Aquatic Sciences} \bold{2535}, iv + 53 p.

  Yamanaka, K.L., Lochead, J.K., Cooke, K., Lacko, L.C. and Dykstra, C. (2007)
  Summary of non-Halibut catch from the standardized stock assessment survey 
  conducted by the International Pacific Halibut Commission in British 
  Columbia from May 31 to July 24, 2005. \emph{Canadian Technical Report 
  of Fisheries and Aquatic Sciences} \bold{2689}, vii + 55 p.

  Yamanaka, K.L., Obradovich, S.G., Cooke, K., Lacko, L.C. and Dykstra, C. (2008)
  Summary of non-Halibut catch from the Standardized Stock Assessment Survey 
  conducted by the International Pacific Halibut Commission in British 
  Columbia from May 29 to July 22, 2006. \emph{Canadian Technical Report 
  of Fisheries and Aquatic Sciences} \bold{2796}, viii + 58 p.
}
\examples{
\dontrun{
pbsfun=function(){
  require(PBStools); data(iphc.rbr)
  trend("401","iphc.rbr",dbName="none",type="FILE")
  print("Press the GUI button labelled 'TREND'")
  invisible() }
pbsfun()
}
}
\seealso{
  %\code{\link{trend}}, \code{\link{showIndices}}, 
  \code{\link[PBSdata]{rca}}
}
\keyword{datasets}

