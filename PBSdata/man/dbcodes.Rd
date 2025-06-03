\name{dbcodes}
\alias{dbcodes}
\alias{fos.codes}
\alias{gfb.codes}
\alias{gfc.codes}
\alias{gfm.codes}
\alias{pht.codes}
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
pht.codes
}
\format{
Code keys for database \code{fos} (GFFOS):
\tabular{lll}{
  \code{key}        \tab \code{DB table}               \tab \code{DB field}\cr
  \code{bait}       \tab \code{BAIT_TYPE}              \tab \code{BAIT_TYPE_CODE}\cr
  \code{birda}      \tab \code{BIRD_AVOIDANCE_DEVICE}  \tab \code{BIRD_AVOIDANCE_DEVICE_CODE}\cr
  \code{birdi}      \tab \code{BIRD_INTERACTION}       \tab \code{BIRD_INTERACTION_CODE}\cr
  \code{combo}      \tab \code{COMBO_TYPE}             \tab \code{COMBO_TYPE_CODE}\cr
  \code{dcor}       \tab \code{DATA_CORRECTION}        \tab \code{DATA_CORRECTION_CODE}\cr
  \code{derr}       \tab \code{DATA_ERROR}             \tab \code{DATA_ERROR_CODE}\cr
  \code{dsrc}       \tab \code{DATA_SOURCE}            \tab \code{DATA_SOURCE_CODE}\cr
  \code{erngatt}    \tab \code{ESC_RING_ATTACHMENT}    \tab \code{ESC_RING_ATTACHMENT_CODE}\cr
  \code{erngmat}    \tab \code{ESC_RING_MATERIAL}      \tab \code{ESC_RING_MATERIAL_CODE}\cr
  \code{extrude}    \tab \code{EXTRUDER}               \tab \code{EXTRUDER_CODE}\cr
  \code{fishery}    \tab \code{FISHERY}                \tab \code{FISHERY_CODE}\cr
  \code{form}       \tab \code{FORM}                   \tab \code{FORM_CODE}\cr
  \code{gear}       \tab \code{GEAR}                   \tab \code{GEAR_VALUE}\cr
  \code{hook}       \tab \code{HOOK_TRAP_TYPE}         \tab \code{HOOK_TRAP_TYPE_CODE}\cr
  \code{licopt}     \tab \code{LICENCE_OPTION}         \tab \code{LICENCE_OPTION_CODE}\cr
  \code{locmeth}    \tab \code{LOCATION_METHOD}        \tab \code{LOCATION_METHOD_CODE}\cr
  \code{llgear}     \tab \code{LONGLINE_GEAR_TYPE}     \tab \code{LONGLINE_GEAR_TYPE_CODE}\cr
  \code{offcat}     \tab \code{OFFLOAD_CATEGORY}       \tab \code{OFFLOAD_CATEGORY_CODE}\cr
  \code{offloc}     \tab \code{OFFLOAD_LOCATION}       \tab \code{OFFLOAD_LOCATION_CODE}\cr
  \code{offldr}     \tab \code{OFFLOADER}              \tab \code{OFFLOADER_CODE}\cr
  \code{port}       \tab \code{PORT}                   \tab \code{PORT_CODE}\cr
  \code{sector}     \tab \code{FISHERY_SECTOR}         \tab \code{FISHERY_SECTOR}\cr
  \code{state}      \tab \code{STATE}                  \tab \code{STATE_CODE}\cr
  \code{succ}       \tab \code{SUCCESS}                \tab \code{SUCCESS_CODE}\cr
  \code{ttnet}      \tab \code{TRAWL_NET_TYPE}         \tab \code{TRAWL_NET_TYPE_CODE}\cr
  \code{ttype}      \tab \code{TRIP_TYPE}              \tab \code{TRIP_TYPE_CODE}\cr
  \code{use}        \tab \code{UTILIZATION}            \tab \code{UTILIZATION_CODE}
}

Code keys for database \code{gfb} (GFBioSQL):
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
Code keys for database \code{gfc} (GFCatch):
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
Code keys for database \code{pht} (PacHarvest):
\tabular{lll}{
  \code{key}        \tab \code{DB table}                         \tab \code{DB field(s)}\cr
  \code{action}     \tab \code{C_Action}                         \tab \code{ACTION_CDE}\cr
  \code{amrbait}    \tab \code{C_AMR_Bait}                       \tab \code{AMR_BAIT_CODE}\cr
  \code{amrbird}    \tab \code{C_AMR_Bird_Exclusion_Device}      \tab \code{BIRD_EXCLUSION_DEVICE_CODE}\cr
  \code{amrcatu}    \tab \code{C_AMR_Catch_Utilization}          \tab \code{AMR_CATCH_UTILIZATION_CODE}\cr
  \code{amrdeck}    \tab \code{C_AMR_Deck_Method}                \tab \code{AMR_DECK_METHOD_CODE}\cr
  \code{amrpspp}    \tab \code{C_AMR_Est_Species_Proportions}    \tab \code{AMR_EST_SPECIES_PROPORTION_METHOD_CODE}\cr
  \code{amrgear}    \tab \code{C_AMR_Gear}                       \tab \code{AMR_GEAR_CODE}\cr
  \code{amrgeom}    \tab \code{C_AMR_Geographic_Coord_Method}    \tab \code{AMR_GEOGRAPHIC_COORD_METHOD_CODE}\cr
  \code{amrhksz}    \tab \code{C_AMR_Hook_Size}                  \tab \code{AMR_HOOK_SIZE_CODE}\cr
  \code{dfohksz}    \tab \code{C_AMR_Hook_Size}                  \tab \code{DFO_HOOK_SIZE_CODE}\cr
  \code{amrhktp}    \tab \code{C_AMR_Hook_Type}                  \tab \code{AMR_HOOK_TYPE_CODE}\cr
  \code{buyoff}     \tab \code{C_Buyer_Offloader}                \tab \code{BUYOFFL_CDE}\cr
  \code{catutil}    \tab \code{C_Catch_Utilization}              \tab \code{CATCH_UTILIZATION_CDE}\cr
  \code{city}       \tab \code{C_City}                           \tab \code{CITY_ID}\cr
  \code{citysrc}    \tab \code{C_City_Source}                    \tab \code{CITY_SOURCE_CDE}\cr
  \code{colqnam}    \tab \code{C_Colloquial_Names}               \tab \code{Binomial}\cr
  \code{estprop}    \tab \code{C_Est_Spp_Proportions_Method}     \tab \code{EST_SPECIES_PRPRTN_MTHD_CDE}\cr
  \code{estwts}     \tab \code{C_Est_Spp_Weights_Method}         \tab \code{SPC_EST_METHOD_CDE}\cr
  \code{estcat}     \tab \code{C_Estimated_Catch_Method}         \tab \code{EST_CATCH_MTHD_CDE}\cr
  \code{estmid}     \tab \code{C_Estimated_Mid_Method}           \tab \code{EST_MID_METHOD_CDE}\cr
  \code{extrude}    \tab \code{C_Extruder}                       \tab \code{EXTRUDER_CDE}\cr
  \code{fishery}    \tab \code{C_Fishery}                        \tab \code{FISHERY_ID}\cr
  \code{fepurp}     \tab \code{C_Fishing_Event_Purpose}          \tab \code{FEPURP_CDE}\cr
  \code{fesucc}     \tab \code{C_Fishing_Event_Success}          \tab \code{FESUCC_CDE}\cr
  \code{gearsub}    \tab \code{C_Gear_Subtype}                   \tab \code{GEAR_TYPE_CDE, GEAR_SUBTYPE_CDE}\cr
  \code{geartype}   \tab \code{C_Gear_Type}                      \tab \code{GEAR_TYPE_CDE}\cr
  \code{geo}        \tab \code{C_Geocodes}                       \tab \code{Code}\cr
  \code{geocoor}    \tab \code{C_Geographic_Coord_Method}        \tab \code{GEOGRAPHIC_COORD_METHOD_CDE}\cr
  \code{landtype}   \tab \code{C_Landing_Type}                   \tab \code{LANDING_TYPE_CDE}\cr
  \code{licopt}     \tab \code{C_License_Option}                 \tab \code{FISHERY_ID, LICENSE_OPTION_CDE}\cr
  \code{lhdtype}    \tab \code{C_Lighthouse_Data_Types}          \tab \code{DATA_TYPE_CODE}\cr
  \code{lhouse}     \tab \code{C_Lighthouses}                    \tab \code{LIGHTHOUSE_CODE}\cr
  \code{mktutil}    \tab \code{C_Market_Utilization}             \tab \code{MARKET_UTILIZATION_CDE}\cr
  \code{month}      \tab \code{C_Month}                          \tab \code{MONTH_NAME, MONTH_DAYS}\cr
  \code{net}        \tab \code{C_Net}                            \tab \code{NET_CDE}\cr
  \code{obsrvr}     \tab \code{C_Observers}                      \tab \code{EXT_OBSERVER_CDE}\cr
  \code{prior}      \tab \code{C_Priority_Species}               \tab \code{PRIORITY, SPECIES_CODE}\cr
  \code{product}    \tab \code{C_Product}                        \tab \code{PRODUCT_CDE}\cr
  \code{prodtype}   \tab \code{C_Product_Type}                   \tab \code{PRODUCT_TYPE_CDE}\cr
  \code{provstat}   \tab \code{C_Prov_State}                     \tab \code{PROV_STATE_CDE}\cr
  \code{quotarea}   \tab \code{C_Quota_Mgmt_Area}                \tab \code{QUOTA_MGMT_AREA_ID}\cr
  \code{regdist}    \tab \code{C_Regional_District}              \tab \code{REGIONAL_DISTRICT_ID}\cr
  \code{rpa}        \tab \code{C_RPAs}                           \tab \code{ID}\cr
  \code{sppagg}     \tab \code{C_Specagr_Species}                \tab \code{SPECIES_CDE}\cr
  \code{trawl}      \tab \code{C_Trawl}                          \tab \code{TRAWL_CDE}\cr
  \code{speed}      \tab \code{C_Trawl_Speed_Method}             \tab \code{TRAWL_SPEED_METHOD_CDE}\cr
  \code{tripsub}    \tab \code{C_Trip_SubType}                   \tab \code{TRIP_TYPE_CDE, TRIP_SUBTYPE_CDE}\cr
  \code{triptype}   \tab \code{C_Trip_Type}                      \tab \code{TRIP_TYPE_CDE}\cr
  \code{vmaster}    \tab \code{C_Vessel_Masters}                 \tab \code{PCL_VM_PARTY_ID}\cr
  \code{vessel}     \tab \code{C_Vessels}                        \tab \code{VSL_ID}\cr
  \code{vessamr}    \tab \code{C_Vessels_AMR}                    \tab \code{CFV_NO}
}
}
\source{
  Department of Fisheries and Oceans Canada (DFO)

  The original code tables can be obtained from \code{GFBioSQL}, \code{GFCatch}, 
  \code{GFFOS}, and \code{PacHarvest}.\cr
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
    \code{gfm.....} \tab \code{GFFOS.GF_MERGED_CATCH}\cr
    \code{pht.....} \tab \code{PacHarvest}
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
  Last modified \code{Rd: 2025-05-29}
}
\keyword{datasets}
\concept{code}

