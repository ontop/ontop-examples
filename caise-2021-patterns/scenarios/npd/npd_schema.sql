-- MySQL dump 10.11
--
-- Host: mysql.ifi.uio.no    Database: npdfactpages
-- ------------------------------------------------------
-- Server version	5.1.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apaAreaGross`
--

DROP TABLE IF EXISTS `apaAreaGross`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apaAreaGross` (
  `apaMap_no` int(11) NOT NULL,
  `apaAreaGeometryEWKT` multipolygon NOT NULL,
  `apaAreaGeometry_KML_WGS84` text NOT NULL,
  `apaAreaGross_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`apaAreaGross_id`),
  UNIQUE KEY `apaAreaGross_id` (`apaAreaGross_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apaAreaNet`
--

DROP TABLE IF EXISTS `apaAreaNet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apaAreaNet` (
  `blkId` int(11) NOT NULL,
  `blkLabel` varchar(40) NOT NULL,
  `qdrName` varchar(40) NOT NULL,
  `blkName` varchar(40) NOT NULL,
  `prvName` varchar(2) NOT NULL,
  `apaAreaType` varchar(40) DEFAULT NULL,
  `urlNPD` varchar(200) NOT NULL,
  `apaAreaNetGeometryWKT` polygon NOT NULL,
  `apaAreaNet_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`apaAreaNet_id`,`qdrName`,`blkName`,`prvName`,`blkId`),
  UNIQUE KEY `apaAreaNet_id` (`apaAreaNet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baaArea`
--

DROP TABLE IF EXISTS `baaArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baaArea` (
  `baaNpdidBsnsArrArea` int(11) NOT NULL COMMENT 'NPDID Bsns. Arr. Area',
  `baaNpdidBsnsArrAreaPoly` int(11) NOT NULL,
  `baaName` varchar(40) NOT NULL COMMENT 'Name',
  `baaKind` varchar(40) NOT NULL COMMENT 'Kind',
  `baaAreaPolyDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `baaAreaPolyDateValidTo` date DEFAULT NULL COMMENT 'Date valid to',
  `baaAreaPolyActive` varchar(40) NOT NULL,
  `baaDateApproved` date NOT NULL COMMENT 'Date approved',
  `baaDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `baaDateValidTo` date DEFAULT NULL COMMENT 'Date valid to',
  `baaActive` varchar(20) NOT NULL COMMENT 'Active',
  `baaFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `baaFactMapUrl` varchar(200) DEFAULT NULL COMMENT 'Fact map',
  `baaAreaGeometryWKT` multipolygon NOT NULL,
  PRIMARY KEY (`baaNpdidBsnsArrArea`,`baaNpdidBsnsArrAreaPoly`),
  CONSTRAINT `baaArea_ibfk_1` FOREIGN KEY (`baaNpdidBsnsArrArea`) REFERENCES `bsns_arr_area` (`baaNpdidBsnsArrArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bsns_arr_area`
--

DROP TABLE IF EXISTS `bsns_arr_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsns_arr_area` (
  `baaName` varchar(40) NOT NULL COMMENT 'Name',
  `baaKind` varchar(40) NOT NULL COMMENT 'Kind',
  `baaDateApproved` date NOT NULL COMMENT 'Date approved',
  `baaDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `baaDateValidTo` date DEFAULT NULL COMMENT 'Date valid to',
  `baaFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `baaFactMapUrl` varchar(200) DEFAULT NULL COMMENT 'Fact map',
  `baaNpdidBsnsArrArea` int(11) NOT NULL COMMENT 'NPDID Bsns. Arr. Area',
  `baaDateUpdated` date DEFAULT NULL COMMENT 'Date main level updated',
  `baaDateUpdatedMax` date DEFAULT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`baaNpdidBsnsArrArea`),
  UNIQUE KEY `index__bsns_arr_area__baaName` (`baaName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bsns_arr_area_area_poly_hst`
--

DROP TABLE IF EXISTS `bsns_arr_area_area_poly_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsns_arr_area_area_poly_hst` (
  `baaName` varchar(40) NOT NULL COMMENT 'Name',
  `baaAreaPolyDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `baaAreaPolyDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `baaAreaPolyNationCode2` varchar(2) NOT NULL COMMENT 'Nation code',
  `baaAreaPolyBlockName` varchar(40) NOT NULL DEFAULT '' COMMENT 'Block name',
  `baaAreaPolyNo` int(11) NOT NULL,
  `baaAreaPolyArea` decimal(13,6) NOT NULL COMMENT 'Polygon area [km2]',
  `baaNpdidBsnsArrArea` int(11) NOT NULL COMMENT 'NPDID Bsns. Arr. Area',
  `baaAreaPolyDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`baaNpdidBsnsArrArea`,`baaAreaPolyBlockName`,`baaAreaPolyNo`,`baaAreaPolyDateValidFrom`,`baaAreaPolyDateValidTo`),
  CONSTRAINT `bsns_arr_area_area_poly_hst_ibfk_1` FOREIGN KEY (`baaNpdidBsnsArrArea`) REFERENCES `bsns_arr_area` (`baaNpdidBsnsArrArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bsns_arr_area_licensee_hst`
--

DROP TABLE IF EXISTS `bsns_arr_area_licensee_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsns_arr_area_licensee_hst` (
  `baaName` varchar(40) NOT NULL COMMENT 'Name',
  `baaLicenseeDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `baaLicenseeDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `baaLicenseeInterest` decimal(13,6) NOT NULL COMMENT 'Interest [%]',
  `baaLicenseeSdfi` decimal(13,6) DEFAULT NULL COMMENT 'SDFI [%]',
  `baaNpdidBsnsArrArea` int(11) NOT NULL COMMENT 'NPDID Bsns. Arr. Area',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `baaLicenseeDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`baaNpdidBsnsArrArea`,`cmpNpdidCompany`,`baaLicenseeDateValidFrom`,`baaLicenseeDateValidTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `bsns_arr_area_licensee_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `bsns_arr_area_licensee_hst_ibfk_1` FOREIGN KEY (`baaNpdidBsnsArrArea`) REFERENCES `bsns_arr_area` (`baaNpdidBsnsArrArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bsns_arr_area_operator`
--

DROP TABLE IF EXISTS `bsns_arr_area_operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsns_arr_area_operator` (
  `baaName` varchar(40) NOT NULL COMMENT 'Name',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `baaNpdidBsnsArrArea` int(11) NOT NULL COMMENT 'NPDID Bsns. Arr. Area',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `baaOperatorDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`baaNpdidBsnsArrArea`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `bsns_arr_area_operator_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `bsns_arr_area_operator_ibfk_1` FOREIGN KEY (`baaNpdidBsnsArrArea`) REFERENCES `bsns_arr_area` (`baaNpdidBsnsArrArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bsns_arr_area_transfer_hst`
--

DROP TABLE IF EXISTS `bsns_arr_area_transfer_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsns_arr_area_transfer_hst` (
  `baaName` varchar(40) NOT NULL COMMENT 'Name',
  `baaTransferDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `baaTransferDirection` varchar(4) NOT NULL COMMENT 'Transfer direction',
  `baaTransferKind` varchar(40) DEFAULT NULL COMMENT 'Transfer kind',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `baaTransferredInterest` decimal(13,6) NOT NULL COMMENT 'Transferred interest [%]',
  `baaTransferSdfi` decimal(13,6) DEFAULT NULL COMMENT 'SDFI [%]',
  `baaNpdidBsnsArrArea` int(11) NOT NULL COMMENT 'NPDID Bsns. Arr. Area',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `baaTransferDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`baaNpdidBsnsArrArea`,`baaTransferDirection`,`cmpNpdidCompany`,`baaTransferDateValidFrom`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `bsns_arr_area_transfer_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `bsns_arr_area_transfer_hst_ibfk_1` FOREIGN KEY (`baaNpdidBsnsArrArea`) REFERENCES `bsns_arr_area` (`baaNpdidBsnsArrArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `cmpOrgNumberBrReg` varchar(100) DEFAULT NULL COMMENT 'Organisation number',
  `cmpGroup` varchar(100) DEFAULT NULL COMMENT 'Group',
  `cmpShortName` varchar(40) NOT NULL COMMENT 'Company shortname',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `cmpLicenceOperCurrent` varchar(1) NOT NULL COMMENT 'Currently licence operator',
  `cmpLicenceOperFormer` varchar(1) NOT NULL COMMENT 'Former licence operator',
  `cmpLicenceLicenseeCurrent` varchar(1) NOT NULL COMMENT 'Currently licence licensee',
  `cmpLicenceLicenseeFormer` varchar(1) NOT NULL COMMENT 'Former licence licensee',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`cmpNpdidCompany`),
  KEY `index__company__cmpLongName` (`cmpLongName`),
  KEY `index__company__cmpShortName` (`cmpShortName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_reserves`
--

DROP TABLE IF EXISTS `company_reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_reserves` (
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `cmpRecoverableOil` decimal(13,6) NOT NULL,
  `cmpRecoverableGas` decimal(13,6) NOT NULL,
  `cmpRecoverableNGL` decimal(13,6) NOT NULL,
  `cmpRecoverableCondensate` decimal(13,6) NOT NULL,
  `cmpRecoverableOE` decimal(13,6) NOT NULL,
  `cmpRemainingOil` decimal(13,6) NOT NULL,
  `cmpRemainingGas` decimal(13,6) NOT NULL,
  `cmpRemainingNGL` decimal(13,6) NOT NULL,
  `cmpRemainingCondensate` decimal(13,6) NOT NULL,
  `cmpRemainingOE` decimal(13,6) NOT NULL,
  `cmpDateOffResEstDisplay` date NOT NULL,
  `cmpShare` decimal(13,6) NOT NULL,
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`cmpNpdidCompany`,`fldNpdidField`),
  KEY `fldNpdidField` (`fldNpdidField`),
  CONSTRAINT `company_reserves_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `company_reserves_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discovery`
--

DROP TABLE IF EXISTS `discovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discovery` (
  `dscName` varchar(40) NOT NULL COMMENT 'Discovery name',
  `cmpLongName` varchar(200) DEFAULT NULL COMMENT 'Company name',
  `dscCurrentActivityStatus` varchar(40) NOT NULL COMMENT 'Current activity status',
  `dscHcType` varchar(40) DEFAULT NULL COMMENT 'HC type',
  `wlbName` varchar(60) DEFAULT NULL COMMENT 'Wellbore name',
  `nmaName` varchar(40) DEFAULT NULL COMMENT 'Main NCS area',
  `fldName` varchar(40) DEFAULT NULL COMMENT 'Field name',
  `dscDateFromInclInField` date DEFAULT NULL COMMENT 'Included in field from date',
  `dscDiscoveryYear` int(11) NOT NULL COMMENT 'Discovery year',
  `dscResInclInDiscoveryName` varchar(40) DEFAULT NULL COMMENT 'Resources incl. in',
  `dscOwnerKind` varchar(40) DEFAULT NULL COMMENT 'Owner kind',
  `dscOwnerName` varchar(40) DEFAULT NULL COMMENT 'Owner name',
  `dscNpdidDiscovery` int(11) NOT NULL COMMENT 'NPDID discovery',
  `fldNpdidField` int(11) DEFAULT NULL COMMENT 'NPDID field',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `dscFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `dscFactMapUrl` varchar(200) NOT NULL COMMENT 'Fact map',
  `dscDateUpdated` date DEFAULT NULL COMMENT 'Date main level updated',
  `dscDateUpdatedMax` date DEFAULT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`dscNpdidDiscovery`),
  KEY `fldNpdidField` (`fldNpdidField`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `discovery_ibfk_2` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`),
  CONSTRAINT `discovery_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discovery_reserves`
--

DROP TABLE IF EXISTS `discovery_reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discovery_reserves` (
  `dscName` varchar(40) NOT NULL COMMENT 'Discovery name',
  `dscReservesRC` varchar(40) NOT NULL COMMENT 'Resource class',
  `dscRecoverableOil` decimal(13,6) NOT NULL COMMENT 'Rec. oil [mill Sm3]',
  `dscRecoverableGas` decimal(13,6) NOT NULL COMMENT 'Rec. gas [bill Sm3]',
  `dscRecoverableNGL` decimal(13,6) NOT NULL COMMENT 'Rec. NGL [mill tonn]',
  `dscRecoverableCondensate` decimal(13,6) NOT NULL COMMENT 'Rec. cond. [mill Sm3]',
  `dscDateOffResEstDisplay` date NOT NULL COMMENT 'Resource updated date',
  `dscNpdidDiscovery` int(11) NOT NULL COMMENT 'NPDID discovery',
  `dscReservesDateUpdated` date NOT NULL,
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`dscNpdidDiscovery`,`dscReservesRC`),
  CONSTRAINT `discovery_reserves_ibfk_1` FOREIGN KEY (`dscNpdidDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dscArea`
--

DROP TABLE IF EXISTS `dscArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dscArea` (
  `fldNpdidField` int(11) DEFAULT NULL COMMENT 'NPDID field',
  `fldName` varchar(40) DEFAULT NULL COMMENT 'Field name',
  `dscNpdidDiscovery` int(11) NOT NULL COMMENT 'NPDID discovery',
  `dscName` varchar(40) NOT NULL COMMENT 'Discovery name',
  `dscResInclInDiscoveryName` varchar(40) DEFAULT NULL COMMENT 'Resources incl. in',
  `dscNpdidResInclInDiscovery` int(11) DEFAULT NULL,
  `dscIncludedInFld` varchar(3) NOT NULL,
  `dscHcType` varchar(40) NOT NULL COMMENT 'HC type',
  `fldHcType` varchar(40) DEFAULT NULL,
  `dscCurrentActivityStatus` varchar(40) NOT NULL COMMENT 'Current activity status',
  `fldCurrentActivityStatus` varchar(40) DEFAULT NULL,
  `flddscLabel` varchar(40) NOT NULL,
  `dscFactUrl` varchar(200) NOT NULL,
  `fldFactUrl` varchar(200) DEFAULT NULL,
  `flddscAreaGeometryWKT_ED50` multipolygon NOT NULL,
  PRIMARY KEY (`dscNpdidDiscovery`,`dscHcType`),
  KEY `fldNpdidField` (`fldNpdidField`),
  KEY `dscNpdidResInclInDiscovery` (`dscNpdidResInclInDiscovery`),
  CONSTRAINT `dscArea_ibfk_3` FOREIGN KEY (`dscNpdidResInclInDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`),
  CONSTRAINT `dscArea_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`),
  CONSTRAINT `dscArea_ibfk_2` FOREIGN KEY (`dscNpdidDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility_fixed`
--

DROP TABLE IF EXISTS `facility_fixed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility_fixed` (
  `fclName` varchar(40) NOT NULL COMMENT 'Name',
  `fclPhase` varchar(40) NOT NULL COMMENT 'Phase',
  `fclSurface` varchar(1) NOT NULL COMMENT 'Surface facility',
  `fclCurrentOperatorName` varchar(100) DEFAULT NULL COMMENT 'Current operator',
  `fclKind` varchar(40) NOT NULL COMMENT 'Kind',
  `fclBelongsToName` varchar(41) DEFAULT NULL COMMENT 'Belongs to, name',
  `fclBelongsToKind` varchar(40) DEFAULT NULL COMMENT 'Belongs to, kind',
  `fclBelongsToS` int(11) DEFAULT NULL,
  `fclStartupDate` date DEFAULT NULL COMMENT 'Startup date',
  `fclGeodeticDatum` varchar(10) DEFAULT NULL COMMENT 'Geodetic datum',
  `fclNsDeg` int(11) DEFAULT NULL COMMENT 'NS degrees',
  `fclNsMin` int(11) DEFAULT NULL COMMENT 'NS minutes',
  `fclNsSec` decimal(13,6) DEFAULT NULL COMMENT 'NS seconds',
  `fclNsCode` varchar(1) NOT NULL COMMENT 'NS code',
  `fclEwDeg` int(11) DEFAULT NULL COMMENT 'EW degrees',
  `fclEwMin` int(11) DEFAULT NULL COMMENT 'EW minutes',
  `fclEwSec` decimal(13,6) DEFAULT NULL COMMENT 'EW seconds',
  `fclEwCode` varchar(1) NOT NULL COMMENT 'EW code',
  `fclWaterDepth` decimal(13,6) NOT NULL COMMENT 'Water depth [m]',
  `fclFunctions` varchar(400) DEFAULT NULL COMMENT 'Functions',
  `fclDesignLifetime` int(11) DEFAULT NULL COMMENT 'Design lifetime [year]',
  `fclFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `fclFactMapUrl` varchar(200) NOT NULL COMMENT 'Fact map',
  `fclNpdidFacility` int(11) NOT NULL COMMENT 'NPDID facility',
  `fclDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fclNpdidFacility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility_moveable`
--

DROP TABLE IF EXISTS `facility_moveable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility_moveable` (
  `fclName` varchar(40) NOT NULL COMMENT 'Name',
  `fclCurrentRespCompanyName` varchar(100) DEFAULT NULL COMMENT 'Current responsible company',
  `fclKind` varchar(40) NOT NULL COMMENT 'Kind',
  `fclFunctions` varchar(400) DEFAULT NULL COMMENT 'Functions',
  `fclNationName` varchar(40) NOT NULL COMMENT 'Nation',
  `fclFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `fclNpdidFacility` int(11) NOT NULL COMMENT 'NPDID facility',
  `fclNpdidCurrentRespCompany` int(11) DEFAULT NULL COMMENT 'NPDID responsible company',
  `fclDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fclNpdidFacility`),
  KEY `fclNpdidCurrentRespCompany` (`fclNpdidCurrentRespCompany`),
  CONSTRAINT `facility_moveable_ibfk_1` FOREIGN KEY (`fclNpdidCurrentRespCompany`) REFERENCES `company` (`cmpNpdidCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fclPoint`
--

DROP TABLE IF EXISTS `fclPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fclPoint` (
  `fclNpdidFacility` int(11) NOT NULL COMMENT 'NPDID facility',
  `fclSurface` varchar(1) NOT NULL COMMENT 'Surface facility',
  `fclCurrentOperatorName` varchar(100) DEFAULT NULL COMMENT 'Current operator',
  `fclName` varchar(40) NOT NULL COMMENT 'Name',
  `fclKind` varchar(40) NOT NULL COMMENT 'Kind',
  `fclBelongsToName` varchar(41) DEFAULT NULL COMMENT 'Belongs to, name',
  `fclBelongsToKind` varchar(40) DEFAULT NULL COMMENT 'Belongs to, kind',
  `fclBelongsToS` int(11) DEFAULT NULL,
  `fclStartupDate` date NOT NULL COMMENT 'Startup date',
  `fclWaterDepth` decimal(13,6) NOT NULL COMMENT 'Water depth [m]',
  `fclFunctions` varchar(400) DEFAULT NULL COMMENT 'Functions',
  `fclDesignLifetime` int(11) NOT NULL COMMENT 'Design lifetime [year]',
  `fclFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `fclFactMapUrl` varchar(200) NOT NULL COMMENT 'Fact map',
  `fclPointGeometryWKT` point NOT NULL,
  PRIMARY KEY (`fclNpdidFacility`),
  KEY `fclBelongsToS` (`fclBelongsToS`),
  CONSTRAINT `fclPoint_ibfk_2` FOREIGN KEY (`fclBelongsToS`) REFERENCES `tuf_petreg_licence` (`tufNpdidTuf`),
  CONSTRAINT `fclPoint_ibfk_1` FOREIGN KEY (`fclNpdidFacility`) REFERENCES `facility_fixed` (`fclNpdidFacility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `cmpLongName` varchar(200) DEFAULT NULL COMMENT 'Company name',
  `fldCurrentActivitySatus` varchar(40) NOT NULL COMMENT 'Current activity status',
  `wlbName` varchar(60) DEFAULT NULL COMMENT 'Wellbore name',
  `wlbCompletionDate` date DEFAULT NULL COMMENT 'Completion date',
  `fldOwnerKind` varchar(40) DEFAULT NULL COMMENT 'Owner kind',
  `fldOwnerName` varchar(40) DEFAULT NULL COMMENT 'Owner name',
  `fldNpdidOwner` int(11) DEFAULT NULL COMMENT 'NPDID owner',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `cmpNpdidCompany` int(11) DEFAULT NULL COMMENT 'NPDID company',
  `fldFactPageUrl` varchar(200) NOT NULL COMMENT 'Field fact page',
  `fldFactMapUrl` varchar(200) NOT NULL,
  `fldDateUpdated` date DEFAULT NULL COMMENT 'Date main level updated',
  `fldDateUpdatedMax` date DEFAULT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fldNpdidField`),
  KEY `fldNpdidOwner` (`fldNpdidOwner`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `field_ibfk_3` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `field_ibfk_1` FOREIGN KEY (`fldNpdidOwner`) REFERENCES `licence` (`prlNpdidLicence`),
  CONSTRAINT `field_ibfk_2` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_activity_status_hst`
--

DROP TABLE IF EXISTS `field_activity_status_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_activity_status_hst` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `fldStatusFromDate` date NOT NULL COMMENT 'Status from',
  `fldStatusToDate` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Status to',
  `fldStatus` varchar(40) NOT NULL COMMENT 'Status',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `fldStatusDateUpdated` date DEFAULT NULL,
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fldNpdidField`,`fldStatus`,`fldStatusFromDate`,`fldStatusToDate`),
  CONSTRAINT `field_activity_status_hst_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_description`
--

DROP TABLE IF EXISTS `field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_description` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `fldDescriptionHeading` varchar(255) NOT NULL COMMENT 'Heading',
  `fldDescriptionText` longtext NOT NULL COMMENT 'Text',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `fldDescriptionDateUpdated` date NOT NULL COMMENT 'Date updated',
  PRIMARY KEY (`fldNpdidField`,`fldDescriptionHeading`),
  CONSTRAINT `field_description_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_investment_yearly`
--

DROP TABLE IF EXISTS `field_investment_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_investment_yearly` (
  `prfInformationCarrier` varchar(40) NOT NULL COMMENT 'Field (Discovery)',
  `prfYear` int(11) NOT NULL COMMENT 'Year',
  `prfInvestmentsMillNOK` decimal(13,6) NOT NULL COMMENT 'Investments [mill NOK norminal values]',
  `prfNpdidInformationCarrier` int(11) NOT NULL COMMENT 'NPDID information carrier',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prfNpdidInformationCarrier`,`prfYear`),
  CONSTRAINT `field_investment_yearly_ibfk_1` FOREIGN KEY (`prfNpdidInformationCarrier`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_licensee_hst`
--

DROP TABLE IF EXISTS `field_licensee_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_licensee_hst` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `fldOwnerName` varchar(40) NOT NULL COMMENT 'Owner name',
  `fldOwnerKind` varchar(40) NOT NULL COMMENT 'Owner kind',
  `fldOwnerFrom` date NOT NULL,
  `fldOwnerTo` date DEFAULT NULL,
  `fldLicenseeFrom` date NOT NULL,
  `fldLicenseeTo` date NOT NULL DEFAULT '0000-00-00',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `fldCompanyShare` decimal(13,6) NOT NULL COMMENT 'Company share [%]',
  `fldSdfiShare` decimal(13,6) DEFAULT NULL COMMENT 'SDFI [%]',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `fldLicenseeDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fldNpdidField`,`cmpNpdidCompany`,`fldLicenseeFrom`,`fldLicenseeTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `field_licensee_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `field_licensee_hst_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_operator_hst`
--

DROP TABLE IF EXISTS `field_operator_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_operator_hst` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `fldOperatorFrom` date NOT NULL,
  `fldOperatorTo` date NOT NULL DEFAULT '0000-00-00',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `fldOperatorDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fldNpdidField`,`cmpNpdidCompany`,`fldOperatorFrom`,`fldOperatorTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `field_operator_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `field_operator_hst_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_owner_hst`
--

DROP TABLE IF EXISTS `field_owner_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_owner_hst` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `fldOwnerKind` varchar(40) NOT NULL COMMENT 'Owner kind',
  `fldOwnerName` varchar(40) NOT NULL COMMENT 'Owner name',
  `fldOwnershipFromDate` date NOT NULL,
  `fldOwnershipToDate` date NOT NULL DEFAULT '0000-00-00',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `fldNpdidOwner` int(11) NOT NULL COMMENT 'NPDID owner',
  `fldOwnerDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fldNpdidField`,`fldNpdidOwner`,`fldOwnershipFromDate`,`fldOwnershipToDate`),
  CONSTRAINT `field_owner_hst_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_production_monthly`
--

DROP TABLE IF EXISTS `field_production_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_production_monthly` (
  `prfInformationCarrier` varchar(40) NOT NULL COMMENT 'Field (Discovery)',
  `prfYear` int(11) NOT NULL COMMENT 'Year',
  `prfMonth` int(11) NOT NULL COMMENT 'Month',
  `prfPrdOilNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil [mill Sm3]',
  `prfPrdGasNetBillSm3` decimal(13,6) NOT NULL COMMENT 'Net - gas [bill Sm3]',
  `prfPrdNGLNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - NGL [mill Sm3]',
  `prfPrdCondensateNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - condensate [mill Sm3]',
  `prfPrdOeNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil equivalents [mill Sm3]',
  `prfPrdProducedWaterInFieldMillSm3` decimal(13,6) NOT NULL COMMENT 'Produced water in field [mill Sm3]',
  `prfNpdidInformationCarrier` int(11) NOT NULL COMMENT 'NPDID information carrier',
  PRIMARY KEY (`prfNpdidInformationCarrier`,`prfYear`,`prfMonth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_production_totalt_NCS_month`
--

DROP TABLE IF EXISTS `field_production_totalt_NCS_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_production_totalt_NCS_month` (
  `prfYear` int(11) NOT NULL COMMENT 'Year',
  `prfMonth` int(11) NOT NULL COMMENT 'Month',
  `prfPrdOilNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil [mill Sm3]',
  `prfPrdGasNetBillSm3` decimal(13,6) NOT NULL COMMENT 'Net - gas [bill Sm3]',
  `prfPrdNGLNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - NGL [mill Sm3]',
  `prfPrdCondensateNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - condensate [mill Sm3]',
  `prfPrdOeNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil equivalents [mill Sm3]',
  `prfPrdProducedWaterInFieldMillSm3` decimal(13,6) NOT NULL COMMENT 'Produced water in field [mill Sm3]',
  PRIMARY KEY (`prfYear`,`prfMonth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_production_totalt_NCS_year`
--

DROP TABLE IF EXISTS `field_production_totalt_NCS_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_production_totalt_NCS_year` (
  `prfYear` int(11) NOT NULL COMMENT 'Year',
  `prfPrdOilNetMillSm` decimal(13,6) NOT NULL,
  `prfPrdGasNetBillSm` decimal(13,6) NOT NULL,
  `prfPrdCondensateNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - condensate [mill Sm3]',
  `prfPrdNGLNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - NGL [mill Sm3]',
  `prfPrdOeNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil equivalents [mill Sm3]',
  `prfPrdProducedWaterInFieldMillSm3` decimal(13,6) NOT NULL COMMENT 'Produced water in field [mill Sm3]',
  PRIMARY KEY (`prfYear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_production_yearly`
--

DROP TABLE IF EXISTS `field_production_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_production_yearly` (
  `prfInformationCarrier` varchar(40) NOT NULL COMMENT 'Field (Discovery)',
  `prfYear` int(11) NOT NULL COMMENT 'Year',
  `prfPrdOilNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil [mill Sm3]',
  `prfPrdGasNetBillSm3` decimal(13,6) NOT NULL COMMENT 'Net - gas [bill Sm3]',
  `prfPrdNGLNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - NGL [mill Sm3]',
  `prfPrdCondensateNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - condensate [mill Sm3]',
  `prfPrdOeNetMillSm3` decimal(13,6) NOT NULL COMMENT 'Net - oil equivalents [mill Sm3]',
  `prfPrdProducedWaterInFieldMillSm3` decimal(13,6) NOT NULL COMMENT 'Produced water in field [mill Sm3]',
  `prfNpdidInformationCarrier` int(11) NOT NULL COMMENT 'NPDID information carrier',
  PRIMARY KEY (`prfNpdidInformationCarrier`,`prfYear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_reserves`
--

DROP TABLE IF EXISTS `field_reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_reserves` (
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `fldRecoverableOil` decimal(13,6) NOT NULL COMMENT 'Orig. recoverable oil [mill Sm3]',
  `fldRecoverableGas` decimal(13,6) NOT NULL COMMENT 'Orig. recoverable gas [bill Sm3]',
  `fldRecoverableNGL` decimal(13,6) NOT NULL COMMENT 'Orig. recoverable NGL [mill tonn]',
  `fldRecoverableCondensate` decimal(13,6) NOT NULL COMMENT 'Orig. recoverable cond. [mill Sm3]',
  `fldRecoverableOE` decimal(13,6) NOT NULL COMMENT 'Orig. recoverable oil eq. [mill Sm3 o.e]',
  `fldRemainingOil` decimal(13,6) NOT NULL COMMENT 'Remaining oil [mill Sm3]',
  `fldRemainingGas` decimal(13,6) NOT NULL COMMENT 'Remaining gas [bill Sm3]',
  `fldRemainingNGL` decimal(13,6) NOT NULL COMMENT 'Remaining NGL [mill tonn]',
  `fldRemainingCondensate` decimal(13,6) NOT NULL COMMENT 'Remaining cond. [mill Sm3]',
  `fldRemainingOE` decimal(13,6) NOT NULL COMMENT 'Remaining oil eq. [mill Sm3 o.e]',
  `fldDateOffResEstDisplay` date NOT NULL COMMENT 'Reserves updated date',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`fldNpdidField`),
  CONSTRAINT `field_reserves_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fldArea`
--

DROP TABLE IF EXISTS `fldArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fldArea` (
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `fldName` varchar(40) NOT NULL COMMENT 'Field name',
  `dscNpdidDiscovery` int(11) NOT NULL COMMENT 'NPDID discovery',
  `dscName` varchar(40) NOT NULL COMMENT 'Discovery name',
  `dscResInclInDiscoveryName` varchar(40) DEFAULT NULL COMMENT 'Resources incl. in',
  `dscNpdidResInclInDiscovery` int(11) DEFAULT NULL,
  `dscIncludedInFld` varchar(3) NOT NULL,
  `dscHcType` varchar(40) NOT NULL COMMENT 'HC type',
  `fldHcType` varchar(40) NOT NULL,
  `dscCurrentActivityStatus` varchar(40) NOT NULL COMMENT 'Current activity status',
  `fldCurrentActivityStatus` varchar(40) NOT NULL,
  `flddscLabel` varchar(40) NOT NULL,
  `dscFactUrl` varchar(200) NOT NULL,
  `fldFactUrl` varchar(200) NOT NULL,
  `flddscAreaGeometryWKT_ED50` multipolygon NOT NULL,
  PRIMARY KEY (`dscNpdidDiscovery`,`dscHcType`),
  KEY `fldNpdidField` (`fldNpdidField`),
  KEY `dscNpdidResInclInDiscovery` (`dscNpdidResInclInDiscovery`),
  CONSTRAINT `fldArea_ibfk_3` FOREIGN KEY (`dscNpdidResInclInDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`),
  CONSTRAINT `fldArea_ibfk_1` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`),
  CONSTRAINT `fldArea_ibfk_2` FOREIGN KEY (`dscNpdidDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence`
--

DROP TABLE IF EXISTS `licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlLicensingActivityName` varchar(40) NOT NULL COMMENT 'Licensing activity',
  `prlMainArea` varchar(40) DEFAULT NULL COMMENT 'Main area',
  `prlStatus` varchar(40) NOT NULL COMMENT 'Status',
  `prlDateGranted` date NOT NULL COMMENT 'Date granted',
  `prlDateValidTo` date NOT NULL COMMENT 'Date valid to',
  `prlOriginalArea` decimal(13,6) NOT NULL COMMENT 'Original area [km2]',
  `prlCurrentArea` varchar(20) NOT NULL COMMENT 'Current area',
  `prlPhaseCurrent` varchar(40) DEFAULT NULL COMMENT 'Phase - current',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `prlFactPageUrl` varchar(200) NOT NULL COMMENT 'Fact page',
  `prlFactMapUrl` varchar(200) DEFAULT NULL COMMENT 'Fact map',
  `prlDateUpdated` date DEFAULT NULL COMMENT 'Date main level updated',
  `prlDateUpdatedMax` date DEFAULT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`),
  UNIQUE KEY `index__licence__prlName` (`prlName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_area_poly_hst`
--

DROP TABLE IF EXISTS `licence_area_poly_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_area_poly_hst` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlAreaPolyDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `prlAreaPolyDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `prlAreaPolyNationCode` varchar(2) NOT NULL,
  `prlAreaPolyBlockName` varchar(40) NOT NULL COMMENT 'Block name',
  `prlAreaPolyStratigraphical` varchar(4) NOT NULL COMMENT 'Stratigraphcal',
  `prlAreaPolyPolyNo` int(11) NOT NULL,
  `prlAreaPolyPolyArea` decimal(13,6) NOT NULL COMMENT 'Polygon area [km2]',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `prlAreaDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`prlAreaPolyBlockName`,`prlAreaPolyPolyNo`,`prlAreaPolyDateValidFrom`,`prlAreaPolyDateValidTo`),
  CONSTRAINT `licence_area_poly_hst_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_licensee_hst`
--

DROP TABLE IF EXISTS `licence_licensee_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_licensee_hst` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlLicenseeDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `prlLicenseeDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `prlLicenseeInterest` decimal(13,6) NOT NULL COMMENT 'Interest [%]',
  `prlLicenseeSdfi` decimal(13,6) DEFAULT NULL COMMENT 'SDFI [%]',
  `prlOperDateValidFrom` date DEFAULT NULL COMMENT 'Date valid from',
  `prlOperDateValidTo` date DEFAULT NULL COMMENT 'Date valid to',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `prlLicenseeDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`cmpNpdidCompany`,`prlLicenseeDateValidFrom`,`prlLicenseeDateValidTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `licence_licensee_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `licence_licensee_hst_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_oper_hst`
--

DROP TABLE IF EXISTS `licence_oper_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_oper_hst` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlOperDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `prlOperDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `prlOperDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`cmpNpdidCompany`,`prlOperDateValidFrom`,`prlOperDateValidTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `licence_oper_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `licence_oper_hst_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_petreg_licence`
--

DROP TABLE IF EXISTS `licence_petreg_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_petreg_licence` (
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `ptlDateAwarded` date NOT NULL,
  `ptlDateValidFrom` date NOT NULL COMMENT 'Gyldig fra dato',
  `ptlDateValidTo` date NOT NULL COMMENT 'Gyldig til dato',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `ptlDateUpdated` date DEFAULT NULL COMMENT 'Dato hovednivå oppdatert',
  `ptlDateUpdatedMax` date NOT NULL COMMENT 'Dato alle oppdatert',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`),
  CONSTRAINT `licence_petreg_licence_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_petreg_licence_licencee`
--

DROP TABLE IF EXISTS `licence_petreg_licence_licencee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_petreg_licence_licencee` (
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `ptlLicenseeInterest` decimal(13,6) NOT NULL COMMENT 'Andel [%]',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `ptlLicenseeDateUpdated` date DEFAULT NULL COMMENT 'Dato oppdatert',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`cmpNpdidCompany`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `licence_petreg_licence_licencee_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `licence_petreg_licence_licencee_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_petreg_licence_oper`
--

DROP TABLE IF EXISTS `licence_petreg_licence_oper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_petreg_licence_oper` (
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `ptlOperDateUpdated` date DEFAULT NULL COMMENT 'Dato oppdatert',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `licence_petreg_licence_oper_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `licence_petreg_licence_oper_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_petreg_message`
--

DROP TABLE IF EXISTS `licence_petreg_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_petreg_message` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `ptlMessageDocumentNo` int(11) NOT NULL,
  `ptlMessage` text NOT NULL COMMENT 'Utdrag av dokument',
  `ptlMessageRegisteredDate` date NOT NULL COMMENT 'Registreringsdato',
  `ptlMessageKindDesc` varchar(100) NOT NULL COMMENT 'Type',
  `ptlMessageDateUpdated` date DEFAULT NULL COMMENT 'Dato oppdatert',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`ptlMessageDocumentNo`),
  CONSTRAINT `licence_petreg_message_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_phase_hst`
--

DROP TABLE IF EXISTS `licence_phase_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_phase_hst` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlDatePhaseValidFrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date phase valid from',
  `prlDatePhaseValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date phase valid to',
  `prlPhase` varchar(40) NOT NULL COMMENT 'Phase',
  `prlDateGranted` date NOT NULL COMMENT 'Date granted',
  `prlDateValidTo` date NOT NULL COMMENT 'Date valid to',
  `prlDateInitialPeriodExpires` date NOT NULL COMMENT 'Expiry date, initial period',
  `prlActiveStatusIndicator` varchar(40) NOT NULL COMMENT 'Active',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `prlPhaseDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`prlPhase`,`prlDatePhaseValidFrom`,`prlDatePhaseValidTo`),
  CONSTRAINT `licence_phase_hst_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_task`
--

DROP TABLE IF EXISTS `licence_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_task` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlTaskName` varchar(40) NOT NULL COMMENT 'Task name (norwegian)',
  `prlTaskTypeNo` varchar(100) NOT NULL,
  `prlTaskTypeEn` varchar(200) NOT NULL COMMENT 'Type of task',
  `prlTaskStatusNo` varchar(100) NOT NULL,
  `prlTaskStatusEn` varchar(40) NOT NULL COMMENT 'Task status',
  `prlTaskExpiryDate` date NOT NULL COMMENT 'Expiry date',
  `wlbName` varchar(60) DEFAULT NULL COMMENT 'Wellbore name',
  `prlDateValidTo` date NOT NULL COMMENT 'Date valid to',
  `prlLicensingActivityName` varchar(40) NOT NULL COMMENT 'Licensing activity',
  `cmpLongName` varchar(200) DEFAULT NULL COMMENT 'Company name',
  `cmpNpdidCompany` int(11) DEFAULT NULL COMMENT 'NPDID company',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `prlTaskID` int(11) NOT NULL COMMENT 'Task ID',
  `prlTaskRefID` int(11) DEFAULT NULL COMMENT 'Referred task ID',
  `prlTaskDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`prlTaskID`),
  KEY `index__licence_task__prlTaskID` (`prlTaskID`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  KEY `prlTaskRefID` (`prlTaskRefID`),
  CONSTRAINT `licence_task_ibfk_3` FOREIGN KEY (`prlTaskRefID`) REFERENCES `licence_task` (`prlTaskID`),
  CONSTRAINT `licence_task_ibfk_1` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `licence_task_ibfk_2` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licence_transfer_hst`
--

DROP TABLE IF EXISTS `licence_transfer_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence_transfer_hst` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlTransferDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `prlTransferDirection` varchar(4) NOT NULL COMMENT 'Transfer direction',
  `prlTransferKind` varchar(40) DEFAULT NULL COMMENT 'Transfer kind',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `prlTransferredInterest` decimal(13,6) NOT NULL COMMENT 'Transferred interest [%]',
  `prlTransferSdfi` decimal(13,6) DEFAULT NULL COMMENT 'SDFI [%]',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `prlTransferDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`prlTransferDirection`,`cmpNpdidCompany`,`prlTransferDateValidFrom`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `licence_transfer_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `licence_transfer_hst_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pipLine`
--

DROP TABLE IF EXISTS `pipLine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipLine` (
  `pipNpdidPipe` int(11) NOT NULL,
  `pipNpdidFromFacility` int(11) NOT NULL,
  `pipNpdidToFacility` int(11) NOT NULL,
  `pipNpdidOperator` int(11) DEFAULT NULL,
  `pipName` varchar(50) NOT NULL,
  `pipNameFromFacility` varchar(50) NOT NULL,
  `pipNameToFacility` varchar(50) NOT NULL,
  `pipNameCurrentOperator` varchar(100) DEFAULT NULL,
  `pipCurrentPhase` varchar(40) NOT NULL,
  `pipMedium` varchar(20) NOT NULL,
  `pipMainGrouping` varchar(20) NOT NULL,
  `pipDimension` decimal(13,6) NOT NULL,
  `pipLineGeometryWKT` linestring NOT NULL,
  PRIMARY KEY (`pipNpdidPipe`),
  KEY `pipNpdidOperator` (`pipNpdidOperator`),
  CONSTRAINT `pipLine_ibfk_1` FOREIGN KEY (`pipNpdidOperator`) REFERENCES `company` (`cmpNpdidCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prlArea`
--

DROP TABLE IF EXISTS `prlArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prlArea` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlActive` varchar(20) NOT NULL COMMENT 'Active',
  `prlCurrentArea` varchar(20) NOT NULL COMMENT 'Current area',
  `prlDateGranted` date NOT NULL COMMENT 'Date granted',
  `prlDateValidTo` date NOT NULL COMMENT 'Date valid to',
  `prlAreaPolyDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `prlAreaPolyDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `prlAreaPolyFromZvalue` int(11) NOT NULL,
  `prlAreaPolyToZvalue` int(11) NOT NULL,
  `prlAreaPolyVertLimEn` text,
  `prlAreaPolyVertLimNo` text,
  `prlStratigraphical` varchar(3) NOT NULL,
  `prlAreaPolyStratigraphical` varchar(4) NOT NULL COMMENT 'Stratigraphcal',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `prlLastOperatorNameShort` varchar(40) NOT NULL,
  `prlLastOperatorNameLong` varchar(200) NOT NULL,
  `prlLicensingActivityName` varchar(40) NOT NULL COMMENT 'Licensing activity',
  `prlLastOperatorNpdidCompany` int(11) NOT NULL,
  `prlFactUrl` varchar(200) NOT NULL,
  `prlAreaGeometryWKT` multipolygon NOT NULL,
  `prlArea_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`prlArea_id`,`prlNpdidLicence`,`prlAreaPolyDateValidFrom`,`prlAreaPolyDateValidTo`),
  UNIQUE KEY `prlArea_id` (`prlArea_id`),
  KEY `prlNpdidLicence` (`prlNpdidLicence`),
  KEY `prlLastOperatorNpdidCompany` (`prlLastOperatorNpdidCompany`),
  CONSTRAINT `prlArea_ibfk_2` FOREIGN KEY (`prlLastOperatorNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `prlArea_ibfk_1` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`)
) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prlAreaSplitByBlock`
--

DROP TABLE IF EXISTS `prlAreaSplitByBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prlAreaSplitByBlock` (
  `prlName` varchar(50) NOT NULL COMMENT 'Production licence',
  `prlActive` varchar(20) NOT NULL COMMENT 'Active',
  `prlCurrentArea` varchar(20) NOT NULL COMMENT 'Current area',
  `prlDateGranted` date NOT NULL COMMENT 'Date granted',
  `prlDateValidTo` date NOT NULL COMMENT 'Date valid to',
  `prlAreaPolyDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `prlAreaPolyDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `prlAreaPolyPolyNo` int(11) NOT NULL,
  `prlAreaPolyPolyArea` decimal(13,6) NOT NULL COMMENT 'Polygon area [km2]',
  `blcName` varchar(40) NOT NULL COMMENT 'Block name',
  `prlAreaPolyFromZvalue` int(11) NOT NULL,
  `prlAreaPolyToZvalue` int(11) NOT NULL,
  `prlAreaPolyVertLimEn` text,
  `prlAreaPolyVertLimNo` text,
  `prlStratigraphical` varchar(3) NOT NULL,
  `prlLastOperatorNpdidCompany` int(11) NOT NULL,
  `prlLastOperatorNameShort` varchar(40) NOT NULL,
  `prlLastOperatorNameLong` varchar(200) NOT NULL,
  `prlLicensingActivityName` varchar(40) NOT NULL COMMENT 'Licensing activity',
  `prlFactUrl` varchar(200) NOT NULL,
  `prlAreaPolyStratigraphical` varchar(4) NOT NULL COMMENT 'Stratigraphcal',
  `prlNpdidLicence` int(11) NOT NULL COMMENT 'NPDID production licence',
  `prlAreaGeometryWKT` multipolygon NOT NULL,
  PRIMARY KEY (`prlNpdidLicence`,`blcName`,`prlAreaPolyPolyNo`,`prlAreaPolyDateValidFrom`,`prlAreaPolyDateValidTo`),
  KEY `prlLastOperatorNpdidCompany` (`prlLastOperatorNpdidCompany`),
  CONSTRAINT `prlAreaSplitByBlock_ibfk_2` FOREIGN KEY (`prlNpdidLicence`) REFERENCES `licence` (`prlNpdidLicence`),
  CONSTRAINT `prlAreaSplitByBlock_ibfk_1` FOREIGN KEY (`prlLastOperatorNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seaArea`
--

DROP TABLE IF EXISTS `seaArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seaArea` (
  `seaSurveyName` varchar(100) NOT NULL COMMENT 'Survey name',
  `seaNpdidSurvey` int(11) NOT NULL COMMENT 'NPDID for survey',
  `seaFactMapUrl` varchar(260) DEFAULT NULL COMMENT 'Fact Map',
  `seaFactPageUrl` varchar(200) DEFAULT NULL,
  `seaStatus` varchar(100) NOT NULL COMMENT 'Status',
  `seaGeographicalArea` varchar(100) NOT NULL,
  `seaMarketAvailable` varchar(20) NOT NULL COMMENT 'Marked available',
  `seaSurveyTypeMain` varchar(100) NOT NULL COMMENT 'Main type',
  `seaSurveyTypePart` varchar(100) DEFAULT NULL COMMENT 'Sub type',
  `seaCompanyReported` varchar(100) NOT NULL COMMENT 'Company - responsible',
  `seaSourceType` varchar(100) DEFAULT NULL COMMENT 'Source type',
  `seaSourceNumber` varchar(100) DEFAULT NULL COMMENT 'Number of sources',
  `seaSourceSize` varchar(100) DEFAULT NULL COMMENT 'Source size',
  `seaSourcePressure` varchar(100) DEFAULT NULL COMMENT 'Source pressure',
  `seaSensorType` varchar(100) DEFAULT NULL COMMENT 'Sensor type',
  `seaSensorNumbers` varchar(40) DEFAULT NULL COMMENT 'Numbers of sensors',
  `seaSensorLength` varchar(100) DEFAULT NULL COMMENT 'Sensor length [m]',
  `seaPlanFromDate` date NOT NULL COMMENT 'Start date - planned',
  `seaDateStarting` date DEFAULT NULL COMMENT 'Start date - actual',
  `seaPlanToDate` date NOT NULL COMMENT 'Completed date - planned',
  `seaDateFinalized` date DEFAULT NULL COMMENT 'Completed date - actual',
  `seaPlanCdpKm` int(11) DEFAULT NULL COMMENT 'Total length - planned [cdp km]',
  `seaCdpTotalKm` int(11) DEFAULT NULL COMMENT 'Total length - actual [cdp km]',
  `seaPlanBoatKm` int(11) DEFAULT NULL COMMENT 'Total length - planned [boat km]',
  `seaBoatTotalKm` int(11) DEFAULT NULL COMMENT 'Total length - actual [boat km]',
  `sea3DKm2` decimal(13,6) DEFAULT NULL COMMENT 'Total net area - planned 3D/4D [km2]',
  `seaPolygonKind` varchar(100) NOT NULL COMMENT 'Kind of polygon',
  `seaPolyGeometryWKT` polygon NOT NULL,
  `seaArea_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seaArea_id`,`seaSurveyName`),
  UNIQUE KEY `seaArea_id` (`seaArea_id`),
  KEY `seaNpdidSurvey` (`seaNpdidSurvey`),
  CONSTRAINT `seaArea_ibfk_1` FOREIGN KEY (`seaNpdidSurvey`) REFERENCES `seis_acquisition` (`seaNpdidSurvey`)
) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seaMultiline`
--

DROP TABLE IF EXISTS `seaMultiline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seaMultiline` (
  `seaSurveyName` varchar(100) NOT NULL COMMENT 'Survey name',
  `seaFactMapUrl` varchar(260) DEFAULT NULL COMMENT 'Fact Map',
  `seaFactPageUrl` varchar(200) DEFAULT NULL,
  `seaStatus` varchar(100) NOT NULL COMMENT 'Status',
  `seaMarketAvailable` varchar(20) NOT NULL COMMENT 'Marked available',
  `seaSurveyTypeMain` varchar(100) NOT NULL COMMENT 'Main type',
  `seaSurveyTypePart` varchar(100) NOT NULL COMMENT 'Sub type',
  `seaCompanyReported` varchar(100) NOT NULL COMMENT 'Company - responsible',
  `seaSourceType` varchar(100) NOT NULL COMMENT 'Source type',
  `seaSourceNumber` varchar(100) DEFAULT NULL COMMENT 'Number of sources',
  `seaSourceSize` varchar(100) DEFAULT NULL COMMENT 'Source size',
  `seaSourcePressure` varchar(100) DEFAULT NULL COMMENT 'Source pressure',
  `seaSensorType` varchar(100) NOT NULL COMMENT 'Sensor type',
  `seaSensorNumbers` varchar(40) NOT NULL COMMENT 'Numbers of sensors',
  `seaSensorLength` varchar(100) NOT NULL COMMENT 'Sensor length [m]',
  `seaPlanFromDate` date NOT NULL COMMENT 'Start date - planned',
  `seaDateStarting` date DEFAULT NULL COMMENT 'Start date - actual',
  `seaPlanToDate` date NOT NULL COMMENT 'Completed date - planned',
  `seaDateFinalized` date DEFAULT NULL COMMENT 'Completed date - actual',
  `seaPlanCdpKm` int(11) NOT NULL COMMENT 'Total length - planned [cdp km]',
  `seaCdpTotalKm` int(11) DEFAULT NULL COMMENT 'Total length - actual [cdp km]',
  `seaPlanBoatKm` int(11) NOT NULL COMMENT 'Total length - planned [boat km]',
  `seaBoatTotalKm` int(11) DEFAULT NULL COMMENT 'Total length - actual [boat km]',
  `seaMultilineGeometryWKT` multilinestring NOT NULL,
  PRIMARY KEY (`seaSurveyName`),
  CONSTRAINT `seaMultiline_ibfk_1` FOREIGN KEY (`seaSurveyName`) REFERENCES `seis_acquisition` (`seaName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seis_acquisition`
--

DROP TABLE IF EXISTS `seis_acquisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seis_acquisition` (
  `seaName` varchar(100) NOT NULL COMMENT 'Survey name',
  `seaPlanFromDate` date NOT NULL COMMENT 'Start date - planned',
  `seaNpdidSurvey` int(11) NOT NULL COMMENT 'NPDID for survey',
  `seaStatus` varchar(100) NOT NULL COMMENT 'Status',
  `seaGeographicalArea` varchar(100) NOT NULL,
  `seaSurveyTypeMain` varchar(100) NOT NULL COMMENT 'Main type',
  `seaSurveyTypePart` varchar(100) DEFAULT NULL COMMENT 'Sub type',
  `seaCompanyReported` varchar(100) NOT NULL COMMENT 'Company - responsible',
  `seaPlanToDate` date NOT NULL COMMENT 'Completed date - planned',
  `seaDateStarting` date DEFAULT NULL COMMENT 'Start date - actual',
  `seaDateFinalized` date DEFAULT NULL COMMENT 'Completed date - actual',
  `seaCdpTotalKm` int(11) DEFAULT NULL COMMENT 'Total length - actual [cdp km]',
  `seaBoatTotalKm` int(11) DEFAULT NULL COMMENT 'Total length - actual [boat km]',
  `sea3DKm2` decimal(13,6) DEFAULT NULL COMMENT 'Total net area - planned 3D/4D [km2]',
  `seaSampling` varchar(20) DEFAULT NULL COMMENT 'Sampling',
  `seaShallowDrilling` varchar(20) DEFAULT NULL COMMENT 'Shallow drilling',
  `seaGeotechnical` varchar(20) DEFAULT NULL COMMENT 'Geotechnical measurement',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`seaNpdidSurvey`,`seaName`),
  UNIQUE KEY `index__seis_acquisition__seaName` (`seaName`),
  KEY `seaCompanyReported` (`seaCompanyReported`),
  CONSTRAINT `seis_acquisition_ibfk_1` FOREIGN KEY (`seaCompanyReported`) REFERENCES `company` (`cmpLongName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seis_acquisition_coordinates_inc_turnarea`
--

DROP TABLE IF EXISTS `seis_acquisition_coordinates_inc_turnarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seis_acquisition_coordinates_inc_turnarea` (
  `seaSurveyName` varchar(100) NOT NULL COMMENT 'Survey name',
  `seaNpdidSurvey` int(11) NOT NULL COMMENT 'NPDID for survey',
  `seaPolygonPointNumber` int(11) NOT NULL COMMENT 'Point number',
  `seaPolygonNSDeg` int(11) NOT NULL COMMENT 'NS degrees',
  `seaPolygonNSMin` int(11) NOT NULL COMMENT 'NS minutes',
  `seaPolygonNSSec` decimal(13,6) NOT NULL COMMENT 'NS seconds',
  `seaPolygonEWDeg` int(11) NOT NULL COMMENT 'EW degrees',
  `seaPolygonEWMin` int(11) NOT NULL COMMENT 'EW minutes',
  `seaPolygonEWSec` decimal(13,6) NOT NULL COMMENT 'EW seconds',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`seaSurveyName`,`seaPolygonPointNumber`),
  KEY `seaNpdidSurvey` (`seaNpdidSurvey`),
  CONSTRAINT `seis_acquisition_coordinates_inc_turnarea_ibfk_1` FOREIGN KEY (`seaNpdidSurvey`) REFERENCES `seis_acquisition` (`seaNpdidSurvey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seis_acquisition_progress`
--

DROP TABLE IF EXISTS `seis_acquisition_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seis_acquisition_progress` (
  `seaProgressDate` date NOT NULL,
  `seaProgressText2` varchar(40) NOT NULL,
  `seaProgressText` text NOT NULL,
  `seaProgressDescription` text,
  `seaNpdidSurvey` int(11) NOT NULL COMMENT 'NPDID for survey',
  `seis_acquisition_progress_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seis_acquisition_progress_id`,`seaProgressText2`),
  UNIQUE KEY `seis_acquisition_progress_id` (`seis_acquisition_progress_id`),
  KEY `seaNpdidSurvey` (`seaNpdidSurvey`),
  CONSTRAINT `seis_acquisition_progress_ibfk_1` FOREIGN KEY (`seaNpdidSurvey`) REFERENCES `seis_acquisition` (`seaNpdidSurvey`)
) ENGINE=InnoDB AUTO_INCREMENT=16384 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strat_litho_wellbore`
--

DROP TABLE IF EXISTS `strat_litho_wellbore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strat_litho_wellbore` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `lsuTopDepth` decimal(13,6) NOT NULL COMMENT 'Top depth [m]',
  `lsuBottomDepth` decimal(13,6) NOT NULL COMMENT 'Bottom depth [m]',
  `lsuName` varchar(20) NOT NULL COMMENT 'Lithostrat. unit',
  `lsuLevel` varchar(9) NOT NULL COMMENT 'Level',
  `lsuNpdidLithoStrat` int(11) NOT NULL COMMENT 'NPDID lithostrat. unit',
  `wlbCompletionDate` date NOT NULL COMMENT 'Completion date',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `lsuWellboreUpdatedDate` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`,`lsuNpdidLithoStrat`,`lsuTopDepth`,`lsuBottomDepth`),
  CONSTRAINT `strat_litho_wellbore_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strat_litho_wellbore_core`
--

DROP TABLE IF EXISTS `strat_litho_wellbore_core`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strat_litho_wellbore_core` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `lsuCoreLenght` decimal(13,6) NOT NULL COMMENT 'Core length [m]',
  `lsuName` varchar(20) NOT NULL COMMENT 'Lithostrat. unit',
  `lsuLevel` varchar(9) NOT NULL COMMENT 'Level',
  `wlbCompletionDate` date NOT NULL COMMENT 'Completion date',
  `lsuNpdidLithoStrat` int(11) NOT NULL COMMENT 'NPDID lithostrat. unit',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`,`lsuNpdidLithoStrat`),
  CONSTRAINT `strat_litho_wellbore_core_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuf_operator_hst`
--

DROP TABLE IF EXISTS `tuf_operator_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuf_operator_hst` (
  `tufName` varchar(40) NOT NULL COMMENT 'TUF',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `tufOperDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `tufOperDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `tufNpdidTuf` int(11) NOT NULL COMMENT 'NPDID tuf',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`tufNpdidTuf`,`cmpNpdidCompany`,`tufOperDateValidFrom`,`tufOperDateValidTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_operator_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_operator_hst_ibfk_1` FOREIGN KEY (`tufNpdidTuf`) REFERENCES `tuf_petreg_licence` (`tufNpdidTuf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuf_owner_hst`
--

DROP TABLE IF EXISTS `tuf_owner_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuf_owner_hst` (
  `tufName` varchar(40) NOT NULL COMMENT 'TUF',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `tufOwnerDateValidFrom` date NOT NULL COMMENT 'Date valid from',
  `tufOwnerDateValidTo` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Date valid to',
  `tufOwnerShare` decimal(13,6) NOT NULL COMMENT 'Share [%]',
  `tufNpdidTuf` int(11) NOT NULL COMMENT 'NPDID tuf',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`tufNpdidTuf`,`cmpNpdidCompany`,`tufOwnerDateValidFrom`,`tufOwnerDateValidTo`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_owner_hst_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_owner_hst_ibfk_1` FOREIGN KEY (`tufNpdidTuf`) REFERENCES `tuf_petreg_licence` (`tufNpdidTuf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuf_petreg_licence`
--

DROP TABLE IF EXISTS `tuf_petreg_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuf_petreg_licence` (
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `tufName` varchar(40) NOT NULL COMMENT 'TUF',
  `ptlDateValidFrom` date NOT NULL COMMENT 'Gyldig fra dato',
  `ptlDateValidTo` date NOT NULL COMMENT 'Gyldig til dato',
  `tufNpdidTuf` int(11) NOT NULL COMMENT 'NPDID tuf',
  `ptlDateUpdated` date DEFAULT NULL COMMENT 'Dato hovednivå oppdatert',
  `ptlDateUpdatedMax` date NOT NULL COMMENT 'Dato alle oppdatert',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`tufNpdidTuf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuf_petreg_licence_licencee`
--

DROP TABLE IF EXISTS `tuf_petreg_licence_licencee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuf_petreg_licence_licencee` (
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `ptlLicenseeInterest` decimal(13,6) NOT NULL COMMENT 'Andel [%]',
  `tufName` varchar(40) NOT NULL COMMENT 'TUF',
  `tufNpdidTuf` int(11) NOT NULL COMMENT 'NPDID tuf',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `ptlLicenseeDateUpdated` date DEFAULT NULL COMMENT 'Dato oppdatert',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`tufNpdidTuf`,`cmpNpdidCompany`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_petreg_licence_licencee_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_petreg_licence_licencee_ibfk_1` FOREIGN KEY (`tufNpdidTuf`) REFERENCES `tuf_petreg_licence` (`tufNpdidTuf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuf_petreg_licence_oper`
--

DROP TABLE IF EXISTS `tuf_petreg_licence_oper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuf_petreg_licence_oper` (
  `Textbox42` varchar(20) NOT NULL,
  `Textbox2` varchar(20) NOT NULL,
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `cmpLongName` varchar(200) NOT NULL COMMENT 'Company name',
  `tufName` varchar(40) NOT NULL COMMENT 'TUF',
  `tufNpdidTuf` int(11) NOT NULL COMMENT 'NPDID tuf',
  `cmpNpdidCompany` int(11) NOT NULL COMMENT 'NPDID company',
  `ptlOperDateUpdated` date DEFAULT NULL COMMENT 'Dato oppdatert',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`tufNpdidTuf`),
  KEY `cmpNpdidCompany` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_petreg_licence_oper_ibfk_2` FOREIGN KEY (`cmpNpdidCompany`) REFERENCES `company` (`cmpNpdidCompany`),
  CONSTRAINT `tuf_petreg_licence_oper_ibfk_1` FOREIGN KEY (`tufNpdidTuf`) REFERENCES `tuf_petreg_licence` (`tufNpdidTuf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuf_petreg_message`
--

DROP TABLE IF EXISTS `tuf_petreg_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuf_petreg_message` (
  `ptlName` varchar(40) NOT NULL COMMENT 'Tillatelse',
  `ptlMessageDocumentNo` int(11) NOT NULL,
  `ptlMessage` text NOT NULL COMMENT 'Utdrag av dokument',
  `ptlMessageRegisteredDate` date NOT NULL COMMENT 'Registreringsdato',
  `ptlMessageKindDesc` varchar(100) NOT NULL COMMENT 'Type',
  `tufName` varchar(40) NOT NULL COMMENT 'TUF',
  `ptlMessageDateUpdated` date DEFAULT NULL COMMENT 'Dato oppdatert',
  `tufNpdidTuf` int(11) NOT NULL COMMENT 'NPDID tuf',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`tufNpdidTuf`,`ptlMessageDocumentNo`),
  CONSTRAINT `tuf_petreg_message_ibfk_1` FOREIGN KEY (`tufNpdidTuf`) REFERENCES `tuf_petreg_licence` (`tufNpdidTuf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_casing_and_lot`
--

DROP TABLE IF EXISTS `wellbore_casing_and_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_casing_and_lot` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbCasingType` varchar(10) DEFAULT NULL COMMENT 'Casing type',
  `wlbCasingDiameter` varchar(6) DEFAULT NULL COMMENT 'Casing diam. [inch]',
  `wlbCasingDepth` decimal(13,6) NOT NULL COMMENT 'Casing depth [m]',
  `wlbHoleDiameter` varchar(6) DEFAULT NULL COMMENT 'Hole diam. [inch]',
  `wlbHoleDepth` decimal(13,6) NOT NULL COMMENT 'Hole depth[m]',
  `wlbLotMudDencity` decimal(13,6) NOT NULL COMMENT 'LOT mud eqv. [g/cm3]',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbCasingDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  `wellbore_casing_and_lot_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wellbore_casing_and_lot_id`,`wlbNpdidWellbore`),
  UNIQUE KEY `wellbore_casing_and_lot_id` (`wellbore_casing_and_lot_id`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_casing_and_lot_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_coordinates`
--

DROP TABLE IF EXISTS `wellbore_coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_coordinates` (
  `wlbWellboreName` varchar(40) NOT NULL COMMENT 'Wellbore name',
  `wlbDrillingOperator` varchar(60) NOT NULL COMMENT 'Drilling operator',
  `wlbProductionLicence` varchar(40) DEFAULT NULL COMMENT 'Drilled in production licence',
  `wlbWellType` varchar(20) DEFAULT NULL COMMENT 'Type',
  `wlbPurposePlanned` varchar(40) DEFAULT NULL COMMENT 'Purpose - planned',
  `wlbContent` varchar(40) DEFAULT NULL COMMENT 'Content',
  `wlbEntryDate` date DEFAULT NULL COMMENT 'Entry date',
  `wlbCompletionDate` date DEFAULT NULL COMMENT 'Completion date',
  `wlbField` varchar(40) DEFAULT NULL COMMENT 'Field',
  `wlbMainArea` varchar(40) NOT NULL COMMENT 'Main area',
  `wlbGeodeticDatum` varchar(6) DEFAULT NULL COMMENT 'Geodetic datum',
  `wlbNsDeg` int(11) NOT NULL COMMENT 'NS degrees',
  `wlbNsMin` int(11) NOT NULL COMMENT 'NS minutes',
  `wlbNsSec` decimal(6,2) NOT NULL COMMENT 'NS seconds',
  `wlbNsCode` varchar(1) DEFAULT NULL COMMENT 'NS code',
  `wlbEwDeg` int(11) NOT NULL COMMENT 'EW degrees',
  `wlbEwMin` int(11) NOT NULL COMMENT 'EW minutes',
  `wlbEwSec` decimal(6,2) NOT NULL COMMENT 'EW seconds',
  `wlbEwCode` varchar(1) DEFAULT NULL COMMENT 'EW code',
  `wlbNsDecDeg` decimal(13,6) NOT NULL COMMENT 'NS decimal degrees',
  `wlbEwDesDeg` decimal(13,6) NOT NULL COMMENT 'EW decimal degrees',
  `wlbNsUtm` decimal(13,6) NOT NULL COMMENT 'NS UTM [m]',
  `wlbEwUtm` decimal(13,6) NOT NULL COMMENT 'EW UTM [m]',
  `wlbUtmZone` int(11) NOT NULL COMMENT 'UTM zone',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_coordinates_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_core`
--

DROP TABLE IF EXISTS `wellbore_core`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_core` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbCoreNumber` int(11) NOT NULL COMMENT 'Core sample number',
  `wlbCoreIntervalTop` decimal(13,6) DEFAULT NULL COMMENT 'Core sample - top depth',
  `wlbCoreIntervalBottom` decimal(13,6) DEFAULT NULL COMMENT 'Core sample - bottom depth',
  `wlbCoreIntervalUom` varchar(6) DEFAULT NULL COMMENT 'Core sample depth - uom',
  `wlbTotalCoreLength` decimal(13,6) NOT NULL COMMENT 'Total core sample length [m]',
  `wlbNumberOfCores` int(11) NOT NULL COMMENT 'Number of cores samples',
  `wlbCoreSampleAvailable` varchar(3) NOT NULL COMMENT 'Core samples available',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbCoreDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  `wellbore_core_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wellbore_core_id`,`wlbNpdidWellbore`,`wlbCoreNumber`),
  UNIQUE KEY `wellbore_core_id` (`wellbore_core_id`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_core_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_core_photo`
--

DROP TABLE IF EXISTS `wellbore_core_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_core_photo` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbCoreNumber` int(11) NOT NULL COMMENT 'Core sample number',
  `wlbCorePhotoTitle` varchar(200) NOT NULL COMMENT 'Core photo title',
  `wlbCorePhotoImgUrl` varchar(200) NOT NULL COMMENT 'Core photo URL',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbCorePhotoDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `wellbore_core_photo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wellbore_core_photo_id`,`wlbNpdidWellbore`,`wlbCoreNumber`,`wlbCorePhotoTitle`),
  UNIQUE KEY `wellbore_core_photo_id` (`wellbore_core_photo_id`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_core_photo_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB AUTO_INCREMENT=32768 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_development_all`
--

DROP TABLE IF EXISTS `wellbore_development_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_development_all` (
  `wlbWellboreName` varchar(40) NOT NULL COMMENT 'Wellbore name',
  `wlbWell` varchar(40) NOT NULL COMMENT 'Well name',
  `wlbDrillingOperator` varchar(60) NOT NULL COMMENT 'Drilling operator',
  `wlbDrillingOperatorGroup` varchar(20) NOT NULL COMMENT 'Drilling operator group',
  `wlbProductionLicence` varchar(40) NOT NULL COMMENT 'Drilled in production licence',
  `wlbPurposePlanned` varchar(40) DEFAULT NULL COMMENT 'Purpose - planned',
  `wlbContent` varchar(40) DEFAULT NULL COMMENT 'Content',
  `wlbWellType` varchar(20) NOT NULL COMMENT 'Type',
  `wlbEntryDate` date DEFAULT NULL COMMENT 'Entry date',
  `wlbCompletionDate` date DEFAULT NULL COMMENT 'Completion date',
  `wlbField` varchar(40) NOT NULL COMMENT 'Field',
  `wlbDrillPermit` varchar(10) NOT NULL COMMENT 'Drill permit',
  `wlbDiscovery` varchar(40) NOT NULL COMMENT 'Discovery',
  `wlbDiscoveryWellbore` varchar(3) NOT NULL COMMENT 'Discovery wellbore',
  `wlbKellyBushElevation` decimal(13,6) NOT NULL COMMENT 'Kelly bushing elevation [m]',
  `wlbFinalVerticalDepth` decimal(6,2) DEFAULT NULL COMMENT 'Final vertical depth (TVD) [m RKB]',
  `wlbTotalDepth` decimal(13,6) NOT NULL COMMENT 'Total depth (MD) [m RKB]',
  `wlbWaterDepth` decimal(13,6) NOT NULL COMMENT 'Water depth [m]',
  `wlbMainArea` varchar(40) NOT NULL COMMENT 'Main area',
  `wlbDrillingFacility` varchar(50) DEFAULT NULL COMMENT 'Drilling facility',
  `wlbFacilityTypeDrilling` varchar(40) DEFAULT NULL COMMENT 'Facility type, drilling',
  `wlbProductionFacility` varchar(50) DEFAULT NULL COMMENT 'Production facility',
  `wlbLicensingActivity` varchar(40) NOT NULL COMMENT 'Licensing activity awarded in',
  `wlbMultilateral` varchar(3) NOT NULL COMMENT 'Multilateral',
  `wlbContentPlanned` varchar(40) DEFAULT NULL COMMENT 'Content - planned',
  `wlbEntryYear` int(11) NOT NULL COMMENT 'Entry year',
  `wlbCompletionYear` int(11) NOT NULL COMMENT 'Completion year',
  `wlbReclassFromWellbore` varchar(40) DEFAULT NULL COMMENT 'Reclassified from wellbore',
  `wlbPlotSymbol` int(11) NOT NULL COMMENT 'Plot symbol',
  `wlbGeodeticDatum` varchar(6) DEFAULT NULL COMMENT 'Geodetic datum',
  `wlbNsDeg` int(11) NOT NULL COMMENT 'NS degrees',
  `wlbNsMin` int(11) NOT NULL COMMENT 'NS minutes',
  `wlbNsSec` decimal(6,2) NOT NULL COMMENT 'NS seconds',
  `wlbNsCode` varchar(1) NOT NULL COMMENT 'NS code',
  `wlbEwDeg` int(11) NOT NULL COMMENT 'EW degrees',
  `wlbEwMin` int(11) NOT NULL COMMENT 'EW minutes',
  `wlbEwSec` decimal(6,2) NOT NULL COMMENT 'EW seconds',
  `wlbEwCode` varchar(1) DEFAULT NULL COMMENT 'EW code',
  `wlbNsDecDeg` decimal(13,6) NOT NULL COMMENT 'NS decimal degrees',
  `wlbEwDesDeg` decimal(13,6) NOT NULL COMMENT 'EW decimal degrees',
  `wlbNsUtm` decimal(13,6) NOT NULL COMMENT 'NS UTM [m]',
  `wlbEwUtm` decimal(13,6) NOT NULL COMMENT 'EW UTM [m]',
  `wlbUtmZone` int(11) NOT NULL COMMENT 'UTM zone',
  `wlbNamePart1` int(11) NOT NULL COMMENT 'Wellbore name, part 1',
  `wlbNamePart2` int(11) NOT NULL COMMENT 'Wellbore name, part 2',
  `wlbNamePart3` varchar(1) NOT NULL COMMENT 'Wellbore name, part 3',
  `wlbNamePart4` int(11) NOT NULL COMMENT 'Wellbore name, part 4',
  `wlbNamePart5` varchar(2) DEFAULT NULL COMMENT 'Wellbore name, part 5',
  `wlbNamePart6` varchar(2) DEFAULT NULL COMMENT 'Wellbore name, part 6',
  `wlbFactPageUrl` varchar(200) NOT NULL COMMENT 'FactPage url',
  `wlbFactMapUrl` varchar(200) NOT NULL COMMENT 'FactMap url',
  `wlbDiskosWellboreType` varchar(20) NOT NULL COMMENT 'DISKOS Well Type',
  `wlbDiskosWellboreParent` varchar(40) DEFAULT NULL COMMENT 'DISKOS Wellbore Parent',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `dscNpdidDiscovery` int(11) NOT NULL COMMENT 'NPDID discovery',
  `fldNpdidField` int(11) NOT NULL COMMENT 'NPDID field',
  `wlbWdssQcdate` date DEFAULT NULL,
  `prlNpdidProductionLicence` int(11) NOT NULL COMMENT 'NPDID production licence drilled in',
  `fclNpdidFacilityDrilling` int(11) DEFAULT NULL COMMENT 'NPDID drilling facility',
  `fclNpdidFacilityProducing` int(11) DEFAULT NULL COMMENT 'NPDID production facility',
  `wlbNpdidWellboreReclass` int(11) NOT NULL COMMENT 'NPDID wellbore reclassified from',
  `wlbDiskosWellOperator` varchar(40) NOT NULL COMMENT 'DISKOS well operator',
  `wlbDateUpdated` date NOT NULL COMMENT 'Date main level updated',
  `wlbDateUpdatedMax` date NOT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`),
  KEY `wlbDrillingOperator` (`wlbDrillingOperator`),
  KEY `dscNpdidDiscovery` (`dscNpdidDiscovery`),
  KEY `fldNpdidField` (`fldNpdidField`),
  KEY `prlNpdidProductionLicence` (`prlNpdidProductionLicence`),
  KEY `wlbNpdidWellboreReclass` (`wlbNpdidWellboreReclass`),
  KEY `wlbDiskosWellOperator` (`wlbDiskosWellOperator`),
  CONSTRAINT `wellbore_development_all_ibfk_7` FOREIGN KEY (`wlbDiskosWellOperator`) REFERENCES `company` (`cmpShortName`),
  CONSTRAINT `wellbore_development_all_ibfk_1` FOREIGN KEY (`wlbDrillingOperator`) REFERENCES `company` (`cmpLongName`),
  CONSTRAINT `wellbore_development_all_ibfk_2` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_development_all_ibfk_3` FOREIGN KEY (`dscNpdidDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`),
  CONSTRAINT `wellbore_development_all_ibfk_4` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`),
  CONSTRAINT `wellbore_development_all_ibfk_5` FOREIGN KEY (`prlNpdidProductionLicence`) REFERENCES `licence` (`prlNpdidLicence`),
  CONSTRAINT `wellbore_development_all_ibfk_6` FOREIGN KEY (`wlbNpdidWellboreReclass`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_document`
--

DROP TABLE IF EXISTS `wellbore_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_document` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbDocumentType` varchar(40) NOT NULL COMMENT 'Document type',
  `wlbDocumentName` varchar(200) NOT NULL COMMENT 'Document name',
  `wlbDocumentUrl` varchar(200) NOT NULL COMMENT 'Document URL',
  `wlbDocumentFormat` varchar(40) NOT NULL COMMENT 'Document format',
  `wlbDocumentSize` decimal(13,6) NOT NULL COMMENT 'Document size [MB]',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbDocumentDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  `wellbore_document_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wellbore_document_id`,`wlbNpdidWellbore`,`wlbDocumentName`),
  UNIQUE KEY `wellbore_document_id` (`wellbore_document_id`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_document_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_dst`
--

DROP TABLE IF EXISTS `wellbore_dst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_dst` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbDstTestNumber` decimal(13,6) NOT NULL COMMENT 'Test number',
  `wlbDstFromDepth` decimal(13,6) NOT NULL COMMENT 'From depth MD [m]',
  `wlbDstToDepth` decimal(13,6) NOT NULL COMMENT 'To depth MD [m]',
  `wlbDstChokeSize` decimal(13,6) NOT NULL COMMENT 'Choke size [mm]',
  `wlbDstFinShutInPress` decimal(13,6) NOT NULL COMMENT 'Final shut-in pressure [MPa]',
  `wlbDstFinFlowPress` decimal(13,6) NOT NULL COMMENT 'Final flow pressure [MPa]',
  `wlbDstBottomHolePress` decimal(13,6) NOT NULL COMMENT 'Bottom hole pressure [MPa]',
  `wlbDstOilProd` int(11) NOT NULL COMMENT 'Oil [Sm3/day]',
  `wlbDstGasProd` int(11) NOT NULL COMMENT 'Gas [Sm3/day]',
  `wlbDstOilDensity` decimal(13,6) NOT NULL COMMENT 'Oil density [g/cm3]',
  `wlbDstGasDensity` decimal(13,6) NOT NULL COMMENT 'Gas grav. rel.air',
  `wlbDstGasOilRelation` int(11) NOT NULL COMMENT 'GOR [m3/m3]',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbDstDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`,`wlbDstTestNumber`),
  CONSTRAINT `wellbore_dst_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_exploration_all`
--

DROP TABLE IF EXISTS `wellbore_exploration_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_exploration_all` (
  `wlbWellboreName` varchar(40) NOT NULL COMMENT 'Wellbore name',
  `wlbWell` varchar(40) NOT NULL COMMENT 'Well name',
  `wlbDrillingOperator` varchar(60) NOT NULL COMMENT 'Drilling operator',
  `wlbDrillingOperatorGroup` varchar(20) NOT NULL COMMENT 'Drilling operator group',
  `wlbProductionLicence` varchar(40) NOT NULL COMMENT 'Drilled in production licence',
  `wlbPurpose` varchar(40) NOT NULL COMMENT 'Purpose',
  `wlbStatus` varchar(40) DEFAULT NULL COMMENT 'Status',
  `wlbContent` varchar(40) DEFAULT NULL COMMENT 'Content',
  `wlbWellType` varchar(20) NOT NULL COMMENT 'Type',
  `wlbEntryDate` date DEFAULT NULL COMMENT 'Entry date',
  `wlbCompletionDate` date DEFAULT NULL COMMENT 'Completion date',
  `wlbField` varchar(40) DEFAULT NULL COMMENT 'Field',
  `wlbDrillPermit` varchar(10) NOT NULL COMMENT 'Drill permit',
  `wlbDiscovery` varchar(40) DEFAULT NULL COMMENT 'Discovery',
  `wlbDiscoveryWellbore` varchar(3) NOT NULL COMMENT 'Discovery wellbore',
  `wlbBottomHoleTemperature` int(11) DEFAULT NULL COMMENT 'Bottom hole temperature [°C]',
  `wlbSeismicLocation` varchar(200) DEFAULT NULL COMMENT 'Seismic location',
  `wlbMaxInclation` decimal(6,2) DEFAULT NULL COMMENT 'Maximum inclination [°]',
  `wlbKellyBushElevation` decimal(13,6) NOT NULL COMMENT 'Kelly bushing elevation [m]',
  `wlbFinalVerticalDepth` decimal(6,2) DEFAULT NULL COMMENT 'Final vertical depth (TVD) [m RKB]',
  `wlbTotalDepth` decimal(13,6) NOT NULL COMMENT 'Total depth (MD) [m RKB]',
  `wlbWaterDepth` decimal(13,6) NOT NULL COMMENT 'Water depth [m]',
  `wlbAgeAtTd` varchar(40) DEFAULT NULL COMMENT 'Oldest penetrated age',
  `wlbFormationAtTd` varchar(40) DEFAULT NULL COMMENT 'Oldest penetrated formation',
  `wlbMainArea` varchar(40) NOT NULL COMMENT 'Main area',
  `wlbDrillingFacility` varchar(50) NOT NULL COMMENT 'Drilling facility',
  `wlbFacilityTypeDrilling` varchar(40) NOT NULL COMMENT 'Facility type, drilling',
  `wlbLicensingActivity` varchar(40) NOT NULL COMMENT 'Licensing activity awarded in',
  `wlbMultilateral` varchar(3) NOT NULL COMMENT 'Multilateral',
  `wlbPurposePlanned` varchar(40) NOT NULL COMMENT 'Purpose - planned',
  `wlbEntryYear` int(11) NOT NULL COMMENT 'Entry year',
  `wlbCompletionYear` int(11) NOT NULL COMMENT 'Completion year',
  `wlbReclassFromWellbore` varchar(40) DEFAULT NULL COMMENT 'Reclassified from wellbore',
  `wlbReentryExplorationActivity` varchar(40) DEFAULT NULL COMMENT 'Reentry activity',
  `wlbPlotSymbol` int(11) NOT NULL COMMENT 'Plot symbol',
  `wlbFormationWithHc1` varchar(20) DEFAULT NULL COMMENT '1st level with HC, formation',
  `wlbAgeWithHc1` varchar(20) DEFAULT NULL COMMENT '1st level with HC, age',
  `wlbFormationWithHc2` varchar(20) DEFAULT NULL COMMENT '2nd level with HC, formation',
  `wlbAgeWithHc2` varchar(20) DEFAULT NULL COMMENT '2nd level with HC, age',
  `wlbFormationWithHc3` varchar(20) DEFAULT NULL COMMENT '3rd level with HC, formation',
  `wlbAgeWithHc3` char(20) DEFAULT NULL COMMENT '3rd level with HC, age',
  `wlbDrillingDays` int(11) NOT NULL COMMENT 'Drilling days',
  `wlbReentry` varchar(3) NOT NULL COMMENT 'Reentry',
  `wlbGeodeticDatum` varchar(6) DEFAULT NULL COMMENT 'Geodetic datum',
  `wlbNsDeg` int(11) NOT NULL COMMENT 'NS degrees',
  `wlbNsMin` int(11) NOT NULL COMMENT 'NS minutes',
  `wlbNsSec` decimal(6,2) NOT NULL COMMENT 'NS seconds',
  `wlbNsCode` varchar(1) NOT NULL COMMENT 'NS code',
  `wlbEwDeg` int(11) NOT NULL COMMENT 'EW degrees',
  `wlbEwMin` int(11) NOT NULL COMMENT 'EW minutes',
  `wlbEwSec` decimal(6,2) NOT NULL COMMENT 'EW seconds',
  `wlbEwCode` varchar(1) NOT NULL COMMENT 'EW code',
  `wlbNsDecDeg` decimal(13,6) NOT NULL COMMENT 'NS decimal degrees',
  `wlbEwDesDeg` decimal(13,6) NOT NULL COMMENT 'EW decimal degrees',
  `wlbNsUtm` decimal(13,6) NOT NULL COMMENT 'NS UTM [m]',
  `wlbEwUtm` decimal(13,6) NOT NULL COMMENT 'EW UTM [m]',
  `wlbUtmZone` int(11) NOT NULL COMMENT 'UTM zone',
  `wlbNamePart1` int(11) NOT NULL COMMENT 'Wellbore name, part 1',
  `wlbNamePart2` int(11) NOT NULL COMMENT 'Wellbore name, part 2',
  `wlbNamePart3` varchar(1) DEFAULT NULL COMMENT 'Wellbore name, part 3',
  `wlbNamePart4` int(11) NOT NULL COMMENT 'Wellbore name, part 4',
  `wlbNamePart5` varchar(2) DEFAULT NULL COMMENT 'Wellbore name, part 5',
  `wlbNamePart6` varchar(2) DEFAULT NULL COMMENT 'Wellbore name, part 6',
  `wlbPressReleaseUrl` varchar(200) DEFAULT NULL,
  `wlbFactPageUrl` varchar(200) NOT NULL COMMENT 'FactPage url',
  `wlbFactMapUrl` varchar(200) NOT NULL COMMENT 'FactMap url',
  `wlbDiskosWellboreType` varchar(20) NOT NULL COMMENT 'DISKOS Well Type',
  `wlbDiskosWellboreParent` varchar(40) DEFAULT NULL COMMENT 'DISKOS Wellbore Parent',
  `wlbWdssQcDate` date DEFAULT NULL COMMENT 'WDSS QC date',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `dscNpdidDiscovery` int(11) DEFAULT NULL COMMENT 'NPDID discovery',
  `fldNpdidField` int(11) DEFAULT NULL COMMENT 'NPDID field',
  `fclNpdidFacilityDrilling` int(11) NOT NULL COMMENT 'NPDID drilling facility',
  `wlbNpdidWellboreReclass` int(11) NOT NULL COMMENT 'NPDID wellbore reclassified from',
  `prlNpdidProductionLicence` int(11) NOT NULL COMMENT 'NPDID production licence drilled in',
  `wlbDiskosWellOperator` varchar(40) NOT NULL COMMENT 'DISKOS well operator',
  `wlbDateUpdated` date NOT NULL COMMENT 'Date main level updated',
  `wlbDateUpdatedMax` date NOT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`),
  KEY `wlbDrillingOperator` (`wlbDrillingOperator`),
  KEY `dscNpdidDiscovery` (`dscNpdidDiscovery`),
  KEY `fldNpdidField` (`fldNpdidField`),
  KEY `wlbNpdidWellboreReclass` (`wlbNpdidWellboreReclass`),
  KEY `prlNpdidProductionLicence` (`prlNpdidProductionLicence`),
  CONSTRAINT `wellbore_exploration_all_ibfk_6` FOREIGN KEY (`prlNpdidProductionLicence`) REFERENCES `licence` (`prlNpdidLicence`),
  CONSTRAINT `wellbore_exploration_all_ibfk_1` FOREIGN KEY (`wlbDrillingOperator`) REFERENCES `company` (`cmpLongName`),
  CONSTRAINT `wellbore_exploration_all_ibfk_2` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_exploration_all_ibfk_3` FOREIGN KEY (`dscNpdidDiscovery`) REFERENCES `discovery` (`dscNpdidDiscovery`),
  CONSTRAINT `wellbore_exploration_all_ibfk_4` FOREIGN KEY (`fldNpdidField`) REFERENCES `field` (`fldNpdidField`),
  CONSTRAINT `wellbore_exploration_all_ibfk_5` FOREIGN KEY (`wlbNpdidWellboreReclass`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_formation_top`
--

DROP TABLE IF EXISTS `wellbore_formation_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_formation_top` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `lsuTopDepth` decimal(13,6) NOT NULL COMMENT 'Top depth [m]',
  `lsuBottomDepth` decimal(13,6) NOT NULL COMMENT 'Bottom depth [m]',
  `lsuName` varchar(20) NOT NULL COMMENT 'Lithostrat. unit',
  `lsuLevel` varchar(9) NOT NULL COMMENT 'Level',
  `lsuNameParent` varchar(20) DEFAULT NULL COMMENT 'Lithostrat. unit, parent',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `lsuNpdidLithoStrat` int(11) NOT NULL COMMENT 'NPDID lithostrat. unit',
  `lsuNpdidLithoStratParent` int(11) DEFAULT NULL COMMENT 'NPDID parent lithostrat. unit',
  `lsuWellboreUpdatedDate` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`,`lsuNpdidLithoStrat`,`lsuTopDepth`,`lsuBottomDepth`),
  KEY `index__wellbore_formation_top__lsuName` (`lsuName`),
  CONSTRAINT `wellbore_formation_top_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_mud`
--

DROP TABLE IF EXISTS `wellbore_mud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_mud` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbMD` decimal(13,6) NOT NULL COMMENT 'Depth MD [m]',
  `wlbMudWeightAtMD` decimal(13,6) NOT NULL COMMENT 'Mud weight [g/cm3]',
  `wlbMudViscosityAtMD` decimal(13,6) NOT NULL COMMENT 'Visc. [mPa.s]',
  `wlbYieldPointAtMD` decimal(13,6) NOT NULL COMMENT 'Yield point [Pa]',
  `wlbMudType` varchar(40) DEFAULT NULL COMMENT 'Mud type',
  `wlbMudDateMeasured` date DEFAULT NULL COMMENT 'Date measured',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbMudDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  `wellbore_mud_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wellbore_mud_id`,`wlbNpdidWellbore`),
  UNIQUE KEY `wellbore_mud_id` (`wellbore_mud_id`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_mud_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB AUTO_INCREMENT=32768 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_npdid_overview`
--

DROP TABLE IF EXISTS `wellbore_npdid_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_npdid_overview` (
  `wlbWellboreName` varchar(40) NOT NULL COMMENT 'Wellbore name',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbWell` varchar(40) NOT NULL COMMENT 'Well name',
  `wlbWellType` varchar(20) DEFAULT NULL COMMENT 'Type',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_oil_sample`
--

DROP TABLE IF EXISTS `wellbore_oil_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_oil_sample` (
  `wlbName` varchar(60) NOT NULL COMMENT 'Wellbore name',
  `wlbOilSampleTestType` varchar(4) DEFAULT NULL COMMENT 'Test type',
  `wlbOilSampleTestNumber` varchar(10) DEFAULT NULL COMMENT 'Bottle test number',
  `wlbOilSampleTopDepth` decimal(13,6) NOT NULL COMMENT 'Top depth MD [m]',
  `wlbOilSampleBottomDepth` decimal(13,6) NOT NULL COMMENT 'Bottom depth MD [m]',
  `wlbOilSampleFluidType` varchar(20) DEFAULT NULL COMMENT 'Fluid type',
  `wlbOilSampleTestDate` date DEFAULT NULL COMMENT 'Test date and time of day',
  `wlbOilSampledateReceivedDate` date DEFAULT NULL COMMENT 'Received date',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbOilSampleDateUpdated` date DEFAULT NULL COMMENT 'Date updated',
  `dateSyncNPD` date NOT NULL,
  `wellbore_oil_sample_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wellbore_oil_sample_id`,`wlbNpdidWellbore`),
  UNIQUE KEY `wellbore_oil_sample_id` (`wellbore_oil_sample_id`),
  KEY `wlbNpdidWellbore` (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_oil_sample_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wellbore_shallow_all`
--

DROP TABLE IF EXISTS `wellbore_shallow_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_shallow_all` (
  `wlbWellboreName` varchar(40) NOT NULL COMMENT 'Wellbore name',
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbWell` varchar(40) NOT NULL COMMENT 'Well name',
  `wlbDrillingOperator` varchar(60) NOT NULL COMMENT 'Drilling operator',
  `wlbProductionLicence` varchar(40) DEFAULT NULL COMMENT 'Drilled in production licence',
  `wlbDrillingFacility` varchar(50) DEFAULT NULL COMMENT 'Drilling facility',
  `wlbEntryDate` date DEFAULT NULL COMMENT 'Entry date',
  `wlbCompletionDate` date DEFAULT NULL COMMENT 'Completion date',
  `wlbDrillPermit` varchar(10) NOT NULL COMMENT 'Drill permit',
  `wlbTotalDepth` decimal(13,6) NOT NULL COMMENT 'Total depth (MD) [m RKB]',
  `wlbWaterDepth` decimal(13,6) NOT NULL COMMENT 'Water depth [m]',
  `wlbMainArea` varchar(40) NOT NULL COMMENT 'Main area',
  `wlbEntryYear` int(11) NOT NULL COMMENT 'Entry year',
  `wlbCompletionYear` int(11) NOT NULL COMMENT 'Completion year',
  `wlbSeismicLocation` varchar(200) DEFAULT NULL COMMENT 'Seismic location',
  `wlbGeodeticDatum` varchar(6) DEFAULT NULL COMMENT 'Geodetic datum',
  `wlbNsDeg` int(11) NOT NULL COMMENT 'NS degrees',
  `wlbNsMin` int(11) NOT NULL COMMENT 'NS minutes',
  `wlbNsSec` decimal(6,2) NOT NULL COMMENT 'NS seconds',
  `wlbNsCode` varchar(1) DEFAULT NULL COMMENT 'NS code',
  `wlbEwDeg` int(11) NOT NULL COMMENT 'EW degrees',
  `wlbEwMin` int(11) NOT NULL COMMENT 'EW minutes',
  `wlbEwSec` decimal(6,2) NOT NULL COMMENT 'EW seconds',
  `wlbEwCode` varchar(1) DEFAULT NULL COMMENT 'EW code',
  `wlbNsDecDeg` decimal(13,6) NOT NULL COMMENT 'NS decimal degrees',
  `wlbEwDesDeg` decimal(13,6) NOT NULL COMMENT 'EW decimal degrees',
  `wlbNsUtm` decimal(13,6) NOT NULL COMMENT 'NS UTM [m]',
  `wlbEwUtm` decimal(13,6) NOT NULL COMMENT 'EW UTM [m]',
  `wlbUtmZone` int(11) NOT NULL COMMENT 'UTM zone',
  `wlbNamePart1` int(11) NOT NULL COMMENT 'Wellbore name, part 1',
  `wlbNamePart2` int(11) NOT NULL COMMENT 'Wellbore name, part 2',
  `wlbNamePart3` varchar(1) NOT NULL COMMENT 'Wellbore name, part 3',
  `wlbNamePart4` int(11) NOT NULL COMMENT 'Wellbore name, part 4',
  `wlbNamePart5` varchar(2) DEFAULT NULL COMMENT 'Wellbore name, part 5',
  `wlbNamePart6` varchar(2) DEFAULT NULL COMMENT 'Wellbore name, part 6',
  `wlbDateUpdated` date NOT NULL COMMENT 'Date main level updated',
  `wlbDateUpdatedMax` date NOT NULL COMMENT 'Date all updated',
  `dateSyncNPD` date NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`),
  CONSTRAINT `wellbore_shallow_all_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wlbPoint`
--

DROP TABLE IF EXISTS `wlbPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wlbPoint` (
  `wlbNpdidWellbore` int(11) NOT NULL COMMENT 'NPDID wellbore',
  `wlbWellName` varchar(40) NOT NULL,
  `wlbWellboreName` varchar(40) NOT NULL COMMENT 'Wellbore name',
  `wlbField` varchar(40) DEFAULT NULL COMMENT 'Field',
  `wlbProductionLicence` varchar(40) DEFAULT NULL COMMENT 'Drilled in production licence',
  `wlbWellType` varchar(20) DEFAULT NULL COMMENT 'Type',
  `wlbDrillingOperator` varchar(60) NOT NULL COMMENT 'Drilling operator',
  `wlbMultilateral` varchar(3) NOT NULL COMMENT 'Multilateral',
  `wlbDrillingFacility` varchar(50) DEFAULT NULL COMMENT 'Drilling facility',
  `wlbProductionFacility` varchar(50) DEFAULT NULL COMMENT 'Production facility',
  `wlbEntryDate` date DEFAULT NULL COMMENT 'Entry date',
  `wlbCompletionDate` date DEFAULT NULL COMMENT 'Completion date',
  `wlbContent` varchar(40) DEFAULT NULL COMMENT 'Content',
  `wlbStatus` varchar(40) DEFAULT NULL COMMENT 'Status',
  `wlbSymbol` int(11) NOT NULL,
  `wlbPurpose` varchar(40) DEFAULT NULL COMMENT 'Purpose',
  `wlbWaterDepth` decimal(13,6) NOT NULL COMMENT 'Water depth [m]',
  `wlbFactPageUrl` varchar(200) DEFAULT NULL COMMENT 'FactPage url',
  `wlbFactMapUrl` varchar(200) DEFAULT NULL COMMENT 'FactMap url',
  `wlbDiscoveryWellbore` varchar(3) NOT NULL COMMENT 'Discovery wellbore',
  `wlbPointGeometryWKT` point NOT NULL,
  PRIMARY KEY (`wlbNpdidWellbore`),
  CONSTRAINT `wlbPoint_ibfk_1` FOREIGN KEY (`wlbNpdidWellbore`) REFERENCES `wellbore_npdid_overview` (`wlbNpdidWellbore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-14 23:53:58
