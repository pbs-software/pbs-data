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
  QCS Synoptic \code{c(1, 2, 3, 121, 167)} \cr
  WCVI Synoptic \code{c(16, 70, 126)} \cr
  WCQCI Synoptic \code{c(158, 159, 160)} \cr
  Hecate Strait Synoptic \code{c(15, 111, 166)}

  Use \code{getPMR} to get population parameters (\eqn{p}, \eqn{\mu}, \eqn{\rho}) 
  for other species and/or surveys.
}
\source{
  Fisheries and Oceans Canada database \code{GFBioSQL}
}
\references{
  Schnute, J.T. and R. Haigh. (2003) 
  \href{https://cdnsciencepub.com/doi/abs/10.1139/f03-041}{A simulation model for designing groundfish trawl surveys}. 
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
  Last modified \code{Rd: 2024-11-13}\cr
  Last modified \code{data: 2014-07-04}
}
\keyword{datasets}
\concept{data}

