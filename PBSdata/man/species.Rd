\name{species}
\docType{data}
\alias{species}
\title{Code: Species Codes and Names}
\description{
  Data frame of species described primarily by Hart codes. The information resides in 
  a data table called \code{C_Species} in the relational database \code{PacHarvest},
  and is supplemented from species codes in \code{GFBIO}.
}
\usage{data(species)}
\format{
  Data frame comprising 5139 rows (species) and 20 columns:
  \tabular{ll}{
    \code{code}    \tab Hart code \cr
    \code{latin}   \tab scientific (latin) name \cr
    \code{name}    \tab common species name \cr
    \code{aka}     \tab also known as \cr
    \code{code2}   \tab 2-letter code if available \cr
    \code{code3}   \tab 3-letter code if available \cr
    \code{group}   \tab alpha code used as the third letter in \code{code3} to group species by  \cr
                   \tab common name (see \code{attributes(species)$group}) \cr
    \code{taxon}   \tab numeric code used for taxonomic grouping of fish \cr
                   \tab (see \code{attributes(species)$taxa}) \cr
    \code{gf}      \tab logical: \code{TRUE} indicates a groundfish species \cr
    \code{rf}      \tab logical: \code{TRUE} indicates a rockfish species \cr
    \code{ff}      \tab logical: \code{TRUE} indicates a flatfish species \cr
    \code{fish}    \tab logical: \code{TRUE} indicates a fish species \cr
    \code{invert}  \tab logical: \code{TRUE} indicates an invertebrate species \cr
    \code{reptile} \tab logical: \code{TRUE} indicates a reptile species \cr
    \code{bird}    \tab logical: \code{TRUE} indicates a bird species \cr
    \code{mammal}  \tab logical: \code{TRUE} indicates a mammal species \cr
    \code{comm}    \tab logical: \code{TRUE} indicates a commercial species \cr
    \code{foswt}   \tab mean weight (kg) of species in the FOS database (catch weight / pieces) \cr
    \code{gfbcwt}  \tab mean weight (kg) of species in GFBio sammpled from commercial catch \cr
    \code{gfbrwt}  \tab mean weight (kg) of species in GFBio sampled from research cruises
  }
}
\details{
  The data frame comprises 5,139 rows (species) and 20 columns. Hart codes for fish 
  species essentially reference page numbers in Hart (1973). The invertebrate codes 
  are invented as needed by Georg Jorgensen (DFO).

  Quick reference to species name:  \code{species["424",]$name} yields \code{Quillback rockfish}.

  Quick reference to latin name:  \code{species["424",]$latin} yields \code{Sebastes maliger}.
  
  Mean weights are calculated by the SQL query \code{gfb_fishwt.sql} located in \cr
  \code{.../library/PBStools/sql}
}
\source{
  Norm Olsen, Pacific Biological Station, Fisheries and Oceans Canada, Nanaimo BC
}
\references{
  Hart, J.L. (1973) Pacific Fishes of Canada. \emph{Bulletin of the Fisheries Research 
  Board of Canada} \bold{180}, 740 pp.
}
\examples{
local(envir=.PBSdataEnv,expr={
pbsfun=function(N=100){
  opar=par(no.readonly=TRUE); on.exit(par(opar))
  data(species,envir=.PBSdataEnv)
  par(mar=c(3,10,0,1),las=1,mgp=c(0,.2,0),tck=.01)
  spp=species[species$gfbrwt>0 & !is.na(species$gfbrwt),]
  spp=spp[(order(spp$gfbrwt)),]
  spw=spp$gfbrwt; names(spw)=spp$latin
  if (is.null(N) | N<=1) N=length(spw)
  x=1:N; xlim=c(1,N); ylim=c(0,max(spw))
  barplot(spw[x],space=0,names.arg=names(spw)[x],horiz=TRUE,
    col="cornflowerblue",las=1,cex.names=.8,cex.axis=.8)
  mtext("Mean weight (kg)",side=1,line=1.5,cex=1)
  invisible() }
pbsfun()
})
}
\seealso{
  \code{\link{spn}}
}
\keyword{datasets}
