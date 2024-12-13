##==============================================================================
## Module 1: Utility Functions
## ---------------------------
##  capFun..........Capitalise first letters of words
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
