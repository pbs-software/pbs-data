\name{farmsFF}
\alias{farmsFF}
\alias{farmsSF}
\docType{data}
\title{
  Topo: Saltwater Finfish and Shellfish Tenures
}
\description{
  A PolySet describing saltwater finfish and shellfish tenures -- 
  Coastal Resource Information Management System (CRIMS). 
}
\usage{
data(farmsFF)
data(farmsSF)
}
\format{
  A data frame with 8792 (finfish) or 29263 (shellfish) observations on the following 5 variables.
  \describe{
    \item{\code{PID}}{primary polygon ID}
    \item{\code{SID}}{secondary polygon ID}
    \item{\code{POS}}{vertex position number}
    \item{\code{X}}{longitude coordinate (degrees W)}
    \item{\code{Y}}{latitude coordinate (degrees N)}
  }
}
\details{
  The distribution of saltwater finfish farm and hatchery sites (\code{farmsFF}) 
  and commercial marine shellfish farms (\code{farmsSF})in British Columbia. 
  Information includes company name and license information. 
  British Columbia has been collecting coastal resource data in a systematic 
  and synoptic manner since 1979. Resource information is collected using 
  peer-reviewed provincial Resource Information Standards Committee which 
  include standards for data management and analysis
}
\source{
  Geographic Data Discovery Service \cr
  \bold{Saltwater Finfish Tenures} (accessed 2013-12-19) \cr
  \code{https://apps.gov.bc.ca/pub/geometadata/metadataDetail.do?recordUID=4025} [defunct]\cr
  \href{https://catalogue.data.gov.bc.ca/dataset/saltwater-finfish-tenures-coastal-resource-information-management-system-crims}{Saltwater Finfish Tenures - CRIMS}\cr
  \bold{Shellfish Tenures} (accessed 2014-01-08) \cr
  \code{https://apps.gov.bc.ca/pub/geometadata/metadataDetail.do?recordUID=4031} [defunct]\cr
  \href{https://catalogue.data.gov.bc.ca/dataset/shellfish-aquaculture-plan-unit-boundaries}{Shellfish Aquaculture Plan Unit Boundaries}

  Contact Name: Carol Ogborne \cr
  Contact Organization: BCGOV FLNRO GeoBC \cr
  Email Address: Carol.Ogborne@gov.bc.ca \cr
  Phone Number: 250 952-6557
}
\author{
  \href{mailto:rowan.haigh@dfo-mpo.gc.ca}{Rowan Haigh}, Program Head -- Offshore Rockfish\cr
  Pacific Biological Station (PBS), Fisheries & Oceans Canada (DFO), Nanaimo BC\cr
  \emph{locus opus}: Institute of Ocean Sciences (IOS), Sidney BC\cr
  Last modified \code{Rd: 2019-10-01}
}
\keyword{datasets}
\concept{topo}
