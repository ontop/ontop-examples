CREATE TABLE "apaAreaGross" (
    "apaMap_no" integer NOT NULL,
    "apaAreaGeometry_KML_WGS84" varchar(400) NOT NULL,
    "apaAreaGross_id" BIGINT  NOT NULL,
    PRIMARY KEY ("apaAreaGross_id")
);

CREATE TABLE "apaAreaNet" (
    "blkId" integer NOT NULL,
    "blkLabel" varchar(40) NOT NULL,
    "qdrName" varchar(40) NOT NULL,
    "blkName" varchar(40) NOT NULL,
    "prvName" varchar(2) NOT NULL,
    "apaAreaType" varchar(40) DEFAULT NULL,
    "urlNPD" varchar(200) NOT NULL,
    "apaAreaNet_id" BIGINT  NOT NULL,
    PRIMARY KEY ("apaAreaNet_id","qdrName","blkName","prvName","blkId"),
    UNIQUE ("apaAreaNet_id")
);

CREATE TABLE "baaArea" (
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "baaNpdidBsnsArrAreaPoly" integer NOT NULL,
    "baaName" varchar(40) NOT NULL,
    "baaKind" varchar(40) NOT NULL,
    "baaAreaPolyDateValidFrom" date NOT NULL,
    "baaAreaPolyDateValidTo" date DEFAULT NULL,
    "baaAreaPolyActive" varchar(40) NOT NULL,
    "baaDateApproved" date NOT NULL,
    "baaDateValidFrom" date NOT NULL,
    "baaDateValidTo" date DEFAULT NULL,
    "baaActive" varchar(20) NOT NULL,
    "baaFactPageUrl" varchar(200) NOT NULL,
    "baaFactMapUrl" varchar(200) DEFAULT NULL,
    PRIMARY KEY ("baaNpdidBsnsArrArea","baaNpdidBsnsArrAreaPoly")
);

CREATE TABLE "bsns_arr_area" (
    "baaName" varchar(40) NOT NULL,
    "baaKind" varchar(40) NOT NULL,
    "baaDateApproved" date NOT NULL,
    "baaDateValidFrom" date NOT NULL,
    "baaDateValidTo" date DEFAULT NULL,
    "baaFactPageUrl" varchar(200) NOT NULL,
    "baaFactMapUrl" varchar(200) DEFAULT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "baaDateUpdated" date DEFAULT NULL,
    "baaDateUpdatedMax" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("baaNpdidBsnsArrArea"),
    UNIQUE ("baaName")
);

CREATE TABLE "bsns_arr_area_area_poly_hst" (
    "baaName" varchar(40) NOT NULL,
    "baaAreaPolyDateValidFrom" date NOT NULL,
    "baaAreaPolyDateValidTo" date NOT NULL,
    "baaAreaPolyNationCode2" varchar(2) NOT NULL,
    "baaAreaPolyBlockName" varchar(40) DEFAULT '' NOT NULL,
    "baaAreaPolyNo" integer NOT NULL,
    "baaAreaPolyArea" decimal(13,6) NOT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "baaAreaPolyDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("baaNpdidBsnsArrArea","baaAreaPolyBlockName","baaAreaPolyNo","baaAreaPolyDateValidFrom","baaAreaPolyDateValidTo")
);

CREATE TABLE "bsns_arr_area_licensee_hst" (
    "baaName" varchar(40) NOT NULL,
    "baaLicenseeDateValidFrom" date NOT NULL,
    "baaLicenseeDateValidTo" date NOT NULL ,
    "cmpLongName" varchar(200) NOT NULL,
    "baaLicenseeInterest" decimal(13,6) NOT NULL,
    "baaLicenseeSdfi" decimal(13,6) DEFAULT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "baaLicenseeDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("baaNpdidBsnsArrArea","cmpNpdidCompany","baaLicenseeDateValidFrom","baaLicenseeDateValidTo")
);

CREATE TABLE "bsns_arr_area_operator" (
    "baaName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "baaOperatorDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("baaNpdidBsnsArrArea")
);

CREATE TABLE "bsns_arr_area_transfer_hst" (
    "baaName" varchar(40) NOT NULL,
    "baaTransferDateValidFrom" date NOT NULL,
    "baaTransferDirection" varchar(4) NOT NULL,
    "baaTransferKind" varchar(40) DEFAULT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "baaTransferredInterest" decimal(13,6) NOT NULL,
    "baaTransferSdfi" decimal(13,6) DEFAULT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "baaTransferDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("baaNpdidBsnsArrArea","baaTransferDirection","cmpNpdidCompany","baaTransferDateValidFrom")
);

CREATE TABLE "company" (
    "cmpLongName" varchar(200) NOT NULL,
    "cmpOrgNumberBrReg" varchar(100) DEFAULT NULL,
    "cmpGroup" varchar(100) DEFAULT NULL,
    "cmpShortName" varchar(40) NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "cmpLicenceOperCurrent" varchar(1) NOT NULL,
    "cmpLicenceOperFormer" varchar(1) NOT NULL,
    "cmpLicenceLicenseeCurrent" varchar(1) NOT NULL,
    "cmpLicenceLicenseeFormer" varchar(1) NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("cmpNpdidCompany"),
    UNIQUE ("cmpLongName"),
    UNIQUE ("cmpShortName")
);

CREATE TABLE "company_reserves" (
    "cmpLongName" varchar(200) NOT NULL,
    "fldName" varchar(40) NOT NULL,
    "cmpRecoverableOil" decimal(13,6) NOT NULL,
    "cmpRecoverableGas" decimal(13,6) NOT NULL,
    "cmpRecoverableNGL" decimal(13,6) NOT NULL,
    "cmpRecoverableCondensate" decimal(13,6) NOT NULL,
    "cmpRecoverableOE" decimal(13,6) NOT NULL,
    "cmpRemainingOil" decimal(13,6) NOT NULL,
    "cmpRemainingGas" decimal(13,6) NOT NULL,
    "cmpRemainingNGL" decimal(13,6) NOT NULL,
    "cmpRemainingCondensate" decimal(13,6) NOT NULL,
    "cmpRemainingOE" decimal(13,6) NOT NULL,
    "cmpDateOffResEstDisplay" date NOT NULL,
    "cmpShare" decimal(13,6) NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("cmpNpdidCompany","fldNpdidField")
);

CREATE TABLE "discovery" (
    "dscName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) DEFAULT NULL,
    "dscCurrentActivityStatus" varchar(40) NOT NULL,
    "dscHcType" varchar(40) DEFAULT NULL,
    "wlbName" varchar(60) DEFAULT NULL,
    "nmaName" varchar(40) DEFAULT NULL,
    "fldName" varchar(40) DEFAULT NULL,
    "dscDateFromInclInField" date DEFAULT NULL,
    "dscDiscoveryYear" integer NOT NULL,
    "dscResInclInDiscoveryName" varchar(40) DEFAULT NULL,
    "dscOwnerKind" varchar(40) DEFAULT NULL,
    "dscOwnerName" varchar(40) DEFAULT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "fldNpdidField" integer DEFAULT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dscFactPageUrl" varchar(200) NOT NULL,
    "dscFactMapUrl" varchar(200) NOT NULL,
    "dscDateUpdated" date DEFAULT NULL,
    "dscDateUpdatedMax" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("dscNpdidDiscovery")
);

