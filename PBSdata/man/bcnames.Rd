\name{bcnames}
\docType{data}
\alias{bcnames}
\title{Topo: British Columbia Geographical Names}
\description{
  \code{EventData} set describing populated places, administrative areas,
  water features, terrain features, features associated with vegetation,
  and constructed features within British Columbia.
}
\usage{data(bcnames)}
\format{
  Data frame comprising 6 columns:
  \tabular{ll}{
    \code{EID}    \tab {event ID} \cr
    \code{label}  \tab {geographical name} \cr
    \code{type}   \tab {type of feature} \cr
    \code{X}      \tab {longitude coordinates (\eqn{^\circ}{deg}W)} \cr
    \code{Y}      \tab {latitude coordinates (\eqn{^\circ}{deg}N)} \cr
    \code{status} \tab {name status}
  }
}
\details{
	\bold{Create ASCII File}

  The original ASCII file was created from an HTML file obtained
  20 June 2007 through the
  \href{https://www2.gov.bc.ca/gov/content/governments/celebrating-british-columbia/historic-places/geographical-names}{%
  BC Geographical Names} website, which also provides an
  \href{https://apps.gov.bc.ca/pub/bcgnws/web/}{online GUI}.

  Several changes were made while converting from the HTML
  format into a comma-delimited ASCII format:
  \itemize{
    \item rendered all longitude values negative to match our existing PolySets;
    \item deleted records with labels containing the string 
          \code{"Reserve indienne"} since they duplicated events with English names;
    \item removed unnecessary characters \code{" (#)"} from some \code{type} fields;
    \item removed events with a latitude value less than 10
          (these events lacked proper coordinates in the BCGNIS database).
    \item saved as a binary file (despite warnings when performing \code{R CMD check}):\cr
      \code{save("bcnames", file="bcnames.rda")}
  }
  On 13 June 2023, the R data object created above, and stored as 
  \code{'bcnames.rda'}, was exported to a comma-delimited text file.
  Therein, all UTF-8 characters were rendered as Unicodes
  (e.g., \code{\\u\{00E9\}}) to avoid warnings by the \code{R CMD check} routine.
  The codified characters can be rendered into Unicode through the \code{PBStools}
  function \code{'convUTF'}, which essentially borrows the idea from 
  \href{https://stackoverflow.com/questions/72591452/replace-double-by-single-backslash}{G. Grothendieck}:

  \code{as.character(str2expression(sprintf('"\%s"', text)))}

  \bold{Object from 2023 ASCII}

  To add BC place names to an existing map, a user imports data from
  the CSV file mentioned above and performs the following steps:
  \enumerate{
    \item imported the 2023 ASCII file, either\cr
      \code{bcnames = read.csv("bcnames-(commas).csv")} or\cr
      \code{bcnames = read.table("bcnames-(semicolon).csv", header=T, sep=";")}
    \item convert the object to an \code{EventData} set\cr
      \code{bcnames = as.EventData(bcnames)}
    \item grab the records with Unicode:\cr
      \code{unirecs = grep("\\\\\\\\u", bcnames$label)}
    \item convert labels with embedded Unicode text to show the Unicode symbols:\cr
      \code{bcnames$label[unirecs] = convUTF(bcnames$label[unirecs])}
    \item add selected place names to map, for example:\cr
      \code{addPoints(bcnames[unirecs,], pch=20, col="red")}\cr
      \code{addLabels(bcnames[unirecs,], col="blue", cex=0.7, pos=4)}
  }
  On 3 June 2025, the 2023 ASCII was imported as above and the 
  Unicodes were rendered into UTF-8 characters.
  The new \code{bcnames} object was saved to a binary RDA file and
  transferred from the package \pkg{PBSvault} to \pkg{PBSdata}.
  The \code{R CMD check} no longer complains about UTF-8 characters inside
  a binary RDA file, so the RDA was submitted as the primary data
  file rather than using the CSV file (as used in \pkg{PBSvault}).
}
\section{Dates}{
  Last modified \code{Rd: 2025-06-03}\cr
  Last modified \code{data: 2007-01-31}
}
\seealso{
In package \pkg{PBSmapping}:\cr
  \code{addPoints},
  \code{addLabels},
  \code{as.EventData}\cr
In package \pkg{PBStools}:\cr
  \code{convUTF}
}
\keyword{datasets}
\concept{Topo}

