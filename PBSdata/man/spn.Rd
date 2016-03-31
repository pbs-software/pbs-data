\name{spn}
\docType{data}
\alias{spn}
\title{Code: Species Code Vector}
\description{
  Vector of species names referenced by codes in \code{names(spn)}.
}
\usage{data(spn)}
\format{
  Named character vector comprising 4,919 elements of species descriptions. 
  The user can access any element using a code that is part of the 
  \code{names(spn)} vector. For example, \code{spn["POP"]} and \code{spn["396"]} 
  both yield \code{"Pacific Ocean Perch"}.

  Latin names can be accessed by appending \code{".L"} to the species code: \cr
  \code{spn["POP.L"]} and \code{spn["396.L"]} both yield \code{"Sebastes alutus"}
}
\details{
  Codes (Hart 1973, 3-letter, 2-letter, etc.) for species can be found in the data 
  table \code{C_Species} of DFO's \code{PacHarvest} database.

  The object also contains codes for additional items, e.g., \cr
  \code{ORF} = \sQuote{Rockfish other than POP} \cr
  \code{cpue} = \sQuote{CPUE (kg/h)}
}
\source{
  Norm Olsen, Pacific Biological Station, Nanaimo BC.
}
\references{
  Hart, J.L. (1973) Pacific Fishes of Canada. \emph{Bulletin of the Fisheries Research 
  Board of Canada} \bold{180}, 740 pp.
}
\examples{
local(envir=.PBSdataEnv,expr={
pbsfun=function(){
  opar=par(no.readonly=TRUE); on.exit(par(opar))
  data(spn,envir=.PBSdataEnv)
  spp=c(396,440,394,403,439,451,453) # slopes
  x=as.character(spp); xL=paste(spp,".L",sep="")
  xdf=cbind(spn[x],paste("(",spn[xL],")",sep=""),rep("\n\n",length(x)))
  mess=paste(apply(xdf,1,paste,collapse=" "),collapse="")
  mess=paste("BC slope rockfish:\n\n\n",mess,sep="")
  plot(-1:1,-1:1,type="n",axes=FALSE,xlab="",ylab="")
  text(0,0,paste(strwrap(mess,width=80),collapse="\n"),col="blue",cex=.8)
  invisible() }
pbsfun()
})
}
\seealso{
  \code{\link[PBSdata]{species}}
}
\keyword{datasets}
