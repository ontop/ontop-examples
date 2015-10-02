-- This file was generated on : 11-04-2014 13:21:15
-- IBM Data Movement Tool Version : 2.00-b2126
--
-- This script contains foreign keys and is part of the deployment script.
-- The contents of the file will also be loaded in GUI interactive deployment.
-- 
--#SET :FOREIGN_KEYS::FK1_baaArea
ALTER TABLE "npd_no_spatial_10"."baaArea"
ADD CONSTRAINT "FK1_baaArea" FOREIGN KEY
(
"baaNpdidBsnsArrArea"
)
REFERENCES "npd_no_spatial_10"."bsns_arr_area"
(
"baaNpdidBsnsArrArea"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK2_bsns_arr_area_area_poly_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"
ADD CONSTRAINT "FK2_bsns_arr_area_area_poly_hst" FOREIGN KEY
(
"baaNpdidBsnsArrArea"
)
REFERENCES "npd_no_spatial_10"."bsns_arr_area"
(
"baaNpdidBsnsArrArea"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK4_bsns_arr_area_transfer_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_transfer_hst"
ADD CONSTRAINT "FK4_bsns_arr_area_transfer_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK3_bsns_arr_area_transfer_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_transfer_hst"
ADD CONSTRAINT "FK3_bsns_arr_area_transfer_hst" FOREIGN KEY
(
"baaNpdidBsnsArrArea"
)
REFERENCES "npd_no_spatial_10"."bsns_arr_area"
(
"baaNpdidBsnsArrArea"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK6_company_reserves
ALTER TABLE "npd_no_spatial_10"."company_reserves"
ADD CONSTRAINT "FK6_company_reserves" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK5_company_reserves
ALTER TABLE "npd_no_spatial_10"."company_reserves"
ADD CONSTRAINT "FK5_company_reserves" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK9_dscArea
ALTER TABLE "npd_no_spatial_10"."dscArea"
ADD CONSTRAINT "FK9_dscArea" FOREIGN KEY
(
"dscNpdidResInclInDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK7_dscArea
ALTER TABLE "npd_no_spatial_10"."dscArea"
ADD CONSTRAINT "FK7_dscArea" FOREIGN KEY
(
"dscNpdidDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK5_dscArea
ALTER TABLE "npd_no_spatial_10"."dscArea"
ADD CONSTRAINT "FK5_dscArea" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK11_bsns_arr_area_operator
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_operator"
ADD CONSTRAINT "FK11_bsns_arr_area_operator" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK10_bsns_arr_area_operator
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_operator"
ADD CONSTRAINT "FK10_bsns_arr_area_operator" FOREIGN KEY
(
"baaNpdidBsnsArrArea"
)
REFERENCES "npd_no_spatial_10"."bsns_arr_area"
(
"baaNpdidBsnsArrArea"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK13_bsns_arr_area_licensee_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_licensee_hst"
ADD CONSTRAINT "FK13_bsns_arr_area_licensee_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK11_bsns_arr_area_licensee_hst
ALTER TABLE "npd_no_spatial_10"."bsns_arr_area_licensee_hst"
ADD CONSTRAINT "FK11_bsns_arr_area_licensee_hst" FOREIGN KEY
(
"baaNpdidBsnsArrArea"
)
REFERENCES "npd_no_spatial_10"."bsns_arr_area"
(
"baaNpdidBsnsArrArea"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK14_discovery_reserves
ALTER TABLE "npd_no_spatial_10"."discovery_reserves"
ADD CONSTRAINT "FK14_discovery_reserves" FOREIGN KEY
(
"dscNpdidDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK16_discovery
ALTER TABLE "npd_no_spatial_10"."discovery"
ADD CONSTRAINT "FK16_discovery" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK15_discovery
ALTER TABLE "npd_no_spatial_10"."discovery"
ADD CONSTRAINT "FK15_discovery" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK17_facility_moveable
ALTER TABLE "npd_no_spatial_10"."facility_moveable"
ADD CONSTRAINT "FK17_facility_moveable" FOREIGN KEY
(
"fclNpdidCurrentRespCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK18_field_activity_status_hst
ALTER TABLE "npd_no_spatial_10"."field_activity_status_hst"
ADD CONSTRAINT "FK18_field_activity_status_hst" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK20_fclPoint
ALTER TABLE "npd_no_spatial_10"."fclPoint"
ADD CONSTRAINT "FK20_fclPoint" FOREIGN KEY
(
"fclBelongsToS"
)
REFERENCES "npd_no_spatial_10"."tuf_petreg_licence"
(
"tufNpdidTuf"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK19_fclPoint
ALTER TABLE "npd_no_spatial_10"."fclPoint"
ADD CONSTRAINT "FK19_fclPoint" FOREIGN KEY
(
"fclNpdidFacility"
)
REFERENCES "npd_no_spatial_10"."facility_fixed"
(
"fclNpdidFacility"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK23_field
ALTER TABLE "npd_no_spatial_10"."field"
ADD CONSTRAINT "FK23_field" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK22_field
ALTER TABLE "npd_no_spatial_10"."field"
ADD CONSTRAINT "FK22_field" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK21_field
ALTER TABLE "npd_no_spatial_10"."field"
ADD CONSTRAINT "FK21_field" FOREIGN KEY
(
"fldNpdidOwner"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK23_field_description
ALTER TABLE "npd_no_spatial_10"."field_description"
ADD CONSTRAINT "FK23_field_description" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK25_field_investment_yearly
ALTER TABLE "npd_no_spatial_10"."field_investment_yearly"
ADD CONSTRAINT "FK25_field_investment_yearly" FOREIGN KEY
(
"prfNpdidInformationCarrier"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK27_field_licensee_hst
ALTER TABLE "npd_no_spatial_10"."field_licensee_hst"
ADD CONSTRAINT "FK27_field_licensee_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK26_field_licensee_hst
ALTER TABLE "npd_no_spatial_10"."field_licensee_hst"
ADD CONSTRAINT "FK26_field_licensee_hst" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK28_field_operator_hst
ALTER TABLE "npd_no_spatial_10"."field_operator_hst"
ADD CONSTRAINT "FK28_field_operator_hst" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK29_field_operator_hst
ALTER TABLE "npd_no_spatial_10"."field_operator_hst"
ADD CONSTRAINT "FK29_field_operator_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK30_field_owner_hst
ALTER TABLE "npd_no_spatial_10"."field_owner_hst"
ADD CONSTRAINT "FK30_field_owner_hst" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK32_fldArea
ALTER TABLE "npd_no_spatial_10"."fldArea"
ADD CONSTRAINT "FK32_fldArea" FOREIGN KEY
(
"dscNpdidDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK31_fldArea
ALTER TABLE "npd_no_spatial_10"."fldArea"
ADD CONSTRAINT "FK31_fldArea" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK33_fldArea
ALTER TABLE "npd_no_spatial_10"."fldArea"
ADD CONSTRAINT "FK33_fldArea" FOREIGN KEY
(
"dscNpdidResInclInDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK34_licence_licensee_hst
ALTER TABLE "npd_no_spatial_10"."licence_licensee_hst"
ADD CONSTRAINT "FK34_licence_licensee_hst" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK35_licence_licensee_hst
ALTER TABLE "npd_no_spatial_10"."licence_licensee_hst"
ADD CONSTRAINT "FK35_licence_licensee_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK36_licence_area_poly_hst
ALTER TABLE "npd_no_spatial_10"."licence_area_poly_hst"
ADD CONSTRAINT "FK36_licence_area_poly_hst" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK37_field_reserves
ALTER TABLE "npd_no_spatial_10"."field_reserves"
ADD CONSTRAINT "FK37_field_reserves" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK38_licence_petreg_licence
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence"
ADD CONSTRAINT "FK38_licence_petreg_licence" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK40_licence_petreg_licence_oper
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence_oper"
ADD CONSTRAINT "FK40_licence_petreg_licence_oper" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK41_licence_petreg_licence_licencee
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence_licencee"
ADD CONSTRAINT "FK41_licence_petreg_licence_licencee" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK39_licence_petreg_licence_oper
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence_oper"
ADD CONSTRAINT "FK39_licence_petreg_licence_oper" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK39_licence_petreg_licence_licencee
ALTER TABLE "npd_no_spatial_10"."licence_petreg_licence_licencee"
ADD CONSTRAINT "FK39_licence_petreg_licence_licencee" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK43_licence_petreg_message
ALTER TABLE "npd_no_spatial_10"."licence_petreg_message"
ADD CONSTRAINT "FK43_licence_petreg_message" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK44_pipLine
ALTER TABLE "npd_no_spatial_10"."pipLine"
ADD CONSTRAINT "FK44_pipLine" FOREIGN KEY
(
"pipNpdidOperator"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK46_prlArea
ALTER TABLE "npd_no_spatial_10"."prlArea"
ADD CONSTRAINT "FK46_prlArea" FOREIGN KEY
(
"prlLastOperatorNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK45_prlArea
ALTER TABLE "npd_no_spatial_10"."prlArea"
ADD CONSTRAINT "FK45_prlArea" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK48_licence_transfer_hst
ALTER TABLE "npd_no_spatial_10"."licence_transfer_hst"
ADD CONSTRAINT "FK48_licence_transfer_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK47_licence_transfer_hst
ALTER TABLE "npd_no_spatial_10"."licence_transfer_hst"
ADD CONSTRAINT "FK47_licence_transfer_hst" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK49_seis_acquisition
ALTER TABLE "npd_no_spatial_10"."seis_acquisition"
ADD CONSTRAINT "FK49_seis_acquisition" FOREIGN KEY
(
"seaCompanyReported"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpLongName"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK52_licence_task
ALTER TABLE "npd_no_spatial_10"."licence_task"
ADD CONSTRAINT "FK52_licence_task" FOREIGN KEY
(
"prlTaskRefID"
)
REFERENCES "npd_no_spatial_10"."licence_task"
(
"prlTaskID"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK50_licence_task
ALTER TABLE "npd_no_spatial_10"."licence_task"
ADD CONSTRAINT "FK50_licence_task" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK49_licence_task
ALTER TABLE "npd_no_spatial_10"."licence_task"
ADD CONSTRAINT "FK49_licence_task" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK54_licence_oper_hst
ALTER TABLE "npd_no_spatial_10"."licence_oper_hst"
ADD CONSTRAINT "FK54_licence_oper_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK53_licence_oper_hst
ALTER TABLE "npd_no_spatial_10"."licence_oper_hst"
ADD CONSTRAINT "FK53_licence_oper_hst" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK55_seaArea
ALTER TABLE "npd_no_spatial_10"."seaArea"
ADD CONSTRAINT "FK55_seaArea" FOREIGN KEY
(
"seaNpdidSurvey"
)
REFERENCES "npd_no_spatial_10"."seis_acquisition"
(
"seaNpdidSurvey"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK57_tuf_operator_hst
ALTER TABLE "npd_no_spatial_10"."tuf_operator_hst"
ADD CONSTRAINT "FK57_tuf_operator_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK55_tuf_operator_hst
ALTER TABLE "npd_no_spatial_10"."tuf_operator_hst"
ADD CONSTRAINT "FK55_tuf_operator_hst" FOREIGN KEY
(
"tufNpdidTuf"
)
REFERENCES "npd_no_spatial_10"."tuf_petreg_licence"
(
"tufNpdidTuf"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK58_seaMultiline
ALTER TABLE "npd_no_spatial_10"."seaMultiline"
ADD CONSTRAINT "FK58_seaMultiline" FOREIGN KEY
(
"seaSurveyName"
)
REFERENCES "npd_no_spatial_10"."seis_acquisition"
(
"seaName"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK59_seis_acquisition_coordinates_inc_turnarea
ALTER TABLE "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"
ADD CONSTRAINT "FK59_seis_acquisition_coordinates_inc_turnarea" FOREIGN KEY
(
"seaNpdidSurvey"
)
REFERENCES "npd_no_spatial_10"."seis_acquisition"
(
"seaNpdidSurvey"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK60_licence_phase_hst
ALTER TABLE "npd_no_spatial_10"."licence_phase_hst"
ADD CONSTRAINT "FK60_licence_phase_hst" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK62_tuf_owner_hst
ALTER TABLE "npd_no_spatial_10"."tuf_owner_hst"
ADD CONSTRAINT "FK62_tuf_owner_hst" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK61_tuf_owner_hst
ALTER TABLE "npd_no_spatial_10"."tuf_owner_hst"
ADD CONSTRAINT "FK61_tuf_owner_hst" FOREIGN KEY
(
"tufNpdidTuf"
)
REFERENCES "npd_no_spatial_10"."tuf_petreg_licence"
(
"tufNpdidTuf"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK63_tuf_petreg_message
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_message"
ADD CONSTRAINT "FK63_tuf_petreg_message" FOREIGN KEY
(
"tufNpdidTuf"
)
REFERENCES "npd_no_spatial_10"."tuf_petreg_licence"
(
"tufNpdidTuf"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK65_prlAreaSplitByBlock
ALTER TABLE "npd_no_spatial_10"."prlAreaSplitByBlock"
ADD CONSTRAINT "FK65_prlAreaSplitByBlock" FOREIGN KEY
(
"prlNpdidLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK64_prlAreaSplitByBlock
ALTER TABLE "npd_no_spatial_10"."prlAreaSplitByBlock"
ADD CONSTRAINT "FK64_prlAreaSplitByBlock" FOREIGN KEY
(
"prlLastOperatorNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK66_wellbore_casing_and_lot
ALTER TABLE "npd_no_spatial_10"."wellbore_casing_and_lot"
ADD CONSTRAINT "FK66_wellbore_casing_and_lot" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK67_strat_litho_wellbore
ALTER TABLE "npd_no_spatial_10"."strat_litho_wellbore"
ADD CONSTRAINT "FK67_strat_litho_wellbore" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK68_strat_litho_wellbore_core
ALTER TABLE "npd_no_spatial_10"."strat_litho_wellbore_core"
ADD CONSTRAINT "FK68_strat_litho_wellbore_core" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK70_tuf_petreg_licence_oper
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence_oper"
ADD CONSTRAINT "FK70_tuf_petreg_licence_oper" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK69_tuf_petreg_licence_oper
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence_oper"
ADD CONSTRAINT "FK69_tuf_petreg_licence_oper" FOREIGN KEY
(
"tufNpdidTuf"
)
REFERENCES "npd_no_spatial_10"."tuf_petreg_licence"
(
"tufNpdidTuf"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK71_seis_acquisition_progress
ALTER TABLE "npd_no_spatial_10"."seis_acquisition_progress"
ADD CONSTRAINT "FK71_seis_acquisition_progress" FOREIGN KEY
(
"seaNpdidSurvey"
)
REFERENCES "npd_no_spatial_10"."seis_acquisition"
(
"seaNpdidSurvey"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK72_wellbore_document
ALTER TABLE "npd_no_spatial_10"."wellbore_document"
ADD CONSTRAINT "FK72_wellbore_document" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK74_tuf_petreg_licence_licencee
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence_licencee"
ADD CONSTRAINT "FK74_tuf_petreg_licence_licencee" FOREIGN KEY
(
"cmpNpdidCompany"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpNpdidCompany"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK73_tuf_petreg_licence_licencee
ALTER TABLE "npd_no_spatial_10"."tuf_petreg_licence_licencee"
ADD CONSTRAINT "FK73_tuf_petreg_licence_licencee" FOREIGN KEY
(
"tufNpdidTuf"
)
REFERENCES "npd_no_spatial_10"."tuf_petreg_licence"
(
"tufNpdidTuf"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK78_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK78_wellbore_development_all" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK77_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK77_wellbore_development_all" FOREIGN KEY
(
"dscNpdidDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK76_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK76_wellbore_development_all" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK75_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK75_wellbore_development_all" FOREIGN KEY
(
"wlbDrillingOperator"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpLongName"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK81_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK81_wellbore_development_all" FOREIGN KEY
(
"wlbDiskosWellOperator"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpShortName"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK80_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK80_wellbore_development_all" FOREIGN KEY
(
"wlbNpdidWellboreReclass"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK79_wellbore_development_all
ALTER TABLE "npd_no_spatial_10"."wellbore_development_all"
ADD CONSTRAINT "FK79_wellbore_development_all" FOREIGN KEY
(
"prlNpdidProductionLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK82_wellbore_core_photo
ALTER TABLE "npd_no_spatial_10"."wellbore_core_photo"
ADD CONSTRAINT "FK82_wellbore_core_photo" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK83_wellbore_core
ALTER TABLE "npd_no_spatial_10"."wellbore_core"
ADD CONSTRAINT "FK83_wellbore_core" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK83_wellbore_formation_top
ALTER TABLE "npd_no_spatial_10"."wellbore_formation_top"
ADD CONSTRAINT "FK83_wellbore_formation_top" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK85_wellbore_coordinates
ALTER TABLE "npd_no_spatial_10"."wellbore_coordinates"
ADD CONSTRAINT "FK85_wellbore_coordinates" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK86_wellbore_dst
ALTER TABLE "npd_no_spatial_10"."wellbore_dst"
ADD CONSTRAINT "FK86_wellbore_dst" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK87_wlbPoint
ALTER TABLE "npd_no_spatial_10"."wlbPoint"
ADD CONSTRAINT "FK87_wlbPoint" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK88_wellbore_mud
ALTER TABLE "npd_no_spatial_10"."wellbore_mud"
ADD CONSTRAINT "FK88_wellbore_mud" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK92_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "FK92_wellbore_exploration_all" FOREIGN KEY
(
"fldNpdidField"
)
REFERENCES "npd_no_spatial_10"."field"
(
"fldNpdidField"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK91_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "FK91_wellbore_exploration_all" FOREIGN KEY
(
"dscNpdidDiscovery"
)
REFERENCES "npd_no_spatial_10"."discovery"
(
"dscNpdidDiscovery"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK90_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "FK90_wellbore_exploration_all" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK89_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "FK89_wellbore_exploration_all" FOREIGN KEY
(
"wlbDrillingOperator"
)
REFERENCES "npd_no_spatial_10"."company"
(
"cmpLongName"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK94_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "FK94_wellbore_exploration_all" FOREIGN KEY
(
"prlNpdidProductionLicence"
)
REFERENCES "npd_no_spatial_10"."licence"
(
"prlNpdidLicence"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK93_wellbore_exploration_all
ALTER TABLE "npd_no_spatial_10"."wellbore_exploration_all"
ADD CONSTRAINT "FK93_wellbore_exploration_all" FOREIGN KEY
(
"wlbNpdidWellboreReclass"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK95_wellbore_oil_sample
ALTER TABLE "npd_no_spatial_10"."wellbore_oil_sample"
ADD CONSTRAINT "FK95_wellbore_oil_sample" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
--#SET :FOREIGN_KEYS::FK96_wellbore_shallow_all
ALTER TABLE "npd_no_spatial_10"."wellbore_shallow_all"
ADD CONSTRAINT "FK96_wellbore_shallow_all" FOREIGN KEY
(
"wlbNpdidWellbore"
)
REFERENCES "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbNpdidWellbore"
)
ON UPDATE NO ACTION
ON DELETE NO ACTION
;