CREATE TABLE "discovery_reserves" (
    "dscName" varchar(40) NOT NULL,
    "dscReservesRC" varchar(40) NOT NULL,
    "dscRecoverableOil" decimal(13,6) NOT NULL,
    "dscRecoverableGas" decimal(13,6) NOT NULL,
    "dscRecoverableNGL" decimal(13,6) NOT NULL,
    "dscRecoverableCondensate" decimal(13,6) NOT NULL,
    "dscDateOffResEstDisplay" date NOT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "dscReservesDateUpdated" date NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("dscNpdidDiscovery","dscReservesRC")
);

CREATE TABLE "dscArea" (
    "fldNpdidField" integer DEFAULT NULL,
    "fldName" varchar(40) DEFAULT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "dscName" varchar(40) NOT NULL,
    "dscResInclInDiscoveryName" varchar(40) DEFAULT NULL,
    "dscNpdidResInclInDiscovery" integer DEFAULT NULL,
    "dscIncludedInFld" varchar(3) NOT NULL,
    "dscHcType" varchar(40) NOT NULL,
    "fldHcType" varchar(40) DEFAULT NULL,
    "dscCurrentActivityStatus" varchar(40) NOT NULL,
    "fldCurrentActivityStatus" varchar(40) DEFAULT NULL,
    "flddscLabel" varchar(40) NOT NULL,
    "dscFactUrl" varchar(200) NOT NULL,
    "fldFactUrl" varchar(200) DEFAULT NULL,
    PRIMARY KEY ("dscNpdidDiscovery","dscHcType")
);

CREATE TABLE "facility_fixed" (
    "fclName" varchar(40) NOT NULL,
    "fclPhase" varchar(40) NOT NULL,
    "fclSurface" varchar(1) NOT NULL,
    "fclCurrentOperatorName" varchar(100) DEFAULT NULL,
    "fclKind" varchar(40) NOT NULL,
    "fclBelongsToName" varchar(41) DEFAULT NULL,
    "fclBelongsToKind" varchar(40) DEFAULT NULL,
    "fclBelongsToS" integer DEFAULT NULL,
    "fclStartupDate" date DEFAULT NULL,
    "fclGeodeticDatum" varchar(10) DEFAULT NULL,
    "fclNsDeg" integer DEFAULT NULL,
    "fclNsMin" integer DEFAULT NULL,
    "fclNsSec" decimal(13,6) DEFAULT NULL,
    "fclNsCode" varchar(1) NOT NULL,
    "fclEwDeg" integer DEFAULT NULL,
    "fclEwMin" integer DEFAULT NULL,
    "fclEwSec" decimal(13,6) DEFAULT NULL,
    "fclEwCode" varchar(1) NOT NULL,
    "fclWaterDepth" decimal(13,6) NOT NULL,
    "fclFunctions" varchar(400) DEFAULT NULL,
    "fclDesignLifetime" integer DEFAULT NULL,
    "fclFactPageUrl" varchar(200) NOT NULL,
    "fclFactMapUrl" varchar(200) NOT NULL,
    "fclNpdidFacility" integer NOT NULL,
    "fclDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fclNpdidFacility")
);

CREATE TABLE "facility_moveable" (
    "fclName" varchar(40) NOT NULL,
    "fclCurrentRespCompanyName" varchar(100) DEFAULT NULL,
    "fclKind" varchar(40) NOT NULL,
    "fclFunctions" varchar(400) DEFAULT NULL,
    "fclNationName" varchar(40) NOT NULL,
    "fclFactPageUrl" varchar(200) NOT NULL,
    "fclNpdidFacility" integer NOT NULL,
    "fclNpdidCurrentRespCompany" integer DEFAULT NULL,
    "fclDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fclNpdidFacility")
);

CREATE TABLE "fclPoint" (
    "fclNpdidFacility" integer NOT NULL,
    "fclSurface" varchar(1) NOT NULL,
    "fclCurrentOperatorName" varchar(100) DEFAULT NULL,
    "fclName" varchar(40) NOT NULL,
    "fclKind" varchar(40) NOT NULL,
    "fclBelongsToName" varchar(41) DEFAULT NULL,
    "fclBelongsToKind" varchar(40) DEFAULT NULL,
    "fclBelongsToS" integer DEFAULT NULL,
    "fclStartupDate" date NOT NULL,
    "fclWaterDepth" decimal(13,6) NOT NULL,
    "fclFunctions" varchar(400) DEFAULT NULL,
    "fclDesignLifetime" integer NOT NULL,
    "fclFactPageUrl" varchar(200) NOT NULL,
    "fclFactMapUrl" varchar(200) NOT NULL,
    PRIMARY KEY ("fclNpdidFacility")
);

CREATE TABLE "field" (
    "fldName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) DEFAULT NULL,
    "fldCurrentActivitySatus" varchar(40) NOT NULL,
    "wlbName" varchar(60) DEFAULT NULL,
    "wlbCompletionDate" date DEFAULT NULL,
    "fldOwnerKind" varchar(40) DEFAULT NULL,
    "fldOwnerName" varchar(40) DEFAULT NULL,
    "fldNpdidOwner" integer DEFAULT NULL,
    "fldNpdidField" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "cmpNpdidCompany" integer DEFAULT NULL,
    "fldFactPageUrl" varchar(200) NOT NULL,
    "fldFactMapUrl" varchar(200) NOT NULL,
    "fldDateUpdated" date DEFAULT NULL,
    "fldDateUpdatedMax" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fldNpdidField")
);

CREATE TABLE "field_activity_status_hst" (
    "fldName" varchar(40) NOT NULL,
    "fldStatusFromDate" date NOT NULL,
    "fldStatusToDate" date NOT NULL,
    "fldStatus" varchar(40) NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "fldStatusDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fldNpdidField","fldStatus","fldStatusFromDate","fldStatusToDate")
);

CREATE TABLE "field_description" (
    "fldName" varchar(40) NOT NULL,
    "fldDescriptionHeading" varchar(255) NOT NULL,
    "fldDescriptionText" varchar(400) NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "fldDescriptionDateUpdated" date NOT NULL,
    PRIMARY KEY ("fldNpdidField","fldDescriptionHeading")
);

CREATE TABLE "field_investment_yearly" (
    "prfInformationCarrier" varchar(40) NOT NULL,
    "prfYear" integer NOT NULL,
    "prfInvestmentsMillNOK" decimal(13,6) NOT NULL,
    "prfNpdidInformationCarrier" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prfNpdidInformationCarrier","prfYear")
);

