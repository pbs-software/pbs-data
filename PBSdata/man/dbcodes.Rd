\name{dbcodes}
\alias{dbcodes}
\alias{gfb.codes}
\alias{gfc.codes}
\docType{data}
\title{
  Code: Database Codes
}
\description{
  Assorted codes from database information tables.\cr
}
\usage{
gfb.codes
gfc.codes
}
\format{
Code keys for databases \code{gfb} (GFBioSQL):
\tabular{lll}{
  \code{key}     \tab \code{acronym} \tab \code{DB field}\cr
  \code{AC}      \tab \code{AC}      \tab \code{ACTIVITY_CODE}\cr
  \code{ameth}   \tab \code{AMC}     \tab \code{AGEING_METHOD_CODE}\cr
  \code{ART}     \tab \code{ARTC}    \tab \code{AGE_READING_TYPE_CODE}\cr
  \code{cver}    \tab \code{CVC}     \tab \code{CATCH_VERIFICATION_CODE}\cr
  \code{exist}   \tab \code{EAC}     \tab \code{EXISTENCE_ATTRIBUTE_CODE}\cr
  \code{fid}     \tab \code{FIDC}    \tab \code{FID_CODE}\cr
  \code{gear}    \tab \code{GC}      \tab \code{GEAR_CODE}\cr
  \code{major}   \tab \code{MSAC}    \tab \code{MAJOR_STAT_AREA_CODE}\cr
  \code{morpho}  \tab \code{MAC}     \tab \code{MORPHOMETRICS_ATTRIBUTE_CODE}\cr
  \code{narc}    \tab \code{NARC}    \tab \code{NOT_AVAILABLE_REASON_CODE}\cr
  \code{RC}      \tab \code{RC}      \tab \code{REASON_CODE}\cr
  \code{scat}    \tab \code{SCC}     \tab \code{SPECIES_CATEGORY_CODE}\cr
  \code{ssid}    \tab \code{SSID}    \tab \code{SURVEY_SERIES_ID}\cr
  \code{ssrc}    \tab \code{SSC}     \tab \code{SAMPLE_SOURCE_CODE}\cr
  \code{stype}   \tab \code{STC}     \tab \code{SAMPLE_TYPE_CODE}\cr
  \code{success} \tab \code{SC}      \tab \code{SUCCESS_CODE}\cr
  \code{ttype}   \tab \code{TSTC}    \tab \code{TRIP_SUB_TYPE_CODE}\cr
  \code{use}     \tab \code{UC}      \tab \code{USABILITY_CODE}
  }
Code keys for databases \code{gfb} (GFCatch):
\tabular{lll}{
  \code{key}      \tab \code{acronym} \tab \code{DB field}\cr
	\code{aid}     \tab \code{EQP}     \tab \code{Equipment}\cr
	\code{bait}    \tab \code{BAT}     \tab \code{Bait_Type}\cr
	\code{class}   \tab \code{TON}     \tab \code{Tonnage}\cr
	\code{gear}    \tab \code{GRT}     \tab \code{Gear_Type}\cr
	\code{invert}  \tab \code{SPP}     \tab \code{GFCATCH_Species}\cr
	\code{log}     \tab \code{LOG}     \tab \code{og_Source}\cr
	\code{port}    \tab \code{PRT}     \tab \code{Location}\cr
	\code{sales}   \tab \code{SAS}     \tab \code{Sales_Source}\cr
	\code{skipper} \tab \code{SKP}     \tab \code{Skipper}\cr
	\code{source}  \tab \code{SRC}     \tab \code{Source}\cr
	\code{trap}    \tab \code{TRP}     \tab \code{Trap_Type}\cr
	\code{use}     \tab \code{UTZ}     \tab \code{Utilization}\cr
	\code{vessel}  \tab \code{VSL}     \tab \code{Vessel_Name}
  }
}
\source{
  Department of Fisheries and Oceans Canada

  The original code tables can be obtained from \code{GFBioSQL}, \code{GFCatch}.\cr
  For example, \code{SSID} codes can be downloaded via:\cr
  \code{getData("SURVEY","GFBioSQL")} \cr
  after loading the package \pkg{PBStools}.
}
\details{
  Code tables to facilitate the meaning of values in object fields that came
  from DFO databases:
  \tabular{ll}{
    \code{DB}  \tab \code{DFO database}\cr
    \code{gfb} \tab \code{GFBioSQL}\cr
    \code{gfc} \tab \code{GFCatch}
  }
}
\note{
  May supercede other \code{PBSdata} objects like \code{'gear'} and \code{'ssid'}.

  Decided to keep code tables in separate objects by database; 
  easier to use than one big object (e.g., \code{dbcodes}) where first level is 
  database key and second level comprises codes.
}
\keyword{datasets}
\concept{code}
\concept{C01_Codes}

