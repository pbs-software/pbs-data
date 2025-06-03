\name{pop.pmr.qcss}
\docType{data}
\alias{pop.pmr.qcss}
\title{Data: Pacific Ocean Perch (p, mu, rho) for QCS Synoptic Survey}

\description{
  Population parameter values (\eqn{p}, \eqn{\mu}, \eqn{\rho}) for Pacific Ocean Perch 
  \emph{Sebastes alutus} captured in Queen Charlotte Sound Synoptic survey strata. 
}
\usage{data("pop.pmr.qcss", package="PBSdata")}

\format{
  A data frame with 32 rows and 8 columns: \cr
    \code{SID...} Survey ID number assigned by the GFBio team\cr
    \code{h.....} Strata ID (alpha and/or numeric)\cr
    \code{p.....} Proportion of zero measurements\cr
    \code{mu....} Mean of nonzero measurements\cr
    \code{rho...} CV of nonzero measurements\cr
    \code{A.....} Bottom area (km\eqn{^2}) of each stratum\cr
    \code{n.....} Actual number of tows performed to derive \code{(p,mu,rho)}\cr
    \code{k.....} Preference/weighting of new tows

  Attributes include \code{fqt} (query name), \code{strSpp} (string 
  species code), \code{h} (strata), and \code{survey} (data frame 
  comprising \code{SID}, \code{year}, and \code{survey}).
}
\details{
  Groundfish synoptic surveys to date by survey ID \code{SID}: \cr
  Queen Charlotte Sound (QCS) Synoptic (SSID 1)\cr
    \code{...c(1, 2, 3, 121, 167, 304, 424, 448, 506, 539, 553, 582)}\cr
  West Coast Vancouver Island (WCVI) Synoptic (SSID 4):\cr
    \code{...c(16, 70, 126, 250, 382, 434, 472, 523, 552, 570, 609)}\cr
  West Coast Haida Gwaii (WCHG) Synoptic (SSID 16):\cr 
    \code{...c(122, 123, 129, 253, 383, 437, 474, 524, 547, 571, 610)}\cr
  Hecate Strait (HS) Synoptic (SSID 3):\cr
    \code{...c(15, 111, 166, 303, 421, 447, 504, 536, 551, 586)}

  Use \code{getPMR()} to get population parameters (\eqn{p}, \eqn{\mu}, \eqn{\rho}) 
  for other species and/or surveys.
}
\author{
  Maintainer: \href{mailto:rowan.haigh@dfo-mpo.gc.ca}{Rowan Haigh}, Program Head -- Offshore Rockfish\cr
  Pacific Biological Station (PBS), Fisheries & Oceans Canada (DFO), Nanaimo BC\cr
  \emph{locus opus}: Remote office, Vancouver BC\cr
  Last modified \code{Rd: 2025-06-03}
}
\source{
  Fisheries and Oceans Canada database \code{GFBioSQL}
}
\references{
  Schnute, J.T. and R. Haigh. (2003) 
  \href{https://doi.org/10.1139/f03-041}{A simulation model for designing groundfish trawl surveys}. 
  \emph{Canadian Journal of Fisheries and Aquatic Sciences} \bold{60}, 640--656.
}
\seealso{
  \bold{PBStools:}\cr
  \code{calcPMR},
  \code{getPMR},
  \code{sampBG},
  \code{bootBG}
}
\section{Dates}{
  Last modified \code{Rd: 2025-06-03}\cr
  Last modified \code{data: 2014-07-04}
}
\keyword{datasets}
\concept{data}

