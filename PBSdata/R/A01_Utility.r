##==============================================================================
## Module 1: Utility Functions
## ---------------------------
## capFun...........Capitalise first letters of words
## extractParks.....Extract Vancouver City parks from a CSV file
## importShapefile..Import a shapefile using Roger Bivand's genius
## make.loc.pjs.....Make localities that PJS uses in GLMs for CPUE
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
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~extractParks


## importShapefile----------------------2026-06-09
## Import a shapefile using Roger Bivand's genius.
## This function has several slow parts:
## 1) conversion of the matrix (verts) to X and Y columns in a data frame
## 2) 'lapply's to create POS columns
## ------------------------------------------NB|RH
importShapefile <- function (fn, readDBF=TRUE, projection=NULL, zone=NULL, 
   minverts=3, placeholes=FALSE, show.progress=FALSE)
{
	## Changes-------------------------------------
	## 2008-07-15:
	##   Nick's loop to extract data from 'shapeList' has been replaced
	##   by RH's series of 'sapply' calls.
	##   RH added check for polygons with 0 vertices.
	## 2012-04-04:
	##   RH created function 'placeHoles' to place holes under correct solids.
	## 2018-09-06:
	##   RH modified 'placeHoles' to better deal with orphans,
	##   but can be slow if imported file has many solids|holes|vertices.
	## 2026-06-09:
	##   RH realised we can use this function in non-CRAN package (PBSdata)
	##   as long as maptools is still installed on a user's system.
	## --------------------------------------------

	## Seek and use any existing versions of maptools (RH 260609)
	eval(parse(text="bivand <- require(maptools, quietly=TRUE, warn.conflicts=FALSE)"))
	if (!bivand) stop("Package 'maptools' is not available on your system;\n\tperhaps find an archived version and install.")

	## initialization
	.checkRDeps("importShapefile", c("maptools", "foreign"))   ## PBSmapping function
	## call to normalizePath added to perform ~ expansion; otherwise,
	## pathnames beginning with a ~ fail in the later call to
	## Rshapeget
	fn <- normalizePath(fn, mustWork=FALSE)
	fn <- .getBasename(fn, "shp")  ## PBSmapping function

	## test for the required '.shx' file
	shxFile <- paste(fn, ".shx", sep="")
	if (!file.exists(shxFile))
		stop(paste(
		"Cannot find the index file (\"", shxFile, "\") required to import\n",
		"the shapefile.\n", sep=""))

	## read shapefile
	eval(parse(text="shapeList <- .Call(\"Rshapeget\",as.character(fn),as.logical(FALSE),PACKAGE=\"maptools\")"))
	if (length(shapeList) < 1)
		stop("The shapefile is empty or an error occurred while importing.\n")
	shpType=unique(sapply(shapeList,function(x){x$shp.type}))
	if (length(shpType) != 1)
		stop ("Supports only a single shape type per shapefile.\n")
	nVerts=sapply(shapeList,function(x){x$nVerts})
	v0=is.element(nVerts,0) # any shapefiles with 0 vertices?
	if (any(v0==TRUE)) {
		nVerts=nVerts[!v0]; shapeList=shapeList[!v0] }
	shpID=sapply(shapeList,function(x){x$shpID})
	nParts=sapply(shapeList,function(x){x$nParts})
	pStarts=sapply(shapeList,function(x){x$Pstart},simplify=FALSE)
	if (length(pStarts)!=length(nParts) && all((nParts==sapply(pStarts,length))!=TRUE))
		stop ("Mismatch in 'nParts' and 'pStarts'.\n")
	pStarts=unlist(pStarts)
	v1=unlist(sapply(shapeList,function(x){x$verts[,1]},simplify=FALSE))
	v2=unlist(sapply(shapeList,function(x){x$verts[,2]},simplify=FALSE))
	verts=cbind(v1,v2)

	## Keep track of parents and children
	PC=pStarts
	zP=is.element(PC,0); PC[zP]=1; PC[!zP]=0

	## reformat results
	#if (shpType == 3 || shpType == 5) {	## PolySet
	if (shpType %in% c(3,13,23, 5,15,25)) {	## PolyLine, PolyLineZ, PolyLineM, Polygon, PolygonZ, PolygonM
		## create preliminary PID/SID columns
		PID <- rep(1:(length(unique(shpID))), times=nParts)
		SID <- unlist(lapply(split(nParts, 1:(length(nParts))), "seq"))

		## to determine the number of vertices in each part, we divide the problem
		## into two cases:
		## 1) last component/hole of each polygon: the total vertices in the polygon
		##		less the starting POS of that last component/hole
		## 2) otherwise: use a "diff" on the starting POS's of each part
		lastComp <- rev(!duplicated(rev(PID)))
		nv <- vector()
		nv[lastComp] <- rep(nVerts, times=nParts)[lastComp] - pStarts[lastComp]
		nv[!lastComp] <- diff(pStarts)[diff(pStarts) > 0]

		## create PID/SID columns
		PID <- rep(PID, times=nv)
		SID <- rep(SID, times=nv)
		## create POS column; we'll fix the ordering for holes later
		POS <- unlist(lapply(split(nv, 1:(length(nv))), "seq"))
		## build the data frame
		df <- data.frame(PID=PID, SID=SID, POS=POS, X=verts[, 1], Y=verts[, 2])

		#if (shpType == 5) {
		if (shpType %in% c(5,15,25)) {
			## PolySet: polygons: reorder vertices for holes
			or <- .calcOrientation (df)  ## PBSmapping function
			## where "orientation" == -1, we need to reverse the POS
			or$solid <- is.element(or$orientation,1); or$hole <- !or$solid
			if (any(or$hole)) {
				or$nv <- nv
				toFix <- rep(or$hole, times=or$nv)
				o <- or$nv[or$hole]
				newPOS <- unlist(lapply(lapply(split(o, 1:length(o)), "seq"), "rev"))
				df[toFix, "POS"] <- newPOS	}
			
			if (placeholes) {
				## Fix to the problem where ArcPew does not put solid shapes before holes
				class(df) <- c("PolySet", setdiff(class(df),"PolySet"))
				df=placeHoles(df, minVerts=minverts, orient=TRUE, show.progress=show.progress)
			}
		}
		class(df) <- c("PolySet", class(df))
	#} else if (shpType == 1) {	## EventData
	} else if (shpType %in% c(1,11,21)) {	## Point, PointZ, PointM
		EID <- 1:(length(unique(shpID)))
		df <- data.frame(EID=EID, X=verts[, 1], Y=verts[, 2])
		class(df) <- c("EventData", class(df))
	} else {
		stop ("Shape type not supported.\n");
	}

	## "cbind" the DBF for EventData or attach as an attribute for PolySets:
	## According to the "ESRI Shapefile Technical Description", any set of fields
	## may be present in the DBF file.
	## The (relevant) requirements are:
	##	 (1) one record per shape feature (i.e., per PID or EID), and
	##	 (2) same order as in shape (*.shp) file.
	dbfFile <- paste(fn, ".dbf", sep="")
	if (readDBF && !file.exists(dbfFile)) {
		warning(paste(
		"The argument 'readDBF' is true but the attribute database\n",
		"(\"", dbfFile, "\") does not exist.\n", sep=""))
	} else if (readDBF) {
		dbf <- read.dbf(dbfFile)  ## 'foreign' function
		if (shpType == 1) {	## EventData
			if (nrow(df) != nrow(dbf)) {
				warning(paste(
				"The shapefile and its associated DBF do not contain the",
				"same number of records. DBF ignored.\n", sep="\n"))
				return (df)
			}
			df.class=class(df)
			df <- cbind(df, dbf)
			class(df) <- df.class
		} else if (shpType == 3 || shpType == 5) {
			## add index to result
			dbf <- cbind(1:nrow(dbf), dbf)
			names(dbf)[1] <- "PID"
			class(dbf) <- c("PolyData", class(dbf))
			attr(df, "PolyData") <- dbf
		}
	## At this point, shpTypes != 1, 3, 5 caused the "stop" above; we do not
	## need an "else" to check here
	}
	attr(df,"parent.child")=PC
	attr(df,"shpType")=shpType
	prjFile <- paste(fn, ".prj", sep="")
	if (file.exists(prjFile)) {
		prj=scan(prjFile, what="character", quiet=TRUE, skipNul=TRUE)
#browser();return()
		prj=prj[!is.element(prj,"")][1]
		if (length(prj)==0 || is.na(prj) || is.null(prj)) prj="Unknown" }
	else prj="Unknown"
	attr(df,"prj")=prj
	xmlFile <- paste(fn, ".shp.xml", sep="")
	if (file.exists(xmlFile)) {
		xml=readLines(xmlFile); attr(df,"xml")=xml }

	if (regexpr("GEO",prj)>0 | regexpr("Degree",prj)>0) proj="LL"
	else if (regexpr("PROJ",prj)>0 && regexpr("UTM",prj)>0) proj="UTM"
	else proj=1
	attr(df,"projection")=proj

	if (proj=="UTM" && any(df$X>500))
		{df$X=df$X/1000; df$Y=df$Y/1000}
	if (!is.null(zone))
		attr(df, "zone") <- zone
	if (!is.null(projection))
		attr(df,"projection")=projection
	return (df) 
}
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~importShapefile


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
