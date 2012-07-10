\name{orfhistory}
\alias{orfhistory}
\docType{data}
\title{
  Data: Historic Landings of Rockfish in BC
}
\description{
  Historic landings of rockfish, usually specified as Pacific Ocean 
  Perch (POP) or \dQuote{other rockfish} (excluding POP) from eight data 
  sources.
}
\usage{data(orfhistory)}
\format{
  A data frame with 38,603 observations on the following 9 variables. \cr
    \code{year......}{calendar year} \cr
    \code{spp.......}{rockfish species code} \cr
    \code{major.....}{PMFC major area code} \cr
    \code{region....}{region ID associated with original data source} \cr
    \code{nation....}{two-letter code specifying nation that caught rockfish in BC} \cr
    \code{catch.....}{landed catch (kg)} \cr
    \code{source....}{data source (see below)} \cr
    \code{action....}{action specifying whether to add the catch to that of other years,} \cr
    \code{..........}{or compare it with catch from other years and take the maximum} \cr
    \code{fishery...}{general gear categories: \code{trawl}, \code{trap}, \code{h&l}, or \code{combined}.}
}
\source{
  The eight data sources are:

  \code{Yamanaka.....} 1918--1950 Landings (Canada Dominion Bureau of Statistics), \cr
  \code{Stewart......} 1930--1964 US landings from BC waters (Stewart, pers. comm.), \cr
  \code{GFCatch......} 1945--1953 Table \code{B3_Catch_Pre54}  (Thomson & Yates 1960--61), \cr
  \code{Ketchen76....} 1950--1975 Canadian and US landings from BC waters (Ketchen 1976), \cr
  \code{Obradovich...} 1951--1981 Sales slip data for red fish and rockfish (Obradovich), \cr
  \code{GFCatch......} 1954--1995 Logbooks and landings (GFCatch), \cr
  \code{Ketchen80....} 1965--1976 Russian and Japanese catch in BC waters (Ketchen 1980), \cr
  \code{PacHarv3.....} 1982--1994 Sales slip data (PacHarv3).
}
\references{
  Canada Dominion Bureau of Statistics (1918--1950)  Fisheries Statistics of Canada 
  (British Columbia). Ottawa, Ontario.

  Ketchen, K.S. (1976) Catch and effort statistics of the Canadian and United States 
  trawl fisheries in waters adjacent to the British Columbia coast 1950--1975. 
  \emph{Fisheries and Marine Service, Data Record} No. \bold{6}. Nanaimo, BC, May 1976.

  Ketchen , K.S. (1980) Reconstruction of Pacific Ocean Perch (\emph{Sebastes alutus})
  stock history in Queen Charlotte Sound. Part I. Estimation of foreign catches, 1965--1976.
  \emph{Canadian Manuscript Report of Fisheries and Aquatic Sciences} \bold{1570}. iv + 46 pp.

  Rutherford, K.L. (1999) A brief history of GFCatch (1954--1995), the groundfish catch 
  and effort database at the Pacific Biological Station. 
  \emph{Canadian Technical Report of Fisheries and Aquatic Sciences} \bold{2299}. v + 66 pp.

  Thomson, J.A. and Yates, A.N. (1960) British Columbia landings of trawl-caught 
  groundfish by month, by major statistical area. Vol. 1, 1945--1949. 
  \emph{Fisheries Research Board of Canada, Statistical Circular Series} No. \bold{CNS 1}.

  Thomson, J.A. and Yates, A.N. (1961) British Columbia landings of trawl-caught 
  groundfish by month, by major statistical area. Vol. 2, 1950--1954. 
  \emph{Fisheries Research Board of Canada, Statistical Circular Series} No. \bold{CNS 2}.
}
\examples{
\dontrun{
pbsfun=function(dat, spp="396", ...){
	require(PBStools); data(orfhistory)
	dat  = dat[is.element(dat$spp,spp),]
	ctab = crossTab(dat,c("year","source"),"catch",function(x){sum(x)/1000})
	out  = as.data.frame(ctab[,-1]); row.names(out)=ctab[,1]
	sou  = dimnames(out)[[2]]; nsou = length(sou)
	clrs = c("red","blue","orange","purple","gold","green4","black","pink")[1:nsou]
	expandGraph(mar=c(3,3,.5,.5))
	evalCall(barplot,argu=list(height=t(out),beside=TRUE,col=clrs,border=FALSE,type="h",
		space=c(0,0),las=3,cex.axis=.8,cex.names=.8,xaxs="i"),...,checkdef=TRUE,checkpar=TRUE)
	legend("topleft",bty="n",fill=clrs,legend=sou,inset=.025)
	mtext("ORF Catch (t)",side=2,line=2,cex=1.2)
	invisible(out)
}
x = pbsfun(orfhistory,spp=c("388","389","391"),space=c(0,0))
}
}
%\seealso{
%  \code{\link{buildCatch}}
%}
\keyword{datasets}

