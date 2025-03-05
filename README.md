## PBSdata: data, boundaries, and key codes for PBS packages ##
&copy; Fisheries and Oceans Canada (2004-2025)

**PBSdata** contains data objects used primarily by the R packages **PBStools** to illustrate utility examples and **PBSmapx** for drawing various coastline and boundary shapefiles. The data herein either exist in the public domain or are non-proprietary and open for public use.

A useful set of data (regional boundaries, key codes, example data), a GUI interface to **PBSmapping**, and handy utility functions evolved over time (2007-2012) in one R package called **PBSfishery**. In April 2012, we decided to split **PBSfishery** into three separate libraries -- **PBStools**, **PBSmapx**, and **PBSdata** -- for public distribution (see <a href="https://github.com/pbs-software">pbs-software</a>). The three packages experience different rates of change, with **PBStools** undergoing frequent revision, while **PBSdata** and **PBSmapx** can remain unchanged for long periods of time.

Although **PBSdata** is not available on <a href="https://cran.r-project.org/">CRAN</a> (Comprehensive R Archive Network), the source package is available on <a href="https://github.com/pbs-software/pbs-data">GitHub</a>. Most of the time, a posted version has been checked using CRAN's `R CMD check --as-cran` routine (on a Windows system). To install **PBSdata** in R from GitHub, issue the command:

`devtools::install_github("pbs-software/pbs-data/PBSdata")`.

As with any freely available product, there is no warranty or promise that **PBSdata** will be free from errors. Users should contact the package maintainer if bugs are detected.

Maintainer: <a href="mailto:rowan.haigh@dfo-mpo.gc.ca">Rowan Haigh</a>

<p align="right"><img src="DFOlogo_small.jpg" alt="DFO logo" style="height:30px;"></p> 
