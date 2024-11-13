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
  A data frame with 30,194 observations on the following 17 variables.
  \tabular{ll}{
    \code{EID} \tab Event ID number\cr
    \code{X}   \tab longitude coordinate (degrees West)\cr
    \code{Y}   \tab latitude coordinate (degrees North)\cr
    \code{Z}   \tab depth (m) at which tow caught fish\cr
    \code{ARF} \tab catch (kg) of Arrowtooth Flounder \emph{Atheresthes stomias}\cr
    \code{BIS} \tab catch (kg) of Big Skate \emph{Raja binoculata}\cr
    \code{DOL} \tab catch (kg) of Dover Sole \emph{Microstomus pacificus}\cr
    \code{LIN} \tab catch (kg) of Lingcod \emph{Ophiodon elongatus}\cr
    \code{PAK} \tab catch (kg) of Pacific Hake \emph{Merluccius productus}\cr
    \code{POP} \tab catch (kg) of Pacific Ocean Perch \emph{Sebastes alutus}\cr
    \code{ROL} \tab catch (kg) of Rock Sole \emph{Lepidopsetta bilineatus}\cr
    \code{RSR} \tab catch (kg) of Redstripe Rockfish \emph{Sebastes proriger}\cr
    \code{SBF} \tab catch (kg) of Sablefish \emph{Anoplopoma fimbria}\cr
    \code{SGR} \tab catch (kg) of Silvergrey Rockfish \emph{Sebastes brevispinis}\cr
    \code{SST} \tab catch (kg) of Shortspine Thornyhead \emph{Sebastolobus alascanus}\cr
    \code{YMR} \tab catch (kg) of Yellowmouth Rockfish \emph{Sebastes reedi}\cr
    \code{YTR} \tab catch (kg) of Yellowtail Rockfish \emph{Sebastes flavidus}
  }
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
In package \pkg{PBSdata}:\cr
  \code{\link[PBSdata]{testdatC}}\cr
In package \pkg{PBStools}:\cr
  \code{\link[PBStools]{clarify}}\cr
In package \pkg{cluster}:\cr
  \code{\link[cluster]{clara}}
}
\section{Dates}{
  Last modified \code{Rd: 2024-05-22}\cr
  Last modified \code{data: 2014-12-16}
}
\keyword{datasets}
\concept{data}

