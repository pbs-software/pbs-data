\name{pjsa}
\alias{pjsa}
\docType{data}
\title{
  Code: Paul J Starr Locality Codes
}
\description{
  Unique numeric locality codes used by Paul J. Starr for GLM analyses.
}
\usage{data(pjsa)}
\format{
  A data frame with 311 observations on the following 8 variables.
  \tabular{ll}{
    \code{code}      \tab numeric: Paul's numeric code. \cr
    \code{name}      \tab character: locality description. \cr
    \code{majorCode} \tab numeric: major area codes used by DFO and based on PMFC areas. \cr
    \code{majorName} \tab character: major area description. \cr
    \code{minorCode} \tab numeric: minor area codes used by DFO. \cr
    \code{minorName} \tab character: minor area description. \cr
    \code{localCode} \tab numeric: locality codes that designate DFO fishing grounds \cr
                     \tab unique within each DFO minor area. \cr
    \code{index}     \tab character: index comprising major, minor, and locality codes \cr 
                     \tab separated by a period (\code{.}).
  }
}
\source{
  Paul J. Starr, Stock Assessment Scientist, Nanaimo BC and Wellington NZ
}
%\seealso{
%  \code{\link{glimmer}}
%}
\keyword{datasets}