CREATE TABLE "field_licensee_hst" (
    "fldName" varchar(40) NOT NULL,
    "fldOwnerName" varchar(40) NOT NULL,
    "fldOwnerKind" varchar(40) NOT NULL,
    "fldOwnerFrom" date NOT NULL,
    "fldOwnerTo" date DEFAULT NULL,
    "fldLicenseeFrom" date NOT NULL,
    "fldLicenseeTo" date NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "fldCompanyShare" decimal(13,6) NOT NULL,
    "fldSdfiShare" decimal(13,6) DEFAULT NULL,
    "fldNpdidField" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "fldLicenseeDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fldNpdidField","cmpNpdidCompany","fldLicenseeFrom","fldLicenseeTo")
);

CREATE TABLE "field_operator_hst" (
    "fldName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "fldOperatorFrom" date NOT NULL,
    "fldOperatorTo" date NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "fldOperatorDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fldNpdidField","cmpNpdidCompany","fldOperatorFrom","fldOperatorTo")
);

CREATE TABLE "field_owner_hst" (
    "fldName" varchar(40) NOT NULL,
    "fldOwnerKind" varchar(40) NOT NULL,
    "fldOwnerName" varchar(40) NOT NULL,
    "fldOwnershipFromDate" date NOT NULL,
    "fldOwnershipToDate" date NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "fldNpdidOwner" integer NOT NULL,
    "fldOwnerDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fldNpdidField","fldNpdidOwner","fldOwnershipFromDate","fldOwnershipToDate")
);

CREATE TABLE "field_production_monthly" (
    "prfInformationCarrier" varchar(40) NOT NULL,
    "prfYear" integer NOT NULL,
    "prfMonth" integer NOT NULL,
    "prfPrdOilNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdGasNetBillSm3" decimal(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdPWInFieldMillSm3" decimal(13,6) NOT NULL,
    "prfNpdidInformationCarrier" integer NOT NULL,
    PRIMARY KEY ("prfNpdidInformationCarrier","prfYear","prfMonth")
);

CREATE TABLE "f_prod_totalt_NCS_month" (
    "prfYear" integer NOT NULL,
    "prfMonth" integer NOT NULL,
    "prfPrdOilNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdGasNetBillSm3" decimal(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdPWInFieldMillSm3" decimal(13,6) NOT NULL,
    PRIMARY KEY ("prfYear","prfMonth")
);

CREATE TABLE "f_prod_totalt_NCS_year" (
    "prfYear" integer NOT NULL,
    "prfPrdOilNetMillSm" decimal(13,6) NOT NULL,
    "prfPrdGasNetBillSm" decimal(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdPWInFieldMillSm3" decimal(13,6) NOT NULL,
    PRIMARY KEY ("prfYear")
);

CREATE TABLE "field_production_yearly" (
    "prfInformationCarrier" varchar(40) NOT NULL,
    "prfYear" integer NOT NULL,
    "prfPrdOilNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdGasNetBillSm3" decimal(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" decimal(13,6) NOT NULL,
    "prfPrdPWInFieldMillSm3" decimal(13,6) NOT NULL,
    "prfNpdidInformationCarrier" integer NOT NULL,
    PRIMARY KEY ("prfNpdidInformationCarrier","prfYear")
);

CREATE TABLE "field_reserves" (
    "fldName" varchar(40) NOT NULL,
    "fldRecoverableOil" decimal(13,6) NOT NULL,
    "fldRecoverableGas" decimal(13,6) NOT NULL,
    "fldRecoverableNGL" decimal(13,6) NOT NULL,
    "fldRecoverableCondensate" decimal(13,6) NOT NULL,
    "fldRecoverableOE" decimal(13,6) NOT NULL,
    "fldRemainingOil" decimal(13,6) NOT NULL,
    "fldRemainingGas" decimal(13,6) NOT NULL,
    "fldRemainingNGL" decimal(13,6) NOT NULL,
    "fldRemainingCondensate" decimal(13,6) NOT NULL,
    "fldRemainingOE" decimal(13,6) NOT NULL,
    "fldDateOffResEstDisplay" date NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("fldNpdidField")
);

CREATE TABLE "fldArea" (
    "fldNpdidField" integer NOT NULL,
    "fldName" varchar(40) NOT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "dscName" varchar(40) NOT NULL,
    "dscResInclInDiscoveryName" varchar(40) DEFAULT NULL,
    "dscNpdidResInclInDiscovery" integer DEFAULT NULL,
    "dscIncludedInFld" varchar(3) NOT NULL,
    "dscHcType" varchar(40) NOT NULL,
    "fldHcType" varchar(40) NOT NULL,
    "dscCurrentActivityStatus" varchar(40) NOT NULL,
    "fldCurrentActivityStatus" varchar(40) NOT NULL,
    "flddscLabel" varchar(40) NOT NULL,
    "dscFactUrl" varchar(200) NOT NULL,
    "fldFactUrl" varchar(200) NOT NULL,
    PRIMARY KEY ("dscNpdidDiscovery","dscHcType")
);

CREATE TABLE "licence" (
    "prlName" varchar(50) NOT NULL,
    "prlLicensingActivityName" varchar(40) NOT NULL,
    "prlMainArea" varchar(40) DEFAULT NULL,
    "prlStatus" varchar(40) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlOriginalArea" decimal(13,6) NOT NULL,
    "prlCurrentArea" varchar(20) NOT NULL,
    "prlPhaseCurrent" varchar(40) DEFAULT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlFactPageUrl" varchar(200) NOT NULL,
    "prlFactMapUrl" varchar(200) DEFAULT NULL,
    "prlDateUpdated" date DEFAULT NULL,
    "prlDateUpdatedMax" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence"),
    UNIQUE ("prlName")
);

CREATE TABLE "licence_area_poly_hst" (
    "prlName" varchar(50) NOT NULL,
    "prlAreaPolyDateValidFrom" date NOT NULL,
    "prlAreaPolyDateValidTo" date NOT NULL,
    "prlAreaPolyNationCode" varchar(2) NOT NULL,
    "prlAreaPolyBlockName" varchar(40) NOT NULL,
    "prlAreaPolyStratigraphical" varchar(4) NOT NULL,
    "prlAreaPolyPolyNo" integer NOT NULL,
    "prlAreaPolyPolyArea" decimal(13,6) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlAreaDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","prlAreaPolyBlockName","prlAreaPolyPolyNo","prlAreaPolyDateValidFrom","prlAreaPolyDateValidTo")
);

CREATE TABLE "licence_licensee_hst" (
    "prlName" varchar(50) NOT NULL,
    "prlLicenseeDateValidFrom" date NOT NULL,
    "prlLicenseeDateValidTo" date NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "prlLicenseeInterest" decimal(13,6) NOT NULL,
    "prlLicenseeSdfi" decimal(13,6) DEFAULT NULL,
    "prlOperDateValidFrom" date DEFAULT NULL,
    "prlOperDateValidTo" date DEFAULT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "prlLicenseeDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","cmpNpdidCompany","prlLicenseeDateValidFrom","prlLicenseeDateValidTo")
);

CREATE TABLE "licence_oper_hst" (
    "prlName" varchar(50) NOT NULL,
    "prlOperDateValidFrom" date NOT NULL,
    "prlOperDateValidTo" date NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "prlOperDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","cmpNpdidCompany","prlOperDateValidFrom","prlOperDateValidTo")
);

CREATE TABLE "licence_petreg_licence" (
    "ptlName" varchar(40) NOT NULL,
    "ptlDateAwarded" date NOT NULL,
    "ptlDateValidFrom" date NOT NULL,
    "ptlDateValidTo" date NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "ptlDateUpdated" date DEFAULT NULL,
    "ptlDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence")
);

CREATE TABLE "lic_pet_lic_licencee" (
    "ptlName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "ptlLicenseeInterest" decimal(13,6) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlLicenseeDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","cmpNpdidCompany")
);

