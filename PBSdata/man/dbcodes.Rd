\name{dbcodes}
\alias{dbcodes}
\alias{fos.codes}
\alias{gfb.codes}
\alias{gfc.codes}
\alias{gfm.codes}
\docType{data}
\title{
  Code: Database Codes
}
\description{
  Assorted codes from database information tables.\cr
}
\usage{
fos.codes
gfb.codes
gfc.codes
gfm.codes
}
\format{
Code keys for databases \code{fos} (GFFOS):
\tabular{lll}{
  \code{key}        \tab \code{acronym} \tab \code{DB field}\cr
  \code{bait}       \tab \code{BTC}     \tab \code{BAIT_TYPE_CODE}\cr
  \code{birda}      \tab \code{BADC}    \tab \code{BIRD_AVOIDANCE_DEVICE_CODE}\cr
  \code{birdi}      \tab \code{BIC}     \tab \code{BIRD_INTERACTION_CODE}\cr
  \code{combo}      \tab \code{CTC}     \tab \code{COMBO_TYPE_CODE}\cr
  \code{dcor}       \tab \code{DCC}     \tab \code{DATA_CORRECTION_CODE}\cr
  \code{derr}       \tab \code{DEC}     \tab \code{DATA_ERROR_CODE}\cr
  \code{dsrc}       \tab \code{DSC}     \tab \code{DATA_SOURCE_CODE}\cr
  \code{erngatt}    \tab \code{ERAC}    \tab \code{ESC_RING_ATTACHMENT_CODE}\cr
  \code{erngmat}    \tab \code{ERMC}    \tab \code{ESC_RING_MATERIAL_CODE}\cr
  \code{extrude}    \tab \code{EC}      \tab \code{EXTRUDER_CODE}\cr
  \code{fishery}    \tab \code{FC}      \tab \code{FISHERY_CODE}\cr
  \code{form}       \tab \code{FC}      \tab \code{FORM_CODE}\cr
  \code{gear}       \tab \code{GV}      \tab \code{GEAR_VALUE}\cr
  \code{hook}       \tab \code{HTTC}    \tab \code{HOOK_TRAP_TYPE_CODE}\cr
  \code{licopt}     \tab \code{LOC}     \tab \code{LICENCE_OPTION_CODE}\cr
  \code{locmeth}    \tab \code{LMC}     \tab \code{LOCATION_METHOD_CODE}\cr
  \code{llgear}     \tab \code{LGTC}    \tab \code{LONGLINE_GEAR_TYPE_CODE}\cr
  \code{offcat}     \tab \code{OCC}     \tab \code{OFFLOAD_CATEGORY_CODE}\cr
  \code{offloc}     \tab \code{OLC}     \tab \code{OFFLOAD_LOCATION_CODE}\cr
  \code{offldr}     \tab \code{OC}      \tab \code{OFFLOADER_CODE}\cr
  \code{port}       \tab \code{PC}      \tab \code{PORT_CODE}\cr
  \code{state}      \tab \code{SC}      \tab \code{STATE_CODE}\cr
  \code{succ}       \tab \code{SC}      \tab \code{SUCCESS_CODE}\cr
  \code{ttnet}      \tab \code{TNTC}    \tab \code{TRAWL_NET_TYPE_CODE}\cr
  \code{ttype}      \tab \code{TTC}     \tab \code{TRIP_TYPE_CODE}\cr
  \code{use}        \tab \code{UC}      \tab \code{UTILIZATION_CODE}
}

Code keys for databases \code{gfb} (GFBioSQL):
\tabular{lll}{
  \code{key}        \tab \code{acronym} \tab \code{DB field}\cr
  \code{AC}         \tab \code{AC}      \tab \code{ACTIVITY_CODE}\cr
  \code{ameth}      \tab \code{AMC}     \tab \code{AGEING_METHOD_CODE}\cr
  \code{ART}        \tab \code{ARTC}    \tab \code{AGE_READING_TYPE_CODE}\cr
  \code{cver}       \tab \code{CVC}     \tab \code{CATCH_VERIFICATION_CODE}\cr
  \code{exist}      \tab \code{EAC}     \tab \code{EXISTENCE_ATTRIBUTE_CODE}\cr
  \code{fid}        \tab \code{FIDC}    \tab \code{FID_CODE}\cr
  \code{gear}       \tab \code{GC}      \tab \code{GEAR_CODE}\cr
  \code{major}      \tab \code{MSAC}    \tab \code{MAJOR_STAT_AREA_CODE}\cr
  \code{morpho}     \tab \code{MAC}     \tab \code{MORPHOMETRICS_ATTRIBUTE_CODE}\cr
  \code{narc}       \tab \code{NARC}    \tab \code{NOT_AVAILABLE_REASON_CODE}\cr
  \code{RC}         \tab \code{RC}      \tab \code{REASON_CODE}\cr
  \code{scat}       \tab \code{SCC}     \tab \code{SPECIES_CATEGORY_CODE}\cr
  \code{ssid}       \tab \code{SSID}    \tab \code{SURVEY_SERIES_ID}\cr
  \code{ssrc}       \tab \code{SSC}     \tab \code{SAMPLE_SOURCE_CODE}\cr
  \code{stype}      \tab \code{STC}     \tab \code{SAMPLE_TYPE_CODE}\cr
  \code{success}    \tab \code{SC}      \tab \code{SUCCESS_CODE}\cr
  \code{ttype}      \tab \code{TSTC}    \tab \code{TRIP_SUB_TYPE_CODE}\cr
  \code{use}        \tab \code{UC}      \tab \code{USABILITY_CODE}
}
Code keys for databases \code{gfb} (GFCatch):
\tabular{lll}{
  \code{key}        \tab \code{acronym} \tab \code{DB field}\cr
  \code{aid}        \tab \code{EQP}     \tab \code{Equipment}\cr
  \code{bait}       \tab \code{BAT}     \tab \code{Bait_Type}\cr
  \code{class}      \tab \code{TON}     \tab \code{Tonnage}\cr
  \code{gear}       \tab \code{GRT}     \tab \code{Gear_Type}\cr
  \code{invert}     \tab \code{SPP}     \tab \code{GFCATCH_Species}\cr
  \code{log}        \tab \code{LOG}     \tab \code{Log_Source}\cr
  \code{port}       \tab \code{PRT}     \tab \code{Location}\cr
  \code{sales}      \tab \code{SAS}     \tab \code{Sales_Source}\cr
  \code{skipper}    \tab \code{SKP}     \tab \code{Skipper}\cr
  \code{source}     \tab \code{SRC}     \tab \code{Source}\cr
  \code{trap}       \tab \code{TRP}     \tab \code{Trap_Type}\cr
  \code{use}        \tab \code{UTZ}     \tab \code{Utilization}\cr
  \code{vessel}     \tab \code{VSL}     \tab \code{Vessel_Name}
}
Code keys for query \code{fos_mcatORF.sql} (GFFOS.GF_MERGED_CATCH):
\tabular{lll}{
  \code{key}        \tab \code{acronym} \tab \code{DB field(s)}\cr
  \code{fid}        \tab \code{FID}     \tab \code{FISHERY_SECTOR, GEAR}\cr
  \code{fid2}       \tab \code{FID2}    \tab \code{FISHERY_SECTOR, GEAR, SPECIES_CODE}\cr
  \code{gear}       \tab \code{gear}    \tab \code{GEAR}\cr
  \code{log}        \tab \code{log}    \tab \code{LOG_TYPE}\cr
  \code{tar}        \tab \code{TAR}    \tab \code{FISHERY_SECTOR, SPECIES_CODE}
}
}
\source{
  Department of Fisheries and Oceans Canada (DFO)

  The original code tables can be obtained from \code{GFBioSQL}, \code{GFCatch}, and \code{GFFOS}.\cr
  For example, \code{SSID} codes can be downloaded via:\cr
  \code{getData("SURVEY","GFBioSQL")} \cr
  after loading the package \pkg{PBStools}.
}
\details{
  Code tables to facilitate the meaning of values in object fields that came
  from DFO databases:
  \tabular{ll}{
    \code{DB}  \tab \code{DFO database}\cr
    \code{fos.....} \tab \code{GFFOS}\cr
    \code{gfb.....} \tab \code{GFBioSQL}\cr
    \code{gfc.....} \tab \code{GFCatch}\cr
    \code{gfm.....} \tab \code{GFFOS.GF_MERGED_CATCH}
  }
}
\note{
  Keep code tables in separate objects by database; 
  easier to use than one big object (e.g., \code{dbcodes}) where first level is 
  database key and second level comprises codes.
}
\author{
  \href{mailto:rowan.haigh@dfo-mpo.gc.ca}{Rowan Haigh}, Program Head -- Offshore Rockfish\cr
  Pacific Biological Station (PBS), Fisheries & Oceans Canada (DFO), Nanaimo BC\cr
  \emph{locus opus}: Remote office, Vancouver BC\cr
  Last modified \code{Rd: 2025-04-28}
}
\keyword{datasets}
\concept{code}
\concept{C01_Codes}

