\name{make.loc.pjs}
\alias{make.loc.pjs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Make PJS Locality Codes
}
\description{
  Make locality codes that PJS uses in GLMs for CPUE analyses.
}
\usage{
make.loc.pjs()
}
%- maybe also 'usage' for other objects documented here.
\details{
  Reads a csv file from:
  \code{system.file("csv/pjs-localities.csv", package="PBSdata")}
}
\value{
A list containing two objects:
  \item{loc.pjs}{\code{numeric} -- vector of PJS area codes from 1 to 311,
    named by unique combination of \code{major}, \code{minor} and \code{locality} codes}
  \item{\code{area.pjs}}{\code{data.frame} -- PJS input data used to create \code{loc.pjs};
    data frame has been modified (e.g., new column names, lower case area names)}
}
\author{
  \href{mailto:paul@starrfish.net}{Paul J. Starr}, independent consultant with CGRCS

  \href{mailto:rowan.haigh@dfo-mpo.gc.ca}{Rowan Haigh}, Program Head -- Offshore Rockfish\cr
  Pacific Biological Station (PBS), Fisheries & Oceans Canada (DFO), Nanaimo BC\cr
  \emph{locus opus}: Remote office, Vancouver BC\cr
  Last modified \code{Rd: 2024-12-13}
}
\note{
  \code{make.loc.pjs} calls function \code{capFun} in \code{PBSdata}.
}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\seealso{
In package \pkg{PBSdata}:\cr
  \code{\link[PBSdata]{capFun}}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{manip}
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
\concept{A01_Utility}
% \concept{ ~cpt2 }
% Use only one concept per line.