CREATE TABLE "licence_petreg_licence_oper" (
    "ptlName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlOperDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence")
);

CREATE TABLE "licence_petreg_message" (
    "prlName" varchar(50) NOT NULL,
    "ptlMessageDocumentNo" integer NOT NULL,
    "ptlMessage" varchar(450) NOT NULL,
    "ptlMessageRegisteredDate" date NOT NULL,
    "ptlMessageKindDesc" varchar(100) NOT NULL,
    "ptlMessageDateUpdated" date DEFAULT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","ptlMessageDocumentNo")
);

CREATE TABLE "licence_phase_hst" (
    "prlName" varchar(50) NOT NULL,
    "prlDatePhaseValidFrom" date NOT NULL,
    "prlDatePhaseValidTo" date NOT NULL,
    "prlPhase" varchar(40) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlDateInitialPeriodExpires" date NOT NULL,
    "prlActiveStatusIndicator" varchar(40) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlPhaseDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","prlPhase","prlDatePhaseValidFrom","prlDatePhaseValidTo")
);

CREATE TABLE "licence_task" (
    "prlName" varchar(50) NOT NULL,
    "prlTaskName" varchar(42) NOT NULL,
    "prlTaskTypeNo" varchar(100) NOT NULL,
    "prlTaskTypeEn" varchar(200) NOT NULL,
    "prlTaskStatusNo" varchar(100) NOT NULL,
    "prlTaskStatusEn" varchar(40) NOT NULL,
    "prlTaskExpiryDate" date NOT NULL,
    "wlbName" varchar(60) DEFAULT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlLicensingActivityName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) DEFAULT NULL,
    "cmpNpdidCompany" integer DEFAULT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlTaskID" integer NOT NULL,
    "prlTaskRefID" integer DEFAULT NULL,
    "prlTaskDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","prlTaskID"),
    UNIQUE ("prlTaskID")
);

CREATE TABLE "licence_transfer_hst" (
    "prlName" varchar(50) NOT NULL,
    "prlTransferDateValidFrom" date NOT NULL,
    "prlTransferDirection" varchar(4) NOT NULL,
    "prlTransferKind" varchar(40) DEFAULT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "prlTransferredInterest" decimal(13,6) NOT NULL,
    "prlTransferSdfi" decimal(13,6) DEFAULT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "prlTransferDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","prlTransferDirection","cmpNpdidCompany","prlTransferDateValidFrom")
);

CREATE TABLE "pipLine" (
    "pipNpdidPipe" integer NOT NULL,
    "pipNpdidFromFacility" integer NOT NULL,
    "pipNpdidToFacility" integer NOT NULL,
    "pipNpdidOperator" integer DEFAULT NULL,
    "pipName" varchar(50) NOT NULL,
    "pipNameFromFacility" varchar(50) NOT NULL,
    "pipNameToFacility" varchar(50) NOT NULL,
    "pipNameCurrentOperator" varchar(100) DEFAULT NULL,
    "pipCurrentPhase" varchar(40) NOT NULL,
    "pipMedium" varchar(20) NOT NULL,
    "pipMainGrouping" varchar(20) NOT NULL,
    "pipDimension" decimal(13,6) NOT NULL,
    PRIMARY KEY ("pipNpdidPipe")
);

CREATE TABLE "prlArea" (
    "prlName" varchar(50) NOT NULL,
    "prlActive" varchar(20) NOT NULL,
    "prlCurrentArea" varchar(20) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlAreaPolyDateValidFrom" date NOT NULL,
    "prlAreaPolyDateValidTo" date NOT NULL,
    "prlAreaPolyFromZvalue" integer NOT NULL,
    "prlAreaPolyToZvalue" integer NOT NULL,
    "prlAreaPolyVertLimEn" varchar(400) ,
    "prlAreaPolyVertLimNo" varchar(400) ,
    "prlStratigraphical" varchar(3) NOT NULL,
    "prlAreaPolyStratigraphical" varchar(4) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlLastOperatorNameShort" varchar(40) NOT NULL,
    "prlLastOperatorNameLong" varchar(200) NOT NULL,
    "prlLicensingActivityName" varchar(40) NOT NULL,
    "prlLastOperatorNpdidCompany" integer NOT NULL,
    "prlFactUrl" varchar(200) NOT NULL,
    "prlArea_id" BIGINT  NOT NULL,
    PRIMARY KEY ("prlArea_id","prlNpdidLicence","prlAreaPolyDateValidFrom","prlAreaPolyDateValidTo"),
    UNIQUE ("prlArea_id")
);

CREATE TABLE "prlAreaSplitByBlock" (
    "prlName" varchar(50) NOT NULL,
    "prlActive" varchar(20) NOT NULL,
    "prlCurrentArea" varchar(20) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlAreaPolyDateValidFrom" date NOT NULL,
    "prlAreaPolyDateValidTo" date NOT NULL,
    "prlAreaPolyPolyNo" integer NOT NULL,
    "prlAreaPolyPolyArea" decimal(13,6) NOT NULL,
    "blcName" varchar(40) NOT NULL,
    "prlAreaPolyFromZvalue" integer NOT NULL,
    "prlAreaPolyToZvalue" integer NOT NULL,
    "prlAreaPolyVertLimEn" varchar(400) ,
    "prlAreaPolyVertLimNo" varchar(400) ,
    "prlStratigraphical" varchar(3) NOT NULL,
    "prlLastOperatorNpdidCompany" integer NOT NULL,
    "prlLastOperatorNameShort" varchar(40) NOT NULL,
    "prlLastOperatorNameLong" varchar(200) NOT NULL,
    "prlLicensingActivityName" varchar(40) NOT NULL,
    "prlFactUrl" varchar(200) NOT NULL,
    "prlAreaPolyStratigraphical" varchar(4) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    PRIMARY KEY ("prlNpdidLicence","blcName","prlAreaPolyPolyNo","prlAreaPolyDateValidFrom","prlAreaPolyDateValidTo")
);

