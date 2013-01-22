\name{dbr.rem}
\docType{data}
\alias{dbr.rem}
\alias{ymr.rem}
\title{Data: Annual Catches of Rockfish by Sector}

\description{
  Annual catches of rockfish (dbr = Darkblotched \emph{Sebastes crameri}, 
  ymr = Yellowmouth \emph{S. reedi}) in BC waters by gear sector and nationality 
  (currently, only US Trawl available for non-domestic).
  
  Last update Apr 9, 2008 (RH)
}
\usage{
  data(dbr.rem)
  data(ymr.rem)
}
\format{
  A data frame with 77 rows and 8 columns, where each row represents a 
  management fishing year:
  \tabular{ll}{
    \code{Year}    \tab Management fishing year \cr
    \code{CAtrawl} \tab Canadian trawl catch (t) \cr
    \code{UStrawl} \tab USA (WA, OR, CA) trawl catch (t) \cr
    \code{ZnHL}    \tab Canadian Zn hook & line catch (t) \cr
    \code{SchedII} \tab Canadian Schedule II (troll) catch (t) \cr
    \code{Halibut} \tab Halibut longline catch (t) \cr
    \code{TotalHL} \tab Total hook and line catch (t) \cr
    \code{Total}   \tab Total (trawl + hook & line) catch (t)
  }
}
\details{
  Tables of catch and their derivation appear in pre-COSEWIC documents (Haigh & Starr 2008).
}
\source{
  Fisheries and Oceans Canada
}
\references{
  Haigh, R., and Starr, P. (2008) 
  A review of yellowmouth rockfish \emph{Sebastes reedi} along the Pacific 
  coast of Canada: biology, distribution, and abundance trends.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2008/055}, 97 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/CSAS/Csas/Publications/ResDocs-DocRech/2008/2008_055_e.htm}

  Haigh, R., and Starr, P. (2008) 
  A review of darkblotched rockfish \emph{Sebastes crameri} along the Pacific 
  coast of Canada: biology, distribution, and abundance trends.
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2008/056}, 88 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/CSAS/Csas/Publications/ResDocs-DocRech/2008/2008_056_e.htm}
}
%\seealso{
%  \code{\link{plotCatch}} 
%}
\examples{
\dontrun{
local(envir=.PBSdataEnv,expr={
  if (!require(PBStools, quietly=TRUE)) stop("`PBStools` package is required")
  plotCatch(dbr.rem)
  plotCatch(ymr.rem)
})
}
}
\keyword{datasets}

