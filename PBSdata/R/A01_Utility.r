##==============================================================================
## Module 1: Utility Functions
## ---------------------------
##  capFun..........Capitalise first letters of words
##  extractParks....Extract Vancouver City parks from a CSV file
##  make.loc.pjs....Make localities that PJS uses in GLMs for CPUE
##===============================================================================


## capFun-------------------------------2024-12-13
##  Function to capitalise first letters of words
##  Modified from 'toUpper' in PBStools
## ---------------------------------------------RH
capFun <- function (x, exclude = c("-", "de","fm","fm)","mi.)","of")) 
{
	x0 = x  ## backup/debug
	x1 = tolower(x0)
	x2 = gsub("(\\s+)?-+(\\s+)?", "-",  x1)
	x3 = gsub("([[:alnum:]])(-|/)([[:alnum:]])", "\\1 \\2 \\3", x2)
#browser();return()
	x  = x3
	strList = strsplit(x, split = "\\s+")
	strL = sapply(strList, function(x) {
		x = x[!is.element(x, "")]
		z = !is.element(x, exclude)
		X = sapply(x[z], function(y) {
			paste(toupper(substring(y, 1, 1)), substring(y, 2), 
				sep = "")
		})
		x[z] = X
		return(x)
	}, simplify = FALSE)
	strV = sapply(strL, paste, collapse = " ")

	## Ad hoc tweaks
	## -------------
	strV = sub("\\(deepp","(deep)",strV)
	## https://stackoverflow.com/questions/30664444/gsub-error-turning-upper-to-lower-case-in-r
	strV = sub("^(N|S)(e|w)(\\s|-|/)", perl=TRUE, replacement="\\1\\U\\2\\3", strV)
	strV = sub("^([[:digit:]])([a-c])", perl=TRUE, replacement = "\\1\\U\\2", strV)
	strV = gsub("\\s+([-|/])\\s+", "\\1",  strV)
	strV = gsub("Lower-Se", "Lower/SE",  strV)
	strV = gsub("M.p.", "M.P.",  strV)
	strV = gsub("tofino", "Tofino",  strV)
	## Manipulation  to use "/" separator
	zV   = !grepl("/", strV) & grepl("-", strV) & !grepl("^2B-East",strV)
	iV   = regexpr("(-[^-]+$)", strV[zV])      ## https://stackoverflow.com/questions/41870124/regex-to-find-last-occurrence-of-pattern-in-a-string
	substr(strV[zV], iV, iV) = "/"             ## https://stackoverflow.com/questions/36596928/replace-character-at-certain-location-within-string
#browser();return()
	return(strV)
}
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~capFun