CREATE TABLE "seaArea" (
    "seaSurveyName" varchar(100) NOT NULL,
    "seaNpdidSurvey" integer NOT NULL,
    "seaFactMapUrl" varchar(260) DEFAULT NULL,
    "seaFactPageUrl" varchar(200) DEFAULT NULL,
    "seaStatus" varchar(100) NOT NULL,
    "seaGeographicalArea" varchar(100) NOT NULL,
    "seaMarketAvailable" varchar(20) NOT NULL,
    "seaSurveyTypeMain" varchar(100) NOT NULL,
    "seaSurveyTypePart" varchar(100) DEFAULT NULL,
    "seaCompanyReported" varchar(100) NOT NULL,
    "seaSourceType" varchar(100) DEFAULT NULL,
    "seaSourceNumber" varchar(100) DEFAULT NULL,
    "seaSourceSize" varchar(100) DEFAULT NULL,
    "seaSourcePressure" varchar(100) DEFAULT NULL,
    "seaSensorType" varchar(100) DEFAULT NULL,
    "seaSensorNumbers" varchar(40) DEFAULT NULL,
    "seaSensorLength" varchar(100) DEFAULT NULL,
    "seaPlanFromDate" date NOT NULL,
    "seaDateStarting" date DEFAULT NULL,
    "seaPlanToDate" date NOT NULL,
    "seaDateFinalized" date DEFAULT NULL,
    "seaPlanCdpKm" integer DEFAULT NULL,
    "seaCdpTotalKm" integer DEFAULT NULL,
    "seaPlanBoatKm" integer DEFAULT NULL,
    "seaBoatTotalKm" integer DEFAULT NULL,
    "sea3DKm2" decimal(13,6) DEFAULT NULL,
    "seaPolygonKind" varchar(100) NOT NULL,
    "seaArea_id" BIGINT  NOT NULL,
    PRIMARY KEY ("seaArea_id","seaSurveyName"),
    UNIQUE ("seaArea_id")
);

CREATE TABLE "seaMultiline" (
    "seaSurveyName" varchar(100) NOT NULL,
    "seaFactMapUrl" varchar(260) DEFAULT NULL,
    "seaFactPageUrl" varchar(200) DEFAULT NULL,
    "seaStatus" varchar(100) NOT NULL,
    "seaMarketAvailable" varchar(20) NOT NULL,
    "seaSurveyTypeMain" varchar(100) NOT NULL,
    "seaSurveyTypePart" varchar(100) NOT NULL,
    "seaCompanyReported" varchar(100) NOT NULL,
    "seaSourceType" varchar(100) NOT NULL,
    "seaSourceNumber" varchar(100) DEFAULT NULL,
    "seaSourceSize" varchar(100) DEFAULT NULL,
    "seaSourcePressure" varchar(100) DEFAULT NULL,
    "seaSensorType" varchar(100) NOT NULL,
    "seaSensorNumbers" varchar(40) NOT NULL,
    "seaSensorLength" varchar(100) NOT NULL,
    "seaPlanFromDate" date NOT NULL,
    "seaDateStarting" date DEFAULT NULL,
    "seaPlanToDate" date NOT NULL,
    "seaDateFinalized" date DEFAULT NULL,
    "seaPlanCdpKm" integer NOT NULL,
    "seaCdpTotalKm" integer DEFAULT NULL,
    "seaPlanBoatKm" integer NOT NULL,
    "seaBoatTotalKm" integer DEFAULT NULL,
    PRIMARY KEY ("seaSurveyName")
);

CREATE TABLE "seis_acquisition" (
    "seaName" varchar(100) NOT NULL,
    "seaPlanFromDate" date NOT NULL,
    "seaNpdidSurvey" integer NOT NULL,
    "seaStatus" varchar(100) NOT NULL,
    "seaGeographicalArea" varchar(100) NOT NULL,
    "seaSurveyTypeMain" varchar(100) NOT NULL,
    "seaSurveyTypePart" varchar(100) DEFAULT NULL,
    "seaCompanyReported" varchar(100) NOT NULL,
    "seaPlanToDate" date NOT NULL,
    "seaDateStarting" date DEFAULT NULL,
    "seaDateFinalized" date DEFAULT NULL,
    "seaCdpTotalKm" integer DEFAULT NULL,
    "seaBoatTotalKm" integer DEFAULT NULL,
    "sea3DKm2" decimal(13,6) DEFAULT NULL,
    "seaSampling" varchar(20) DEFAULT NULL,
    "seaShallowDrilling" varchar(20) DEFAULT NULL,
    "seaGeotechnical" varchar(20) DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("seaNpdidSurvey","seaName"),
    UNIQUE ("seaName"),
    UNIQUE ("seaNpdidSurvey")
);

CREATE TABLE "s_a_c_inc_turnarea" (
    "seaSurveyName" varchar(100) NOT NULL,
    "seaNpdidSurvey" integer NOT NULL,
    "seaPolygonPointNumber" integer NOT NULL,
    "seaPolygonNSDeg" integer NOT NULL,
    "seaPolygonNSMin" integer NOT NULL,
    "seaPolygonNSSec" decimal(13,6) NOT NULL,
    "seaPolygonEWDeg" integer NOT NULL,
    "seaPolygonEWMin" integer NOT NULL,
    "seaPolygonEWSec" decimal(13,6) NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("seaSurveyName","seaPolygonPointNumber")
);

CREATE TABLE "seis_acquisition_progress" (
    "seaProgressDate" date NOT NULL,
    "seaProgressText2" varchar(40) NOT NULL,
    "seaProgressText" varchar(400) NOT NULL,
    "seaProgressDescription" varchar(400) ,
    "seaNpdidSurvey" integer NOT NULL,
    "seis_acquisition_progress_id" BIGINT  NOT NULL,
    PRIMARY KEY ("seis_acquisition_progress_id","seaProgressText2"),
    UNIQUE ("seis_acquisition_progress_id")
);

CREATE TABLE "strat_litho_wellbore" (
    "wlbName" varchar(60) NOT NULL,
    "lsuTopDepth" decimal(13,6) NOT NULL,
    "lsuBottomDepth" decimal(13,6) NOT NULL,
    "lsuName" varchar(20) NOT NULL,
    "lsuLevel" varchar(9) NOT NULL,
    "lsuNpdidLithoStrat" integer NOT NULL,
    "wlbCompletionDate" date NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "lsuWellboreUpdatedDate" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore","lsuNpdidLithoStrat","lsuTopDepth","lsuBottomDepth")
);

