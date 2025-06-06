## fos.codes ---------------------------2025-05-29
##  Groundfish database codes -- GFFOS
##  (include table names as done for PacHarvest)
## ------------------------------------------NO|RH
fos.codes <- list(
	## Table: BAIT_TYPE
	bait = c('table'="BAIT_TYPE", 'field'="BAIT_TYPE_CODE",
		'0'="Undefined", '11668'="Artificial lures", '11669'="Herring", '11670'="Herring (frozen)", '11671'="Herring (live)",
		'11672'="Herring and squid", '11673'="Invertebrates", '11674'="Octopus", '11675'="Other fish", '11676'="Rockfish", '11677'="Salmon", '11678'="Squid",
		'11679'="Unknown (not checked)", '13153'="Dogfish", '13154'="Fish guts", '13155'="Hake", '13156'="Hoochies (artificial lures)", '13157'="Lingcod",
		'13158'="Pacific Cod, aka Grey Cod", '13159'="Pollock", '13160'="Ratfish", '13161'="Sardine, aka Pilchard", '13162'="Sablefish, aka Black Cod",
		'13163'="Sablefish Collars", '13164'="Turbot"),
	## Table: BIRD_AVOIDANCE_DEVICE
	birda = c('table'="BIRD_AVOIDANCE_DEVICE", 'field'="BIRD_AVOIDANCE_DEVICE_CODE",
		'0'="Undefined", '11681'="Streamers", '11682'="Single streamer", '11683'="Paired streamers",
		'11684'="Towed buoy", '11685'="Other", '11686'="Absent", '12995'="Not applicable", '12996'="Not provided"),
	## Table: BIRD_INTERACTION
	birdi = c('table'="BIRD_INTERACTION", 'field'="BIRD_INTERACTION_CODE",
		'0'="Undefined", '11688'="Yrs (seabirds observed attacking bait)", '11689'="No (seabirds not observed attacking bait",
		'11690'="Unknown (not observed / unknown)"),
	## Table: COMBO_TYPE
	combo = c('table'="COMBO_TYPE", 'field'="COMBO_TYPE_CODE",
		'0'="Undefined", '5749'="K/L", '5750'="K/ZN", '5751'="No"),
	## Table: DATA_CORRECTION
	dcor = c('table'="DATA_CORRECTION", 'field'="DATA_CORRECTION_CODE",
		'0'="No correction identified - original record", '99'="Correction needed",
		'110'="Lat/Lon replaced from EM data  - error resolved", '111'="Lat/Lon replaced from logbook data - error resolved",
		'120'="Full degree typo fixed - error resolved", '199'="Automated corrections failed", '200'="Examined - original record",
		'210'="Missing coordinates - estimated", '221'="Fixed obvious typo", '222'="Fixed non-obvious typo using guesswork",
		'223'="Lat/Lon replaced from video log data - error resolved", '230'="Location precision issue", '240'="Coordinates valid - reported area replaced",
		'310'="Uncorrectable", '311'="Uncorrectable", '312'="Uncorrectable line - valid start point", '313'="Uncorrectable line - valid end point"),
	## Table: DATA_ERROR
	derr = c('table'="DATA_ERROR", 'field'="DATA_ERROR_CODE",
		'0'="No geographic error identified", '11'="No usable location data", '12'="Start point NULL, ZERO, or incomplete",
		'13'="End point NULL, ZERO, or incomplete", '14'="Start lat/long equal to end lat/long", '21'="Line geometry under minimum",
		'22'="Line geometry over maximum", '30'="Event distant from nearest same-day event", '41'="Event outside Canadian waters",
		'42'="Start lat/long outside Canadian waters", '43'="End lat/long outside Canadian waters", '44'="Event on land", '45'="Start lat/long on land",
		'46'="End lat/long on land", '47'="Event outside reported PFMA", '48'="Event outside reported mgmt area"),
	## Table: DATA_SOURCE
	dsrc = c('table'="DATA_SOURCE", 'field'="DATA_SOURCE_CODE", '0'="Unspecified", '1'="Observer", '2'="Interview - individual", '3'="Phone-in", '4'="Interview", '5'="Fish slip",
		'6'="Sighting", '7'="Start fishing", '8'="Interview - grouped", '9'="Logbook", '10'="Distribution", '11'="Validation", '12'="Interview - partial",
		'13'="Nil Report", '14'="Offloading", '15'="Biosample", '104'="US validation", '105'="Fishing log", '106'="At-sea observer log", '107'="Video catch log"),
	## Table: ESC_RING_ATTACHMENT
	erngatt = c('table'="ESC_RING_ATTACHMENT", 'field'="ESC_RING_ATTACHMENT_CODE",
		'1'="Inside - attached to web by passing through escape ring opening", '2'="Outside - attached to web without passing through escape ring opening"),
	## Table: ESC_RING_MATERIAL
	erngmat = c('table'="ESC_RING_MATERIAL", 'field'="ESC_RING_MATERIAL_CODE",
		'1'="Stainless steel", '2'="Nylon", '3'="Steel", '4'="PVC"),
	## Table: EXTRUDER
	extrude = c('table'="EXTRUDER", 'field'="EXTRUDER_CODE",
		'61'="No extruder/catch restriction device used", '62'="Escapement panel in the codend or intermediate",
		'63'="Hole in the codend or intermediate", '64'="Square mesh panel(s) in the codend", '65'="Plasticised mesh panel(s) in the codend",
		'66'="Sorting grate and escapement panel in the codend", '67'="Tightened expansion straps", '68'="Large mesh panel(s) in the codend",
		'69'="Panel of codend mesh oriented differently in order to prevent mesh collapse", '70'="None used", '71'="Separator grate used (rigid BRD)",
		'72'="Soft web escapement panel used", '73'="Fish extruder (fisheye) used", '74'="Soft web excluder used",
		'75'="Other device or combination of devices used", '76'="Not applicable", '77'="Not provided"),
	## Table: FISHERY
	fishery = c('table'="FISHERY", 'field'="FISHERY_CODE",
		'1'="Aboriginal ceremonial", '2'="Aboriginal communal food, social and ceremonial", '3'="Selective",
		'4'="Salmon economic opportunities", '5'="Salmon gill net", '6'="Salmon seine", '7'="Salmon troll", '8'="Salmon gill net test fishery",
		'9'="Salmon seine test fishery", '10'="Salmon troll test fishery", '11'="Crab", '12'="Prawn and shrimp by trap", '13'="Geoduck and horse clam",
		'14'="Roe herring gill net", '15'="Roe herring seine", '16'="Herring spawn on kelp", '17'="Sablefish", '18'="Sea cucumber", '19'="Green sea urchin",
		'20'="Red sea urchin", '21'="Halibut", '22'="Clam licence", '23'="Groundfish trawl", '24'="Rockfish", '25'="Shrimp trawl", '26'="Smelt", '27'="Abalone",
		'28'="Anchovy", '29'="Gooseneck barnacle", '30'="Eulachon", '31'="Euphausiid pelagic", '32'="Herring - bait", '33'="Octopus", '34'="Scallops by dive",
		'35'="Scallops by trawl", '36'="Opal squid", '37'="Neon flying squid", '38'="Surf and pile perch", '39'="Herring - food & bait", '40'="Experimental",
		'41'="Contaminated shellfish", '42'="Aboriginal treaty", '43'="Herring - special issue", '44'="Mackerel", '45'="Pacific sardine",
		'46'="Excess to salmon spawning req", '47'="AFS commercial", '48'="Herring", '49'="Recreational finfish", '50'="Recreational invertebrates",
		'51'="High seas tuna", '52'="Spiny dogfish", '53'="To record marine mammal and turtle incidents", '54'="To record plant inspections and report on them",
		'55'="Licencing", '56'="FOS eulachon gill net test fishery", '57'="Schedule II", '58'="Groundfish - all species", '59'="Lingcod",
		'60'="USA albacore tuna", '61'="Recreational halibut fishery", '62'="Broodstock sablefish", '63'="Tuna"),
	## Table: FORM
	form = c('table'="FORM", 'field'="FORM_CODE",
		'0'="Undefined", '6'="J cut", '7'="Head off", '8'="Head on", '9'="Round", '10'="Unspecified", '4585'="Wings",
		'13193'="Head-off tailed", '22665'="Meal", '22666'="Oil", '23745'="Head off tail off"),
	## Table: GEAR
	gear = c('table'="GEAR", 'field'="GEAR_VALUE",
		'1'="Longline", '2'="Longline or hook and line", '3'="Trap", '4'="Trap or longline or hook and L", '5'="Trawl", '6'="Undefined"),
	## Table: HOOK_TRAP_TYPE
	hook = c('table'="HOOK_TRAP_TYPE", 'field'="HOOK_TRAP_TYPE_CODE",
		'25'="Circle hook", '26'="J hook", '27'="Treble hook", '28'="Weighted hook", '29'="Korean trap",
		'30'="Other", '31'="Not applicable", '32'="Not provided", '33'="Barbless circle hook", '34'="Barbless J hook", '35'="Barbless treble hook",
		'36'="Barbless weighted hook", '37'="Collapsible trap"),
	## Table: LICENCE_OPTION
	licopt = c('table'="LICENCE_OPTION", 'field'="LICENCE_OPTION_CODE",
		'101'="No option", '121'="Rockfish harvest option A", '122'="Rockfish harvest option B",
		'123'="Rockfish harvest option C", '124'="Rockfish harvest option D", '125'="Groundfish option A", '126'="Groundfish option B",
		'127'="Groundfish option C", '131'="Sablefish A", '132'="Sablefish B", '133'="Sablefish C", '134'="Sablefish option D",
		'135'="Sablefish option E", '136'="Sablefish option F", '137'="Sablefish option G", '138'="Sablefish option H",
		'139'="Sablefish option J", '140'="Sablefish option K", '141'="Sablefish option L", '142'="Halibut option A", '143'="Halibut option J",
		'144'="Offshore prawn by trap", '149'="Octopus retention", '150'="Schedule II fishing only", '154'="Rockfish option N",
		'159'="Herring enclosure activites", '164'="Crab area Tofino - E", '165'="Crab area Sooke - E", '166'="Crab area Quatsino - E",
		'169'="NSS", '174'="Geoduck enhanced beds", '179'="Groundfish option A (no Schedule II)", '180'="Groundfish option B (no Schedule II)",
		'184'="Geoduck pre seed harvest"),
	## Table: LOCATION_METHOD
	locmeth = c('table'="LOCATION_METHOD", 'field'="LOCATION_METHOD_CODE",
		'55'="Observer recorded start and finish of set",
		'56'="Vessel recorded start and finish of set",
		'57'="Other criteria - describe in trip report",
		'58'="Both set start and final haul positions observer recorded and verified at winch lockup and release",
		'59'="Either set, haul or both positions vessel recorded based on winch lockup and release",
		'60'="Either set, haul or both positions vessel recorded based on other criteria (specify in trip report)",
		'61'="Either set OR haul position estimated, other position verified by observer (document in trip report)",
		'62'="Both set AND haul positions estimated (document in trip report)",
		'63'="Set and haul positions unavailable. Explain why in trip report",
		'64'="Midpoint of tow not available",
		'65'="Estimated by skipper on plotter using cursor moved to midpoint of the vessel track",
		'66'="Estimated by observer using chart plot of tow",
		'67'="Recorded from GPS at approximate midpoint of the tow calculated from expected set duration",
		'68'="Other - describe criteria used in trip report",
		'69'="Observer recorded based on winch lockup and release (drum lock up for beam trawl",
		'70'="Vessel recorded based on winch lockup and release, and observer using same information",
		'71'="Vessel recorded based on other criteria, and observer using same information",
		'72'="Information not available - describe situation in trip report"),
	## Table: LONGLINE_GEAR_TYPE
	llgear = c('table'="LONGLINE_GEAR_TYPE", 'field'="LONGLINE_GEAR_TYPE_CODE",
		'1'="Fixed hook", '2'="Autoline", '3'="Snap", '4'="Swivel snap", '5'="Troll",
		'6'="Handline", '7'="Rod and reel", '8'="Trap", '9'="Longline", '10'="Handline/jigging", '11'="Troll", '12'="Gang troll",
		'13'="Vertical longline", '14'="Korean trap", '15'="Swivel hook"),
	## Table: OFFLOAD_CATEGORY
	offcat = c('table'="OFFLOAD_CATEGORY", 'field'="OFFLOAD_CATEGORY_CODE",
		'0'="Undefined", '5660'="Quota", '5661'="Tagged", '5662'="Biosample",
		'5665'="Other", '5666'="Scientific", '5667'="Seamount", '12873'="Experimental", '13133'="FSC non-quota"),
	## Table: OFFLOAD_LOCATION
	offloc = c('table'="OFFLOAD_LOCATION", 'field'="OFFLOAD_LOCATION_CODE",
		'0'="Default value for undefined code", '3446'="A Plus Seafood Inc.", '3447'="Aero Trading Port Edward Plant",
		'3448'="Arrowac Fisheries", '3449'="BC Ice Harbour Plant", '3450'="BC Packers Masset Plant", '3451'="BC Packers Ltd Imperial Plant",
		'3452'="Bear Cove Ice", '3453'="Bornstein Seafoods Bellingham", '3455'="C.B. Island Fisheries", '3456'="Coal Harbour Ice & Cold Storage",
		'3457'="Comox Government Dock", '3458'="Prince Rupert Co-op Fairview Plant", '3459'="Delta Sea Products Vancouver Plant",
		'3460'="French Creek Seafood Plant", '3461'="Ideal Pacific", '3462'="J.S. Mcmillan Fairview Plant", '3463'="Long Beach Tofino Plant",
		'3464'="Neptune Packers Beaver Cove Plant", '3465'="North Sea Products Port Edward Camp", '3466'="Ocean Fisheries Royal Plant",
		'3467'="Orca Seafoods Ltd", '3468'="Canadian Seafood Processors", '3469'="Port Hardy Processors", '3470'="Portugese Joe Fish Market",
		'3471'="Rushbrook Dock", '3472'="Salish Seafoods", '3473'="Sea K Fish Company", '3474'="Seafood Products Port Hardy Plant",
		'3475'="Shearer Seafood Product Ltd", '3476'="S M Products Dock Ladner", '3477'="Stephen's Bay Ice", '3478'="Tri-Star Seafood Port Mcneill",
		'3479'="Ucluelet Seafood Processors", '3480'="Vancouver Shellfish Tofino Plant", '3481'="J.S. Mcmillan Vancouver Plant",
		'3482'="Long Beach Ladner Plant", '3483'="Ocean Fisheries Vancouver Plant", '3484'="North Sea Products Vancouver Plant",
		'3485'="BC Packers Ltd Atlin Plant", '3486'="Canadian Fishing Company Prince Rupert", '3487'="Walcan Seafoods Heriot Bay",
		'3488'="Port Hardy Fisheries", '3489'="Aero Trading Vancouver Plant", '3490'="North Sea Products Tofino Camp", '3491'="BC Packers Skidegate",
		'3492'="Versacold Harbour Plant", '3493'="Neptune Packers Ucluelet", '3494'="Bornstein Seafoods Canada", '3495'="Pacific Wild Seafood Ladner",
		'3496'="Ucluelet Fishing Company Ltd", '3497'="Pacific Wild Seafood Coal Harbour", '3498'="BC Packers Port Hardy",
		'3499'="Queen Charlotte Fishlifters", '3500'="Port Mcneill Municipal Ramp", '3501'="Pacific Wild Seafood Steveston",
		'3502'="Neptune Packers Zeballos", '3503'="Government Dock", '3505'="Infrequent Location", '3507'="Port Fish", '3508'="Fairview Govt. Dock",
		'3509'="Prince Rupert Marine Services", '3510'="Seafood Products", '3516'="Fisherman's Wharf", '3518'="Walcan Seafoods Port Hardy",
		'3519'="Government Dock (Steveston)", '3522'="Resthaven Dock", '3524'="Harry - O's", '3526'="Bella Coola Fisheries Ltd",
		'3527'="Blundell Seafoods", '3528'="Canadian Fishing Company", '3529'="Government Dock (False Creek)", '3531'="Ocean Pacific Seafoods",
		'3532'="Public Sales Dock", '3533'="Seven Seas Fishing Company", '3535'="High Tide Enterprises", '3536'="Merino's Seafood Inc.",
		'3537'="Deep Bay Government Dock", '3538'="Steveston Seafood Auction", '3539'="Seagate Wharf", '3542'="Bornstein Seafoods Port Hardy",
		'3543'="New West Fisheries", '3544'="River Seafoods Inc", '3545'="Odin Seafoods", '3546'="Robert Wholey & Company (Canada) Ltd",
		'3547'="Unknown Location", '3548'="Shannon Point Seafoods", '5227'="A&T Codfish Trading Co Inc", '5228'="Access Marine Products Ltd",
		'5229'="Albion Fisheries Ltd", '5230'="Allied Pacific Processors Ltd", '5231'="Allied Pacific Processors Ltd Seal Cove",
		'5232'="Alpha & Omega Sales Ltd", '5233'="Alpha Processing Ltd", '5234'="Angel", '5235'="Aqueous Fisheries Ltd",
		'5236'="Arctic Seafoods Product Ltd", '5237'="ARD Resources", '5238'="Arrow Seafoods", '5240'="BC Ice", '5241'="Barkley Sound Seafoods",
		'5242'="Bayshore Seafoods", '5243'="Beachcomber Marina", '5244'="Bella Bella Fisheries Ltd", '5245'="Bellingham Cold Storage",
		'5246'="Best Honour Seafood Ltd", '5247'="Bill Bocolas", '5248'="Billingsgate Fish Ltd", '5249'="Blackford Brokers Ltd",
		'5250'="Boundary Fish Co Ltd", '5251'="Breakers", '5252'="Burger Fisheries Ltd", '5253'="C P Fish Co", '5254'="C-Force Marine",
		'5255'="C-Pak Holdings", '5257'="Calkins & Burke Ltd", '5258'="Campbell River Seafood", '5260'="Cape Scott Seafoods Ltd",
		'5261'="Capital Distributors Ltd", '5262'="Captain Seafood", '5263'="Chong Lee Seafood", '5264'="Chong Soo Fishing Company",
		'5265'="Clear Bay Fisheries Inc", '5266'="Coal Harbour Ice & Cold Storage", '5267'="Coast Select Smokehouse", '5268'="Coastal Fisheries Ltd",
		'5269'="Codfather Restaurant", '5270'="Cove Fisheries & Marine Service", '5271'="Cowichan Bay Fish Market", '5272'="CR Wholesale",
		'5273'="Crystal Ocean", '5274'="Custom Processors Ltd, Prp", '5275'="D&N Seafoods Delivery", '5276'="Dana F Besecker",
		'5277'="David Hollingsworth", '5278'="Deep Six Fish Co Ltd", '5279'="Delta Sea Products Ltd", '5280'="Demand International",
		'5281'="Dick Henderson Fish Co Ltd", '5282'="Dorcas Point Farms", '5283'="E.V. Services", '5284'="Evergreen International Food",
		'5285'="False Creek Marina", '5286'="False Creek Public Dock", '5287'="Fanny Bay Oysters Ltd", '5288'="Fergus-MC-Barendse",
		'5289'="Finn Bay Sea Products", '5290'="Fisher Bay Seafood Ltd", '5291'="Fishmonger", '5292'="Fjord Pacific Marine Industries",
		'5293'="Four Seasons Seafoods Ltd", '5294'="French Creek Seafoods Ltd", '5295'="Fresh Start Seafoods", '5296'="Gailco Fish Ltd Co",
		'5297'="Granville Island Seafood Co Ltd", '5298'="Great Northern Packing Ltd", '5299'="Hake Processors U.S. Ltd",
		'5300'="Harbour Marine Products", '5301'="Harbour Packing", '5302'="Hardy Buoys Smoked Fish Inc", '5303'="Harkema Enterprises",
		'5304'="Hecate Seafood", '5305'="Hi Tide Seafood", '5306'="Hi-To Fisheries Ltd", '5307'="High Surf Industries Co Ltd",
		'5309'="Hokkai Marine", '5310'="Hub City Fisheries", '5311'="Icicle Seafoods", '5312'="Ideal Pacific Seafood Brokers",
		'5313'="Infrequent Local Buyer", '5315'="Inlook Seafood Ltd", '5316'="Inpac", '5317'="Island Fish Lifters", '5318'="ITD Holdings",
		'5319'="J S Mcmillan Fisheries", '5320'="Janor Seafoods Ltd", '5321'="K & L Trading Ltd", '5322'="Kaito Inc", '5323'="Kam Tong Enterprises Ltd",
		'5324'="Kawaki Canada Ltd", '5325'="Kelliher Fish Co", '5326'="Kelsey Fishing Co/mike Hamer", '5327'="Keltic Seafoods Ltd.",
		'5328'="Kento Seafoods Ltd", '5329'="King Seafood", '5330'="Kwong Man Sang Co. Ltd.", '5331'="Lax Kw'alaams Marine Industrie",
		'5332'="Leader Marine", '5333'="Leon Lee", '5334'="Lions Gate Fisheries Ltd", '5335'="Lobsterman", '5336'="Long Beach Shellfish",
		'5337'="Long Island Seafoods", '5338'="Lost At Sea", '5339'="Lox Royale", '5340'="M T V Kassay Ltd", '5341'="Majestic Seafood Products Inc",
		'5342'="Megani Fishing Co", '5343'="Merino's Seafood Inc.", '5344'="Mid-ocean Fisheries Ltd", '5345'="Mike Hare", '5346'="Mike's Lively Rockfish",
		'5347'="Moon Enterprise Inc", '5348'="Namu Harbour Resorts Ltd", '5349'="Nation Seafood Inc", '5350'="Nellbro Packing Co",
		'5351'="Nelson Crab Inc.", '5352'="New Dimensions Holdings Co Ltd", '5353'="New Wave Seafood Co. Ltd.", '5355'="New West Fisheries (Canada) Inc",
		'5356'="Nha Trang Trading Seafood", '5357'="North Sea Products Ltd", '5358'="Northern Native Fishing Corp", '5359'="Not Sold",
		'5360'="Number 1 Dock", '5361'="Oban Ventures Ltd", '5362'="Ocean City Octopus", '5363'="Ocean Fisheries Ltd", '5364'="Ocean Fisheries Ltd Rice",
		'5365'="Ocean Link Seafood Inc", '5366'="Ocean Run", '5367'="Ocean Star Seafood", '5368'="Omega Packing Co Ltd",
		'5370'="Osprey International Seafood", '5371'="P R Seafoods", '5372'="P. Wood Trucking", '5373'="Pacific Canadian Fisheries Inc",
		'5374'="Pacific Coast Processors", '5375'="Pacific Coast Seafoods", '5376'="Pacific Northwest Shellfish Co", '5377'="Pacific Point Seafoods Ltd",
		'5378'="Pacific Salmon Industries Inc", '5379'="Pacific Spray Seafoods", '5380'="Paladin International Food Sal", '5381'="Pasco Seafoods",
		'5382'="Pender Harbour Seafoods", '5383'="Personal Use", '5384'="Peter Trimmis", '5385'="Pinnacle Seafoods", '5386'="Porcher Seafoods",
		'5387'="Port Fish Ice & Cold Storage", '5388'="Port Hardy Cold Storage Co Ltd", '5389'="Port Hardy Processors", '5390'="Port Hardy Trucking",
		'5391'="Portugese Joe Fish Market", '5392'="Prince Rupert Fishermans Co-op", '5393'="Princess Margarets Seafood",
		'5394'="Prp Custom Processors Ltd", '5395'="PTA", '5396'="PTA Seafood Market", '5399'="Q M P Fisheries Ltd",
		'5400'="Queen Charlotte FishLifters", '5401'="RG Seafood Inc", '5402'="Rippingale Mariculture Seafood", '5404'="Royal Flash Fish",
		'5406'="S & R Seafoods", '5407'="S & S Seafood", '5408'="S M Products Ltd", '5409'="Salish Seafood Serv/wjm Holdings",
		'5410'="San Juan Fish 1979", '5411'="Satellite Fish Co Ltd", '5412'="Scarlet Point Seafoods Ltd.", '5413'="Sea Drift Fish Co Ltd",
		'5414'="Sea K Fish Co", '5415'="Sea Plus Marketing Inc", '5416'="Sea World Fisheries Ltd", '5417'="Seafood City",
		'5418'="Seafood Direct (371478 BC Ltd)", '5419'="Seafood Marketers Internation", '5420'="Seafood Products Company",
		'5421'="Sealand Foods Intn'l Inc", '5422'="Seapak QCI", '5423'="Seaproducts West Inc", '5424'="Self", '5425'="Shar Paul Ent Ltd",
		'5426'="Shearer Seafood Products Ltd", '5427'="Silver Seas Sales Ltd", '5428'="Silverline Seafoods", '5429'="Sir Richards Seafoods Inc",
		'5430'="Stephens Bay Ice Ltd", '5431'="Suncoast Seafoods", '5432'="Sung Fisheries Ltd.", '5433'="Sunset Coast Marine Ltd",
		'5434'="Sunshine Seafood Inc", '5435'="Susi's Seafoods", '5436'="Swanson Brothers Imp/Exp", '5437'="T C Rockfish", '5438'="T.L.C. Seafoods",
		'5439'="Takeda Canada Trading Ent", '5440'="Teemway Seafood Co Ltd", '5441'="Territory Seafoods", '5442'="Titan Fishing Ltd", '5443'="TLC",
		'5444'="Token Seafoods Ltd", '5445'="Toshi Enterprises Ltd", '5446'="Tradex Food Inc", '5447'="Trans-Pacific Fish Ltd",
		'5448'="Tri-Star Seafood Supply Ltd", '5449'="Ucluelet Seafood Processors", '5450'="Undersize Halibut", '5451'="Unique Seafoods Ltd",
		'5452'="United Seafoods", '5454'="Van Pacific Fisheries(CND)ltd", '5455'="Van Seafood Trading Ltd", '5456'="Vancouver Shellfish & Fish Co",
		'5457'="Void Halibut Tags", '5458'="Walkus Cold Storage", '5459'="Washington Crab Producers", '5460'="Wayne Walker",
		'5461'="We Haul Seafood", '5462'="Westfjord Fishing", '5463'="Westminister Fish Co Ltd", '5464'="White Lightening Ent Ltd",
		'5465'="Wild West Fisheries Intn'l Ltd", '5466'="Worldwide Seafoods Inc.", '5467'="Zeballos Fisheries",
		'7743'="Mid Island Ice and Packing Ltd.", '9288'="Tenerife Packing Co. Ltd.", '12793'="Walcan Seafood Ltd", '12794'="Johnson St. Bridge",
		'12795'="Mcleans Shipyard", '12796'="Kellos Marine", '13474'="Ucluelet Harbour Seafoods", '13693'="Osprey Marine Ltd.",
		'13793'="Glenrose Dock (Vancouver)", '13934'="Ocean Gold", '14055'="Geroi Shironinsty", '14094'="Vancouver Paramount Docks",
		'14493'="Keep It Cool", '14494'="Number 2 Dock", '14594'="Ukee Fish Ltd.", '14637'="Mlenchnyi", '14639'="Siglan",
		'14653'="Coast Tsimshian Fish Plant", '14833'="Seine Floats", '15294'="Finger Dock", '15376'="Reagle Terminal Inc.",
		'15453'="52 Steps Ucluelet Port", '15454'="Atagi Vancouver Port", '15653'="Petrocan Fuel Dock", '15673'="Canfisco Oceanside",
		'15693'="Eagle Marine", '15694'="Inner Basin", '15695'="Outer Basin", '15733'="Trappa Dock", '15774'="Discovery Harbour",
		'15775'="Discovery Pier", '16098'="Excellence", '16473'="Annelies Ilena", '16853'="First Street Dock Tofino",
		'16854'="Fourth Street Dock Tofino", '17186'="Nandg", '17568'="Southside Processing", '17765'="Port Authority Berth 1",
		'17826'="Select Seafoods", '18445'="Coast Tsimshian Fish Plant", '19485'="Tinlet Fishery Ltd", '19505'="Whiskey Dock",
		'19852'="Oceanside", '20185'="Cow Bay Marina", '24425'="T&M Seafood Ltd.", '24426'="Sakura Seafood Co. Ltd."),
	## Table: OFFLOADER
	offldr =c('table'="OFFLOADER", 'field'="OFFLOADER_CODE",
		'0'="Default value for undefined code", '1166'="Aqua Resources Development Inc", '1167'="Keltic Seafoods Ltd",
		'1168'="Demand International", '1169'="Breakers Fish Co Ltd", '1170'="Steveston Seafood Auction Inc.", '1171'="Toshi Enterprises",
		'1172'="Cove Fisheries & Marine Service", '1173'="Odin Seafood Ltd", '1174'="Mike Hare", '1175'="Robert Wholey & Co Canada Ltd.",
		'1176'="Merino's Seafood Inc.", '1177'="New West Fisheries", '1178'="Swanson Brothers Imp/Exp", '1179'="Hi-To Fisheries Ltd",
		'1180'="Coastal Fisheries Ltd", '1181'="Pacific Spray Seafoods", '1182'="Hub City Fisheries", '1183'="B C Ice", '1184'="BC Packers",
		'1185'="Aero Trading Co Ltd", '1186'="Canadian Fishing Co Ltd", '1187'="C.B. Island Fisheries Ltd", '1188'="North Sea Products Ltd",
		'1189'="Walcan Seafood Ltd", '1190'="Portugese Joe Fish Market", '1191'="Bella Coola Fisheries Ltd", '1192'="Pacific Point Seafoods Ltd",
		'1193'="Pacific Salmon Industries Inc", '1194'="Pacific Coast Processors", '1195'="Billingsgate Fish Ltd", '1196'="Neptune Packers",
		'1197'="Lions Gate Fisheries Ltd", '1198'="Prince Rupert Co-op", '1199'="Satellite Fish Co Ltd", '1200'="Seafood Products Company",
		'1201'="Shearer Fish Co Ltd", '1202'="Ucluelet Fishing Company Ltd", '1203'="Vancouver Shellfish & Fish Co", '1204'="Seven Seas Fish Co Ltd",
		'1205'="Long Beach Shellfish Co Ltd", '1206'="J S Mcmillan Fisheries", '1207'="Ideal Pacific Seafood Brokers", '1208'="Albion Fisheries Ltd",
		'1209'="Arctic Seafoods Product Ltd", '1210'="Salish Seafood Services", '1211'="Orca Seafoods Ltd", '1212'="Fanny Bay Oysters Ltd",
		'1213'="Leader Marine", '1214'="Versacold Canada Corp", '1215'="Port Hardy Fisheries", '1216'="Port (Alberni) Fish", '1217'="Port Hardy Processors",
		'1218'="Stephens Bay Ice Ltd", '1219'="S M Products Ltd", '1220'="Deep Six Fish Co Ltd", '1221'="Ucluelet Seafood Processors Ltd",
		'1222'="Kento Seafoods Ltd", '1223'="Sea Drift Fish Co Ltd", '1224'="Zeballos Fisheries", '1225'="Calliope Seafoods",
		'1226'="Shearer Seafood Products Ltd", '1227'="Great Northern Packing Ltd", '1228'="Blundell Seafoods", '1229'="Hokkai Marine",
		'1230'="Sea World Fisheries Ltd", '1231'="K & L Trading Ltd", '1232'="Delta Sea Products Ltd", '1233'="Tri-Star Seafood Supply Ltd",
		'1234'="Finn Bay Sea Products", '1235'="Arrow Seafood Ltd", '1236'="Pacific Wild Seafood Ltd", '1237'="Pacific Canadian Fisheries Inc",
		'1238'="New Dimensions Holdings Co Ltd", '1239'="Kelsey Fishing Co / Mike Hamer", '1240'="Sealand Foods Intn'l Inc",
		'1241'="Bella Bella Fisheries Ltd", '1242'="A & T Codfish Trading Co Inc", '1243'="Westminster Fish Co Ltd", '1244'="Pacific Northwest Shellfish Co",
		'1245'="United Seafoods", '1246'="Sir Richards Seafoods Inc", '1247'="Bornstein Seafoods Canada Ltd", '1248'="French Creek Seafoods Ltd",
		'1249'="Kelliher Fish Co", '1250'="Sea K Fish Co", '1251'="Washington Crab Producers", '1252'="Arrowac Fisheries", '1253'="Bornstein Seafoods Inc",
		'1254'="Queen Charlotte Fish Lifters", '1256'="Long Island Seafoods", '1257'="Ocean Dry Enterprises", '1258'="Hookah Harvesters",
		'1259'="Majestic Seafood Prod (1997)", '1260'="Sea Pac Enterprises Ltd", '1261'="Mandala Holdings Ltd", '1262'="Bill Bocolas",
		'1263'="Pearl Seaproducts Inc", '1264'="MTG Enterprise Inc", '1265'="Best Honour Seafood Ltd", '1266'="S R Seafood", '1267'="Seafood Connection",
		'1268'="Don Mackay", '1269'="Smoki Foods", '1270'="Century Fisheries Ltd", '1271'="Codfather Contracting", '1272'="High Surf Industries Co Ltd",
		'1273'="Alpha Processing Ltd", '1274'="Bear Cove Ice", '1275'="Canadian Gold Seafoods Ltd", '1276'="P Wood Trucking", '1277'="Seafood Marketers Int'l",
		'1278'="Clemus Contracting Ltd", '1279'="Bella Coola Valley Seafoods", '1280'="Clayoquot Sound Products Ltd", '1281'="Anthony Zebertavicius",
		'1282'="Obrien Fish Co", '1283'="Osprey Marine Ltd", '1284'="Bruce Probert", '1285'="Janet Chung", '1286'="Debonair Ent Canada Ltd",
		'1287'="Happy as a Clam Shellfish Co", '1288'="Fraser River Fish Associates", '1289'="E-fish Mobile Offloading", '1290'="Fraser River Processors",
		'1291'="P R Seafoods", '1292'="Seapak QCI", '1293'="Lox Royale Processors Inc", '1294'="Seafood Direct (371478 BC Ltd)", '1295'="Silver Seas Sales Ltd",
		'1296'="Van Seafood Trading Ltd", '1297'="Coast Select Smokehouse", '1298'="Four Seasons Seafoods Ltd", '1299'="Ocean City Octopus",
		'1300'="RDC Holdings Ltd", '1301'="Cormorant Trading Inc", '1302'="Wescan Fisheries Ltd", '1303'="Worldwide Seafoods (1997) Ltd",
		'1304'="Canadian Seafood Ltd", '1305'="Omega Packing Co Ltd", '1306'="E V Services", '1307'="At-Pac Industries Ltd", '1308'="512009BC Ltd",
		'1309'="The Fishmonger", '1310'="Sea Treasure Int'l Seafood Ltd", '1311'="Port Fish (PA) Ltd", '1312'="Northern Anchor Marine Ltd",
		'1313'="Ads Enterprises Inc", '1314'="Brian Paterson", '1315'="Glendale Fisheries Ltd", '1316'="Ocean Link Seafood Inc",
		'1317'="Silver Spring Seafoods Inc", '1318'="Pacific Fancy Fish Co Ltd", '1319'="R & J Pugh", '1320'="Pan Pacific Trading", '1321'="Keta Coop",
		'1322'="Shafer-Haggart Ltd", '1323'="Dalum Seafoods Ltd", '1324'="Far East Seafoods Co", '4407'="Access Marine Products Ltd",
		'4408'="Alpha & Omega Sales Ltd", '4409'="Angel", '4410'="Aqueous Fisheries Ltd.", '4411'="Arrow Seafoods", '4412'="Barkley Sound Seafoods",
		'4413'="Bayshore Seafoods", '4414'="Beachcomber Marina", '4415'="Bellingham Cold Storage", '4416'="Dana F Besecker", '4417'="Blackford Brokers Ltd",
		'4418'="Boundary Fish Co Ltd", '4419'="Burger Fisheries Ltd.", '4420'="C-Force Marine", '4421'="C-Pak Holdings", '4422'="Calkins & Burke Ltd",
		'4423'="Campbell River Seafood", '4424'="Cape Scott Seafoods Ltd", '4425'="Capital Distributors Ltd", '4426'="Captain Seafood",
		'4427'="Chong Lee Seafood", '4428'="Chung Soo Fishing Company", '4429'="Clear Bay Fisheries Inc", '4430'="Codfather Restaurant",
		'4431'="Cowichan Bay Fish Market", '4432'="C P Fish Co", '4433'="CR Wholesale", '4434'="Crystal Ocean", '4435'="Custom Processors Ltd, Prp",
		'4436'="D & N Seafoods Delivery", '4437'="Dick Henderson Fish Co Ltd", '4438'="Dorcas Point Farms", '4439'="E.V. Services",
		'4440'="Evergreen International Foodstuff", '4441'="Fairview Govt. Dock", '4442'="False Creek Marina", '4443'="False Creek Public Dock",
		'4444'="Fergus-MC-Barendse", '4445'="Fisherman's Wharf", '4446'="Fisher Bay Seafood Ltd", '4447'="Fjord Pacific Marine Industries",
		'4448'="Fresh Start Seafoods", '4449'="Gailco Fish Ltd Co", '4450'="Government Dock", '4451'="Granville Island Seafood Co Ltd",
		'4452'="Hake Processors U.S. Ltd", '4453'="Harbour Marine Products (BMP)", '4454'="Harbour Packing", '4455'="Hardy Buoys Smoked Fish Inc",
		'4456'="Harkema Enterprises", '4457'="H L Ostergaard & Son Ltd", '4458'="Hecate Seafood", '4459'="High Tide Enterprises", '4460'="Hi Tide Seafood",
		'4461'="David Hollingsworth", '4462'="Icicle Seafoods", '4463'="Inlook Seafood Ltd", '4464'="Inpac", '4465'="Island Fish Lifters",
		'4466'="ITD Holdings", '4467'="Janor Seafoods Ltd", '4468'="Kaito Inc", '4469'="Kam Tong Enterprises Ltd", '4470'="Kawaki Canada Ltd",
		'4471'="King Seafood", '4472'="Kwong Man Sang Co. Ltd.", '4473'="Leon Lee", '4474'="Lax Kw'alaams Marine Industries", '4475'="Lobsterman",
		'4476'="Infrequent Location", '4477'="Infrequent Local Buyer", '4478'="Lost At Sea", '4479'="Lox Royale", '4480'="Majestic Seafood Products Inc",
		'4481'="Prince Rupert Marine Services Ltd", '4482'="Megani Fishing Co", '4483'="Mid-ocean Fisheries Ltd", '4484'="Mike's Lively Rockfish",
		'4485'="Moon Enterprise Inc", '4486'="M T V Kassay Ltd", '4487'="Namu Harbour Resorts Ltd", '4488'="Nation Seafood Inc", '4489'="Nellbro Packing Co",
		'4490'="Nelson Crab Inc.", '4491'="New West Fisheries (Canada) Inc", '4492'="Nha Trang Trading Seafood", '4493'="Northern Native Fishing Corp",
		'4494'="Not Sold", '4495'="Number 1 Dock", '4496'="New Wave Seafood Co. Ltd.", '4498'="Ocean Pacific Seafoods Ltd", '4499'="Ocean Fisheries Ltd",
		'4500'="Ocean Run", '4501'="Ocean Star Seafood", '4502'="Osprey International Seafoods Inc", '4503'="Pacific Coast Seafoods",
		'4504'="Paladin International Food Sales", '4505'="Pasco Seafoods", '4506'="Pender Harbour Seafoods", '4507'="Personal Use",
		'4508'="Port Hardy Cold Storage Co Ltd", '4509'="Port Hardy Seafood Inc", '4510'="Port Hardy Trucking", '4511'="Porcher Seafoods",
		'4512'="Port Fish Ice & Cold Storage", '4513'="Princess Margarets Seafood", '4514'="Public Sales Dock", '4515'="Public Sales",
		'4516'="Q M P Fisheries Ltd", '4517'="Resthaven Dock", '4518'="RG Seafood Inc", '4519'="Rippingale Mariculture Seafoods", '4520'="River Seafoods Inc",
		'4521'="Royal Flash Fish", '4522'="Rushbrook Dock", '4523'="S & S Seafood", '4524'="San Juan Fish 1979", '4525'="Scarlet Point Seafoods Ltd.",
		'4526'="Sea Plus Marketing Inc", '4527'="Seaproducts West Inc", '4528'="Seafood Marketers International", '4529'="Seafood City", '4530'="Seagate Dock",
		'4531'="Self", '4532'="Shannon Point Seafoods", '4533'="Shar Paul Ent Ltd", '4534'="Silverline Seafoods", '4535'="Suncoast Seafoods",
		'4536'="Sung Fisheries Ltd.", '4537'="Sunset Coast Marine Ltd", '4538'="Sunshine Seafood Inc", '4539'="Susi's Seafoods", '4540'="T.L.C. Seafoods",
		'4541'="Takeda Canada Trading Ent", '4542'="T C Rockfish", '4543'="Teemway Seafood Co Ltd", '4544'="Territory Seafoods", '4545'="Titan Fishing Ltd",
		'4546'="TLC", '4547'="Token Seafoods Ltd", '4548'="Tradex Food Inc", '4549'="Trans-Pacific Fish Ltd", '4550'="Peter Trimmis", '4551'="Undersize Halibut",
		'4552'="Unique Seafoods Ltd", '4553'="Unknown Buyer", '4554'="Van Pacific Fisheries (Cnd) ltd", '4555'="Prp Custom Processors Ltd", '4556'="Versacold",
		'4557'="Oban Ventures Ltd", '4558'="Void Halibut Tags", '4559'="Wayne Walker", '4560'="Walkus Cold Storage", '4561'="We Haul Seafood",
		'4562'="Westfjord Fishing", '4563'="White Lightening Ent Ltd", '4564'="Wild West Fisheries Intn'l Ltd", '7742'="Mid Island Ice and Packing Ltd.",
		'8007'="FAS Seafood Producers Ltd", '8687'="The Fish Store", '9708'="Tenerife Packing Co. Ltd.", '9758'="Pacific Seafood Group",
		'13634'="Ucluelet Harbour Seafoods", '13782'="Alamo Ink", '13783'="Coastwide Fishing Ltd.", '13784'="FAS Wholesale Seafood Products",
		'13785'="Glen Rose Dock", '13786'="Jumbo Seafood Co Ltd", '13787'="Kingsway Market Inc.", '13788'="Pinnacle Seafoods",
		'13789'="Ucluelet Harbour Seafoods", '13933'="Ocean Gold", '14054'="Geroi Shironinsty", '14495'="Keep It Cool", '14496'="Fishful Thinking",
		'14497'="Hannah Rock Fisheries", '14593'="Ukee Fish Ltd.", '14634'="Mlenchnyi", '14635'="Siglan", '14753'="Tsimshian Fish Plant",
		'14754'="Quatsino Offloading Company", '15377'="Reagle Terminal Inc.", '15378'="Dalian Yidu-Jifa Cold Logistics Ltd.", '15438'="Viking Seafoods",
		'15439'="Ten Point", '15440'="Yamazaki Enterprises", '15441'="Mariner Seafoods", '15442'="Organic Ocean", '15443'="Sparrowhawk Holdings",
		'15444'="West Pacific Seafoods", '15515'="Shandong Yongkang Food Co.", '15516'="Great Pacific", '15594'="Adanac Seafood Inc.",
		'15754'="Media Gold LLC", '16097'="Excellence", '16493'="Annelies Ilena", '17185'="Nandg", '17566'="Select Seafoods", '17567'="Southside Processing",
		'17570'="Independent Seafood Canada Corporation", '17706'="OK Ocean Fishers", '17806'="Kelsey Bay Fishing", '17825'="Cold Fish Seafoods",
		'17886'="Haida Wild", '18446'="Coast Tsimshian Fish Plant", '18605'="Oceanside Fisheries", '18625'="Wild Ocean", '18626'="Tinlet",
		'18825'="Bear's Choice Seafoods", '19145'="Tinlet Fishing Ltd.", '19407'="Lax Kw'alaams Fishing Enterprises", '20748'="Viking Alliance Seafoods Ltd.",
		'20806'="Margiris", '23725'="Saila Fishing Ventures Ltd.", '24427'="North Delta Seafoods Ltd.", '24428'="T&M Seafood Ltd.", '24429'="Sakura Seafood Co. Ltd."), 
	## Table: PORT
	port = c('table'="PORT", 'field'="PORT_CODE",
		'0'="Default value for undefined code", '1101'="Bamfield", '1102'="Beaver Cove", '1103'="Bella Bella", '1104'="Bella Coola",
		'1105'="Bellingham", '1106'="Blaine", '1107'="Campbell River", '1108'="Coal Harbour", '1109'="Comox", '1110'="Courtenay", '1111'="Cowichan Bay",
		'1112'="Egmont", '1113'="Everett", '1114'="French Creek", '1115'="Ketchikan", '1116'="Klemtu (Kitasoo)", '1117'="Lund", '1118'="Masset",
		'1119'="Mixed/unknown", '1120'="Namu", '1121'="Nanaimo", '1122'="Port Alberni", '1123'="Port Hardy", '1124'="Port Edward", '1125'="Prince Rupert",
		'1126'="Queen Charlotte City", '1127'="Sechelt", '1128'="Shearwater", '1129'="Sidney", '1130'="Skidegate", '1131'="Sointula", '1132'="Sooke",
		'1133'="Steveston", '1134'="Telegraph Cove", '1135'="Tofino", '1136'="Ucluelet", '1137'="Vancouver", '1138'="Victoria", '1139'="Winter Harbour",
		'1140'="Zeballos", '1141'="Whitehorse", '1142'="Dawson City", '1143'="Anacortes", '1144'="Chemainus", '1145'="Fair Harbour", '1146'="Fanny Bay",
		'1147'="Galiano Island", '1148'="Heriot Bay", '1149'="Kelsey Bay", '1150'="Klemtu", '1151'="La Conner", '1152'="Ladysmith", '1153'="Nanoose Bay",
		'1154'="Port Mcneill", '1155'="Port Renfrew", '1156'="Quadra Island", '1157'="Sandspit", '1158'="Stuart Island", '1159'="Twin Islands",
		'1160'="Westport", '1161'="Whaler Bay", '1162'="Ladner", '1163'="Deep Bay", '1164'="Port Angeles", '3562'="False Creek", '3563'="Granville Island",
		'3564'="Herriot Bay", '3565'="Gibsons", '3566'="Pender Harbour", '3567'="Madeira Park", '3568'="Gold River", '3569'="Quathiaski Cove",
		'3570'="Halifax", '3571'="Hope Bay", '3572'="Garden Bay", '3573'="Crofton", '3574'="Sturdies Bay", '3575'="Westview", '3576'="Tacoche Inlet",
		'3577'="Koskimo Bay", '3578'="Ottawa", '3579'="Colorado", '3580'="James Island", '3581'="Powell River", '3582'="Sayward", '3583'="Moresby Camp",
		'3584'="USA", '3585'="Qualicum Beach", '3586'="Northwest Bay", '3587'="Mahatta West", '3588'="Black Creek", '12373'="Delta", '12374'="North Delta",
		'14056'="At Sea (joint venture)", '14640'="At Sea (joint venture)", '14641'="At Sea (joint venture)", '14756'="Port Simpson", '15613'="Ahousat",
		'15614'="Alert Bay", '15615'="Kyuquot", '16099'="At Sea (joint venture)", '16494'="Annelies Ilena",
		'17505'="Hesquiaht Village near Hot Springs Cove", '17510'="Queen's Cove, Vancouver Is", '17511'="Yuquot Village, Nootka Is",
		'17992'="Ganges, Salt Spring Is", '18086'="Maple Ridge", '18166'="Richmond", '18805'="Seine Floats"),
	## Table: FISHERY_SECTOR
	sector =c('table'="FISHERY_SECTOR", 'field'="FISHERY_SECTOR",
		'FOR'="Foreign", 'GLL'="Groundfish Longline", 'GFT'="Groundfish Trawl", 'PAH'="Halibut", 'HAS'="Halibut and Sablefish",
		'KOL'="K/L", 'KZN'="K/ZN", 'LIN'="Lingcod", 'RFI'="Rockfish Inside", 'RFO'="Rockfish Outside", 'SBF'="Sablefish", 'SII'="Schedule II",
		'DOG'="Spiny Dogfish", 'ZNR'="ZN"),
	## Table: STATE
	state = c('table'="STATE", 'field'="STATE_CODE",
		'0'="Undefined", '12'="Fresh", '13'="Frozen", '14'="Live", '15'="Unspecified"),
	## Table: SUCCESS
	succ = c('table'="SUCCESS", 'field'="SUCCESS_CODE",
		'0'="Undefined", '11710'="Unknown", '11711'="Fully usable", '11712'="Malfunction / Damage", '11713'="Lost", '11714'="Water haul"),
	## Table: TRAWL_NET_TYPE
	ttnet = c('table'="TRAWL_NET_TYPE", 'field'="TRAWL_NET_TYPE_CODE",
		'1'="Hard bottom trawl", '2'="Soft bottom trawl", '3'="Midwater trawl", '4'="Bottom twin trawl"),
	## Table: TRIP_TYPE
	ttype = c('table'="TRIP_TYPE", 'field'="TRIP_TYPE_CODE",
		'0'="Undefined", '18'="IPHC", '19'="USA", '20'="Quota", '5668'="Non-seamount", '5669'="Seamount",
		'12762'="Opt A - Hake Quota (gulf)", '12763'="Opt A - Quota", '12764'="Opt A - Hake Quota (shoreside)", '12765'="Opt B",
		'12766'="Opt A - Hake Quota (JV)", '12813'="Experimental"),
	## Table: UTILIZATION
	use = c('table'="UTILIZATION", 'field'="UTILIZATION_CODE",
		'57'="Retained", '58'="Used as bait", '59'="Released live - seabirds", '60'="Crew personal use (eaten on board)",
		'61'="Discarded", '62'="Retained for special use", '63'="Discarded, marketable - DEAD", '64'="Discarded, marketable - ALIVE",
		'65'="Discarded, unmarketable", '66'="Crew personal use - eaten on board, etc.", '67'="Halibut, discarded ALIVE",
		'68'="Halibut, discarded DEAD", '69'="Retained for special use", '70'="Discarded", '71'="Released, sub-legal",
		'72'="Released, legal, unmarketable", '73'="Released, legal, marketable")
)
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~fos.codes


