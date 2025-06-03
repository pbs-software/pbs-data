\name{pdo}
\alias{pdo}
\alias{npgo}
\alias{mei}
\docType{data}
\title{
  Data: Monthly Anomalies for Environmental Indices
}
\description{
  Monthly anomalies for environmental data sets like the 
  Pacific Decadal Oscillation (PDO), the
  North Pacific Gyre Oscillation (NPGO), and the 
  Multivariate ENSO Index (MEI).
}
\usage{
  data("pdo",  package="PBSdata")
  data("npgo", package="PBSdata")
  data("mei", package="PBSdata")
}
\format{
  A data frame with 2,055 observations (PDO), 903 observations (NPGO),
  and 554 observations (MEI) on the following 3 variables.
  \describe{
    \item{\code{year}}{\code{numeric} -- vector of years}
    \item{\code{month}}{\code{numeric} -- vector of months}
    \item{\code{anomaly}}{\code{numeric} -- vector of anomalies}
  }
}
\details{
  Data set borrowed from package \pkg{pacea}.
}
\source{
Edwards A.M., Tai T.C., Watson J., Pe\ifelse{latex}{\out{\~{n}}}{\ifelse{html}{\out{&ntilde;}}{n}}a M.A., Hilborn A., Hannah C.G., Rooper C.N., Flynn K.L., and Oldford, G.L. (2024)
\href{https://github.com/pbs-assess/pacea}{pacea}: 
An R package of Pacific ecosystem information to help facilitate an ecosystem approach to fisheries management.
}
\references{
Mantua, N.J., Hare, S.R., Zhang, Y., Wallace, J.M. and Francis, R.C. (1997)
\href{https://doi.org/10.1175/1520-0477(1997)078<1069:APICOW>2.0.CO;2}{%
A pacific interdecadal climate oscillation with impacts on salmon production}.
\emph{Bull. Am. Meteorol. Soc.} \bold{78(6)}. 1069--1080.

Di Lorenzo, E (2008)
\href{https://doi.org/10.1029/2007GL032838}{North Pacific Gyre Oscillation links ocean climate and ecosystem change}.
\emph{Geophysical Research Letters}. \bold{35(8)}.

Wolter, K. and Timlin, M.S. (1993)
Monitoring ENSO in COADS with a seasonally adjusted principal component index.
\emph{In} NOAA's Climate Analysis Center (CAC), 
National Severe Storms Laboratory (NSSL), 
Oklahoma Climate Survey, 
Center for Climate Modeling and Analysis (CIMMS), and 
School of Meteorology, University of Oklahoma, eds.,
Proceedings of the 17th Climate Diagnostics Workshop, 18-23 October 1992, Norman, OK, USA, 52--57.

Wolter, K. and Timlin, M.S. (1998)
\href{https://doi.org/10.1002/j.1477-8696.1998.tb06408.x}{%
Measuring the strength of ENSO events: How does 1997/98 rank?}
\emph{Weather} \bold{53(9)}. 315--324.
}
\keyword{datasets}
\concept{data}