CREATE TABLE "strat_litho_wellbore_core" (
    "wlbName" varchar(60) NOT NULL,
    "lsuCoreLenght" decimal(13,6) NOT NULL,
    "lsuName" varchar(20) NOT NULL,
    "lsuLevel" varchar(9) NOT NULL,
    "wlbCompletionDate" date NOT NULL,
    "lsuNpdidLithoStrat" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore","lsuNpdidLithoStrat")
);

CREATE TABLE "tuf_operator_hst" (
    "tufName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "tufOperDateValidFrom" date NOT NULL,
    "tufOperDateValidTo" date NOT NULL ,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("tufNpdidTuf","cmpNpdidCompany","tufOperDateValidFrom","tufOperDateValidTo")
);

CREATE TABLE "tuf_owner_hst" (
    "tufName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "tufOwnerDateValidFrom" date NOT NULL,
    "tufOwnerDateValidTo" date NOT NULL ,
    "tufOwnerShare" decimal(13,6) NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("tufNpdidTuf","cmpNpdidCompany","tufOwnerDateValidFrom","tufOwnerDateValidTo")
);

CREATE TABLE "tuf_petreg_licence" (
    "ptlName" varchar(40) NOT NULL,
    "tufName" varchar(40) NOT NULL,
    "ptlDateValidFrom" date NOT NULL,
    "ptlDateValidTo" date NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "ptlDateUpdated" date DEFAULT NULL,
    "ptlDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("tufNpdidTuf")
);

CREATE TABLE "tuf_petreg_licence_licencee" (
    "ptlName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "ptlLicenseeInterest" decimal(13,6) NOT NULL,
    "tufName" varchar(40) NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlLicenseeDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("tufNpdidTuf","cmpNpdidCompany")
);

CREATE TABLE "tuf_petreg_licence_oper" (
    "Textbox42" varchar(20) NOT NULL,
    "Textbox2" varchar(20) NOT NULL,
    "ptlName" varchar(40) NOT NULL,
    "cmpLongName" varchar(200) NOT NULL,
    "tufName" varchar(40) NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlOperDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("tufNpdidTuf")
);

CREATE TABLE "tuf_petreg_message" (
    "ptlName" varchar(40) NOT NULL,
    "ptlMessageDocumentNo" integer NOT NULL,
    "ptlMessage" varchar(450) NOT NULL,
    "ptlMessageRegisteredDate" date NOT NULL,
    "ptlMessageKindDesc" varchar(100) NOT NULL,
    "tufName" varchar(40) NOT NULL,
    "ptlMessageDateUpdated" date DEFAULT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("tufNpdidTuf","ptlMessageDocumentNo")
);

CREATE TABLE "wellbore_casing_and_lot" (
    "wlbName" varchar(60) NOT NULL,
    "wlbCasingType" varchar(10) DEFAULT NULL,
    "wlbCasingDiameter" varchar(6) DEFAULT NULL,
    "wlbCasingDepth" decimal(13,6) NOT NULL,
    "wlbHoleDiameter" varchar(6) DEFAULT NULL,
    "wlbHoleDepth" decimal(13,6) NOT NULL,
    "wlbLotMudDencity" decimal(13,6) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbCasingDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    "wellbore_casing_and_lot_id" BIGINT  NOT NULL,
    PRIMARY KEY ("wellbore_casing_and_lot_id","wlbNpdidWellbore"),
    UNIQUE ("wellbore_casing_and_lot_id")
);

