-- This file was generated on : 11-04-2014 13:21:15
-- IBM Data Movement Tool Version : 2.00-b2126
--
-- This script contains DB2 DDL for tables and this is part of the deployment script.
-- The contents of the file will also be loaded in GUI interactive deployment.
-- 
-- Approximate Table Size 126
--#SET :TABLE:npd_no_spatial_10:bsns_arr_area_area_poly_hst
CREATE  TABLE "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"
(
"baaName" VARCHAR(40)  NOT NULL ,
"baaAreaPolyDateValidFrom" DATE  NOT NULL ,
"baaAreaPolyDateValidTo" DATE  NOT NULL ,
"baaAreaPolyNationCode2" VARCHAR(2)  NOT NULL ,
"baaAreaPolyBlockName" VARCHAR(40)  NOT NULL ,
"baaAreaPolyNo" INT  NOT NULL ,
"baaAreaPolyArea" DECIMAL(13,6)  NOT NULL ,
"baaNpdidBsnsArrArea" INT  NOT NULL ,
"baaAreaPolyDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaAreaPolyDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaAreaPolyDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaAreaPolyNationCode2
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaAreaPolyNationCode2" IS 'Nation code'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaAreaPolyArea
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaAreaPolyArea" IS 'Polygon area [km2]'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaNpdidBsnsArrArea
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaNpdidBsnsArrArea" IS 'NPDID Bsns. Arr. Area'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaAreaPolyBlockName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaAreaPolyBlockName" IS 'Block name'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaAreaPolyDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaAreaPolyDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaName" IS 'Name'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_area_poly_hst".baaAreaPolyDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_area_poly_hst"."baaAreaPolyDateValidTo" IS 'Date valid to'
;
-- Approximate Table Size 540
--#SET :TABLE:npd_no_spatial_10:bsns_arr_area
CREATE  TABLE "npd_no_spatial_10"."bsns_arr_area"
(
"baaName" VARCHAR(40)  NOT NULL ,
"baaKind" VARCHAR(40)  NOT NULL ,
"baaDateApproved" DATE  NOT NULL ,
"baaDateValidFrom" DATE  NOT NULL ,
"baaDateValidTo" DATE  ,
"baaFactPageUrl" VARCHAR(200)  NOT NULL ,
"baaFactMapUrl" VARCHAR(200)  ,
"baaNpdidBsnsArrArea" INT  NOT NULL ,
"baaDateUpdated" DATE  ,
"baaDateUpdatedMax" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaFactMapUrl" IS 'Fact map'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaKind
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaKind" IS 'Kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaDateApproved
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaDateApproved" IS 'Date approved'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaNpdidBsnsArrArea
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaNpdidBsnsArrArea" IS 'NPDID Bsns. Arr. Area'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area".baaName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area"."baaName" IS 'Name'
;
-- Approximate Table Size 588
--#SET :TABLE:npd_no_spatial_10:baaArea
CREATE  TABLE "npd_no_spatial_10"."baaArea"
(
"baaNpdidBsnsArrArea" INT  NOT NULL ,
"baaNpdidBsnsArrAreaPoly" INT  NOT NULL ,
"baaName" VARCHAR(40)  NOT NULL ,
"baaKind" VARCHAR(40)  NOT NULL ,
"baaAreaPolyDateValidFrom" DATE  NOT NULL ,
"baaAreaPolyDateValidTo" DATE  ,
"baaAreaPolyActive" VARCHAR(40)  NOT NULL ,
"baaDateApproved" DATE  NOT NULL ,
"baaDateValidFrom" DATE  NOT NULL ,
"baaDateValidTo" DATE  ,
"baaActive" VARCHAR(20)  NOT NULL ,
"baaFactPageUrl" VARCHAR(200)  NOT NULL ,
"baaFactMapUrl" VARCHAR(200)  
)
;

--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaFactMapUrl" IS 'Fact map'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaKind
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaKind" IS 'Kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaDateApproved
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaDateApproved" IS 'Date approved'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaActive
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaActive" IS 'Active'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaAreaPolyDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaAreaPolyDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaName
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaName" IS 'Name'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaNpdidBsnsArrArea
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaNpdidBsnsArrArea" IS 'NPDID Bsns. Arr. Area'
;
--#SET: COMMENT:"npd_no_spatial_10":"baaArea".baaAreaPolyDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."baaArea"."baaAreaPolyDateValidTo" IS 'Date valid to'
;
-- Approximate Table Size 12
-- Some of the VARCHAR or VARGRAPHIC columns have been converted to LONG VARCHAR
-- or to LONG VARGRAPHIC column
-- The original approx table size was 65547
--#SET :TABLE:npd_no_spatial_10:apaAreaGross
CREATE  TABLE "npd_no_spatial_10"."apaAreaGross"
(
"apaMap_no" INT  NOT NULL ,
"apaAreaGeometry_KML_WGS84" LONG VARCHAR  NOT NULL ,
"apaAreaGross_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 5, INCREMENT BY 1, CACHE 20)
)
;

-- Approximate Table Size 374
--#SET :TABLE:npd_no_spatial_10:apaAreaNet
CREATE  TABLE "npd_no_spatial_10"."apaAreaNet"
(
"blkId" INT  NOT NULL ,
"blkLabel" VARCHAR(40)  NOT NULL ,
"qdrName" VARCHAR(40)  NOT NULL ,
"blkName" VARCHAR(40)  NOT NULL ,
"prvName" VARCHAR(2)  NOT NULL ,
"apaAreaType" VARCHAR(40)  ,
"urlNPD" VARCHAR(200)  NOT NULL ,
"apaAreaNet_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 470, INCREMENT BY 1, CACHE 20)
)
;

-- Approximate Table Size 324
--#SET :TABLE:npd_no_spatial_10:bsns_arr_area_transfer_hst
CREATE  TABLE "npd_no_spatial_10"."bsns_arr_area_transfer_hst"
(
"baaName" VARCHAR(40)  NOT NULL ,
"baaTransferDateValidFrom" DATE  NOT NULL ,
"baaTransferDirection" VARCHAR(4)  NOT NULL ,
"baaTransferKind" VARCHAR(40)  ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"baaTransferredInterest" DECIMAL(13,6)  NOT NULL ,
"baaTransferSdfi" DECIMAL(13,6)  ,
"baaNpdidBsnsArrArea" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"baaTransferDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaTransferDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaTransferDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaTransferSdfi
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaTransferSdfi" IS 'SDFI [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaTransferKind
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaTransferKind" IS 'Transfer kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaTransferDirection
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaTransferDirection" IS 'Transfer direction'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaTransferDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaTransferDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaNpdidBsnsArrArea
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaNpdidBsnsArrArea" IS 'NPDID Bsns. Arr. Area'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaName" IS 'Name'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_transfer_hst".baaTransferredInterest
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_transfer_hst"."baaTransferredInterest" IS 'Transferred interest [%]'
;
-- Approximate Table Size 268
--#SET :TABLE:npd_no_spatial_10:bsns_arr_area_operator
CREATE  TABLE "npd_no_spatial_10"."bsns_arr_area_operator"
(
"baaName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"baaNpdidBsnsArrArea" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"baaOperatorDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_operator".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_operator"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_operator".baaOperatorDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_operator"."baaOperatorDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_operator".baaNpdidBsnsArrArea
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_operator"."baaNpdidBsnsArrArea" IS 'NPDID Bsns. Arr. Area'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_operator".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_operator"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_operator".baaName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_operator"."baaName" IS 'Name'
;
-- Approximate Table Size 288
--#SET :TABLE:npd_no_spatial_10:bsns_arr_area_licensee_hst
CREATE  TABLE "npd_no_spatial_10"."bsns_arr_area_licensee_hst"
(
"baaName" VARCHAR(40)  NOT NULL ,
"baaLicenseeDateValidFrom" DATE  NOT NULL ,
"baaLicenseeDateValidTo" DATE  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"baaLicenseeInterest" DECIMAL(13,6)  NOT NULL ,
"baaLicenseeSdfi" DECIMAL(13,6)  ,
"baaNpdidBsnsArrArea" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"baaLicenseeDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaLicenseeInterest
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaLicenseeInterest" IS 'Interest [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaLicenseeDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaLicenseeDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaLicenseeDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaLicenseeDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaLicenseeDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaLicenseeDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaLicenseeSdfi
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaLicenseeSdfi" IS 'SDFI [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaNpdidBsnsArrArea
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaNpdidBsnsArrArea" IS 'NPDID Bsns. Arr. Area'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"bsns_arr_area_licensee_hst".baaName
COMMENT ON COLUMN "npd_no_spatial_10"."bsns_arr_area_licensee_hst"."baaName" IS 'Name'
;
-- Approximate Table Size 264
--#SET :TABLE:npd_no_spatial_10:company_reserves
CREATE  TABLE "npd_no_spatial_10"."company_reserves"
(
"cmpLongName" VARCHAR(200)  NOT NULL ,
"fldName" VARCHAR(40)  NOT NULL ,
"cmpRecoverableOil" DECIMAL(13,6)  NOT NULL ,
"cmpRecoverableGas" DECIMAL(13,6)  NOT NULL ,
"cmpRecoverableNGL" DECIMAL(13,6)  NOT NULL ,
"cmpRecoverableCondensate" DECIMAL(13,6)  NOT NULL ,
"cmpRecoverableOE" DECIMAL(13,6)  NOT NULL ,
"cmpRemainingOil" DECIMAL(13,6)  NOT NULL ,
"cmpRemainingGas" DECIMAL(13,6)  NOT NULL ,
"cmpRemainingNGL" DECIMAL(13,6)  NOT NULL ,
"cmpRemainingCondensate" DECIMAL(13,6)  NOT NULL ,
"cmpRemainingOE" DECIMAL(13,6)  NOT NULL ,
"cmpDateOffResEstDisplay" DATE  NOT NULL ,
"cmpShare" DECIMAL(13,6)  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"company_reserves".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."company_reserves"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"company_reserves".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."company_reserves"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"company_reserves".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."company_reserves"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"company_reserves".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."company_reserves"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 735
--#SET :TABLE:npd_no_spatial_10:dscArea
CREATE  TABLE "npd_no_spatial_10"."dscArea"
(
"fldNpdidField" INT  ,
"fldName" VARCHAR(40)  ,
"dscNpdidDiscovery" INT  NOT NULL ,
"dscName" VARCHAR(40)  NOT NULL ,
"dscResInclInDiscoveryName" VARCHAR(40)  ,
"dscNpdidResInclInDiscovery" INT  ,
"dscIncludedInFld" VARCHAR(3)  NOT NULL ,
"dscHcType" VARCHAR(40)  NOT NULL ,
"fldHcType" VARCHAR(40)  ,
"dscCurrentActivityStatus" VARCHAR(40)  NOT NULL ,
"fldCurrentActivityStatus" VARCHAR(40)  ,
"flddscLabel" VARCHAR(40)  NOT NULL ,
"dscFactUrl" VARCHAR(200)  NOT NULL ,
"fldFactUrl" VARCHAR(200)  
)
;

--#SET: COMMENT:"npd_no_spatial_10":"dscArea".dscCurrentActivityStatus
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."dscCurrentActivityStatus" IS 'Current activity status'
;
--#SET: COMMENT:"npd_no_spatial_10":"dscArea".dscNpdidDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."dscNpdidDiscovery" IS 'NPDID discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"dscArea".dscHcType
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."dscHcType" IS 'HC type'
;
--#SET: COMMENT:"npd_no_spatial_10":"dscArea".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"dscArea".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"dscArea".dscResInclInDiscoveryName
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."dscResInclInDiscoveryName" IS 'Resources incl. in'
;
--#SET: COMMENT:"npd_no_spatial_10":"dscArea".dscName
COMMENT ON COLUMN "npd_no_spatial_10"."dscArea"."dscName" IS 'Discovery name'
;
-- Approximate Table Size 456
--#SET :TABLE:npd_no_spatial_10:company
CREATE  TABLE "npd_no_spatial_10"."company"
(
"cmpLongName" VARCHAR(200)  NOT NULL ,
"cmpOrgNumberBrReg" VARCHAR(100)  ,
"cmpGroup" VARCHAR(100)  ,
"cmpShortName" VARCHAR(40)  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"cmpLicenceOperCurrent" VARCHAR(1)  NOT NULL ,
"cmpLicenceOperFormer" VARCHAR(1)  NOT NULL ,
"cmpLicenceLicenseeCurrent" VARCHAR(1)  NOT NULL ,
"cmpLicenceLicenseeFormer" VARCHAR(1)  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"company".cmpLicenceLicenseeFormer
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpLicenceLicenseeFormer" IS 'Former licence licensee'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpLicenceOperCurrent
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpLicenceOperCurrent" IS 'Currently licence operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpShortName
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpShortName" IS 'Company shortname'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpGroup
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpGroup" IS 'Group'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpLicenceLicenseeCurrent
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpLicenceLicenseeCurrent" IS 'Currently licence licensee'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpLicenceOperFormer
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpLicenceOperFormer" IS 'Former licence operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpOrgNumberBrReg
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpOrgNumberBrReg" IS 'Organisation number'
;
--#SET: COMMENT:"npd_no_spatial_10":"company".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."company"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 848
--#SET :TABLE:npd_no_spatial_10:facility_moveable
CREATE  TABLE "npd_no_spatial_10"."facility_moveable"
(
"fclName" VARCHAR(40)  NOT NULL ,
"fclCurrentRespCompanyName" VARCHAR(100)  ,
"fclKind" VARCHAR(40)  NOT NULL ,
"fclFunctions" VARCHAR(400)  ,
"fclNationName" VARCHAR(40)  NOT NULL ,
"fclFactPageUrl" VARCHAR(200)  NOT NULL ,
"fclNpdidFacility" INT  NOT NULL ,
"fclNpdidCurrentRespCompany" INT  ,
"fclDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclNpdidFacility
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclNpdidFacility" IS 'NPDID facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclNationName
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclNationName" IS 'Nation'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclNpdidCurrentRespCompany
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclNpdidCurrentRespCompany" IS 'NPDID responsible company'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclKind
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclKind" IS 'Kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclName
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclName" IS 'Name'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclFunctions
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclFunctions" IS 'Functions'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_moveable".fclCurrentRespCompanyName
COMMENT ON COLUMN "npd_no_spatial_10"."facility_moveable"."fclCurrentRespCompanyName" IS 'Current responsible company'
;
-- Approximate Table Size 112
--#SET :TABLE:npd_no_spatial_10:discovery_reserves
CREATE  TABLE "npd_no_spatial_10"."discovery_reserves"
(
"dscName" VARCHAR(40)  NOT NULL ,
"dscReservesRC" VARCHAR(40)  NOT NULL ,
"dscRecoverableOil" DECIMAL(13,6)  NOT NULL ,
"dscRecoverableGas" DECIMAL(13,6)  NOT NULL ,
"dscRecoverableNGL" DECIMAL(13,6)  NOT NULL ,
"dscRecoverableCondensate" DECIMAL(13,6)  NOT NULL ,
"dscDateOffResEstDisplay" DATE  NOT NULL ,
"dscNpdidDiscovery" INT  NOT NULL ,
"dscReservesDateUpdated" DATE  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscRecoverableCondensate
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscRecoverableCondensate" IS 'Rec. cond. [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscNpdidDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscNpdidDiscovery" IS 'NPDID discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscRecoverableOil
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscRecoverableOil" IS 'Rec. oil [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscRecoverableNGL
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscRecoverableNGL" IS 'Rec. NGL [mill tonn]'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscReservesRC
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscReservesRC" IS 'Resource class'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscDateOffResEstDisplay
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscDateOffResEstDisplay" IS 'Resource updated date'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscRecoverableGas
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscRecoverableGas" IS 'Rec. gas [bill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery_reserves".dscName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery_reserves"."dscName" IS 'Discovery name'
;
-- Approximate Table Size 1036
--#SET :TABLE:npd_no_spatial_10:discovery
CREATE  TABLE "npd_no_spatial_10"."discovery"
(
"dscName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  ,
"dscCurrentActivityStatus" VARCHAR(40)  NOT NULL ,
"dscHcType" VARCHAR(40)  ,
"wlbName" VARCHAR(60)  ,
"nmaName" VARCHAR(40)  ,
"fldName" VARCHAR(40)  ,
"dscDateFromInclInField" DATE  ,
"dscDiscoveryYear" INT  NOT NULL ,
"dscResInclInDiscoveryName" VARCHAR(40)  ,
"dscOwnerKind" VARCHAR(40)  ,
"dscOwnerName" VARCHAR(40)  ,
"dscNpdidDiscovery" INT  NOT NULL ,
"fldNpdidField" INT  ,
"wlbNpdidWellbore" INT  NOT NULL ,
"dscFactPageUrl" VARCHAR(200)  NOT NULL ,
"dscFactMapUrl" VARCHAR(200)  NOT NULL ,
"dscDateUpdated" DATE  ,
"dscDateUpdatedMax" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscCurrentActivityStatus
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscCurrentActivityStatus" IS 'Current activity status'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscNpdidDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscNpdidDiscovery" IS 'NPDID discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscHcType
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscHcType" IS 'HC type'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscOwnerName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscOwnerName" IS 'Owner name'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".nmaName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."nmaName" IS 'Main NCS area'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscFactMapUrl" IS 'Fact map'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscOwnerKind
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscOwnerKind" IS 'Owner kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscDiscoveryYear
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscDiscoveryYear" IS 'Discovery year'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscDateFromInclInField
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscDateFromInclInField" IS 'Included in field from date'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscResInclInDiscoveryName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscResInclInDiscoveryName" IS 'Resources incl. in'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"discovery".dscName
COMMENT ON COLUMN "npd_no_spatial_10"."discovery"."dscName" IS 'Discovery name'
;
-- Approximate Table Size 1173
--#SET :TABLE:npd_no_spatial_10:facility_fixed
CREATE  TABLE "npd_no_spatial_10"."facility_fixed"
(
"fclName" VARCHAR(40)  NOT NULL ,
"fclPhase" VARCHAR(40)  NOT NULL ,
"fclSurface" VARCHAR(1)  NOT NULL ,
"fclCurrentOperatorName" VARCHAR(100)  ,
"fclKind" VARCHAR(40)  NOT NULL ,
"fclBelongsToName" VARCHAR(41)  ,
"fclBelongsToKind" VARCHAR(40)  ,
"fclBelongsToS" INT  ,
"fclStartupDate" DATE  ,
"fclGeodeticDatum" VARCHAR(10)  ,
"fclNsDeg" INT  ,
"fclNsMin" INT  ,
"fclNsSec" DECIMAL(13,6)  ,
"fclNsCode" VARCHAR(1)  NOT NULL ,
"fclEwDeg" INT  ,
"fclEwMin" INT  ,
"fclEwSec" DECIMAL(13,6)  ,
"fclEwCode" VARCHAR(1)  NOT NULL ,
"fclWaterDepth" DECIMAL(13,6)  NOT NULL ,
"fclFunctions" VARCHAR(400)  ,
"fclDesignLifetime" INT  ,
"fclFactPageUrl" VARCHAR(200)  NOT NULL ,
"fclFactMapUrl" VARCHAR(200)  NOT NULL ,
"fclNpdidFacility" INT  NOT NULL ,
"fclDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclNsCode
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclNsCode" IS 'NS code'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclKind
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclKind" IS 'Kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclGeodeticDatum
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclGeodeticDatum" IS 'Geodetic datum'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclEwDeg
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclEwDeg" IS 'EW degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclBelongsToName
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclBelongsToName" IS 'Belongs to, name'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclFunctions
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclFunctions" IS 'Functions'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclPhase
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclPhase" IS 'Phase'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclFactMapUrl" IS 'Fact map'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclEwCode
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclEwCode" IS 'EW code'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclEwSec
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclEwSec" IS 'EW seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclNpdidFacility
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclNpdidFacility" IS 'NPDID facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclEwMin
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclEwMin" IS 'EW minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclNsDeg
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclNsDeg" IS 'NS degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclBelongsToKind
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclBelongsToKind" IS 'Belongs to, kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclDesignLifetime
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclDesignLifetime" IS 'Design lifetime [year]'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclCurrentOperatorName
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclCurrentOperatorName" IS 'Current operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclName
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclName" IS 'Name'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclWaterDepth
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclWaterDepth" IS 'Water depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclStartupDate
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclStartupDate" IS 'Startup date'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclNsSec
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclNsSec" IS 'NS seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclSurface
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclSurface" IS 'Surface facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"facility_fixed".fclNsMin
COMMENT ON COLUMN "npd_no_spatial_10"."facility_fixed"."fclNsMin" IS 'NS minutes'
;
-- Approximate Table Size 56
--#SET :TABLE:npd_no_spatial_10:field_investment_yearly
CREATE  TABLE "npd_no_spatial_10"."field_investment_yearly"
(
"prfInformationCarrier" VARCHAR(40)  NOT NULL ,
"prfYear" INT  NOT NULL ,
"prfInvestmentsMillNOK" DECIMAL(13,6)  NOT NULL ,
"prfNpdidInformationCarrier" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_investment_yearly".prfInformationCarrier
COMMENT ON COLUMN "npd_no_spatial_10"."field_investment_yearly"."prfInformationCarrier" IS 'Field (Discovery)'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_investment_yearly".prfYear
COMMENT ON COLUMN "npd_no_spatial_10"."field_investment_yearly"."prfYear" IS 'Year'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_investment_yearly".prfInvestmentsMillNOK
COMMENT ON COLUMN "npd_no_spatial_10"."field_investment_yearly"."prfInvestmentsMillNOK" IS 'Investments [mill NOK norminal values]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_investment_yearly".prfNpdidInformationCarrier
COMMENT ON COLUMN "npd_no_spatial_10"."field_investment_yearly"."prfNpdidInformationCarrier" IS 'NPDID information carrier'
;
-- Approximate Table Size 479
--#SET :TABLE:npd_no_spatial_10:field_description
CREATE  TABLE "npd_no_spatial_10"."field_description"
(
"fldName" VARCHAR(40)  NOT NULL ,
"fldDescriptionHeading" VARCHAR(255)  NOT NULL ,
"fldDescriptionText" CLOB(2G)  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"fldDescriptionDateUpdated" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_description".fldDescriptionHeading
COMMENT ON COLUMN "npd_no_spatial_10"."field_description"."fldDescriptionHeading" IS 'Heading'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_description".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field_description"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_description".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field_description"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_description".fldDescriptionText
COMMENT ON COLUMN "npd_no_spatial_10"."field_description"."fldDescriptionText" IS 'Text'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_description".fldDescriptionDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."field_description"."fldDescriptionDateUpdated" IS 'Date updated'
;
-- Approximate Table Size 1093
--#SET :TABLE:npd_no_spatial_10:fclPoint
CREATE  TABLE "npd_no_spatial_10"."fclPoint"
(
"fclNpdidFacility" INT  NOT NULL ,
"fclSurface" VARCHAR(1)  NOT NULL ,
"fclCurrentOperatorName" VARCHAR(100)  ,
"fclName" VARCHAR(40)  NOT NULL ,
"fclKind" VARCHAR(40)  NOT NULL ,
"fclBelongsToName" VARCHAR(41)  ,
"fclBelongsToKind" VARCHAR(40)  ,
"fclBelongsToS" INT  ,
"fclStartupDate" DATE  NOT NULL ,
"fclWaterDepth" DECIMAL(13,6)  NOT NULL ,
"fclFunctions" VARCHAR(400)  ,
"fclDesignLifetime" INT  NOT NULL ,
"fclFactPageUrl" VARCHAR(200)  NOT NULL ,
"fclFactMapUrl" VARCHAR(200)  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclKind
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclKind" IS 'Kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclBelongsToName
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclBelongsToName" IS 'Belongs to, name'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclFunctions
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclFunctions" IS 'Functions'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclFactMapUrl" IS 'Fact map'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclNpdidFacility
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclNpdidFacility" IS 'NPDID facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclBelongsToKind
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclBelongsToKind" IS 'Belongs to, kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclDesignLifetime
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclDesignLifetime" IS 'Design lifetime [year]'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclCurrentOperatorName
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclCurrentOperatorName" IS 'Current operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclName
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclName" IS 'Name'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclWaterDepth
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclWaterDepth" IS 'Water depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclStartupDate
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclStartupDate" IS 'Startup date'
;
--#SET: COMMENT:"npd_no_spatial_10":"fclPoint".fclSurface
COMMENT ON COLUMN "npd_no_spatial_10"."fclPoint"."fclSurface" IS 'Surface facility'
;
-- Approximate Table Size 876
--#SET :TABLE:npd_no_spatial_10:field
CREATE  TABLE "npd_no_spatial_10"."field"
(
"fldName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  ,
"fldCurrentActivitySatus" VARCHAR(40)  NOT NULL ,
"wlbName" VARCHAR(60)  ,
"wlbCompletionDate" DATE  ,
"fldOwnerKind" VARCHAR(40)  ,
"fldOwnerName" VARCHAR(40)  ,
"fldNpdidOwner" INT  ,
"fldNpdidField" INT  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"cmpNpdidCompany" INT  ,
"fldFactPageUrl" VARCHAR(200)  NOT NULL ,
"fldFactMapUrl" VARCHAR(200)  NOT NULL ,
"fldDateUpdated" DATE  ,
"fldDateUpdatedMax" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field".fldOwnerName
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldOwnerName" IS 'Owner name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."field"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldOwnerKind
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldOwnerKind" IS 'Owner kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."field"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldNpdidOwner
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldNpdidOwner" IS 'NPDID owner'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldFactPageUrl" IS 'Field fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."field"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."field"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldCurrentActivitySatus
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldCurrentActivitySatus" IS 'Current activity status'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"field".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."field"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 120
--#SET :TABLE:npd_no_spatial_10:field_activity_status_hst
CREATE  TABLE "npd_no_spatial_10"."field_activity_status_hst"
(
"fldName" VARCHAR(40)  NOT NULL ,
"fldStatusFromDate" DATE  NOT NULL ,
"fldStatusToDate" DATE  NOT NULL ,
"fldStatus" VARCHAR(40)  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"fldStatusDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_activity_status_hst".fldStatus
COMMENT ON COLUMN "npd_no_spatial_10"."field_activity_status_hst"."fldStatus" IS 'Status'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_activity_status_hst".fldStatusFromDate
COMMENT ON COLUMN "npd_no_spatial_10"."field_activity_status_hst"."fldStatusFromDate" IS 'Status from'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_activity_status_hst".fldStatusToDate
COMMENT ON COLUMN "npd_no_spatial_10"."field_activity_status_hst"."fldStatusToDate" IS 'Status to'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_activity_status_hst".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field_activity_status_hst"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_activity_status_hst".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field_activity_status_hst"."fldNpdidField" IS 'NPDID field'
;
-- Approximate Table Size 276
--#SET :TABLE:npd_no_spatial_10:field_operator_hst
CREATE  TABLE "npd_no_spatial_10"."field_operator_hst"
(
"fldName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"fldOperatorFrom" DATE  NOT NULL ,
"fldOperatorTo" DATE  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"fldOperatorDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_operator_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."field_operator_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_operator_hst".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field_operator_hst"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_operator_hst".fldOperatorDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."field_operator_hst"."fldOperatorDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_operator_hst".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field_operator_hst"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_operator_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."field_operator_hst"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 52
--#SET :TABLE:npd_no_spatial_10:field_production_monthly
CREATE  TABLE "npd_no_spatial_10"."field_production_monthly"
(
"prfInformationCarrier" VARCHAR(40)  NOT NULL ,
"prfYear" INT  NOT NULL ,
"prfMonth" INT  NOT NULL ,
"prfPrdOilNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdGasNetBillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdNGLNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdCondensateNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdOeNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdProducedWaterInFieldMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfNpdidInformationCarrier" INT  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfPrdGasNetBillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfPrdGasNetBillSm3" IS 'Net - gas [bill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfInformationCarrier
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfInformationCarrier" IS 'Field (Discovery)'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfYear
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfYear" IS 'Year'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfPrdOeNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfPrdOeNetMillSm3" IS 'Net - oil equivalents [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfPrdOilNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfPrdOilNetMillSm3" IS 'Net - oil [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfNpdidInformationCarrier
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfNpdidInformationCarrier" IS 'NPDID information carrier'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfPrdNGLNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfPrdNGLNetMillSm3" IS 'Net - NGL [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfPrdCondensateNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfPrdCondensateNetMillSm3" IS 'Net - condensate [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfMonth
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfMonth" IS 'Month'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_monthly".prfPrdProducedWaterInFieldMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_monthly"."prfPrdProducedWaterInFieldMillSm3" IS 'Produced water in field [mill Sm3]'
;
-- Approximate Table Size 8
--#SET :TABLE:npd_no_spatial_10:field_production_totalt_NCS_month
CREATE  TABLE "npd_no_spatial_10"."field_production_totalt_NCS_month"
(
"prfYear" INT  NOT NULL ,
"prfMonth" INT  NOT NULL ,
"prfPrdOilNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdGasNetBillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdNGLNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdCondensateNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdOeNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdProducedWaterInFieldMillSm3" DECIMAL(13,6)  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfPrdGasNetBillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfPrdGasNetBillSm3" IS 'Net - gas [bill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfYear
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfYear" IS 'Year'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfPrdOeNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfPrdOeNetMillSm3" IS 'Net - oil equivalents [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfPrdOilNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfPrdOilNetMillSm3" IS 'Net - oil [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfPrdNGLNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfPrdNGLNetMillSm3" IS 'Net - NGL [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfPrdCondensateNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfPrdCondensateNetMillSm3" IS 'Net - condensate [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfMonth
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfMonth" IS 'Month'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_month".prfPrdProducedWaterInFieldMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_month"."prfPrdProducedWaterInFieldMillSm3" IS 'Produced water in field [mill Sm3]'
;
-- Approximate Table Size 364
--#SET :TABLE:npd_no_spatial_10:field_licensee_hst
CREATE  TABLE "npd_no_spatial_10"."field_licensee_hst"
(
"fldName" VARCHAR(40)  NOT NULL ,
"fldOwnerName" VARCHAR(40)  NOT NULL ,
"fldOwnerKind" VARCHAR(40)  NOT NULL ,
"fldOwnerFrom" DATE  NOT NULL ,
"fldOwnerTo" DATE  ,
"fldLicenseeFrom" DATE  NOT NULL ,
"fldLicenseeTo" DATE  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"fldCompanyShare" DECIMAL(13,6)  NOT NULL ,
"fldSdfiShare" DECIMAL(13,6)  ,
"fldNpdidField" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"fldLicenseeDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldCompanyShare
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldCompanyShare" IS 'Company share [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldOwnerName
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldOwnerName" IS 'Owner name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldOwnerKind
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldOwnerKind" IS 'Owner kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldLicenseeDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldLicenseeDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".fldSdfiShare
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."fldSdfiShare" IS 'SDFI [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_licensee_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."field_licensee_hst"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 164
--#SET :TABLE:npd_no_spatial_10:field_owner_hst
CREATE  TABLE "npd_no_spatial_10"."field_owner_hst"
(
"fldName" VARCHAR(40)  NOT NULL ,
"fldOwnerKind" VARCHAR(40)  NOT NULL ,
"fldOwnerName" VARCHAR(40)  NOT NULL ,
"fldOwnershipFromDate" DATE  NOT NULL ,
"fldOwnershipToDate" DATE  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"fldNpdidOwner" INT  NOT NULL ,
"fldOwnerDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_owner_hst".fldOwnerName
COMMENT ON COLUMN "npd_no_spatial_10"."field_owner_hst"."fldOwnerName" IS 'Owner name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_owner_hst".fldNpdidOwner
COMMENT ON COLUMN "npd_no_spatial_10"."field_owner_hst"."fldNpdidOwner" IS 'NPDID owner'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_owner_hst".fldOwnerDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."field_owner_hst"."fldOwnerDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_owner_hst".fldOwnerKind
COMMENT ON COLUMN "npd_no_spatial_10"."field_owner_hst"."fldOwnerKind" IS 'Owner kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_owner_hst".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field_owner_hst"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_owner_hst".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field_owner_hst"."fldNpdidField" IS 'NPDID field'
;
-- Approximate Table Size 4
--#SET :TABLE:npd_no_spatial_10:field_production_totalt_NCS_year
CREATE  TABLE "npd_no_spatial_10"."field_production_totalt_NCS_year"
(
"prfYear" INT  NOT NULL ,
"prfPrdOilNetMillSm" DECIMAL(13,6)  NOT NULL ,
"prfPrdGasNetBillSm" DECIMAL(13,6)  NOT NULL ,
"prfPrdCondensateNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdNGLNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdOeNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdProducedWaterInFieldMillSm3" DECIMAL(13,6)  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_year".prfYear
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_year"."prfYear" IS 'Year'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_year".prfPrdOeNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_year"."prfPrdOeNetMillSm3" IS 'Net - oil equivalents [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_year".prfPrdNGLNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_year"."prfPrdNGLNetMillSm3" IS 'Net - NGL [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_year".prfPrdCondensateNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_year"."prfPrdCondensateNetMillSm3" IS 'Net - condensate [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_totalt_NCS_year".prfPrdProducedWaterInFieldMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_totalt_NCS_year"."prfPrdProducedWaterInFieldMillSm3" IS 'Produced water in field [mill Sm3]'
;
-- Approximate Table Size 48
--#SET :TABLE:npd_no_spatial_10:field_production_yearly
CREATE  TABLE "npd_no_spatial_10"."field_production_yearly"
(
"prfInformationCarrier" VARCHAR(40)  NOT NULL ,
"prfYear" INT  NOT NULL ,
"prfPrdOilNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdGasNetBillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdNGLNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdCondensateNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdOeNetMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfPrdProducedWaterInFieldMillSm3" DECIMAL(13,6)  NOT NULL ,
"prfNpdidInformationCarrier" INT  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfPrdGasNetBillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfPrdGasNetBillSm3" IS 'Net - gas [bill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfInformationCarrier
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfInformationCarrier" IS 'Field (Discovery)'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfYear
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfYear" IS 'Year'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfPrdOeNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfPrdOeNetMillSm3" IS 'Net - oil equivalents [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfPrdOilNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfPrdOilNetMillSm3" IS 'Net - oil [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfNpdidInformationCarrier
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfNpdidInformationCarrier" IS 'NPDID information carrier'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfPrdNGLNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfPrdNGLNetMillSm3" IS 'Net - NGL [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfPrdCondensateNetMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfPrdCondensateNetMillSm3" IS 'Net - condensate [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_production_yearly".prfPrdProducedWaterInFieldMillSm3
COMMENT ON COLUMN "npd_no_spatial_10"."field_production_yearly"."prfPrdProducedWaterInFieldMillSm3" IS 'Produced water in field [mill Sm3]'
;
-- Approximate Table Size 682
--#SET :TABLE:npd_no_spatial_10:licence
CREATE  TABLE "npd_no_spatial_10"."licence"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlLicensingActivityName" VARCHAR(40)  NOT NULL ,
"prlMainArea" VARCHAR(40)  ,
"prlStatus" VARCHAR(40)  NOT NULL ,
"prlDateGranted" DATE  NOT NULL ,
"prlDateValidTo" DATE  NOT NULL ,
"prlOriginalArea" DECIMAL(13,6)  NOT NULL ,
"prlCurrentArea" VARCHAR(20)  NOT NULL ,
"prlPhaseCurrent" VARCHAR(40)  ,
"prlNpdidLicence" INT  NOT NULL ,
"prlFactPageUrl" VARCHAR(200)  NOT NULL ,
"prlFactMapUrl" VARCHAR(200)  ,
"prlDateUpdated" DATE  ,
"prlDateUpdatedMax" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence".prlDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlDateGranted
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlDateGranted" IS 'Date granted'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlOriginalArea
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlOriginalArea" IS 'Original area [km2]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlPhaseCurrent
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlPhaseCurrent" IS 'Phase - current'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlFactMapUrl" IS 'Fact map'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlFactPageUrl" IS 'Fact page'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlLicensingActivityName
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlLicensingActivityName" IS 'Licensing activity'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlMainArea
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlMainArea" IS 'Main area'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlStatus
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlStatus" IS 'Status'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlCurrentArea
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlCurrentArea" IS 'Current area'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence".prlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence"."prlDateValidTo" IS 'Date valid to'
;
-- Approximate Table Size 735
--#SET :TABLE:npd_no_spatial_10:fldArea
CREATE  TABLE "npd_no_spatial_10"."fldArea"
(
"fldNpdidField" INT  NOT NULL ,
"fldName" VARCHAR(40)  NOT NULL ,
"dscNpdidDiscovery" INT  NOT NULL ,
"dscName" VARCHAR(40)  NOT NULL ,
"dscResInclInDiscoveryName" VARCHAR(40)  ,
"dscNpdidResInclInDiscovery" INT  ,
"dscIncludedInFld" VARCHAR(3)  NOT NULL ,
"dscHcType" VARCHAR(40)  NOT NULL ,
"fldHcType" VARCHAR(40)  NOT NULL ,
"dscCurrentActivityStatus" VARCHAR(40)  NOT NULL ,
"fldCurrentActivityStatus" VARCHAR(40)  NOT NULL ,
"flddscLabel" VARCHAR(40)  NOT NULL ,
"dscFactUrl" VARCHAR(200)  NOT NULL ,
"fldFactUrl" VARCHAR(200)  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"fldArea".dscCurrentActivityStatus
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."dscCurrentActivityStatus" IS 'Current activity status'
;
--#SET: COMMENT:"npd_no_spatial_10":"fldArea".dscNpdidDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."dscNpdidDiscovery" IS 'NPDID discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"fldArea".dscHcType
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."dscHcType" IS 'HC type'
;
--#SET: COMMENT:"npd_no_spatial_10":"fldArea".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"fldArea".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"fldArea".dscResInclInDiscoveryName
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."dscResInclInDiscoveryName" IS 'Resources incl. in'
;
--#SET: COMMENT:"npd_no_spatial_10":"fldArea".dscName
COMMENT ON COLUMN "npd_no_spatial_10"."fldArea"."dscName" IS 'Discovery name'
;
-- Approximate Table Size 314
--#SET :TABLE:npd_no_spatial_10:licence_licensee_hst
CREATE  TABLE "npd_no_spatial_10"."licence_licensee_hst"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlLicenseeDateValidFrom" DATE  NOT NULL ,
"prlLicenseeDateValidTo" DATE  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"prlLicenseeInterest" DECIMAL(13,6)  NOT NULL ,
"prlLicenseeSdfi" DECIMAL(13,6)  ,
"prlOperDateValidFrom" DATE  ,
"prlOperDateValidTo" DATE  ,
"prlNpdidLicence" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"prlLicenseeDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlOperDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlOperDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlOperDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlOperDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlLicenseeSdfi
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlLicenseeSdfi" IS 'SDFI [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlLicenseeInterest
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlLicenseeInterest" IS 'Interest [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlLicenseeDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlLicenseeDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlLicenseeDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlLicenseeDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_licensee_hst".prlLicenseeDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_licensee_hst"."prlLicenseeDateUpdated" IS 'Date updated'
;
-- Approximate Table Size 140
--#SET :TABLE:npd_no_spatial_10:licence_area_poly_hst
CREATE  TABLE "npd_no_spatial_10"."licence_area_poly_hst"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlAreaPolyDateValidFrom" DATE  NOT NULL ,
"prlAreaPolyDateValidTo" DATE  NOT NULL ,
"prlAreaPolyNationCode" VARCHAR(2)  NOT NULL ,
"prlAreaPolyBlockName" VARCHAR(40)  NOT NULL ,
"prlAreaPolyStratigraphical" VARCHAR(4)  NOT NULL ,
"prlAreaPolyPolyNo" INT  NOT NULL ,
"prlAreaPolyPolyArea" DECIMAL(13,6)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"prlAreaDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlAreaPolyBlockName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlAreaPolyBlockName" IS 'Block name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlAreaPolyDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlAreaPolyDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlAreaDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlAreaDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlAreaPolyDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlAreaPolyDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlAreaPolyStratigraphical
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlAreaPolyStratigraphical" IS 'Stratigraphcal'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlAreaPolyPolyArea
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlAreaPolyPolyArea" IS 'Polygon area [km2]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_area_poly_hst".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_area_poly_hst"."prlNpdidLicence" IS 'NPDID production licence'
;
-- Approximate Table Size 268
--#SET :TABLE:npd_no_spatial_10:licence_petreg_licence_oper
CREATE  TABLE "npd_no_spatial_10"."licence_petreg_licence_oper"
(
"ptlName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"ptlOperDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_oper".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_oper"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_oper".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_oper"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_oper".ptlOperDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_oper"."ptlOperDateUpdated" IS 'Dato oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_oper".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_oper"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_oper".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_oper"."prlNpdidLicence" IS 'NPDID production licence'
;
-- Approximate Table Size 272
--#SET :TABLE:npd_no_spatial_10:licence_petreg_licence_licencee
CREATE  TABLE "npd_no_spatial_10"."licence_petreg_licence_licencee"
(
"ptlName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"ptlLicenseeInterest" DECIMAL(13,6)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"ptlLicenseeDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_licencee".ptlLicenseeDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_licencee"."ptlLicenseeDateUpdated" IS 'Dato oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_licencee".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_licencee"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_licencee".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_licencee"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_licencee".ptlLicenseeInterest
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_licencee"."ptlLicenseeInterest" IS 'Andel [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_licencee".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_licencee"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence_licencee".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence_licencee"."prlNpdidLicence" IS 'NPDID production licence'
;
-- Approximate Table Size 186
-- Some of the VARCHAR or VARGRAPHIC columns have been converted to LONG VARCHAR
-- or to LONG VARGRAPHIC column
-- The original approx table size was 65721
--#SET :TABLE:npd_no_spatial_10:licence_petreg_message
CREATE  TABLE "npd_no_spatial_10"."licence_petreg_message"
(
"prlName" VARCHAR(50)  NOT NULL ,
"ptlMessageDocumentNo" INT  NOT NULL ,
"ptlMessage" LONG VARCHAR  NOT NULL ,
"ptlMessageRegisteredDate" DATE  NOT NULL ,
"ptlMessageKindDesc" VARCHAR(100)  NOT NULL ,
"ptlMessageDateUpdated" DATE  ,
"prlNpdidLicence" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_message".ptlMessageKindDesc
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_message"."ptlMessageKindDesc" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_message".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_message"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_message".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_message"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_message".ptlMessageDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_message"."ptlMessageDateUpdated" IS 'Dato oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_message".ptlMessageRegisteredDate
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_message"."ptlMessageRegisteredDate" IS 'Registreringsdato'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_message".ptlMessage
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_message"."ptlMessage" IS 'Utdrag av dokument'
;
-- Approximate Table Size 100
--#SET :TABLE:npd_no_spatial_10:licence_petreg_licence
CREATE  TABLE "npd_no_spatial_10"."licence_petreg_licence"
(
"ptlName" VARCHAR(40)  NOT NULL ,
"ptlDateAwarded" DATE  NOT NULL ,
"ptlDateValidFrom" DATE  NOT NULL ,
"ptlDateValidTo" DATE  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"ptlDateUpdated" DATE  ,
"ptlDateUpdatedMax" DATE  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence".ptlDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence"."ptlDateValidFrom" IS 'Gyldig fra dato'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence".ptlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence"."ptlDateValidTo" IS 'Gyldig til dato'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence".ptlDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence"."ptlDateUpdated" IS 'Dato hovednivå oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_petreg_licence".ptlDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."licence_petreg_licence"."ptlDateUpdatedMax" IS 'Dato alle oppdatert'
;
-- Approximate Table Size 60
--#SET :TABLE:npd_no_spatial_10:field_reserves
CREATE  TABLE "npd_no_spatial_10"."field_reserves"
(
"fldName" VARCHAR(40)  NOT NULL ,
"fldRecoverableOil" DECIMAL(13,6)  NOT NULL ,
"fldRecoverableGas" DECIMAL(13,6)  NOT NULL ,
"fldRecoverableNGL" DECIMAL(13,6)  NOT NULL ,
"fldRecoverableCondensate" DECIMAL(13,6)  NOT NULL ,
"fldRecoverableOE" DECIMAL(13,6)  NOT NULL ,
"fldRemainingOil" DECIMAL(13,6)  NOT NULL ,
"fldRemainingGas" DECIMAL(13,6)  NOT NULL ,
"fldRemainingNGL" DECIMAL(13,6)  NOT NULL ,
"fldRemainingCondensate" DECIMAL(13,6)  NOT NULL ,
"fldRemainingOE" DECIMAL(13,6)  NOT NULL ,
"fldDateOffResEstDisplay" DATE  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRemainingGas
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRemainingGas" IS 'Remaining gas [bill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRemainingCondensate
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRemainingCondensate" IS 'Remaining cond. [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldName
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldName" IS 'Field name'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRecoverableCondensate
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRecoverableCondensate" IS 'Orig. recoverable cond. [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRemainingOE
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRemainingOE" IS 'Remaining oil eq. [mill Sm3 o.e]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRecoverableOil
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRecoverableOil" IS 'Orig. recoverable oil [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRecoverableNGL
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRecoverableNGL" IS 'Orig. recoverable NGL [mill tonn]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRecoverableOE
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRecoverableOE" IS 'Orig. recoverable oil eq. [mill Sm3 o.e]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRecoverableGas
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRecoverableGas" IS 'Orig. recoverable gas [bill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldDateOffResEstDisplay
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldDateOffResEstDisplay" IS 'Reserves updated date'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRemainingOil
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRemainingOil" IS 'Remaining oil [mill Sm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldRemainingNGL
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldRemainingNGL" IS 'Remaining NGL [mill tonn]'
;
--#SET: COMMENT:"npd_no_spatial_10":"field_reserves".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."field_reserves"."fldNpdidField" IS 'NPDID field'
;
-- Approximate Table Size 346
--#SET :TABLE:npd_no_spatial_10:pipLine
CREATE  TABLE "npd_no_spatial_10"."pipLine"
(
"pipNpdidPipe" INT  NOT NULL ,
"pipNpdidFromFacility" INT  NOT NULL ,
"pipNpdidToFacility" INT  NOT NULL ,
"pipNpdidOperator" INT  ,
"pipName" VARCHAR(50)  NOT NULL ,
"pipNameFromFacility" VARCHAR(50)  NOT NULL ,
"pipNameToFacility" VARCHAR(50)  NOT NULL ,
"pipNameCurrentOperator" VARCHAR(100)  ,
"pipCurrentPhase" VARCHAR(40)  NOT NULL ,
"pipMedium" VARCHAR(20)  NOT NULL ,
"pipMainGrouping" VARCHAR(20)  NOT NULL ,
"pipDimension" DECIMAL(13,6)  NOT NULL 
)
;

-- Approximate Table Size 334
--#SET :TABLE:npd_no_spatial_10:licence_transfer_hst
CREATE  TABLE "npd_no_spatial_10"."licence_transfer_hst"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlTransferDateValidFrom" DATE  NOT NULL ,
"prlTransferDirection" VARCHAR(4)  NOT NULL ,
"prlTransferKind" VARCHAR(40)  ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"prlTransferredInterest" DECIMAL(13,6)  NOT NULL ,
"prlTransferSdfi" DECIMAL(13,6)  ,
"prlNpdidLicence" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"prlTransferDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlTransferDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlTransferDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlTransferredInterest
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlTransferredInterest" IS 'Transferred interest [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlTransferDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlTransferDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlTransferSdfi
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlTransferSdfi" IS 'SDFI [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlTransferKind
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlTransferKind" IS 'Transfer kind'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlTransferDirection
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlTransferDirection" IS 'Transfer direction'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_transfer_hst".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_transfer_hst"."prlNpdidLicence" IS 'NPDID production licence'
;
-- Approximate Table Size 294
--#SET :TABLE:npd_no_spatial_10:licence_oper_hst
CREATE  TABLE "npd_no_spatial_10"."licence_oper_hst"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlOperDateValidFrom" DATE  NOT NULL ,
"prlOperDateValidTo" DATE  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"prlOperDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".prlOperDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."prlOperDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".prlOperDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."prlOperDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".prlOperDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."prlOperDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_oper_hst".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_oper_hst"."prlNpdidLicence" IS 'NPDID production licence'
;
-- Approximate Table Size 882
--#SET :TABLE:npd_no_spatial_10:licence_task
CREATE  TABLE "npd_no_spatial_10"."licence_task"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlTaskName" VARCHAR(40)  NOT NULL ,
"prlTaskTypeNo" VARCHAR(100)  NOT NULL ,
"prlTaskTypeEn" VARCHAR(200)  NOT NULL ,
"prlTaskStatusNo" VARCHAR(100)  NOT NULL ,
"prlTaskStatusEn" VARCHAR(40)  NOT NULL ,
"prlTaskExpiryDate" DATE  NOT NULL ,
"wlbName" VARCHAR(60)  ,
"prlDateValidTo" DATE  NOT NULL ,
"prlLicensingActivityName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  ,
"cmpNpdidCompany" INT  ,
"prlNpdidLicence" INT  NOT NULL ,
"prlTaskID" INT  NOT NULL ,
"prlTaskRefID" INT  ,
"prlTaskDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_task".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskStatusEn
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskStatusEn" IS 'Task status'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskID
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskID" IS 'Task ID'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."cmpLongName" IS 'Company name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlLicensingActivityName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlLicensingActivityName" IS 'Licensing activity'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskExpiryDate
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskExpiryDate" IS 'Expiry date'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskTypeEn
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskTypeEn" IS 'Type of task'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskName" IS 'Task name (norwegian)'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_task".prlTaskRefID
COMMENT ON COLUMN "npd_no_spatial_10"."licence_task"."prlTaskRefID" IS 'Referred task ID'
;
-- Approximate Table Size 712
--#SET :TABLE:npd_no_spatial_10:seis_acquisition
CREATE  TABLE "npd_no_spatial_10"."seis_acquisition"
(
"seaName" VARCHAR(100)  NOT NULL ,
"seaPlanFromDate" DATE  NOT NULL ,
"seaNpdidSurvey" INT  NOT NULL ,
"seaStatus" VARCHAR(100)  NOT NULL ,
"seaGeographicalArea" VARCHAR(100)  NOT NULL ,
"seaSurveyTypeMain" VARCHAR(100)  NOT NULL ,
"seaSurveyTypePart" VARCHAR(100)  ,
"seaCompanyReported" VARCHAR(100)  NOT NULL ,
"seaPlanToDate" DATE  NOT NULL ,
"seaDateStarting" DATE  ,
"seaDateFinalized" DATE  ,
"seaCdpTotalKm" INT  ,
"seaBoatTotalKm" INT  ,
"sea3DKm2" DECIMAL(13,6)  ,
"seaSampling" VARCHAR(20)  ,
"seaShallowDrilling" VARCHAR(20)  ,
"seaGeotechnical" VARCHAR(20)  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaStatus
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaStatus" IS 'Status'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaCompanyReported
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaCompanyReported" IS 'Company - responsible'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaPlanToDate
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaPlanToDate" IS 'Completed date - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaCdpTotalKm
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaCdpTotalKm" IS 'Total length - actual [cdp km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaNpdidSurvey
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaNpdidSurvey" IS 'NPDID for survey'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaDateFinalized
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaDateFinalized" IS 'Completed date - actual'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaShallowDrilling
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaShallowDrilling" IS 'Shallow drilling'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaPlanFromDate
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaPlanFromDate" IS 'Start date - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".sea3DKm2
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."sea3DKm2" IS 'Total net area - planned 3D/4D [km2]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaSampling
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaSampling" IS 'Sampling'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaSurveyTypePart
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaSurveyTypePart" IS 'Sub type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaBoatTotalKm
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaBoatTotalKm" IS 'Total length - actual [boat km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaName
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaName" IS 'Survey name'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaGeotechnical
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaGeotechnical" IS 'Geotechnical measurement'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaSurveyTypeMain
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaSurveyTypeMain" IS 'Main type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition".seaDateStarting
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition"."seaDateStarting" IS 'Start date - actual'
;
-- Approximate Table Size 633
-- Some of the VARCHAR or VARGRAPHIC columns have been converted to LONG VARCHAR
-- or to LONG VARGRAPHIC column
-- The original approx table size was 131703
--#SET :TABLE:npd_no_spatial_10:prlArea
CREATE  TABLE "npd_no_spatial_10"."prlArea"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlActive" VARCHAR(20)  NOT NULL ,
"prlCurrentArea" VARCHAR(20)  NOT NULL ,
"prlDateGranted" DATE  NOT NULL ,
"prlDateValidTo" DATE  NOT NULL ,
"prlAreaPolyDateValidFrom" DATE  NOT NULL ,
"prlAreaPolyDateValidTo" DATE  NOT NULL ,
"prlAreaPolyFromZvalue" INT  NOT NULL ,
"prlAreaPolyToZvalue" INT  NOT NULL ,
"prlAreaPolyVertLimEn" LONG VARCHAR  ,
"prlAreaPolyVertLimNo" LONG VARCHAR  ,
"prlStratigraphical" VARCHAR(3)  NOT NULL ,
"prlAreaPolyStratigraphical" VARCHAR(4)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"prlLastOperatorNameShort" VARCHAR(40)  NOT NULL ,
"prlLastOperatorNameLong" VARCHAR(200)  NOT NULL ,
"prlLicensingActivityName" VARCHAR(40)  NOT NULL ,
"prlLastOperatorNpdidCompany" INT  NOT NULL ,
"prlFactUrl" VARCHAR(200)  NOT NULL ,
"prlArea_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 1501, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlActive
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlActive" IS 'Active'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlDateGranted
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlDateGranted" IS 'Date granted'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlAreaPolyDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlAreaPolyDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlAreaPolyDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlAreaPolyDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlAreaPolyStratigraphical
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlAreaPolyStratigraphical" IS 'Stratigraphcal'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlCurrentArea
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlCurrentArea" IS 'Current area'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlLicensingActivityName
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlLicensingActivityName" IS 'Licensing activity'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlArea".prlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."prlArea"."prlDateValidTo" IS 'Date valid to'
;
-- Approximate Table Size 272
--#SET :TABLE:npd_no_spatial_10:tuf_operator_hst
CREATE  TABLE "npd_no_spatial_10"."tuf_operator_hst"
(
"tufName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"tufOperDateValidFrom" DATE  NOT NULL ,
"tufOperDateValidTo" DATE  NOT NULL ,
"tufNpdidTuf" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"tuf_operator_hst".tufName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_operator_hst"."tufName" IS 'TUF'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_operator_hst".tufOperDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_operator_hst"."tufOperDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_operator_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_operator_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_operator_hst".tufOperDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_operator_hst"."tufOperDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_operator_hst".tufNpdidTuf
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_operator_hst"."tufNpdidTuf" IS 'NPDID tuf'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_operator_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_operator_hst"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 136
--#SET :TABLE:npd_no_spatial_10:seis_acquisition_coordinates_inc_turnarea
CREATE  TABLE "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"
(
"seaSurveyName" VARCHAR(100)  NOT NULL ,
"seaNpdidSurvey" INT  NOT NULL ,
"seaPolygonPointNumber" INT  NOT NULL ,
"seaPolygonNSDeg" INT  NOT NULL ,
"seaPolygonNSMin" INT  NOT NULL ,
"seaPolygonNSSec" DECIMAL(13,6)  NOT NULL ,
"seaPolygonEWDeg" INT  NOT NULL ,
"seaPolygonEWMin" INT  NOT NULL ,
"seaPolygonEWSec" DECIMAL(13,6)  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonNSSec
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonNSSec" IS 'NS seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonNSMin
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonNSMin" IS 'NS minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonEWSec
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonEWSec" IS 'EW seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaSurveyName
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaSurveyName" IS 'Survey name'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonEWMin
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonEWMin" IS 'EW minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonNSDeg
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonNSDeg" IS 'NS degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaNpdidSurvey
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaNpdidSurvey" IS 'NPDID for survey'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonEWDeg
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonEWDeg" IS 'EW degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_coordinates_inc_turnarea".seaPolygonPointNumber
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_coordinates_inc_turnarea"."seaPolygonPointNumber" IS 'Point number'
;
-- Approximate Table Size 194
--#SET :TABLE:npd_no_spatial_10:licence_phase_hst
CREATE  TABLE "npd_no_spatial_10"."licence_phase_hst"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlDatePhaseValidFrom" DATE  NOT NULL ,
"prlDatePhaseValidTo" DATE  NOT NULL ,
"prlPhase" VARCHAR(40)  NOT NULL ,
"prlDateGranted" DATE  NOT NULL ,
"prlDateValidTo" DATE  NOT NULL ,
"prlDateInitialPeriodExpires" DATE  NOT NULL ,
"prlActiveStatusIndicator" VARCHAR(40)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL ,
"prlPhaseDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlPhase
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlPhase" IS 'Phase'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlDateGranted
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlDateGranted" IS 'Date granted'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlDatePhaseValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlDatePhaseValidFrom" IS 'Date phase valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlDatePhaseValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlDatePhaseValidTo" IS 'Date phase valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlDateInitialPeriodExpires
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlDateInitialPeriodExpires" IS 'Expiry date, initial period'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlPhaseDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlPhaseDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlActiveStatusIndicator
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlActiveStatusIndicator" IS 'Active'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"licence_phase_hst".prlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."licence_phase_hst"."prlDateValidTo" IS 'Date valid to'
;
-- Approximate Table Size 272
--#SET :TABLE:npd_no_spatial_10:tuf_owner_hst
CREATE  TABLE "npd_no_spatial_10"."tuf_owner_hst"
(
"tufName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"tufOwnerDateValidFrom" DATE  NOT NULL ,
"tufOwnerDateValidTo" DATE  NOT NULL ,
"tufOwnerShare" DECIMAL(13,6)  NOT NULL ,
"tufNpdidTuf" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".tufName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."tufName" IS 'TUF'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".tufOwnerShare
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."tufOwnerShare" IS 'Share [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".tufOwnerDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."tufOwnerDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".tufOwnerDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."tufOwnerDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".tufNpdidTuf
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."tufNpdidTuf" IS 'NPDID tuf'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_owner_hst".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_owner_hst"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 1668
--#SET :TABLE:npd_no_spatial_10:seaMultiline
CREATE  TABLE "npd_no_spatial_10"."seaMultiline"
(
"seaSurveyName" VARCHAR(100)  NOT NULL ,
"seaFactMapUrl" VARCHAR(260)  ,
"seaFactPageUrl" VARCHAR(200)  ,
"seaStatus" VARCHAR(100)  NOT NULL ,
"seaMarketAvailable" VARCHAR(20)  NOT NULL ,
"seaSurveyTypeMain" VARCHAR(100)  NOT NULL ,
"seaSurveyTypePart" VARCHAR(100)  NOT NULL ,
"seaCompanyReported" VARCHAR(100)  NOT NULL ,
"seaSourceType" VARCHAR(100)  NOT NULL ,
"seaSourceNumber" VARCHAR(100)  ,
"seaSourceSize" VARCHAR(100)  ,
"seaSourcePressure" VARCHAR(100)  ,
"seaSensorType" VARCHAR(100)  NOT NULL ,
"seaSensorNumbers" VARCHAR(40)  NOT NULL ,
"seaSensorLength" VARCHAR(100)  NOT NULL ,
"seaPlanFromDate" DATE  NOT NULL ,
"seaDateStarting" DATE  ,
"seaPlanToDate" DATE  NOT NULL ,
"seaDateFinalized" DATE  ,
"seaPlanCdpKm" INT  NOT NULL ,
"seaCdpTotalKm" INT  ,
"seaPlanBoatKm" INT  NOT NULL ,
"seaBoatTotalKm" INT  
)
;

--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaPlanToDate
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaPlanToDate" IS 'Completed date - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaStatus
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaStatus" IS 'Status'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaCompanyReported
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaCompanyReported" IS 'Company - responsible'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSensorNumbers
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSensorNumbers" IS 'Numbers of sensors'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSensorType
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSensorType" IS 'Sensor type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSourceType
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSourceType" IS 'Source type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaCdpTotalKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaCdpTotalKm" IS 'Total length - actual [cdp km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaDateFinalized
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaDateFinalized" IS 'Completed date - actual'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSourceSize
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSourceSize" IS 'Source size'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaFactMapUrl" IS 'Fact Map'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSensorLength
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSensorLength" IS 'Sensor length [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSourcePressure
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSourcePressure" IS 'Source pressure'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaPlanFromDate
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaPlanFromDate" IS 'Start date - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSourceNumber
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSourceNumber" IS 'Number of sources'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSurveyName
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSurveyName" IS 'Survey name'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSurveyTypePart
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSurveyTypePart" IS 'Sub type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaBoatTotalKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaBoatTotalKm" IS 'Total length - actual [boat km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaPlanCdpKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaPlanCdpKm" IS 'Total length - planned [cdp km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaPlanBoatKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaPlanBoatKm" IS 'Total length - planned [boat km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaSurveyTypeMain
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaSurveyTypeMain" IS 'Main type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaDateStarting
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaDateStarting" IS 'Start date - actual'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaMultiline".seaMarketAvailable
COMMENT ON COLUMN "npd_no_spatial_10"."seaMultiline"."seaMarketAvailable" IS 'Marked available'
;
-- Approximate Table Size 1880
--#SET :TABLE:npd_no_spatial_10:seaArea
CREATE  TABLE "npd_no_spatial_10"."seaArea"
(
"seaSurveyName" VARCHAR(100)  NOT NULL ,
"seaNpdidSurvey" INT  NOT NULL ,
"seaFactMapUrl" VARCHAR(260)  ,
"seaFactPageUrl" VARCHAR(200)  ,
"seaStatus" VARCHAR(100)  NOT NULL ,
"seaGeographicalArea" VARCHAR(100)  NOT NULL ,
"seaMarketAvailable" VARCHAR(20)  NOT NULL ,
"seaSurveyTypeMain" VARCHAR(100)  NOT NULL ,
"seaSurveyTypePart" VARCHAR(100)  ,
"seaCompanyReported" VARCHAR(100)  NOT NULL ,
"seaSourceType" VARCHAR(100)  ,
"seaSourceNumber" VARCHAR(100)  ,
"seaSourceSize" VARCHAR(100)  ,
"seaSourcePressure" VARCHAR(100)  ,
"seaSensorType" VARCHAR(100)  ,
"seaSensorNumbers" VARCHAR(40)  ,
"seaSensorLength" VARCHAR(100)  ,
"seaPlanFromDate" DATE  NOT NULL ,
"seaDateStarting" DATE  ,
"seaPlanToDate" DATE  NOT NULL ,
"seaDateFinalized" DATE  ,
"seaPlanCdpKm" INT  ,
"seaCdpTotalKm" INT  ,
"seaPlanBoatKm" INT  ,
"seaBoatTotalKm" INT  ,
"sea3DKm2" DECIMAL(13,6)  ,
"seaPolygonKind" VARCHAR(100)  NOT NULL ,
"seaArea_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 1566, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaPlanToDate
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaPlanToDate" IS 'Completed date - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSensorType
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSensorType" IS 'Sensor type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaCdpTotalKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaCdpTotalKm" IS 'Total length - actual [cdp km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaBoatTotalKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaBoatTotalKm" IS 'Total length - actual [boat km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaMarketAvailable
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaMarketAvailable" IS 'Marked available'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaPolygonKind
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaPolygonKind" IS 'Kind of polygon'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaCompanyReported
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaCompanyReported" IS 'Company - responsible'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaStatus
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaStatus" IS 'Status'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSensorNumbers
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSensorNumbers" IS 'Numbers of sensors'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSourceType
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSourceType" IS 'Source type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaNpdidSurvey
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaNpdidSurvey" IS 'NPDID for survey'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaDateFinalized
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaDateFinalized" IS 'Completed date - actual'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSourceSize
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSourceSize" IS 'Source size'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaFactMapUrl" IS 'Fact Map'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSourcePressure
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSourcePressure" IS 'Source pressure'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSensorLength
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSensorLength" IS 'Sensor length [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaPlanFromDate
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaPlanFromDate" IS 'Start date - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".sea3DKm2
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."sea3DKm2" IS 'Total net area - planned 3D/4D [km2]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSourceNumber
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSourceNumber" IS 'Number of sources'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSurveyName
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSurveyName" IS 'Survey name'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSurveyTypePart
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSurveyTypePart" IS 'Sub type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaPlanCdpKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaPlanCdpKm" IS 'Total length - planned [cdp km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaPlanBoatKm
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaPlanBoatKm" IS 'Total length - planned [boat km]'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaSurveyTypeMain
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaSurveyTypeMain" IS 'Main type'
;
--#SET: COMMENT:"npd_no_spatial_10":"seaArea".seaDateStarting
COMMENT ON COLUMN "npd_no_spatial_10"."seaArea"."seaDateStarting" IS 'Start date - actual'
;
-- Approximate Table Size 216
-- Some of the VARCHAR or VARGRAPHIC columns have been converted to LONG VARCHAR
-- or to LONG VARGRAPHIC column
-- The original approx table size was 65751
--#SET :TABLE:npd_no_spatial_10:tuf_petreg_message
CREATE  TABLE "npd_no_spatial_10"."tuf_petreg_message"
(
"ptlName" VARCHAR(40)  NOT NULL ,
"ptlMessageDocumentNo" INT  NOT NULL ,
"ptlMessage" LONG VARCHAR  NOT NULL ,
"ptlMessageRegisteredDate" DATE  NOT NULL ,
"ptlMessageKindDesc" VARCHAR(100)  NOT NULL ,
"tufName" VARCHAR(40)  NOT NULL ,
"ptlMessageDateUpdated" DATE  ,
"tufNpdidTuf" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".tufName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."tufName" IS 'TUF'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".ptlMessageKindDesc
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."ptlMessageKindDesc" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".tufNpdidTuf
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."tufNpdidTuf" IS 'NPDID tuf'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".ptlMessageDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."ptlMessageDateUpdated" IS 'Dato oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".ptlMessageRegisteredDate
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."ptlMessageRegisteredDate" IS 'Registreringsdato'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_message".ptlMessage
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_message"."ptlMessage" IS 'Utdrag av dokument'
;
-- Approximate Table Size 125
--#SET :TABLE:npd_no_spatial_10:strat_litho_wellbore
CREATE  TABLE "npd_no_spatial_10"."strat_litho_wellbore"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"lsuTopDepth" DECIMAL(13,6)  NOT NULL ,
"lsuBottomDepth" DECIMAL(13,6)  NOT NULL ,
"lsuName" VARCHAR(20)  NOT NULL ,
"lsuLevel" VARCHAR(9)  NOT NULL ,
"lsuNpdidLithoStrat" INT  NOT NULL ,
"wlbCompletionDate" DATE  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"lsuWellboreUpdatedDate" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".lsuNpdidLithoStrat
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."lsuNpdidLithoStrat" IS 'NPDID lithostrat. unit'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".lsuLevel
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."lsuLevel" IS 'Level'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".lsuName
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."lsuName" IS 'Lithostrat. unit'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".lsuBottomDepth
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."lsuBottomDepth" IS 'Bottom depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".lsuTopDepth
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."lsuTopDepth" IS 'Top depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".lsuWellboreUpdatedDate
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."lsuWellboreUpdatedDate" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 669
-- Some of the VARCHAR or VARGRAPHIC columns have been converted to LONG VARCHAR
-- or to LONG VARGRAPHIC column
-- The original approx table size was 131739
--#SET :TABLE:npd_no_spatial_10:prlAreaSplitByBlock
CREATE  TABLE "npd_no_spatial_10"."prlAreaSplitByBlock"
(
"prlName" VARCHAR(50)  NOT NULL ,
"prlActive" VARCHAR(20)  NOT NULL ,
"prlCurrentArea" VARCHAR(20)  NOT NULL ,
"prlDateGranted" DATE  NOT NULL ,
"prlDateValidTo" DATE  NOT NULL ,
"prlAreaPolyDateValidFrom" DATE  NOT NULL ,
"prlAreaPolyDateValidTo" DATE  NOT NULL ,
"prlAreaPolyPolyNo" INT  NOT NULL ,
"prlAreaPolyPolyArea" DECIMAL(13,6)  NOT NULL ,
"blcName" VARCHAR(40)  NOT NULL ,
"prlAreaPolyFromZvalue" INT  NOT NULL ,
"prlAreaPolyToZvalue" INT  NOT NULL ,
"prlAreaPolyVertLimEn" LONG VARCHAR  ,
"prlAreaPolyVertLimNo" LONG VARCHAR  ,
"prlStratigraphical" VARCHAR(3)  NOT NULL ,
"prlLastOperatorNpdidCompany" INT  NOT NULL ,
"prlLastOperatorNameShort" VARCHAR(40)  NOT NULL ,
"prlLastOperatorNameLong" VARCHAR(200)  NOT NULL ,
"prlLicensingActivityName" VARCHAR(40)  NOT NULL ,
"prlFactUrl" VARCHAR(200)  NOT NULL ,
"prlAreaPolyStratigraphical" VARCHAR(4)  NOT NULL ,
"prlNpdidLicence" INT  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlActive
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlActive" IS 'Active'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlDateGranted
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlDateGranted" IS 'Date granted'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".blcName
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."blcName" IS 'Block name'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlAreaPolyDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlAreaPolyDateValidFrom" IS 'Date valid from'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlName
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlName" IS 'Production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlAreaPolyDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlAreaPolyDateValidTo" IS 'Date valid to'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlAreaPolyStratigraphical
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlAreaPolyStratigraphical" IS 'Stratigraphcal'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlAreaPolyPolyArea
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlAreaPolyPolyArea" IS 'Polygon area [km2]'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlCurrentArea
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlCurrentArea" IS 'Current area'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlNpdidLicence
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlNpdidLicence" IS 'NPDID production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlLicensingActivityName
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlLicensingActivityName" IS 'Licensing activity'
;
--#SET: COMMENT:"npd_no_spatial_10":"prlAreaSplitByBlock".prlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."prlAreaSplitByBlock"."prlDateValidTo" IS 'Date valid to'
;
-- Approximate Table Size 113
--#SET :TABLE:npd_no_spatial_10:strat_litho_wellbore_core
CREATE  TABLE "npd_no_spatial_10"."strat_litho_wellbore_core"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"lsuCoreLenght" DECIMAL(13,6)  NOT NULL ,
"lsuName" VARCHAR(20)  NOT NULL ,
"lsuLevel" VARCHAR(9)  NOT NULL ,
"wlbCompletionDate" DATE  NOT NULL ,
"lsuNpdidLithoStrat" INT  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".lsuNpdidLithoStrat
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."lsuNpdidLithoStrat" IS 'NPDID lithostrat. unit'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".lsuLevel
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."lsuLevel" IS 'Level'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".lsuName
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."lsuName" IS 'Lithostrat. unit'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".lsuCoreLenght
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."lsuCoreLenght" IS 'Core length [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"strat_litho_wellbore_core".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."strat_litho_wellbore_core"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 114
--#SET :TABLE:npd_no_spatial_10:wellbore_casing_and_lot
CREATE  TABLE "npd_no_spatial_10"."wellbore_casing_and_lot"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbCasingType" VARCHAR(10)  ,
"wlbCasingDiameter" VARCHAR(6)  ,
"wlbCasingDepth" DECIMAL(13,6)  NOT NULL ,
"wlbHoleDiameter" VARCHAR(6)  ,
"wlbHoleDepth" DECIMAL(13,6)  NOT NULL ,
"wlbLotMudDencity" DECIMAL(13,6)  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbCasingDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL ,
"wellbore_casing_and_lot_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 5256, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbLotMudDencity
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbLotMudDencity" IS 'LOT mud eqv. [g/cm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbCasingDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbCasingDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbCasingType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbCasingType" IS 'Casing type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbHoleDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbHoleDepth" IS 'Hole depth[m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbCasingDiameter
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbCasingDiameter" IS 'Casing diam. [inch]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbCasingDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbCasingDepth" IS 'Casing depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbHoleDiameter
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbHoleDiameter" IS 'Hole diam. [inch]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_casing_and_lot".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_casing_and_lot"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 348
--#SET :TABLE:npd_no_spatial_10:tuf_petreg_licence_oper
CREATE  TABLE "npd_no_spatial_10"."tuf_petreg_licence_oper"
(
"Textbox42" VARCHAR(20)  NOT NULL ,
"Textbox2" VARCHAR(20)  NOT NULL ,
"ptlName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"tufName" VARCHAR(40)  NOT NULL ,
"tufNpdidTuf" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"ptlOperDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_oper".tufName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_oper"."tufName" IS 'TUF'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_oper".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_oper"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_oper".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_oper"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_oper".ptlOperDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_oper"."ptlOperDateUpdated" IS 'Dato oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_oper".tufNpdidTuf
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_oper"."tufNpdidTuf" IS 'NPDID tuf'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_oper".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_oper"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 572
--#SET :TABLE:npd_no_spatial_10:wellbore_document
CREATE  TABLE "npd_no_spatial_10"."wellbore_document"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbDocumentType" VARCHAR(40)  NOT NULL ,
"wlbDocumentName" VARCHAR(200)  NOT NULL ,
"wlbDocumentUrl" VARCHAR(200)  NOT NULL ,
"wlbDocumentFormat" VARCHAR(40)  NOT NULL ,
"wlbDocumentSize" DECIMAL(13,6)  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbDocumentDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL ,
"wellbore_document_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 6474, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbDocumentType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbDocumentType" IS 'Document type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbDocumentName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbDocumentName" IS 'Document name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbDocumentDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbDocumentDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbDocumentUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbDocumentUrl" IS 'Document URL'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbDocumentSize
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbDocumentSize" IS 'Document size [MB]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_document".wlbDocumentFormat
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_document"."wlbDocumentFormat" IS 'Document format'
;
-- Approximate Table Size 60
-- Some of the VARCHAR or VARGRAPHIC columns have been converted to LONG VARCHAR
-- or to LONG VARGRAPHIC column
-- The original approx table size was 131130
--#SET :TABLE:npd_no_spatial_10:seis_acquisition_progress
CREATE  TABLE "npd_no_spatial_10"."seis_acquisition_progress"
(
"seaProgressDate" DATE  NOT NULL ,
"seaProgressText2" VARCHAR(40)  NOT NULL ,
"seaProgressText" LONG VARCHAR  NOT NULL ,
"seaProgressDescription" LONG VARCHAR  ,
"seaNpdidSurvey" INT  NOT NULL ,
"seis_acquisition_progress_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 10316, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"seis_acquisition_progress".seaNpdidSurvey
COMMENT ON COLUMN "npd_no_spatial_10"."seis_acquisition_progress"."seaNpdidSurvey" IS 'NPDID for survey'
;
-- Approximate Table Size 132
--#SET :TABLE:npd_no_spatial_10:tuf_petreg_licence
CREATE  TABLE "npd_no_spatial_10"."tuf_petreg_licence"
(
"ptlName" VARCHAR(40)  NOT NULL ,
"tufName" VARCHAR(40)  NOT NULL ,
"ptlDateValidFrom" DATE  NOT NULL ,
"ptlDateValidTo" DATE  NOT NULL ,
"tufNpdidTuf" INT  NOT NULL ,
"ptlDateUpdated" DATE  ,
"ptlDateUpdatedMax" DATE  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".ptlDateValidFrom
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."ptlDateValidFrom" IS 'Gyldig fra dato'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".tufName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."tufName" IS 'TUF'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".ptlDateValidTo
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."ptlDateValidTo" IS 'Gyldig til dato'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".ptlDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."ptlDateUpdated" IS 'Dato hovednivå oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".tufNpdidTuf
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."tufNpdidTuf" IS 'NPDID tuf'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence".ptlDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence"."ptlDateUpdatedMax" IS 'Dato alle oppdatert'
;
-- Approximate Table Size 112
--#SET :TABLE:npd_no_spatial_10:wellbore_npdid_overview
CREATE  TABLE "npd_no_spatial_10"."wellbore_npdid_overview"
(
"wlbWellboreName" VARCHAR(40)  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbWell" VARCHAR(40)  NOT NULL ,
"wlbWellType" VARCHAR(20)  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_npdid_overview".wlbWellType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_npdid_overview"."wlbWellType" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_npdid_overview".wlbWellboreName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_npdid_overview"."wlbWellboreName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_npdid_overview".wlbWell
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_npdid_overview"."wlbWell" IS 'Well name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_npdid_overview".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_npdid_overview"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 312
--#SET :TABLE:npd_no_spatial_10:tuf_petreg_licence_licencee
CREATE  TABLE "npd_no_spatial_10"."tuf_petreg_licence_licencee"
(
"ptlName" VARCHAR(40)  NOT NULL ,
"cmpLongName" VARCHAR(200)  NOT NULL ,
"ptlLicenseeInterest" DECIMAL(13,6)  NOT NULL ,
"tufName" VARCHAR(40)  NOT NULL ,
"tufNpdidTuf" INT  NOT NULL ,
"cmpNpdidCompany" INT  NOT NULL ,
"ptlLicenseeDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".tufName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."tufName" IS 'TUF'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".ptlLicenseeDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."ptlLicenseeDateUpdated" IS 'Dato oppdatert'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".ptlName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."ptlName" IS 'Tillatelse'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".cmpNpdidCompany
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."cmpNpdidCompany" IS 'NPDID company'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".ptlLicenseeInterest
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."ptlLicenseeInterest" IS 'Andel [%]'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".tufNpdidTuf
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."tufNpdidTuf" IS 'NPDID tuf'
;
--#SET: COMMENT:"npd_no_spatial_10":"tuf_petreg_licence_licencee".cmpLongName
COMMENT ON COLUMN "npd_no_spatial_10"."tuf_petreg_licence_licencee"."cmpLongName" IS 'Company name'
;
-- Approximate Table Size 488
--#SET :TABLE:npd_no_spatial_10:wellbore_core_photo
CREATE  TABLE "npd_no_spatial_10"."wellbore_core_photo"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbCoreNumber" INT  NOT NULL ,
"wlbCorePhotoTitle" VARCHAR(200)  NOT NULL ,
"wlbCorePhotoImgUrl" VARCHAR(200)  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbCorePhotoDateUpdated" DATE  ,
"wellbore_core_photo_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 18185, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core_photo".wlbCorePhotoImgUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core_photo"."wlbCorePhotoImgUrl" IS 'Core photo URL'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core_photo".wlbCorePhotoTitle
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core_photo"."wlbCorePhotoTitle" IS 'Core photo title'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core_photo".wlbCoreNumber
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core_photo"."wlbCoreNumber" IS 'Core sample number'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core_photo".wlbCorePhotoDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core_photo"."wlbCorePhotoDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core_photo".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core_photo"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core_photo".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core_photo"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 141
--#SET :TABLE:npd_no_spatial_10:wellbore_formation_top
CREATE  TABLE "npd_no_spatial_10"."wellbore_formation_top"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"lsuTopDepth" DECIMAL(13,6)  NOT NULL ,
"lsuBottomDepth" DECIMAL(13,6)  NOT NULL ,
"lsuName" VARCHAR(20)  NOT NULL ,
"lsuLevel" VARCHAR(9)  NOT NULL ,
"lsuNameParent" VARCHAR(20)  ,
"wlbNpdidWellbore" INT  NOT NULL ,
"lsuNpdidLithoStrat" INT  NOT NULL ,
"lsuNpdidLithoStratParent" INT  ,
"lsuWellboreUpdatedDate" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuNameParent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuNameParent" IS 'Lithostrat. unit, parent'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuNpdidLithoStrat
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuNpdidLithoStrat" IS 'NPDID lithostrat. unit'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuLevel
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuLevel" IS 'Level'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuName" IS 'Lithostrat. unit'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuBottomDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuBottomDepth" IS 'Bottom depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuTopDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuTopDepth" IS 'Top depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuWellboreUpdatedDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuWellboreUpdatedDate" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_formation_top".lsuNpdidLithoStratParent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_formation_top"."lsuNpdidLithoStratParent" IS 'NPDID parent lithostrat. unit'
;
-- Approximate Table Size 376
--#SET :TABLE:npd_no_spatial_10:wellbore_coordinates
CREATE  TABLE "npd_no_spatial_10"."wellbore_coordinates"
(
"wlbWellboreName" VARCHAR(40)  NOT NULL ,
"wlbDrillingOperator" VARCHAR(60)  NOT NULL ,
"wlbProductionLicence" VARCHAR(40)  ,
"wlbWellType" VARCHAR(20)  ,
"wlbPurposePlanned" VARCHAR(40)  ,
"wlbContent" VARCHAR(40)  ,
"wlbEntryDate" DATE  ,
"wlbCompletionDate" DATE  ,
"wlbField" VARCHAR(40)  ,
"wlbMainArea" VARCHAR(40)  NOT NULL ,
"wlbGeodeticDatum" VARCHAR(6)  ,
"wlbNsDeg" INT  NOT NULL ,
"wlbNsMin" INT  NOT NULL ,
"wlbNsSec" DECIMAL(6,2)  NOT NULL ,
"wlbNsCode" VARCHAR(1)  ,
"wlbEwDeg" INT  NOT NULL ,
"wlbEwMin" INT  NOT NULL ,
"wlbEwSec" DECIMAL(6,2)  NOT NULL ,
"wlbEwCode" VARCHAR(1)  ,
"wlbNsDecDeg" DECIMAL(13,6)  NOT NULL ,
"wlbEwDesDeg" DECIMAL(13,6)  NOT NULL ,
"wlbNsUtm" DECIMAL(13,6)  NOT NULL ,
"wlbEwUtm" DECIMAL(13,6)  NOT NULL ,
"wlbUtmZone" INT  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbWellboreName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbWellboreName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEwDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEwDeg" IS 'EW degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbContent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbContent" IS 'Content'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEwCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEwCode" IS 'EW code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbField
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbField" IS 'Field'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbUtmZone
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbUtmZone" IS 'UTM zone'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEwSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEwSec" IS 'EW seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEntryDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEntryDate" IS 'Entry date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbPurposePlanned
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbPurposePlanned" IS 'Purpose - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEwMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEwMin" IS 'EW minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNsDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNsDeg" IS 'NS degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNsDecDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNsDecDeg" IS 'NS decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNsSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNsSec" IS 'NS seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNsCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNsCode" IS 'NS code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNsMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNsMin" IS 'NS minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbGeodeticDatum
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbGeodeticDatum" IS 'Geodetic datum'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbProductionLicence" IS 'Drilled in production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEwUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEwUtm" IS 'EW UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbMainArea
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbMainArea" IS 'Main area'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbEwDesDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbEwDesDeg" IS 'EW decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbWellType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbWellType" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbDrillingOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbDrillingOperator" IS 'Drilling operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNsUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNsUtm" IS 'NS UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_coordinates".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_coordinates"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 1337
--#SET :TABLE:npd_no_spatial_10:wellbore_development_all
CREATE  TABLE "npd_no_spatial_10"."wellbore_development_all"
(
"wlbWellboreName" VARCHAR(40)  NOT NULL ,
"wlbWell" VARCHAR(40)  NOT NULL ,
"wlbDrillingOperator" VARCHAR(60)  NOT NULL ,
"wlbDrillingOperatorGroup" VARCHAR(20)  NOT NULL ,
"wlbProductionLicence" VARCHAR(40)  NOT NULL ,
"wlbPurposePlanned" VARCHAR(40)  ,
"wlbContent" VARCHAR(40)  ,
"wlbWellType" VARCHAR(20)  NOT NULL ,
"wlbEntryDate" DATE  ,
"wlbCompletionDate" DATE  ,
"wlbField" VARCHAR(40)  NOT NULL ,
"wlbDrillPermit" VARCHAR(10)  NOT NULL ,
"wlbDiscovery" VARCHAR(40)  NOT NULL ,
"wlbDiscoveryWellbore" VARCHAR(3)  NOT NULL ,
"wlbKellyBushElevation" DECIMAL(13,6)  NOT NULL ,
"wlbFinalVerticalDepth" DECIMAL(6,2)  ,
"wlbTotalDepth" DECIMAL(13,6)  NOT NULL ,
"wlbWaterDepth" DECIMAL(13,6)  NOT NULL ,
"wlbMainArea" VARCHAR(40)  NOT NULL ,
"wlbDrillingFacility" VARCHAR(50)  ,
"wlbFacilityTypeDrilling" VARCHAR(40)  ,
"wlbProductionFacility" VARCHAR(50)  ,
"wlbLicensingActivity" VARCHAR(40)  NOT NULL ,
"wlbMultilateral" VARCHAR(3)  NOT NULL ,
"wlbContentPlanned" VARCHAR(40)  ,
"wlbEntryYear" INT  NOT NULL ,
"wlbCompletionYear" INT  NOT NULL ,
"wlbReclassFromWellbore" VARCHAR(40)  ,
"wlbPlotSymbol" INT  NOT NULL ,
"wlbGeodeticDatum" VARCHAR(6)  ,
"wlbNsDeg" INT  NOT NULL ,
"wlbNsMin" INT  NOT NULL ,
"wlbNsSec" DECIMAL(6,2)  NOT NULL ,
"wlbNsCode" VARCHAR(1)  NOT NULL ,
"wlbEwDeg" INT  NOT NULL ,
"wlbEwMin" INT  NOT NULL ,
"wlbEwSec" DECIMAL(6,2)  NOT NULL ,
"wlbEwCode" VARCHAR(1)  ,
"wlbNsDecDeg" DECIMAL(13,6)  NOT NULL ,
"wlbEwDesDeg" DECIMAL(13,6)  NOT NULL ,
"wlbNsUtm" DECIMAL(13,6)  NOT NULL ,
"wlbEwUtm" DECIMAL(13,6)  NOT NULL ,
"wlbUtmZone" INT  NOT NULL ,
"wlbNamePart1" INT  NOT NULL ,
"wlbNamePart2" INT  NOT NULL ,
"wlbNamePart3" VARCHAR(1)  NOT NULL ,
"wlbNamePart4" INT  NOT NULL ,
"wlbNamePart5" VARCHAR(2)  ,
"wlbNamePart6" VARCHAR(2)  ,
"wlbFactPageUrl" VARCHAR(200)  NOT NULL ,
"wlbFactMapUrl" VARCHAR(200)  NOT NULL ,
"wlbDiskosWellboreType" VARCHAR(20)  NOT NULL ,
"wlbDiskosWellboreParent" VARCHAR(40)  ,
"wlbNpdidWellbore" INT  NOT NULL ,
"dscNpdidDiscovery" INT  NOT NULL ,
"fldNpdidField" INT  NOT NULL ,
"wlbWdssQcdate" DATE  ,
"prlNpdidProductionLicence" INT  NOT NULL ,
"fclNpdidFacilityDrilling" INT  ,
"fclNpdidFacilityProducing" INT  ,
"wlbNpdidWellboreReclass" INT  NOT NULL ,
"wlbDiskosWellOperator" VARCHAR(40)  NOT NULL ,
"wlbDateUpdated" DATE  NOT NULL ,
"wlbDateUpdatedMax" DATE  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDiskosWellOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDiskosWellOperator" IS 'DISKOS well operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDiscovery" IS 'Discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbWellboreName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbWellboreName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".dscNpdidDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."dscNpdidDiscovery" IS 'NPDID discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbProductionFacility
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbProductionFacility" IS 'Production facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbFactMapUrl" IS 'FactMap url'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbContent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbContent" IS 'Content'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbUtmZone
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbUtmZone" IS 'UTM zone'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbFacilityTypeDrilling
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbFacilityTypeDrilling" IS 'Facility type, drilling'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEwSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEwSec" IS 'EW seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEntryDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEntryDate" IS 'Entry date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEwMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEwMin" IS 'EW minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNsDecDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNsDecDeg" IS 'NS decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbContentPlanned
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbContentPlanned" IS 'Content - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbWell
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbWell" IS 'Well name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNsSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNsSec" IS 'NS seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNsMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNsMin" IS 'NS minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEntryYear
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEntryYear" IS 'Entry year'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbFinalVerticalDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbFinalVerticalDepth" IS 'Final vertical depth (TVD) [m RKB]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".prlNpdidProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."prlNpdidProductionLicence" IS 'NPDID production licence drilled in'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNamePart1
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNamePart1" IS 'Wellbore name, part 1'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDrillingOperatorGroup
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDrillingOperatorGroup" IS 'Drilling operator group'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNamePart2
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNamePart2" IS 'Wellbore name, part 2'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNamePart3
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNamePart3" IS 'Wellbore name, part 3'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNamePart4
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNamePart4" IS 'Wellbore name, part 4'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNamePart5
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNamePart5" IS 'Wellbore name, part 5'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbMultilateral
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbMultilateral" IS 'Multilateral'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbProductionLicence" IS 'Drilled in production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNamePart6
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNamePart6" IS 'Wellbore name, part 6'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbReclassFromWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbReclassFromWellbore" IS 'Reclassified from wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDiscoveryWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDiscoveryWellbore" IS 'Discovery wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbMainArea
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbMainArea" IS 'Main area'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEwDesDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEwDesDeg" IS 'EW decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDrillingFacility
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDrillingFacility" IS 'Drilling facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDrillingOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDrillingOperator" IS 'Drilling operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbLicensingActivity
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbLicensingActivity" IS 'Licensing activity awarded in'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbKellyBushElevation
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbKellyBushElevation" IS 'Kelly bushing elevation [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDiskosWellboreParent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDiskosWellboreParent" IS 'DISKOS Wellbore Parent'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbCompletionYear
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbCompletionYear" IS 'Completion year'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNpdidWellboreReclass
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNpdidWellboreReclass" IS 'NPDID wellbore reclassified from'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEwDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEwDeg" IS 'EW degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEwCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEwCode" IS 'EW code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbField
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbField" IS 'Field'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbPurposePlanned
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbPurposePlanned" IS 'Purpose - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNsDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNsDeg" IS 'NS degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDiskosWellboreType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDiskosWellboreType" IS 'DISKOS Well Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNsCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNsCode" IS 'NS code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbPlotSymbol
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbPlotSymbol" IS 'Plot symbol'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbGeodeticDatum
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbGeodeticDatum" IS 'Geodetic datum'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbFactPageUrl" IS 'FactPage url'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbDrillPermit
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbDrillPermit" IS 'Drill permit'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".fclNpdidFacilityProducing
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."fclNpdidFacilityProducing" IS 'NPDID production facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbTotalDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbTotalDepth" IS 'Total depth (MD) [m RKB]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbEwUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbEwUtm" IS 'EW UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbWellType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbWellType" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".fclNpdidFacilityDrilling
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."fclNpdidFacilityDrilling" IS 'NPDID drilling facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbWaterDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbWaterDepth" IS 'Water depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNsUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNsUtm" IS 'NS UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_development_all".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_development_all"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 121
--#SET :TABLE:npd_no_spatial_10:wellbore_core
CREATE  TABLE "npd_no_spatial_10"."wellbore_core"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbCoreNumber" INT  NOT NULL ,
"wlbCoreIntervalTop" DECIMAL(13,6)  ,
"wlbCoreIntervalBottom" DECIMAL(13,6)  ,
"wlbCoreIntervalUom" VARCHAR(6)  ,
"wlbTotalCoreLength" DECIMAL(13,6)  NOT NULL ,
"wlbNumberOfCores" INT  NOT NULL ,
"wlbCoreSampleAvailable" VARCHAR(3)  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbCoreDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL ,
"wellbore_core_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 7636, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbCoreDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbCoreDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbCoreIntervalUom
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbCoreIntervalUom" IS 'Core sample depth - uom'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbCoreSampleAvailable
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbCoreSampleAvailable" IS 'Core samples available'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbCoreIntervalTop
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbCoreIntervalTop" IS 'Core sample - top depth'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbCoreNumber
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbCoreNumber" IS 'Core sample number'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbNumberOfCores
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbNumberOfCores" IS 'Number of cores samples'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbTotalCoreLength
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbTotalCoreLength" IS 'Total core sample length [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbCoreIntervalBottom
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbCoreIntervalBottom" IS 'Core sample - bottom depth'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_core".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_core"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 96
--#SET :TABLE:npd_no_spatial_10:wellbore_dst
CREATE  TABLE "npd_no_spatial_10"."wellbore_dst"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbDstTestNumber" DECIMAL(13,6)  NOT NULL ,
"wlbDstFromDepth" DECIMAL(13,6)  NOT NULL ,
"wlbDstToDepth" DECIMAL(13,6)  NOT NULL ,
"wlbDstChokeSize" DECIMAL(13,6)  NOT NULL ,
"wlbDstFinShutInPress" DECIMAL(13,6)  NOT NULL ,
"wlbDstFinFlowPress" DECIMAL(13,6)  NOT NULL ,
"wlbDstBottomHolePress" DECIMAL(13,6)  NOT NULL ,
"wlbDstOilProd" INT  NOT NULL ,
"wlbDstGasProd" INT  NOT NULL ,
"wlbDstOilDensity" DECIMAL(13,6)  NOT NULL ,
"wlbDstGasDensity" DECIMAL(13,6)  NOT NULL ,
"wlbDstGasOilRelation" INT  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbDstDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstBottomHolePress
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstBottomHolePress" IS 'Bottom hole pressure [MPa]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstFromDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstFromDepth" IS 'From depth MD [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstFinFlowPress
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstFinFlowPress" IS 'Final flow pressure [MPa]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstGasDensity
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstGasDensity" IS 'Gas grav. rel.air'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstChokeSize
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstChokeSize" IS 'Choke size [mm]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstGasOilRelation
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstGasOilRelation" IS 'GOR [m3/m3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstOilDensity
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstOilDensity" IS 'Oil density [g/cm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstToDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstToDepth" IS 'To depth MD [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstOilProd
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstOilProd" IS 'Oil [Sm3/day]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstTestNumber
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstTestNumber" IS 'Test number'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstFinShutInPress
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstFinShutInPress" IS 'Final shut-in pressure [MPa]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbDstGasProd
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbDstGasProd" IS 'Gas [Sm3/day]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_dst".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_dst"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 898
--#SET :TABLE:npd_no_spatial_10:wlbPoint
CREATE  TABLE "npd_no_spatial_10"."wlbPoint"
(
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbWellName" VARCHAR(40)  NOT NULL ,
"wlbWellboreName" VARCHAR(40)  NOT NULL ,
"wlbField" VARCHAR(40)  ,
"wlbProductionLicence" VARCHAR(40)  ,
"wlbWellType" VARCHAR(20)  ,
"wlbDrillingOperator" VARCHAR(60)  NOT NULL ,
"wlbMultilateral" VARCHAR(3)  NOT NULL ,
"wlbDrillingFacility" VARCHAR(50)  ,
"wlbProductionFacility" VARCHAR(50)  ,
"wlbEntryDate" DATE  ,
"wlbCompletionDate" DATE  ,
"wlbContent" VARCHAR(40)  ,
"wlbStatus" VARCHAR(40)  ,
"wlbSymbol" INT  NOT NULL ,
"wlbPurpose" VARCHAR(40)  ,
"wlbWaterDepth" DECIMAL(13,6)  NOT NULL ,
"wlbFactPageUrl" VARCHAR(200)  ,
"wlbFactMapUrl" VARCHAR(200)  ,
"wlbDiscoveryWellbore" VARCHAR(3)  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbWellboreName
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbWellboreName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbFactPageUrl" IS 'FactPage url'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbProductionFacility
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbProductionFacility" IS 'Production facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbProductionLicence" IS 'Drilled in production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbMultilateral
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbMultilateral" IS 'Multilateral'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbFactMapUrl" IS 'FactMap url'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbContent
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbContent" IS 'Content'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbField
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbField" IS 'Field'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbDiscoveryWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbDiscoveryWellbore" IS 'Discovery wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbPurpose
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbPurpose" IS 'Purpose'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbEntryDate
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbEntryDate" IS 'Entry date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbWellType
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbWellType" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbDrillingFacility
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbDrillingFacility" IS 'Drilling facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbDrillingOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbDrillingOperator" IS 'Drilling operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbWaterDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbWaterDepth" IS 'Water depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wlbPoint".wlbStatus
COMMENT ON COLUMN "npd_no_spatial_10"."wlbPoint"."wlbStatus" IS 'Status'
;
-- Approximate Table Size 144
--#SET :TABLE:npd_no_spatial_10:wellbore_mud
CREATE  TABLE "npd_no_spatial_10"."wellbore_mud"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbMD" DECIMAL(13,6)  NOT NULL ,
"wlbMudWeightAtMD" DECIMAL(13,6)  NOT NULL ,
"wlbMudViscosityAtMD" DECIMAL(13,6)  NOT NULL ,
"wlbYieldPointAtMD" DECIMAL(13,6)  NOT NULL ,
"wlbMudType" VARCHAR(40)  ,
"wlbMudDateMeasured" DATE  ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbMudDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL ,
"wellbore_mud_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 27684, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbMudWeightAtMD
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbMudWeightAtMD" IS 'Mud weight [g/cm3]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbMudViscosityAtMD
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbMudViscosityAtMD" IS 'Visc. [mPa.s]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbMudDateMeasured
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbMudDateMeasured" IS 'Date measured'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbMD
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbMD" IS 'Depth MD [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbMudType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbMudType" IS 'Mud type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbYieldPointAtMD
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbYieldPointAtMD" IS 'Yield point [Pa]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbMudDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbMudDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_mud".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_mud"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
-- Approximate Table Size 146
--#SET :TABLE:npd_no_spatial_10:wellbore_oil_sample
CREATE  TABLE "npd_no_spatial_10"."wellbore_oil_sample"
(
"wlbName" VARCHAR(60)  NOT NULL ,
"wlbOilSampleTestType" VARCHAR(4)  ,
"wlbOilSampleTestNumber" VARCHAR(10)  ,
"wlbOilSampleTopDepth" DECIMAL(13,6)  NOT NULL ,
"wlbOilSampleBottomDepth" DECIMAL(13,6)  NOT NULL ,
"wlbOilSampleFluidType" VARCHAR(20)  ,
"wlbOilSampleTestDate" DATE  ,
"wlbOilSampledateReceivedDate" DATE  ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbOilSampleDateUpdated" DATE  ,
"dateSyncNPD" DATE  NOT NULL ,
"wellbore_oil_sample_id" BIGINT  NOT NULL  GENERATED BY DEFAULT AS IDENTITY (START WITH 738, INCREMENT BY 1, CACHE 20)
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleFluidType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleFluidType" IS 'Fluid type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleBottomDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleBottomDepth" IS 'Bottom depth MD [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleTestNumber
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleTestNumber" IS 'Bottle test number'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleTestType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleTestType" IS 'Test type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampledateReceivedDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampledateReceivedDate" IS 'Received date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleTopDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleTopDepth" IS 'Top depth MD [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleDateUpdated" IS 'Date updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_oil_sample".wlbOilSampleTestDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_oil_sample"."wlbOilSampleTestDate" IS 'Test date and time of day'
;
-- Approximate Table Size 1974
--#SET :TABLE:npd_no_spatial_10:wellbore_exploration_all
CREATE  TABLE "npd_no_spatial_10"."wellbore_exploration_all"
(
"wlbWellboreName" VARCHAR(40)  NOT NULL ,
"wlbWell" VARCHAR(40)  NOT NULL ,
"wlbDrillingOperator" VARCHAR(60)  NOT NULL ,
"wlbDrillingOperatorGroup" VARCHAR(20)  NOT NULL ,
"wlbProductionLicence" VARCHAR(40)  NOT NULL ,
"wlbPurpose" VARCHAR(40)  NOT NULL ,
"wlbStatus" VARCHAR(40)  ,
"wlbContent" VARCHAR(40)  ,
"wlbWellType" VARCHAR(20)  NOT NULL ,
"wlbEntryDate" DATE  ,
"wlbCompletionDate" DATE  ,
"wlbField" VARCHAR(40)  ,
"wlbDrillPermit" VARCHAR(10)  NOT NULL ,
"wlbDiscovery" VARCHAR(40)  ,
"wlbDiscoveryWellbore" VARCHAR(3)  NOT NULL ,
"wlbBottomHoleTemperature" INT  ,
"wlbSeismicLocation" VARCHAR(200)  ,
"wlbMaxInclation" DECIMAL(6,2)  ,
"wlbKellyBushElevation" DECIMAL(13,6)  NOT NULL ,
"wlbFinalVerticalDepth" DECIMAL(6,2)  ,
"wlbTotalDepth" DECIMAL(13,6)  NOT NULL ,
"wlbWaterDepth" DECIMAL(13,6)  NOT NULL ,
"wlbAgeAtTd" VARCHAR(40)  ,
"wlbFormationAtTd" VARCHAR(40)  ,
"wlbMainArea" VARCHAR(40)  NOT NULL ,
"wlbDrillingFacility" VARCHAR(50)  NOT NULL ,
"wlbFacilityTypeDrilling" VARCHAR(40)  NOT NULL ,
"wlbLicensingActivity" VARCHAR(40)  NOT NULL ,
"wlbMultilateral" VARCHAR(3)  NOT NULL ,
"wlbPurposePlanned" VARCHAR(40)  NOT NULL ,
"wlbEntryYear" INT  NOT NULL ,
"wlbCompletionYear" INT  NOT NULL ,
"wlbReclassFromWellbore" VARCHAR(40)  ,
"wlbReentryExplorationActivity" VARCHAR(40)  ,
"wlbPlotSymbol" INT  NOT NULL ,
"wlbFormationWithHc1" VARCHAR(20)  ,
"wlbAgeWithHc1" VARCHAR(20)  ,
"wlbFormationWithHc2" VARCHAR(20)  ,
"wlbAgeWithHc2" VARCHAR(20)  ,
"wlbFormationWithHc3" VARCHAR(20)  ,
"wlbAgeWithHc3" CHAR(20)  ,
"wlbDrillingDays" INT  NOT NULL ,
"wlbReentry" VARCHAR(3)  NOT NULL ,
"wlbGeodeticDatum" VARCHAR(6)  ,
"wlbNsDeg" INT  NOT NULL ,
"wlbNsMin" INT  NOT NULL ,
"wlbNsSec" DECIMAL(6,2)  NOT NULL ,
"wlbNsCode" VARCHAR(1)  NOT NULL ,
"wlbEwDeg" INT  NOT NULL ,
"wlbEwMin" INT  NOT NULL ,
"wlbEwSec" DECIMAL(6,2)  NOT NULL ,
"wlbEwCode" VARCHAR(1)  NOT NULL ,
"wlbNsDecDeg" DECIMAL(13,6)  NOT NULL ,
"wlbEwDesDeg" DECIMAL(13,6)  NOT NULL ,
"wlbNsUtm" DECIMAL(13,6)  NOT NULL ,
"wlbEwUtm" DECIMAL(13,6)  NOT NULL ,
"wlbUtmZone" INT  NOT NULL ,
"wlbNamePart1" INT  NOT NULL ,
"wlbNamePart2" INT  NOT NULL ,
"wlbNamePart3" VARCHAR(1)  ,
"wlbNamePart4" INT  NOT NULL ,
"wlbNamePart5" VARCHAR(2)  ,
"wlbNamePart6" VARCHAR(2)  ,
"wlbPressReleaseUrl" VARCHAR(200)  ,
"wlbFactPageUrl" VARCHAR(200)  NOT NULL ,
"wlbFactMapUrl" VARCHAR(200)  NOT NULL ,
"wlbDiskosWellboreType" VARCHAR(20)  NOT NULL ,
"wlbDiskosWellboreParent" VARCHAR(40)  ,
"wlbWdssQcDate" DATE  ,
"wlbNpdidWellbore" INT  NOT NULL ,
"dscNpdidDiscovery" INT  ,
"fldNpdidField" INT  ,
"fclNpdidFacilityDrilling" INT  NOT NULL ,
"wlbNpdidWellboreReclass" INT  NOT NULL ,
"prlNpdidProductionLicence" INT  NOT NULL ,
"wlbDiskosWellOperator" VARCHAR(40)  NOT NULL ,
"wlbDateUpdated" DATE  NOT NULL ,
"wlbDateUpdatedMax" DATE  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDiskosWellOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDiskosWellOperator" IS 'DISKOS well operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbAgeWithHc3
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbAgeWithHc3" IS '3rd level with HC, age'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDiscovery" IS 'Discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbWellboreName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbWellboreName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".dscNpdidDiscovery
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."dscNpdidDiscovery" IS 'NPDID discovery'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFactMapUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFactMapUrl" IS 'FactMap url'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbContent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbContent" IS 'Content'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbUtmZone
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbUtmZone" IS 'UTM zone'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFacilityTypeDrilling
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFacilityTypeDrilling" IS 'Facility type, drilling'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEwSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEwSec" IS 'EW seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEwMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEwMin" IS 'EW minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEntryDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEntryDate" IS 'Entry date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNsDecDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNsDecDeg" IS 'NS decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbWell
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbWell" IS 'Well name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNsSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNsSec" IS 'NS seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNsMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNsMin" IS 'NS minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEntryYear
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEntryYear" IS 'Entry year'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFinalVerticalDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFinalVerticalDepth" IS 'Final vertical depth (TVD) [m RKB]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".prlNpdidProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."prlNpdidProductionLicence" IS 'NPDID production licence drilled in'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNamePart1
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNamePart1" IS 'Wellbore name, part 1'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNamePart2
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNamePart2" IS 'Wellbore name, part 2'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFormationAtTd
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFormationAtTd" IS 'Oldest penetrated formation'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDrillingOperatorGroup
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDrillingOperatorGroup" IS 'Drilling operator group'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNamePart3
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNamePart3" IS 'Wellbore name, part 3'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNamePart4
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNamePart4" IS 'Wellbore name, part 4'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNamePart5
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNamePart5" IS 'Wellbore name, part 5'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNamePart6
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNamePart6" IS 'Wellbore name, part 6'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbProductionLicence" IS 'Drilled in production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbMultilateral
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbMultilateral" IS 'Multilateral'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbMaxInclation
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbMaxInclation" IS 'Maximum inclination [°]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbReclassFromWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbReclassFromWellbore" IS 'Reclassified from wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDiscoveryWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDiscoveryWellbore" IS 'Discovery wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbPurpose
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbPurpose" IS 'Purpose'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbReentry
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbReentry" IS 'Reentry'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEwDesDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEwDesDeg" IS 'EW decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbMainArea
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbMainArea" IS 'Main area'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbSeismicLocation
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbSeismicLocation" IS 'Seismic location'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbAgeAtTd
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbAgeAtTd" IS 'Oldest penetrated age'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDrillingFacility
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDrillingFacility" IS 'Drilling facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDrillingOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDrillingOperator" IS 'Drilling operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbWdssQcDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbWdssQcDate" IS 'WDSS QC date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbBottomHoleTemperature
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbBottomHoleTemperature" IS 'Bottom hole temperature [°C]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbLicensingActivity
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbLicensingActivity" IS 'Licensing activity awarded in'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbReentryExplorationActivity
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbReentryExplorationActivity" IS 'Reentry activity'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbKellyBushElevation
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbKellyBushElevation" IS 'Kelly bushing elevation [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDiskosWellboreParent
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDiskosWellboreParent" IS 'DISKOS Wellbore Parent'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbCompletionYear
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbCompletionYear" IS 'Completion year'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNpdidWellboreReclass
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNpdidWellboreReclass" IS 'NPDID wellbore reclassified from'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEwDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEwDeg" IS 'EW degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEwCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEwCode" IS 'EW code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFormationWithHc1
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFormationWithHc1" IS '1st level with HC, formation'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbField
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbField" IS 'Field'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFormationWithHc2
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFormationWithHc2" IS '2nd level with HC, formation'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFormationWithHc3
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFormationWithHc3" IS '3rd level with HC, formation'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbPurposePlanned
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbPurposePlanned" IS 'Purpose - planned'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNsDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNsDeg" IS 'NS degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDiskosWellboreType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDiskosWellboreType" IS 'DISKOS Well Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNsCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNsCode" IS 'NS code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbPlotSymbol
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbPlotSymbol" IS 'Plot symbol'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbGeodeticDatum
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbGeodeticDatum" IS 'Geodetic datum'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbFactPageUrl
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbFactPageUrl" IS 'FactPage url'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDrillPermit
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDrillPermit" IS 'Drill permit'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbDrillingDays
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbDrillingDays" IS 'Drilling days'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbTotalDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbTotalDepth" IS 'Total depth (MD) [m RKB]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbEwUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbEwUtm" IS 'EW UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbWellType
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbWellType" IS 'Type'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".fclNpdidFacilityDrilling
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."fclNpdidFacilityDrilling" IS 'NPDID drilling facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbWaterDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbWaterDepth" IS 'Water depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".fldNpdidField
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."fldNpdidField" IS 'NPDID field'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNsUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNsUtm" IS 'NS UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbAgeWithHc1
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbAgeWithHc1" IS '1st level with HC, age'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbStatus
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbStatus" IS 'Status'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_exploration_all".wlbAgeWithHc2
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_exploration_all"."wlbAgeWithHc2" IS '2nd level with HC, age'
;
-- Approximate Table Size 585
--#SET :TABLE:npd_no_spatial_10:wellbore_shallow_all
CREATE  TABLE "npd_no_spatial_10"."wellbore_shallow_all"
(
"wlbWellboreName" VARCHAR(40)  NOT NULL ,
"wlbNpdidWellbore" INT  NOT NULL ,
"wlbWell" VARCHAR(40)  NOT NULL ,
"wlbDrillingOperator" VARCHAR(60)  NOT NULL ,
"wlbProductionLicence" VARCHAR(40)  ,
"wlbDrillingFacility" VARCHAR(50)  ,
"wlbEntryDate" DATE  ,
"wlbCompletionDate" DATE  ,
"wlbDrillPermit" VARCHAR(10)  NOT NULL ,
"wlbTotalDepth" DECIMAL(13,6)  NOT NULL ,
"wlbWaterDepth" DECIMAL(13,6)  NOT NULL ,
"wlbMainArea" VARCHAR(40)  NOT NULL ,
"wlbEntryYear" INT  NOT NULL ,
"wlbCompletionYear" INT  NOT NULL ,
"wlbSeismicLocation" VARCHAR(200)  ,
"wlbGeodeticDatum" VARCHAR(6)  ,
"wlbNsDeg" INT  NOT NULL ,
"wlbNsMin" INT  NOT NULL ,
"wlbNsSec" DECIMAL(6,2)  NOT NULL ,
"wlbNsCode" VARCHAR(1)  ,
"wlbEwDeg" INT  NOT NULL ,
"wlbEwMin" INT  NOT NULL ,
"wlbEwSec" DECIMAL(6,2)  NOT NULL ,
"wlbEwCode" VARCHAR(1)  ,
"wlbNsDecDeg" DECIMAL(13,6)  NOT NULL ,
"wlbEwDesDeg" DECIMAL(13,6)  NOT NULL ,
"wlbNsUtm" DECIMAL(13,6)  NOT NULL ,
"wlbEwUtm" DECIMAL(13,6)  NOT NULL ,
"wlbUtmZone" INT  NOT NULL ,
"wlbNamePart1" INT  NOT NULL ,
"wlbNamePart2" INT  NOT NULL ,
"wlbNamePart3" VARCHAR(1)  NOT NULL ,
"wlbNamePart4" INT  NOT NULL ,
"wlbNamePart5" VARCHAR(2)  ,
"wlbNamePart6" VARCHAR(2)  ,
"wlbDateUpdated" DATE  NOT NULL ,
"wlbDateUpdatedMax" DATE  NOT NULL ,
"dateSyncNPD" DATE  NOT NULL 
)
;

--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbDateUpdated
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbDateUpdated" IS 'Date main level updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbDateUpdatedMax
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbDateUpdatedMax" IS 'Date all updated'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbWellboreName
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbWellboreName" IS 'Wellbore name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbCompletionYear
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbCompletionYear" IS 'Completion year'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEwDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEwDeg" IS 'EW degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEwCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEwCode" IS 'EW code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbUtmZone
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbUtmZone" IS 'UTM zone'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEwSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEwSec" IS 'EW seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEntryDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEntryDate" IS 'Entry date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEwMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEwMin" IS 'EW minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNsDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNsDeg" IS 'NS degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNsDecDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNsDecDeg" IS 'NS decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbWell
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbWell" IS 'Well name'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNsSec
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNsSec" IS 'NS seconds'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNsCode
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNsCode" IS 'NS code'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNsMin
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNsMin" IS 'NS minutes'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEntryYear
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEntryYear" IS 'Entry year'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNamePart1
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNamePart1" IS 'Wellbore name, part 1'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbGeodeticDatum
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbGeodeticDatum" IS 'Geodetic datum'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNamePart2
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNamePart2" IS 'Wellbore name, part 2'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNamePart3
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNamePart3" IS 'Wellbore name, part 3'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNamePart4
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNamePart4" IS 'Wellbore name, part 4'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbDrillPermit
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbDrillPermit" IS 'Drill permit'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNamePart5
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNamePart5" IS 'Wellbore name, part 5'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNamePart6
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNamePart6" IS 'Wellbore name, part 6'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbProductionLicence
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbProductionLicence" IS 'Drilled in production licence'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbTotalDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbTotalDepth" IS 'Total depth (MD) [m RKB]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEwUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEwUtm" IS 'EW UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbEwDesDeg
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbEwDesDeg" IS 'EW decimal degrees'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbMainArea
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbMainArea" IS 'Main area'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbSeismicLocation
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbSeismicLocation" IS 'Seismic location'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbCompletionDate
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbCompletionDate" IS 'Completion date'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbDrillingFacility
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbDrillingFacility" IS 'Drilling facility'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbDrillingOperator
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbDrillingOperator" IS 'Drilling operator'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbWaterDepth
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbWaterDepth" IS 'Water depth [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNsUtm
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNsUtm" IS 'NS UTM [m]'
;
--#SET: COMMENT:"npd_no_spatial_10":"wellbore_shallow_all".wlbNpdidWellbore
COMMENT ON COLUMN "npd_no_spatial_10"."wellbore_shallow_all"."wlbNpdidWellbore" IS 'NPDID wellbore'
;
