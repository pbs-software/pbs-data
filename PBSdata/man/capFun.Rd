\name{capFun}
\alias{capFun}
\title{
  Capitalise First Letters of Words
}
\description{
  Capitalise the first letter of each word in a string.
}
\usage{
capFun(x, exclude=c("-", "de","fm","fm)","mi.)","of")) 
}
\arguments{
  \item{x}{\code{character} -- a vector of strings}
  \item{exclude}{\code{character} -- words to exclude from capitalisation}
}
\details{
  The function uses \code{strsplit}, \code{toupper}, and \code{sapply} 
  along with a whole mess of \code{gsub} calls. 
  A vector of strings \code{x} can be passed to the function.
}
\value{
	The input vector where the first letter of all words are capitalised
	(except for connecting words, etc.).
}
\author{
  \href{mailto:rowan.haigh@dfo-mpo.gc.ca}{Rowan Haigh}, Program Head -- Offshore Rockfish\cr
  Pacific Biological Station (PBS), Fisheries & Oceans Canada (DFO), Nanaimo BC\cr
  \emph{locus opus}: Remote office, Vancouver BC\cr
  Last modified \code{Rd: 2024-12-13}
}
\seealso{
In package \pkg{PBStools} (other string manipulators):\cr
  \code{\link[PBStools]{createMA}},
  \code{\link[PBStools]{formatCatch}},
  \code{\link[PBStools]{inWord}},
  \code{\link[PBStools]{linguaFranca}},
  \code{\link[PBStools]{readClog}},
  \code{\link[PBStools]{revStr}},
  \code{\link[PBStools]{showMessage}},
  \code{\link[PBStools]{subsetFile}},
  \code{\link[PBStools]{texArray}},
  \code{\link[PBStools]{toUpper}},
  \code{\link[PBStools]{wrapText}}\cr
In package \pkg{PBSdata}:\cr
  \code{\link[PBSdata]{gfb.codes}}
}
\keyword{character}
\concept{C01_Codes}

