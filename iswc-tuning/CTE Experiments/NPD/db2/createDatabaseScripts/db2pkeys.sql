-- This file was generated on : 11-04-2014 13:21:15
-- IBM Data Movement Tool Version : 2.00-b2126
--
-- This script contains primary key constraints.
-- This script is part of the deployment script.
-- The contents of the file will also be loaded in GUI interactive deployment.
-- 
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_apaAreaNet
ALTER TABLE "npd_no_spatial_10"."apaAreaNet"
ADD CONSTRAINT "PK_apaAreaNet" PRIMARY KEY
(
"apaAreaNet_id","qdrName","blkName","prvName","blkId"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_baaArea
ALTER TABLE "npd_no_spatial_10"."baaArea"
ADD CONSTRAINT "PK_baaArea" PRIMARY KEY
(
"baaNpdidBsnsArrArea","baaNpdidBsnsArrAreaPoly"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_bsns_arr_area
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area"
ADD CONSTRAINT "PK_bsns_arr_area" PRIMARY KEY
(
"baaNpdidBsnsArrArea"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_bsns_arr_area_area_poly_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"
ADD CONSTRAINT "PK_bsns_arr_area_area_poly_hst" PRIMARY KEY
(
"baaNpdidBsnsArrArea","baaAreaPolyBlockName","baaAreaPolyNo","baaAreaPolyDateValidFrom","baaAreaPolyDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_apaAreaGross
ALTER TABLE "npd_no_spatial_10"."apaAreaGross"
ADD CONSTRAINT "PK_apaAreaGross" PRIMARY KEY
(
"apaAreaGross_id"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_bsns_arr_area_transfer_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_transfer_hst"
ADD CONSTRAINT "PK_bsns_arr_area_transfer_hst" PRIMARY KEY
(
"baaNpdidBsnsArrArea","baaTransferDirection","cmpNpdidCompany","baaTransferDateValidFrom"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_company_reserves
ALTER TABLE "npd_no_spatial_10"."company_reserves"
ADD CONSTRAINT "PK_company_reserves" PRIMARY KEY
(
"cmpNpdidCompany","fldNpdidField"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_dscArea
ALTER TABLE "npd_no_spatial_10"."dscArea"
ADD CONSTRAINT "PK_dscArea" PRIMARY KEY
(
"dscNpdidDiscovery","dscHcType"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_bsns_arr_area_operator
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_operator"
ADD CONSTRAINT "PK_bsns_arr_area_operator" PRIMARY KEY
(
"baaNpdidBsnsArrArea"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_bsns_arr_area_licensee_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_licensee_hst"
ADD CONSTRAINT "PK_bsns_arr_area_licensee_hst" PRIMARY KEY
(
"baaNpdidBsnsArrArea","cmpNpdidCompany","baaLicenseeDateValidFrom","baaLicenseeDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_company
ALTER TABLE "npd_no_spatial_10"."company"
ADD CONSTRAINT "PK_company" PRIMARY KEY
(
"cmpNpdidCompany"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_discovery_reserves
ALTER TABLE "npd_no_spatial_10"."discovery_reserves"
ADD CONSTRAINT "PK_discovery_reserves" PRIMARY KEY
(
"dscNpdidDiscovery","dscReservesRC"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_discovery
ALTER TABLE "npd_no_spatial_10"."discovery"
ADD CONSTRAINT "PK_discovery" PRIMARY KEY
(
"dscNpdidDiscovery"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_facility_moveable
ALTER TABLE "npd_no_spatial_10"."facility_moveable"
ADD CONSTRAINT "PK_facility_moveable" PRIMARY KEY
(
"fclNpdidFacility"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_facility_fixed
ALTER TABLE "npd_no_spatial_10"."facility_fixed"
ADD CONSTRAINT "PK_facility_fixed" PRIMARY KEY
(
"fclNpdidFacility"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_activity_status_hst
ALTER TABLE "npd_no_spatial_10"."field_activity_status_hst"
ADD CONSTRAINT "PK_field_activity_status_hst" PRIMARY KEY
(
"fldNpdidField","fldStatus","fldStatusFromDate","fldStatusToDate"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_fclPoint
ALTER TABLE "npd_no_spatial_10"."fclPoint"
ADD CONSTRAINT "PK_fclPoint" PRIMARY KEY
(
"fclNpdidFacility"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_description
ALTER TABLE "npd_no_spatial_10"."field_description"
ADD CONSTRAINT "PK_field_description" PRIMARY KEY
(
"fldNpdidField","fldDescriptionHeading"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field
ALTER TABLE "npd_no_spatial_10"."field"
ADD CONSTRAINT "PK_field" PRIMARY KEY
(
"fldNpdidField"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_investment_yearly
ALTER TABLE "npd_no_spatial_10"."field_investment_yearly"
ADD CONSTRAINT "PK_field_investment_yearly" PRIMARY KEY
(
"prfNpdidInformationCarrier","prfYear"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_licensee_hst
ALTER TABLE "npd_no_spatial_10"."field_licensee_hst"
ADD CONSTRAINT "PK_field_licensee_hst" PRIMARY KEY
(
"fldNpdidField","cmpNpdidCompany","fldLicenseeFrom","fldLicenseeTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_production_monthly
ALTER TABLE "npd_no_spatial_10"."field_production_monthly"
ADD CONSTRAINT "PK_field_production_monthly" PRIMARY KEY
(
"prfNpdidInformationCarrier","prfYear","prfMonth"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_operator_hst
ALTER TABLE "npd_no_spatial_10"."field_operator_hst"
ADD CONSTRAINT "PK_field_operator_hst" PRIMARY KEY
(
"fldNpdidField","cmpNpdidCompany","fldOperatorFrom","fldOperatorTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_production_totalt_NCS_month
ALTER TABLE "npd_no_spatial_10"."field_production_totalt_NCS_month"
ADD CONSTRAINT "PK_field_production_totalt_NCS_month" PRIMARY KEY
(
"prfYear","prfMonth"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_owner_hst
ALTER TABLE "npd_no_spatial_10"."field_owner_hst"
ADD CONSTRAINT "PK_field_owner_hst" PRIMARY KEY
(
"fldNpdidField","fldNpdidOwner","fldOwnershipFromDate","fldOwnershipToDate"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_production_totalt_NCS_year
ALTER TABLE "npd_no_spatial_10"."field_production_totalt_NCS_year"
ADD CONSTRAINT "PK_field_production_totalt_NCS_year" PRIMARY KEY
(
"prfYear"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_production_yearly
ALTER TABLE "npd_no_spatial_10"."field_production_yearly"
ADD CONSTRAINT "PK_field_production_yearly" PRIMARY KEY
(
"prfNpdidInformationCarrier","prfYear"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence
ALTER TABLE "npd_no_spatial_10"."licence"
ADD CONSTRAINT "PK_licence" PRIMARY KEY
(
"prlNpdidLicence"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_fldArea
ALTER TABLE "npd_no_spatial_10"."fldArea"
ADD CONSTRAINT "PK_fldArea" PRIMARY KEY
(
"dscNpdidDiscovery","dscHcType"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_licensee_hst
ALTER TABLE "npd_no_spatial_10"."licence_licensee_hst"
ADD CONSTRAINT "PK_licence_licensee_hst" PRIMARY KEY
(
"prlNpdidLicence","cmpNpdidCompany","prlLicenseeDateValidFrom","prlLicenseeDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_area_poly_hst
ALTER TABLE "npd_no_spatial_10"."licence_area_poly_hst"
ADD CONSTRAINT "PK_licence_area_poly_hst" PRIMARY KEY
(
"prlNpdidLicence","prlAreaPolyBlockName","prlAreaPolyPolyNo","prlAreaPolyDateValidFrom","prlAreaPolyDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_field_reserves
ALTER TABLE "npd_no_spatial_10"."field_reserves"
ADD CONSTRAINT "PK_field_reserves" PRIMARY KEY
(
"fldNpdidField"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_petreg_licence
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence"
ADD CONSTRAINT "PK_licence_petreg_licence" PRIMARY KEY
(
"prlNpdidLicence"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_petreg_licence_oper
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence_oper"
ADD CONSTRAINT "PK_licence_petreg_licence_oper" PRIMARY KEY
(
"prlNpdidLicence"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_petreg_licence_licencee
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence_licencee"
ADD CONSTRAINT "PK_licence_petreg_licence_licencee" PRIMARY KEY
(
"prlNpdidLicence","cmpNpdidCompany"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_petreg_message
ALTER TABLE "npd_no_spatial_10"."licence_petreg_message"
ADD CONSTRAINT "PK_licence_petreg_message" PRIMARY KEY
(
"prlNpdidLicence","ptlMessageDocumentNo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_pipLine
ALTER TABLE "npd_no_spatial_10"."pipLine"
ADD CONSTRAINT "PK_pipLine" PRIMARY KEY
(
"pipNpdidPipe"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_prlArea
ALTER TABLE "npd_no_spatial_10"."prlArea"
ADD CONSTRAINT "PK_prlArea" PRIMARY KEY
(
"prlArea_id","prlNpdidLicence","prlAreaPolyDateValidFrom","prlAreaPolyDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_transfer_hst
ALTER TABLE "npd_no_spatial_10"."licence_transfer_hst"
ADD CONSTRAINT "PK_licence_transfer_hst" PRIMARY KEY
(
"prlNpdidLicence","prlTransferDirection","cmpNpdidCompany","prlTransferDateValidFrom"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_seis_acquisition
ALTER TABLE "npd_no_spatial_10"."seis_acquisition"
ADD CONSTRAINT "PK_seis_acquisition" PRIMARY KEY
(
"seaNpdidSurvey","seaName"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_task
ALTER TABLE "npd_no_spatial_10"."licence_task"
ADD CONSTRAINT "PK_licence_task" PRIMARY KEY
(
"prlNpdidLicence","prlTaskID"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_oper_hst
ALTER TABLE "npd_no_spatial_10"."licence_oper_hst"
ADD CONSTRAINT "PK_licence_oper_hst" PRIMARY KEY
(
"prlNpdidLicence","cmpNpdidCompany","prlOperDateValidFrom","prlOperDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_seaArea
ALTER TABLE "npd_no_spatial_10"."seaArea"
ADD CONSTRAINT "PK_seaArea" PRIMARY KEY
(
"seaArea_id","seaSurveyName"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_tuf_operator_hst
ALTER TABLE "npd_no_spatial_10"."tuf_operator_hst"
ADD CONSTRAINT "PK_tuf_operator_hst" PRIMARY KEY
(
"tufNpdidTuf","cmpNpdidCompany","tufOperDateValidFrom","tufOperDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_seaMultiline
ALTER TABLE "npd_no_spatial_10"."seaMultiline"
ADD CONSTRAINT "PK_seaMultiline" PRIMARY KEY
(
"seaSurveyName"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_seis_acquisition_coordinates_inc_turnarea
ALTER TABLE "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"
ADD CONSTRAINT "PK_seis_acquisition_coordinates_inc_turnarea" PRIMARY KEY
(
"seaSurveyName","seaPolygonPointNumber"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_licence_phase_hst
ALTER TABLE "npd_no_spatial_10"."licence_phase_hst"
ADD CONSTRAINT "PK_licence_phase_hst" PRIMARY KEY
(
"prlNpdidLicence","prlPhase","prlDatePhaseValidFrom","prlDatePhaseValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_tuf_owner_hst
ALTER TABLE "npd_no_spatial_10"."tuf_owner_hst"
ADD CONSTRAINT "PK_tuf_owner_hst" PRIMARY KEY
(
"tufNpdidTuf","cmpNpdidCompany","tufOwnerDateValidFrom","tufOwnerDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_tuf_petreg_message
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_message"
ADD CONSTRAINT "PK_tuf_petreg_message" PRIMARY KEY
(
"tufNpdidTuf","ptlMessageDocumentNo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_prlAreaSplitByBlock
ALTER TABLE "npd_no_spatial_10"."prlAreaSplitByBlock"
ADD CONSTRAINT "PK_prlAreaSplitByBlock" PRIMARY KEY
(
"prlNpdidLicence","blcName","prlAreaPolyPolyNo","prlAreaPolyDateValidFrom","prlAreaPolyDateValidTo"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_casing_and_lot
ALTER TABLE "npd_no_spatial_10"."wellbore_casing_and_lot"
ADD CONSTRAINT "PK_wellbore_casing_and_lot" PRIMARY KEY
(
"wellbore_casing_and_lot_id","wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_strat_litho_wellbore
ALTER TABLE "npd_no_spatial_10"."strat_litho_wellbore"
ADD CONSTRAINT "PK_strat_litho_wellbore" PRIMARY KEY
(
"wlbNpdidWellbore","lsuNpdidLithoStrat","lsuTopDepth","lsuBottomDepth"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_strat_litho_wellbore_core
ALTER TABLE "npd_no_spatial_10"."strat_litho_wellbore_core"
ADD CONSTRAINT "PK_strat_litho_wellbore_core" PRIMARY KEY
(
"wlbNpdidWellbore","lsuNpdidLithoStrat"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_tuf_petreg_licence_oper
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence_oper"
ADD CONSTRAINT "PK_tuf_petreg_licence_oper" PRIMARY KEY
(
"tufNpdidTuf"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_seis_acquisition_progress
ALTER TABLE "npd_no_spatial_10"."seis_acquisition_progress"
ADD CONSTRAINT "PK_seis_acquisition_progress" PRIMARY KEY
(
"seis_acquisition_progress_id","seaProgressText2"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_document
ALTER TABLE "npd_no_spatial_10"."wellbore_document"
ADD CONSTRAINT "PK_wellbore_document" PRIMARY KEY
(
"wellbore_document_id","wlbNpdidWellbore","wlbDocumentName"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_tuf_petreg_licence_licencee
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence_licencee"
ADD CONSTRAINT "PK_tuf_petreg_licence_licencee" PRIMARY KEY
(
"tufNpdidTuf","cmpNpdidCompany"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "PK_wellbore_development_all" PRIMARY KEY
(
"wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_tuf_petreg_licence
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence"
ADD CONSTRAINT "PK_tuf_petreg_licence" PRIMARY KEY
(
"tufNpdidTuf"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_core_photo
ALTER TABLE "npd_no_spatial_10"."wellbore_core_photo"
ADD CONSTRAINT "PK_wellbore_core_photo" PRIMARY KEY
(
"wellbore_core_photo_id","wlbNpdidWellbore","wlbCoreNumber","wlbCorePhotoTitle"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_npdid_overview
ALTER TABLE "npd_no_spatial_10"."wellbore_npdid_overview"
ADD CONSTRAINT "PK_wellbore_npdid_overview" PRIMARY KEY
(
"wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_core
ALTER TABLE "npd_no_spatial_10"."wellbore_core"
ADD CONSTRAINT "PK_wellbore_core" PRIMARY KEY
(
"wellbore_core_id","wlbNpdidWellbore","wlbCoreNumber"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_formation_top
ALTER TABLE "npd_no_spatial_10"."wellbore_formation_top"
ADD CONSTRAINT "PK_wellbore_formation_top" PRIMARY KEY
(
"wlbNpdidWellbore","lsuNpdidLithoStrat","lsuTopDepth","lsuBottomDepth"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_coordinates
ALTER TABLE "npd_no_spatial_10"."wellbore_coordinates"
ADD CONSTRAINT "PK_wellbore_coordinates" PRIMARY KEY
(
"wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_dst
ALTER TABLE "npd_no_spatial_10"."wellbore_dst"
ADD CONSTRAINT "PK_wellbore_dst" PRIMARY KEY
(
"wlbNpdidWellbore","wlbDstTestNumber"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wlbPoint
ALTER TABLE "npd_no_spatial_10"."wlbPoint"
ADD CONSTRAINT "PK_wlbPoint" PRIMARY KEY
(
"wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_mud
ALTER TABLE "npd_no_spatial_10"."wellbore_mud"
ADD CONSTRAINT "PK_wellbore_mud" PRIMARY KEY
(
"wellbore_mud_id","wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "PK_wellbore_exploration_all" PRIMARY KEY
(
"wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_oil_sample
ALTER TABLE "npd_no_spatial_10"."wellbore_oil_sample"
ADD CONSTRAINT "PK_wellbore_oil_sample" PRIMARY KEY
(
"wellbore_oil_sample_id","wlbNpdidWellbore"
)
;
--#SET :PRIMARY_KEY:npd_no_spatial_10:PK_wellbore_shallow_all
ALTER TABLE "npd_no_spatial_10"."wellbore_shallow_all"
ADD CONSTRAINT "PK_wellbore_shallow_all" PRIMARY KEY
(
"wlbNpdidWellbore"
)
;
