\name{PBSdata}
\docType{package}
\alias{PBSdata}
\alias{PBSdata-package}
\title{PBS Data}

\description{
  \pkg{PBSdata} provides data for various PBS (Pacific Biological Station) 
  packages including \pkg{PBSmapx} and \pkg{PBStools}.
  Additional datasets (large and/or rarely used) can be found in the package
  \pkg{PBSvault} (available on request from \pkg{PBSdata} maintainer).

  \pkg{PBSdata} contains the following datasets:
  \tabular{ll}{
  \bold{Datasets}       \tab \cr
  \code{bctopo}         \tab \bold{Topo:} British Columbia sea floor topography\cr
  \code{bgcp}           \tab \bold{Topo:} Biogeochemical provinces\cr
  \code{bowie}          \tab \bold{Topo:} Bowie Seamount Marine Protected Area\cr
  \code{claradat}       \tab \bold{Data:} Tow catches of species in Queen Charlotte Sound\cr
  \code{dbr.rem}        \tab \bold{Data:} Annual catches of darkblotched rockfish by sector\cr
  \code{eez.bc}         \tab \bold{Topo:} Exclusive Economic Zone (EEZ) for BC coast\cr
  \code{farmsFF}        \tab \bold{Topo:} Saltwater finfish farm and hatchery sites\cr
  \code{farmsSF}        \tab \bold{Topo:} Commercial marine shellfish farms\cr
  \code{fos.fid}        \tab \bold{Code:} Fishery codes in GFFOS\cr
  \code{gear}           \tab \bold{Code:} Gear code tables in various DFO databases\cr
  \code{gwaiihaanas}    \tab \bold{Topo:} Gwaii Haanas National Park Reserve simple boundary\cr
  \code{hsgrid}         \tab \bold{Topo:} Hecate Strait survey grid\cr
  \code{hsisob}         \tab \bold{Topo:} Hecate Strait isobaths\cr
  \code{hssa}           \tab \bold{Topo:} Hecate Strait synoptic survey area\cr
  \code{iphc.rbr}       \tab \bold{Data:} Longline indices of Redbanded Rockfish catch from the IPHC SSA\cr
  \code{iphc.rer}       \tab \bold{Data:} Longline indices of Rougheye Rockfish catch from the IPHC SSA\cr
  \code{iphc.yyr}       \tab \bold{Data:} Longline indices of Yelloweye Rockfish catch from the IPHC SSA\cr
  \code{isobath}        \tab \bold{Topo:} Isobaths (100 to 1800m, at 100m intervals)\cr
  \code{locality}       \tab \bold{Topo:} Localities in Pacific Marine Fisheries Commission minor areas\cr
  \code{ltea}           \tab \bold{Topo:} Longspine Thornyhead exploratory management areas\cr
  \code{ltmose07}       \tab \bold{Topo:} Seven Longspine Thornyhead fishing grounds (WCVI)\cr
  \code{ltmose12}       \tab \bold{Topo:} Twelve Longspine Thornyhead fishing grounds (WCVI)\cr
  \code{ltsa}           \tab \bold{Topo:} Longspine Thornyhead survey strata (WCVI)\cr
  \code{ltsa.bad}       \tab \bold{Topo:} No-trawl zones in Longspine Thornyhead survey area\cr
  \code{ltxa}           \tab \bold{Topo:} Longspine Thornyhead experimental management areas\cr
  \code{major}          \tab \bold{Topo:} Pacific Marine Fisheries Commission major areas\cr
  \code{minor}          \tab \bold{Topo:} Pacific Marine Fisheries Commission minor areas\cr
  \code{nage394}        \tab \bold{Data:} Age Frequency by Year for Rougheye Rockfish\cr
  \code{npafc}          \tab \bold{Topo:} North Pacific Anadromous Fish Commission areas\cr
  \code{orfhistory}     \tab \bold{Data:} Historic landings of rockfish in BC\cr
  \code{parVec}         \tab \bold{Data:} Initial parameter vector for model fits\cr
  \code{phytospp}       \tab \bold{Code:} Species codes for phytoplankton\cr
  \code{pcoda}          \tab \bold{Topo:} Hecate Strait Pacific Cod Monitoring Survey areas\cr
  \code{pjsa}           \tab \bold{Code:} Paul J Starr locality codes\cr
  \code{pl230}          \tab \bold{Topo:} 230 degree true line from Lookout Island\cr
  \code{pmfc}           \tab \bold{Topo:} Pacific Marine Fisheries Commission areas\cr
  \code{pop.age}        \tab \bold{Data:} Pacific Ocean Perch biological data for Queen Charlotte Sound\cr
  \code{pop.pmr.qcss}   \tab \bold{Data:} Pacific Ocean Perch (\eqn{p}, \eqn{\mu}, \eqn{\rho}) values for QCS synoptic survey\cr
  \code{popa}           \tab \bold{Topo:} Pacific Ocean Perch (POP) proposed assessment areas\cr
  \code{qcb}            \tab \bold{Topo:} Queen Charlotte basin surficial geology\cr
  \code{qcssa}          \tab \bold{Topo:} Queen Charlotte Sound survey strata\cr
  \code{rca}            \tab \bold{Topo:} Rockfish conservation areas\cr
  \code{rrfhistory}     \tab \bold{Data:} Historic landings of reconstructed rockfish (RRF) in BC\cr
  \code{species}        \tab \bold{Code:} Species codes and names\cr
  \code{seamounts}      \tab \bold{Topo:} Seamounts fff the BC coast\cr
  \code{spn}            \tab \bold{Code:} Species code vector\cr
  \code{spongeAMZ}      \tab \bold{Topo:} Sponge reef zones -- adaptive management zone\cr
  \code{spongeCPZ}      \tab \bold{Topo:} Sponge reef zones -- core protection zone\cr
  \code{srfa}           \tab \bold{Topo:} Slope rockfish assessment areas\cr
  \code{srfs}           \tab \bold{Topo:} Slope rockfish assessment subareas\cr
  \code{ssid}           \tab \bold{Code:} Survey series information\cr
  \code{testdatC}       \tab \bold{Data:} Fisheries catch data with species by column\cr
  \code{testdatR}       \tab \bold{Data:} Fisheries catch data with species by row\cr
  \code{tidemarks}      \tab \bold{Topo:} Tide Marks closed area\cr
  \code{trawlability}   \tab \bold{Topo:} Fisher knowledge of towable bottom\cr
  \code{trawlfoot}      \tab \bold{Topo:} BC trawl footprint\cr
  \code{utilize}        \tab \bold{Code:} Utilization code tables in various DFO databases\cr
  \code{wchgsa}         \tab \bold{Topo:} West coast Haida Gwaii synoptic survey area\cr
  \code{wcvisa}         \tab \bold{Topo:} West coast of Vancouver Island survey strata\cr
  \code{ymr.rem}        \tab \bold{Data:} Annual catches of Yellowmouth Rockfish by sector.
  }
}
\keyword{package}