CREATE TABLE "wellbore_coordinates" (
    "wlbWellboreName" varchar(40) NOT NULL,
    "wlbDrillingOperator" varchar(60) NOT NULL,
    "wlbProductionLicence" varchar(40) DEFAULT NULL,
    "wlbWellType" varchar(20) DEFAULT NULL,
    "wlbPurposePlanned" varchar(40) DEFAULT NULL,
    "wlbContent" varchar(40) DEFAULT NULL,
    "wlbEntryDate" date DEFAULT NULL,
    "wlbCompletionDate" date DEFAULT NULL,
    "wlbField" varchar(40) DEFAULT NULL,
    "wlbMainArea" varchar(40) NOT NULL,
    "wlbGeodeticDatum" varchar(6) DEFAULT NULL,
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" decimal(13,6) NOT NULL,
    "wlbNsCode" varchar(1) DEFAULT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" decimal(13,6) NOT NULL,
    "wlbEwCode" varchar(1) DEFAULT NULL,
    "wlbNsDecDeg" decimal(13,6) NOT NULL,
    "wlbEwDesDeg" decimal(13,6) NOT NULL,
    "wlbNsUtm" decimal(13,6) NOT NULL,
    "wlbEwUtm" decimal(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore")
);

CREATE TABLE "wellbore_core" (
    "wlbName" varchar(60) NOT NULL,
    "wlbCoreNumber" integer NOT NULL,
    "wlbCoreIntervalTop" decimal(13,6) DEFAULT NULL,
    "wlbCoreIntervalBottom" decimal(13,6) DEFAULT NULL,
    "wlbCoreIntervalUom" varchar(6) DEFAULT NULL,
    "wlbTotalCoreLength" decimal(13,6) NOT NULL,
    "wlbNumberOfCores" integer NOT NULL,
    "wlbCoreSampleAvailable" varchar(3) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbCoreDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    "wellbore_core_id" BIGINT  NOT NULL,
    PRIMARY KEY ("wellbore_core_id","wlbNpdidWellbore","wlbCoreNumber"),
    UNIQUE ("wellbore_core_id")
);

CREATE TABLE "wellbore_core_photo" (
    "wlbName" varchar(60) NOT NULL,
    "wlbCoreNumber" integer NOT NULL,
    "wlbCorePhotoTitle" varchar(200) NOT NULL,
    "wlbCorePhotoImgUrl" varchar(200) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbCorePhotoDateUpdated" date DEFAULT NULL,
    "wellbore_core_photo_id" BIGINT  NOT NULL,
    PRIMARY KEY ("wellbore_core_photo_id","wlbNpdidWellbore","wlbCoreNumber","wlbCorePhotoTitle"),
    UNIQUE ("wellbore_core_photo_id")
);

CREATE TABLE "wellbore_development_all" (
    "wlbWellboreName" varchar(40) NOT NULL,
    "wlbWell" varchar(40) NOT NULL,
    "wlbDrillingOperator" varchar(60) NOT NULL,
    "wlbDrillingOperatorGroup" varchar(20) NOT NULL,
    "wlbProductionLicence" varchar(40) NOT NULL,
    "wlbPurposePlanned" varchar(40) DEFAULT NULL,
    "wlbContent" varchar(40) DEFAULT NULL,
    "wlbWellType" varchar(20) NOT NULL,
    "wlbEntryDate" date DEFAULT NULL,
    "wlbCompletionDate" date DEFAULT NULL,
    "wlbField" varchar(40) NOT NULL,
    "wlbDrillPermit" varchar(10) NOT NULL,
    "wlbDiscovery" varchar(40) NOT NULL,
    "wlbDiscoveryWellbore" varchar(3) NOT NULL,
    "wlbKellyBushElevation" decimal(13,6) NOT NULL,
    "wlbFinalVerticalDepth" decimal(13,6) DEFAULT NULL,
    "wlbTotalDepth" decimal(13,6) NOT NULL,
    "wlbWaterDepth" decimal(13,6) NOT NULL,
    "wlbMainArea" varchar(40) NOT NULL,
    "wlbDrillingFacility" varchar(50) DEFAULT NULL,
    "wlbFacilityTypeDrilling" varchar(40) DEFAULT NULL,
    "wlbProductionFacility" varchar(50) DEFAULT NULL,
    "wlbLicensingActivity" varchar(40) NOT NULL,
    "wlbMultilateral" varchar(3) NOT NULL,
    "wlbContentPlanned" varchar(40) DEFAULT NULL,
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbReclassFromWellbore" varchar(40) DEFAULT NULL,
    "wlbPlotSymbol" integer NOT NULL,
    "wlbGeodeticDatum" varchar(6) DEFAULT NULL,
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" decimal(13,6) NOT NULL,
    "wlbNsCode" varchar(1) NOT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" decimal(13,6) NOT NULL,
    "wlbEwCode" varchar(1) DEFAULT NULL,
    "wlbNsDecDeg" decimal(13,6) NOT NULL,
    "wlbEwDesDeg" decimal(13,6) NOT NULL,
    "wlbNsUtm" decimal(13,6) NOT NULL,
    "wlbEwUtm" decimal(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" varchar(1) NOT NULL,
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" varchar(2) DEFAULT NULL,
    "wlbNamePart6" varchar(2) DEFAULT NULL,
    "wlbFactPageUrl" varchar(200) NOT NULL,
    "wlbFactMapUrl" varchar(200) NOT NULL,
    "wlbDiskosWellboreType" varchar(20) NOT NULL,
    "wlbDiskosWellboreParent" varchar(40) DEFAULT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "wlbWdssQcdate" date DEFAULT NULL,
    "prlNpdidProductionLicence" integer NOT NULL,
    "fclNpdidFacilityDrilling" integer DEFAULT NULL,
    "fclNpdidFacilityProducing" integer DEFAULT NULL,
    "wlbNpdidWellboreReclass" integer NOT NULL,
    "wlbDiskosWellOperator" varchar(40) NOT NULL,
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore")
);

CREATE TABLE "wellbore_document" (
    "wlbName" varchar(60) NOT NULL,
    "wlbDocumentType" varchar(40) NOT NULL,
    "wlbDocumentName" varchar(200) NOT NULL,
    "wlbDocumentUrl" varchar(200) NOT NULL,
    "wlbDocumentFormat" varchar(40) NOT NULL,
    "wlbDocumentSize" decimal(13,6) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbDocumentDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    "wellbore_document_id" BIGINT  NOT NULL,
    PRIMARY KEY ("wellbore_document_id","wlbNpdidWellbore","wlbDocumentName"),
    UNIQUE ("wellbore_document_id")
);

CREATE TABLE "wellbore_dst" (
    "wlbName" varchar(60) NOT NULL,
    "wlbDstTestNumber" decimal(13,6) NOT NULL,
    "wlbDstFromDepth" decimal(13,6) NOT NULL,
    "wlbDstToDepth" decimal(13,6) NOT NULL,
    "wlbDstChokeSize" decimal(13,6) NOT NULL,
    "wlbDstFinShutInPress" decimal(13,6) NOT NULL,
    "wlbDstFinFlowPress" decimal(13,6) NOT NULL,
    "wlbDstBottomHolePress" decimal(13,6) NOT NULL,
    "wlbDstOilProd" integer NOT NULL,
    "wlbDstGasProd" integer NOT NULL,
    "wlbDstOilDensity" decimal(13,6) NOT NULL,
    "wlbDstGasDensity" decimal(13,6) NOT NULL,
    "wlbDstGasOilRelation" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbDstDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore","wlbDstTestNumber")
);

CREATE TABLE "wellbore_exploration_all" (
    "wlbWellboreName" varchar(40) NOT NULL,
    "wlbWell" varchar(40) NOT NULL,
    "wlbDrillingOperator" varchar(60) NOT NULL,
    "wlbDrillingOperatorGroup" varchar(20) NOT NULL,
    "wlbProductionLicence" varchar(40) NOT NULL,
    "wlbPurpose" varchar(40) NOT NULL,
    "wlbStatus" varchar(40) DEFAULT NULL,
    "wlbContent" varchar(40) DEFAULT NULL,
    "wlbWellType" varchar(20) NOT NULL,
    "wlbEntryDate" date DEFAULT NULL,
    "wlbCompletionDate" date DEFAULT NULL,
    "wlbField" varchar(40) DEFAULT NULL,
    "wlbDrillPermit" varchar(10) NOT NULL,
    "wlbDiscovery" varchar(40) DEFAULT NULL,
    "wlbDiscoveryWellbore" varchar(3) NOT NULL,
    "wlbBottomHoleTemperature" integer DEFAULT NULL,
    "wlbSeismicLocation" varchar(200) DEFAULT NULL,
    "wlbMaxInclation" decimal(13,6) DEFAULT NULL,
    "wlbKellyBushElevation" decimal(13,6) NOT NULL,
    "wlbFinalVerticalDepth" decimal(13,6) DEFAULT NULL,
    "wlbTotalDepth" decimal(13,6) NOT NULL,
    "wlbWaterDepth" decimal(13,6) NOT NULL,
    "wlbAgeAtTd" varchar(40) DEFAULT NULL,
    "wlbFormationAtTd" varchar(40) DEFAULT NULL,
    "wlbMainArea" varchar(40) NOT NULL,
    "wlbDrillingFacility" varchar(50) NOT NULL,
    "wlbFacilityTypeDrilling" varchar(40) NOT NULL,
    "wlbLicensingActivity" varchar(40) NOT NULL,
    "wlbMultilateral" varchar(3) NOT NULL,
    "wlbPurposePlanned" varchar(40) NOT NULL,
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbReclassFromWellbore" varchar(40) DEFAULT NULL,
    "wlbReentryExplorationActivity" varchar(40) DEFAULT NULL,
    "wlbPlotSymbol" integer NOT NULL,
    "wlbFormationWithHc1" varchar(20) DEFAULT NULL,
    "wlbAgeWithHc1" varchar(20) DEFAULT NULL,
    "wlbFormationWithHc2" varchar(20) DEFAULT NULL,
    "wlbAgeWithHc2" varchar(20) DEFAULT NULL,
    "wlbFormationWithHc3" varchar(20) DEFAULT NULL,
    "wlbAgeWithHc3" char(20) DEFAULT NULL,
    "wlbDrillingDays" integer NOT NULL,
    "wlbReentry" varchar(3) NOT NULL,
    "wlbGeodeticDatum" varchar(6) DEFAULT NULL,
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" decimal(13,6) NOT NULL,
    "wlbNsCode" varchar(1) NOT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" decimal(13,6) NOT NULL,
    "wlbEwCode" varchar(1) NOT NULL,
    "wlbNsDecDeg" decimal(13,6) NOT NULL,
    "wlbEwDesDeg" decimal(13,6) NOT NULL,
    "wlbNsUtm" decimal(13,6) NOT NULL,
    "wlbEwUtm" decimal(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" varchar(1) DEFAULT NULL,
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" varchar(2) DEFAULT NULL,
    "wlbNamePart6" varchar(2) DEFAULT NULL,
    "wlbPressReleaseUrl" varchar(200) DEFAULT NULL,
    "wlbFactPageUrl" varchar(200) NOT NULL,
    "wlbFactMapUrl" varchar(200) NOT NULL,
    "wlbDiskosWellboreType" varchar(20) NOT NULL,
    "wlbDiskosWellboreParent" varchar(40) DEFAULT NULL,
    "wlbWdssQcDate" date DEFAULT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dscNpdidDiscovery" integer DEFAULT NULL,
    "fldNpdidField" integer DEFAULT NULL,
    "fclNpdidFacilityDrilling" integer NOT NULL,
    "wlbNpdidWellboreReclass" integer NOT NULL,
    "prlNpdidProductionLicence" integer NOT NULL,
    "wlbDiskosWellOperator" varchar(40) NOT NULL,
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore")
);

CREATE TABLE "wellbore_formation_top" (
    "wlbName" varchar(60) NOT NULL,
    "lsuTopDepth" decimal(13,6) NOT NULL,
    "lsuBottomDepth" decimal(13,6) NOT NULL,
    "lsuName" varchar(20) NOT NULL,
    "lsuLevel" varchar(9) NOT NULL,
    "lsuNameParent" varchar(20) DEFAULT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "lsuNpdidLithoStrat" integer NOT NULL,
    "lsuNpdidLithoStratParent" integer DEFAULT NULL,
    "lsuWellboreUpdatedDate" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore","lsuNpdidLithoStrat","lsuTopDepth","lsuBottomDepth")
);

CREATE TABLE "wellbore_mud" (
    "wlbName" varchar(60) NOT NULL,
    "wlbMD" decimal(13,6) NOT NULL,
    "wlbMudWeightAtMD" decimal(13,6) NOT NULL,
    "wlbMudViscosityAtMD" decimal(13,6) NOT NULL,
    "wlbYieldPointAtMD" decimal(13,6) NOT NULL,
    "wlbMudType" varchar(40) DEFAULT NULL,
    "wlbMudDateMeasured" date DEFAULT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbMudDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    "wellbore_mud_id" BIGINT  NOT NULL,
    PRIMARY KEY ("wellbore_mud_id","wlbNpdidWellbore"),
    UNIQUE ("wellbore_mud_id")
);

CREATE TABLE "wellbore_npdid_overview" (
    "wlbWellboreName" varchar(40) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbWell" varchar(40) NOT NULL,
    "wlbWellType" varchar(20) DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore")
);

CREATE TABLE "wellbore_oil_sample" (
    "wlbName" varchar(60) NOT NULL,
    "wlbOilSampleTestType" varchar(4) DEFAULT NULL,
    "wlbOilSampleTestNumber" varchar(15) DEFAULT NULL,
    "wlbOilSampleTopDepth" decimal(13,6) NOT NULL,
    "wlbOilSampleBottomDepth" decimal(13,6) NOT NULL,
    "wlbOilSampleFluidType" varchar(20) DEFAULT NULL,
    "wlbOilSampleTestDate" date DEFAULT NULL,
    "wlbOilSampledateReceivedDate" date DEFAULT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbOilSampleDateUpdated" date DEFAULT NULL,
    "dateSyncNPD" date NOT NULL,
    "wellbore_oil_sample_id" BIGINT  NOT NULL,
    PRIMARY KEY ("wellbore_oil_sample_id","wlbNpdidWellbore"),
    UNIQUE ("wellbore_oil_sample_id")
);

CREATE TABLE "wellbore_shallow_all" (
    "wlbWellboreName" varchar(40) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbWell" varchar(40) NOT NULL,
    "wlbDrillingOperator" varchar(60) NOT NULL,
    "wlbProductionLicence" varchar(40) DEFAULT NULL,
    "wlbDrillingFacility" varchar(50) DEFAULT NULL,
    "wlbEntryDate" date DEFAULT NULL,
    "wlbCompletionDate" date DEFAULT NULL,
    "wlbDrillPermit" varchar(10) NOT NULL,
    "wlbTotalDepth" decimal(13,6) NOT NULL,
    "wlbWaterDepth" decimal(13,6) NOT NULL,
    "wlbMainArea" varchar(40) NOT NULL,
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbSeismicLocation" varchar(200) DEFAULT NULL,
    "wlbGeodeticDatum" varchar(6) DEFAULT NULL,
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" decimal(13,6) NOT NULL,
    "wlbNsCode" varchar(1) DEFAULT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" decimal(13,6) NOT NULL,
    "wlbEwCode" varchar(1) DEFAULT NULL,
    "wlbNsDecDeg" decimal(13,6) NOT NULL,
    "wlbEwDesDeg" decimal(13,6) NOT NULL,
    "wlbNsUtm" decimal(13,6) NOT NULL,
    "wlbEwUtm" decimal(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" varchar(1) NOT NULL,
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" varchar(2) DEFAULT NULL,
    "wlbNamePart6" varchar(2) DEFAULT NULL,
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore")
);

CREATE TABLE "wlbPoint" (
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbWellName" varchar(40) NOT NULL,
    "wlbWellboreName" varchar(40) NOT NULL,
    "wlbField" varchar(40) DEFAULT NULL,
    "wlbProductionLicence" varchar(40) DEFAULT NULL,
    "wlbWellType" varchar(20) DEFAULT NULL,
    "wlbDrillingOperator" varchar(60) NOT NULL,
    "wlbMultilateral" varchar(3) NOT NULL,
    "wlbDrillingFacility" varchar(50) DEFAULT NULL,
    "wlbProductionFacility" varchar(50) DEFAULT NULL,
    "wlbEntryDate" date DEFAULT NULL,
    "wlbCompletionDate" date DEFAULT NULL,
    "wlbContent" varchar(40) DEFAULT NULL,
    "wlbStatus" varchar(40) DEFAULT NULL,
    "wlbSymbol" integer NOT NULL,
    "wlbPurpose" varchar(40) DEFAULT NULL,
    "wlbWaterDepth" decimal(13,6) NOT NULL,
    "wlbFactPageUrl" varchar(200) DEFAULT NULL,
    "wlbFactMapUrl" varchar(200) DEFAULT NULL,
    "wlbDiscoveryWellbore" varchar(3) NOT NULL,
    PRIMARY KEY ("wlbNpdidWellbore")
);
