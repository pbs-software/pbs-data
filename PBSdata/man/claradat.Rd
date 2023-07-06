\name{claradat}
\alias{claradat}
\docType{data}
\title{
  Data: Tow Catches of Species in Queen Charlotte Sound
}
\description{
  Tow catches of thirteen species of fish in Queen Charlotte Sound selected
  for demonstrating the function \code{clarify}, which clusters many species
  into a smaller number of groups using \code{clara} from the \pkg{cluster} package.
}
\usage{data("claradat", package="PBSdata")}
\format{
  A data frame with 30,194 observations on the following 17 variables. \cr
    \code{EID...}{Event ID number} \cr
    \code{X.....}{longitude coordinate (degrees West)} \cr
    \code{Y.....}{latitude coordinate (degrees North)} \cr
    \code{Z.....}{depth (m) at which tow caught fish} \cr
    \code{ARF...}{catch (kg) of Arrowtooth Flounder \emph{Atheresthes stomias}} \cr
    \code{BIS...}{catch (kg) of Big Skate \emph{Raja binoculata}} \cr
    \code{DOL...}{catch (kg) of Dover Sole \emph{Microstomus pacificus}} \cr
    \code{LIN...}{catch (kg) of Lingcod \emph{Ophiodon elongatus}} \cr
    \code{PAK...}{catch (kg) of Pacific Hake \emph{Merluccius productus}} \cr
    \code{POP...}{catch (kg) of Pacific Ocean Perch \emph{Sebastes alutus}} \cr
    \code{ROL...}{catch (kg) of Rock Sole \emph{Lepidopsetta bilineatus}} \cr
    \code{RSR...}{catch (kg) of Redstripe Rockfish \emph{Sebastes proriger}} \cr
    \code{SBF...}{catch (kg) of Sablefish \emph{Anoplopoma fimbria}} \cr
    \code{SGR...}{catch (kg) of Silvergrey Rockfish \emph{Sebastes brevispinis}} \cr
    \code{SST...}{catch (kg) of Shortspine Thornyhead \emph{Sebastolobus alascanus}} \cr
    \code{YMR...}{catch (kg) of Yellowmouth Rockfish \emph{Sebastes reedi}} \cr
    \code{YTR...}{catch (kg) of Yellowtail Rockfish \emph{Sebastes flavidus}} 
}
\details{
  This \code{EventData} set is a subset of a potentially much larger file that 
  might comprise hundreds of thousands of tows and 80+ fish species.
  This dataset has been pared down to the region bounded by -130.5\eqn{^\circ}{deg}W, 
  -128\eqn{^\circ}{deg}W, 50.8\eqn{^\circ}{deg}N, and 52\eqn{^\circ}{deg}N. Additionally, it excludes all depths
  less than 100 m and only reports catch for 13 fish species.
}
\source{
  Fisheries and Oceans Canada database \code{PacHarvest}
}
\seealso{
  \bold{PBSdata:}\cr
  \code{\link[PBSdata]{testdatC}}\cr
  \bold{PBStools:}\cr
  \code{clarify} \cr
  \bold{cluster:}\cr
  \code{clara}
}
\section{Dates}{
  Last modified \code{Rd: 2023-03-14}\cr
  Last modified \code{data: 2014-12-16}
}
\keyword{datasets}

