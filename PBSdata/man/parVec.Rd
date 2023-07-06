\name{parVec}
\docType{data}
\alias{parVec}
\title{Data: Initial Parameter Vector for Model Fits}

\description{
  A list of initial parameter vectors for model fits using 
  \code{PBSmodelling::calcMin}.
}
\usage{
data("parVec", package="PBSdata")
}

\format{
  A list of parameter vectors for model fits. The first level of the 
  list specifies the model identifier (currently: \code{vonB} for the 
  von Bertalanffy growth model, \code{SGM} for the Schnute growth model).
  The second level specifies the y-value being fitted (currently 
  \code{length} (cm) and \code{weight} (kg)). The third level of the list
  specifies a species code (e.g., \code{396} or \code{POP}). For any 
  combination of these three levels, a parameter vector may be specfied.

  Each parameter vector comprises a data frame 
  with \emph{n} rows and 4 columns. The rows of a parameter vector represent the 
  parameters to be estimated. In the case of a von Bertalanffy length model,
  there are 3 parameters: \code{Linf}, \code{K}, and \code{t0}. The columns of a 
  parameter vector are always the same: 
  \tabular{ll}{
    \code{val}    \tab {Initial parameter value to use in the minimization} \cr
    \code{min}    \tab {Lower bound of the parameter} \cr
    \code{max}    \tab {Upper bound of the parameter} \cr
    \code{active} \tab {Logical: if \code{TRUE}, estimate the parameter;} \cr 
                  \tab {if \code{FALSE}, fix the parameter value to the initial value}
  }
}
\details{
  A parameter vector is used in conjuction with the \code{PBSmodelling}
  function \code{calcMin()}.
  
  If a parameter vector is not available for a particular species, 
  the user must either supply his own or use one available in the list 
  (e.g, \code{parVec[["vonB"]][["length"]][["396"]]}).
}
\source{
  Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
\seealso{
  \bold{PBSdata:}\cr
  \code{\link[PBSdata]{pop.age}} \cr
  \bold{PBSmodelling:}\cr
  \code{calcMin}\cr
  \bold{PBStools:}\cr
  \code{calcVB}
}
\section{Dates}{
  Last modified \code{Rd: 2023-03-14}\cr
  Last modified \code{data: 2014-07-04}
}
\keyword{datasets}

