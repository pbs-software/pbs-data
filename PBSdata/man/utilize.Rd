\name{utilize}
\alias{utilize}
\docType{data}
\title{
  Code: Utilization Codes for Various DFO Databases
}
\description{
  A named list object of utilization tables where the names reflect acronyms
  of various DFO databases (\code{FOS GFB GFC PH3 PHHL PHS PHT}).
}
\usage{data("utilize", package="PBSdata")}
\format{
  A list of 7 data frames:
  \tabular{ll}{
  \bold{FOS: (17 rows, 4 cols) }       \tab \cr
    \code{UTILIZATION_CODE}                  \tab integer \cr
    \code{UTILIZATION_DESCRIPTION}           \tab character \cr
    \code{RELEASED_IND}                      \tab integer \cr
    \code{APPLY_TO_QUOTA_IND}                \tab integer \cr \cr
  \bold{GFB: (8 rows, 2 cols) }        \tab  \cr
    \code{BASKET_UTILIZATION_CODE}           \tab integer \cr
    \code{BASKET_UTILIZATION_DESC}           \tab character \cr \cr
  \bold{GFC: (7 rows, 3 cols) }        \tab  \cr
    \code{Utilization}                       \tab integer \cr
    \code{Fate}                              \tab character \cr
    \code{Comment}                           \tab character \cr \cr
  \bold{PH3: (36 rows, 4 cols) }       \tab  \cr
    \code{CATCH_UTLZTN_CDE}                  \tab integer \cr
    \code{CATCH_UTLZTN_NME}                  \tab character \cr
    \code{CATCH_UTLZTN_DISCARD_IND}          \tab integer \cr
    \code{CATCH_UTLZTN_DESC}                 \tab character \cr \cr
  \bold{PHHL: (21 rows, 7 cols) }      \tab  \cr
    \code{CATCH_UTILIZATION_CDE}             \tab integer \cr
    \code{CATCH_UTILIZATION_NME}             \tab character \cr
    \code{CATCH_UTILIZATION_DESC}            \tab character \cr
    \code{CATCH_UTILIZATION_DISCARD_IND}     \tab integer \cr
    \code{FISHERY_ID}                        \tab integer \cr
    \code{CATCH_UTILZTN_ATSEA_ONLY_IND}      \tab integer \cr
    \code{CATCH_UTILZTN_OFFLD_ONLY_IND}      \tab integer \cr \cr
  \bold{PHS: (21 rows, 7 cols) }       \tab  \cr
    \code{CATCH_UTILIZATION_CDE}             \tab integer \cr
    \code{CATCH_UTILIZATION_NME}             \tab character \cr
    \code{CATCH_UTILIZATION_DESC}            \tab character \cr
    \code{CATCH_UTILIZATION_DISCARD_IND}     \tab integer \cr
    \code{FISHERY_ID}                        \tab integer \cr
    \code{CATCH_UTILZTN_ATSEA_ONLY_IND}      \tab integer \cr
    \code{CATCH_UTILZTN_OFFLD_ONLY_IND}      \tab integer \cr \cr
  \bold{PHT: (21 rows, 7 cols) }       \tab  \cr
    \code{CATCH_UTILIZATION_CDE}             \tab integer \cr
    \code{CATCH_UTILIZATION_NME}             \tab character \cr
    \code{CATCH_UTILIZATION_DESC}            \tab character \cr
    \code{CATCH_UTILIZATION_DISCARD_IND}     \tab integer \cr
    \code{FISHERY_ID}                        \tab integer \cr
    \code{CATCH_UTILZTN_ATSEA_ONLY_IND}      \tab integer \cr
    \code{CATCH_UTILZTN_OFFLD_ONLY_IND}      \tab integer
  }
}
\details{
  The DFO database acronyms are: \cr
  \code{FOS....}Fisheries Operation System data on Oracle (\code{FOS}) and SQL Server (\code{GFFOS});\cr
  \code{GFB....}Groundfish Biological data on Oracle (\code{GFBIO}) and SQL Server (\code{GFBioSQL});\cr
  \code{GFC....}Groundfish Catch data (1954-1995) on SQL Server (\code{GFCatch});\cr
  \code{PH3....}Sales slip catch data (1982-1994) on Oracle (\code{HARVEST_V2_0});\cr
  \code{PHHL...}Hook and line catch data (1986-2006) on SQL Server (\code{PacHarvHL});\cr
  \code{PHS....}Sablefish trap data on SQL Server (\code{PacHarvSable});\cr
  \code{PHT....}Observer trawl catch data (1995-2006) on SQL Server (\code{PacHarvest}).
}
\source{
  Fisheries and Oceans Canada, Nanaimo BC
}
\section{Dates}{
  Last modified \code{Rd: 2023-03-14}\cr
  Last modified \code{data: 2014-07-04}
}
\keyword{datasets}
