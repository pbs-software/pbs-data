\name{pop.age}
\docType{data}
\alias{pop.age}
\title{Data: Pacific Ocean Perch Age Data (5AB, 5CD)}

\description{
  Biological data (primarily age but also length, weight, etc.) for Pacific Ocean Perch 
  \emph{Sebastes alutus} in slope rockfish assessment areas 5AB and 5CD.
}
\usage{data(pop.age)}

\format{
  A data frame with 54,585 rows and 18 columns:

  \tabular{ll}{
  \code{EID}   \tab Event identification number \cr
  \code{X}     \tab Longitude (degrees W) \cr
  \code{Y}     \tab Latitude (degrees N) \cr
  \code{SID}   \tab Sample identification number \cr
  \code{ttype} \tab Trip type: \cr
               \tab    1 = Non-observed commercial \cr
               \tab    2 = Research \cr
               \tab    3 = Charter \cr
               \tab    4 = Observed commercial \cr
  \code{stype} \tab Sample type: \cr
               \tab    0 = Unknown \cr
               \tab    1 = Total Catch \cr
               \tab    2 = Random \cr
               \tab    4 = Selected \cr
               \tab    5 = Stratified \cr
               \tab    6 = Random from randomly assigned set \cr
               \tab    7 = Random from set after randomly assigned set \cr
               \tab    8 = Random from set requested by vessel master \cr
               \tab    9 = Selected juveniles \cr
               \tab   10 = Selected adults \cr
  \code{date}  \tab Date (YYYY-MM-DD) \cr
  \code{year}  \tab Calendar year \cr
  \code{sex}   \tab Sex code: 0=Not observed, 1=Male, 2=Female, 3=Observed but unknown \cr
  \code{age}   \tab Estimated age (y) of fish specimen \cr
  \code{ameth} \tab Ageing method: \cr
               \tab    0 = Unknown \cr
               \tab    1 = Otolith surface only \cr
               \tab    2 = Otolith sectioned \cr
               \tab    3 = Otolith broken and burnt \cr
               \tab    4 = Otolith burnt and sectioned \cr
               \tab    5 = Otolith (unknown) \cr
               \tab    6 = Dorsal fin \cr
               \tab    7 = Pectoral fin \cr
               \tab    8 = Pelvic fin \cr
               \tab    9 = Unknown fin \cr
               \tab   10 = Scale \cr
               \tab   11 = Dorsal spine \cr
               \tab   12 = Vertebrae \cr
               \tab   13 = Length \cr
               \tab   14 = Pre-opercular \cr
               \tab   15 = Anal fin \cr
               \tab   16 = Surface and broken and burnt \cr
  \code{len}   \tab Total length (mm) of fish specimen \cr
  \code{wt}    \tab Total round weight (g) of fish specimen \cr
  \code{gear}  \tab Gear type: \cr
               \tab    0 = Unknown \cr
               \tab    1 = Bottom trawl \cr
               \tab    2 = Trap \cr
               \tab    3 = Gillnet \cr
               \tab    4 = Handline \cr
               \tab    5 = Longline \cr
               \tab    6 = Midwater trawl \cr
               \tab    7 = Troll \cr
               \tab    8 = Unknown trawl \cr
               \tab    9 = Seine \cr
               \tab   10 = Jig \cr
               \tab   11 = Shrimp trawl \cr
               \tab   12 = Recreational rod and reel \cr
               \tab   13 = Prawn trap \cr
               \tab   14 = Tucker trawl \cr
  \code{major} \tab Pacific Marine Fisheries Commission major area \cr
  \code{catch} \tab Total catch (kg) of species (POP in this case) of fishing event from which sample was taken.\cr
  \code{srfa}  \tab Slope rockfish assessment area \cr
  \code{srfs}  \tab Slope rockfish assessment subareas, \emph{aka} gullies 
  }
}
\details{
  Biological data for 5AB + 5CD POP (only when field \code{age>0 & !is.null(age)}).
}
\source{
  Fisheries and Oceans Canada database: \code{GFBioSQL}.
}
\references{
  Schnute, J.T., Haigh, R., Krishka, B.A. and Starr, P. (2001) 
  Pacific Ocean Perch assessment for the west coast of Canada in 2001. 
  \emph{Canadian Science Advisory Secretariat, Research Document} \bold{2001/138}. 90 pp. \cr
  \url{http://www.dfo-mpo.gc.ca/csas/Csas/publications/ResDocs-DocRech/2001/2001_138_e.htm}
}
%\seealso{
%  \code{\link{plotProp}}, \code{\link{calcVB}}, \code{\link{compCsum}}
%}
\keyword{datasets}

