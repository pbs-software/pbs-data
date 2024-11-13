\name{dbcodes}
\alias{dbcodes}
\docType{data}
\title{
  Code: Database Codes
}
\description{
  Assorted codes from database information tables.
}
\usage{
dbcodes
}
\format{
Code keys for databases \code{gfb} (GFBioSQL):
\tabular{llll}{
\code{gfb} \tab \code{key}     \tab \code{acronym} \tab \code{DB field}\cr
           \tab \code{AC}      \tab \code{AC}   \tab \code{ACTIVITY_CODE}\cr
           \tab \code{ameth}   \tab \code{AMC}  \tab \code{AGEING_METHOD_CODE}\cr
           \tab \code{ART}     \tab \code{ARTC} \tab \code{AGE_READING_TYPE_CODE}\cr
           \tab \code{cver}    \tab \code{CVC}  \tab \code{CATCH_VERIFICATION_CODE}\cr
           \tab \code{exist}   \tab \code{EAC}  \tab \code{EXISTENCE_ATTRIBUTE_CODE}\cr
           \tab \code{fid}     \tab \code{FIDC} \tab \code{FID_CODE}\cr
           \tab \code{gear}    \tab \code{GC}   \tab \code{GEAR_CODE}\cr
           \tab \code{major}   \tab \code{MSAC} \tab \code{MAJOR_STAT_AREA_CODE}\cr
           \tab \code{morpho}  \tab \code{MAC}  \tab \code{MORPHOMETRICS_ATTRIBUTE_CODE}\cr
           \tab \code{narc}    \tab \code{NARC} \tab \code{NOT_AVAILABLE_REASON_CODE}\cr
           \tab \code{RC}      \tab \code{RC}   \tab \code{REASON_CODE}\cr
           \tab \code{scat}    \tab \code{SCC}  \tab \code{SPECIES_CATEGORY_CODE}\cr
           \tab \code{ssid}    \tab \code{SSID} \tab \code{SURVEY_SERIES_ID}\cr
           \tab \code{ssrc}    \tab \code{SSC}  \tab \code{SAMPLE_SOURCE_CODE}\cr
           \tab \code{stype}   \tab \code{STC}  \tab \code{SAMPLE_TYPE_CODE}\cr
           \tab \code{success} \tab \code{SC}   \tab \code{SUCCESS_CODE}\cr
           \tab \code{ttype}   \tab \code{TSTC} \tab \code{TRIP_SUB_TYPE_CODE}\cr
           \tab \code{use}     \tab \code{UC}   \tab \code{USABILITY_CODE}
  }
}
\source{
  Department of Fisheries and Oceans Canada

  The original code tables can be obtained from \code{GFBioSQL}.\cr
  For example, \code{SSID} codes can be downloaded via:\cr
  \code{getData("SURVEY","GFBioSQL")} \cr
  after loading the package \pkg{PBStools}.
}
\details{
  Code tables to facilitate the meaning of values in object fields that came
  from DFO databases (e.g., \code{'GFBioSQL'}.
}
\note{
  May supercede other \code{PBSdata} objects like \code{'gear'} and \code{'ssid'}.
}
\keyword{datasets}
\concept{code}
\concept{C01_Codes}

