\name{pmfc}
\docType{data}
\alias{pmfc} 
\title{Code: Pacific Marine Fisheries Commission Areas}
\usage{data(pmfc)}
\description{
  Pacific Marine Fisheries Commission (PMFC) areas ued by DFO 
  groundfish personnel. Based largely on the original definitions 
  set up by the US PMFC and the Fisheries Research Board of Canada.
}
\format{
  Data frame of PMFC areas (\code{dim=c(22,4)}) with fields: \cr
    \code{major...}{major PMFC area code} \cr
    \code{name....}{descriptive name of the PMFC area} \cr
    \code{lats....}{latitude range of the PMFC area (approximate in some cases)} \cr
    \code{gmu.....}{label given to this PMFC area by DFO's Groundfish Management Unit}
}
\references{
  Forrester, C.R. (1969) Results of English Sole tagging in British Columbia waters. 
  \emph{Bulletin of Pacific Marine Fisheries Commission} \bold{7}: 1--10.

  Tagart, J. V. (1991) Population dynamics of Yellowtail Rockfish 
  (\emph{Sebastes flavidus}) stocks in the northern California to southwest 
  Vancouver Island region. Ph.D. thesis (University of Washington). 323 pp.
}
\note{
  Footnote in Forrester (1969) as \code{attributes(pmfc)$history}:

  In 1956, informal agreement was reached among various research agencies 
  along the Pacific coast to establish a uniform description of fishing areas 
  as a means of coordinating the collection and compilation of ottertrawl 
  catch statistics. This work was undertaken by the Pacific Marine Fisheries 
  Commission (representing the States of Washington, Oregon, and California) 
  with the informal cooperation of the Fisheries Research Board of Canada. 
  Areas 1A, 1B, and 1C encompass waters off the California coast, while 
  Areas 2A-2D involve waters adjacent to Oregon and a small part of southern 
  Washington. The remainder of the Washington coast and the waters off the 
  west coast of Vancouver Island comprise Areas 3A-3D, while United States and 
  Canadian inshore waters (Juan de Fuca Strait, Strait of Georgia, and Puget 
  Sound) are represented by Areas 4A and 4B, respectively. Fishing grounds 
  between the northern end of Vancouver Island and the British Columbia-Alaska 
  boundary are represented by Areas 5A-5E. The entire Alaskan coast is 
  designated as Area 6, but except for a small amount of fishing in inshore 
  channels, this area has not been trawled intensively by North American nationals.
}
\seealso{
  \code{\link{major}}
}
\examples{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){
  oldpar=par(no.readonly=TRUE); on.exit(par(oldpar))
  data(pmfc)
  mess=attributes(pmfc)$history
  plot(-1:1,-1:1,type="n",axes=FALSE,xlab="",ylab="")
  text(0,0,paste(strwrap(mess,width=80),collapse="\n"),col="blue",cex=.8)
  invisible() }
pbsfun()
})
}
\keyword{datasets}
