\name{gear}
\alias{gear}
\docType{data}
\title{
  Code: Gear Codes for Various DFO Databases
}
\description{
  A named list object of gear tables where the names reflect acronyms
  of various DFO databases (\code{GFB GFC PH3 PHHL PHS PHT}).
}
\usage{data(gear)}
\format{
  A list of 6 data frames:
  \tabular{ll}{
  \bold{GFB: (15 rows, 3 cols) }  \tab \cr
    \code{GEAR_CODE}                    \tab integer   \cr
    \code{GEAR_DESC}                    \tab character \cr
    \code{GEAR_SPECS_TABLE_NAME}        \tab character \cr \cr
  \bold{GFC: (10 rows, 3 cols) }  \tab \cr
    \code{Gear}                         \tab integer   \cr
    \code{Gear_Type}                    \tab character \cr
    \code{Comment}                      \tab character \cr \cr
  \bold{PH3: (75 rows, 7 cols) }  \tab \cr
    \code{GEAR_CDE}                     \tab integer   \cr
    \code{GEAR_NME}                     \tab character \cr
    \code{GEAR_EFFECTIVE_DT}            \tab POSIXct   \cr
    \code{GEAR_DESC}                    \tab character \cr
    \code{GEAR_INACTIVE_DT}             \tab POSIXct   \cr
    \code{GEAR_PREV_NME}                \tab character \cr
    \code{GEAR_TRANSL_VALUE}            \tab integer   \cr \cr
  \bold{PHHL: (11 rows, 2 cols) } \tab \cr
    \code{GEAR_TYPE_CDE}                \tab integer   \cr
    \code{GEAR_TYPE_NME}                \tab character \cr \cr
  \bold{PHS: (11 rows, 2 cols) }  \tab \cr
    \code{GEAR_TYPE_CDE}                \tab integer   \cr
    \code{GEAR_TYPE_NME}                \tab character \cr \cr
  \bold{PHT: (25 rows, 4 cols) }  \tab \cr
    \code{GEAR_TYPE_CDE}                \tab integer   \cr
    \code{GEAR_SUBTYPE_CDE}             \tab integer   \cr
    \code{GEAR_TYPE_NME}                \tab character \cr
    \code{GEAR_SUBTYPE_NME}             \tab character
  }
}
\details{
  The DFO database acronyms are: \cr
  \code{GFB....}Groundfish biological data on Oracle (\code{GFBIO}) and SQL Server (\code{GFBioSQL}); \cr
  \code{GFC....}Groundfish catch data (1954-1995) on SQL Server (\code{GFCatch}); \cr
  \code{PH3....}Sales slip catch data (1982-1994) on Oracle (\code{HARVEST_V2_0}); \cr
  \code{PHHL...}Hook and line catch data (1986-2006) on SQL Server (\code{PacHarvHL}); \cr
  \code{PHS....}Sablefish trap data on SQL Server (\code{PacHarvSable}); \cr
  \code{PHT....}Observer trawl catch data (1995-2006) on SQL Server (\code{PacHarvest}).
}
\source{
  Fisheries and Oceans Canada, Nanaimo BC
}
\keyword{datasets}

