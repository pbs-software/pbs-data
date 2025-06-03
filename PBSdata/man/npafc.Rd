\name{npafc}
\alias{npafc}
\docType{data}
\title{
  Topo: North Pacific Anadromous Fish Commission Areas
}
\description{
  The North Pacific Anadromous Fish Commission (NPAFC) is an international
  inter-governmental organization established to promote the conservation of
  seven anadromous fish stocks in the international waters of the North Pacific
  Ocean and two adjacent seas.
}
\usage{data("npafc", package="PBSdata")}
\format{
  A PolySet of three polygons, comprising 7145 vertices, and five fields.
  \describe{
    \item{\code{PID}}{primary polygon ID}
    \item{\code{SID}}{secondary polygon ID}
    \item{\code{POS}}{position of each vertex within a given polygon}
    \item{\code{X}}{geographic longitude (\eqn{^\circ}{deg}W)}
    \item{\code{Y}}{geographic latitude (\eqn{^\circ}{deg}N)}
  }
}
\details{
  The North Pacific Anadromous Fish Commission (NPAFC) is an international
  inter-governmental organization established by the Convention for the
  Conservation of Anadromous Stocks in the North Pacific Ocean. The Convention
  was signed on February 11, 1992, and took effect on February 16, 1993. 
  The member countries are Canada, Japan, Republic of Korea, Russian Federation,
  and United States of America.

  As defined in the Convention, the primary objective of the NPAFC is to promote
  the conservation of anadromous stocks in the Convention Area. The Convention
  Area is the international waters of the North Pacific Ocean and its adjacent
  seas north of 33\eqn{^\circ}{deg} North beyond the 200-mile
  zones (exclusive economic zones) of the coastal States.

  For the purposes of NPAFC, anadromous fish include Pacific salmon and
  steelhead trout.  Anadromous stocks are the stocks of these species that 
  migrate into the Convention Area.

  See \url{https://www.npafc.org/about/} for further details.
}
\source{
  Michael Folkes, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
\section{Dates}{
  Last modified \code{Rd: 2025-06-03}\cr
  Last modified \code{data: 2015-02-16}
}
\keyword{datasets}