## extractParks ------------------------2026-06-08
##  Extract Vancouver City parks from a CSV file
##  https://opendata.vancouver.ca/explore/dataset/parks-polygon-representation/export/
##  First created: 2026-06-08
## -----------------------------------------CoV|RH
extractParks <- function(pname="parks-polygon-representation.csv", 
   pattern, plot=FALSE)
{
	## Note that some park names were modified in the CSV file because single quotes were messing up the read
	cityparks = read.table(pname, header=TRUE, sep=";")
	if (missing(pattern)) {
		parks = cityparks[,"PARK_NAME"]
		parkN = 1:length(parks)
	} else {
		parkN = grep(paste0(pattern,collapse="|"), cityparks[,"PARK_NAME"])
		parks = grep(paste0(pattern,collapse="|"), cityparks[,"PARK_NAME"], value=TRUE)
	}
	if (length(parks)==0) stop ("No parks match your pattern")

	## Subfunctions
	## ------------
	makePoly <- function(dat, pid, sid=1) {
		XY  = sapply(dat, function(x) {
			out = as.numeric(strsplit(x, split=", ")[[1]][c(1,2)])
			return(out)
		})
		XY    = t(XY)
		nXY   = nrow(XY)
		rownames(XY)=1:nXY; colnames(XY)=c("X","Y")
		shape = as.PolySet(data.frame(PID=rep(pid,nXY), SID=rep(sid,nXY), POS=1:nXY, XY), projection="LL", zone=9)
		return(shape)
	}

	polys = pdata  = NULL
	for (i in 1:length(parks)) {
		ii   = parks[i]
		zi   = parkN[i]  ## parks can have the same name! e.g., 'Ravine Park' occurs three times
#if (ii=="Jones Park") {browser();return()}
#.flush.cat(paste0(zi, " -- ", ii), "\n")
		type = cityparks[zi,"CLASSIFICATION"]
		cent = cityparks[zi, "geo_point_2d"]  ## assume this is the central point
		cent = as.numeric(gsub(",","",strsplit(cent, split=" ")[[1]][c(2,1)]))
		event = as.EventData(data.frame(EID=zi, SID=1, X=cent[1], Y=cent[2], label=ii), projection="LL", zone=9)
		pdata = rbind(pdata, event)

		## Start collecting geographic coordinates
		coor = cityparks[zi,"Geom"]
		if (grepl("Polygon",coor)) {
			rubbish = sub("], \\\"type\\\": \\\"(Multi)?Polygon\\\"}", "", coor)
			rubbish = sub("\\{\\\"coordinates\\\": \\[", "", rubbish)

			## Check for multipolygons (SIDs)
			if (substring(rubbish,1,3) == "[[[") {
				coords  = strsplit(rubbish, split="\\]\\]\\], \\[\\[\\[")[[1]]
				for (j in 1:length(coords)) {
					jcoo  = strsplit(coords, split="\\], \\[")[[1]]
					jcoo  = gsub("\\[+|\\]+", "", jcoo)
					jpoly = makePoly(jcoo, pid=zi, sid=j)
					polys = rbind(polys, jpoly)  ## rbind loses the projection and zone attributes, so add them after the loop
				}
			} else {  ## assume single polygon
				icoo  = strsplit(rubbish, split="\\], \\[")[[1]]
				icoo  = gsub("\\[+|\\]+", "", icoo)
				ipoly = makePoly(icoo, pid=zi, sid=1)
				polys = rbind(polys, ipoly)  ## rbind loses the projection and zone attributes, so add them after the loop
#browser();return()
			}
		} ## end polygons
	} ## end parks
	attr(polys,"projection") = attr(pdata,"projection") = "LL"
	attr(polys,"zone") = attr(pdata,"zone") = 9
	attr(polys,"PolyData") = pdata
	attr(polys,"source") = "https://opendata.vancouver.ca/explore/dataset/parks-polygon-representation/export/"
	vanparks = polys
	rownames(vanparks) = 1:nrow(vanparks)
	save("vanparks", file="vanparks.rda")  ## for package PBSdata
	save("pname", "cityparks", "parks", "polys", "pdata", "vanparks", file="vanparks+.rda")  ## kitchen sink

	## Plot the parks
	if (plot) {
		expandGraph()
		xlim = extendrange(polys$X); ylim=extendrange(polys$Y)
		ici = lenv()
		data("nepacLLhigh", package="PBSmapping", envir=ici)
		plotMap(nepacLLhigh, xlim=xlim, ylim=ylim, col="gainsboro", border="gainsboro", plt=NULL, cex.axis=1.2, cex.lab=1.5)
		addPolys(polys, col="lightseagreen")
		addPoints(pdata, pch=20, cex=1.2, col="red")
		box()
	}
	return(vanparks)
#browser();return()
}


## make.loc.pjs ------------------------2024-12-12
##  Make localities that PJS uses in GLMs for CPUE
## -----------------------------------------PJS|RH
make.loc.pjs <- function()
{
	pjs.csv  = system.file("csv/pjs_localities.csv", package="PBSdata")
	#pjs.csv  = "../../PJS/pjs_localities.csv"  ## for testing 
	area.pjs = read.csv(pjs.csv)
	colnames(area.pjs) = c("major","major_name", "minor", "minor_name", "minor_seq", "locality", "loc_name", "loc_pjs")
	loc.pjs = area.pjs$loc_pjs
	maj.str = formatC(area.pjs$major, width=2, format="d", flag="0")
	min.str = formatC(area.pjs$minor, width=2, format="d", flag="0")
	loc.str = formatC(area.pjs$locality, width=2, format="d", flag="0")
#browser();return()
	names(loc.pjs) = paste(maj.str, min.str, loc.str, sep="-")

	## Capitalise fields
	area.pjs$minor_name = capFun(area.pjs$minor_name)
	area.pjs$loc_name   = capFun(area.pjs$loc_name)
	return(list(loc.pjs=loc.pjs, area.pjj=area.pjs))
}
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~make.loc.pjs
