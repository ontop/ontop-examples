CREATE DATABASE IF NOT EXISTS `bsbm1` DEFAULT CHARACTER SET utf8;

USE `bsbm1`;

-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 10.7.20.39    Database: bsbm1
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer` (
  `nr` int(11) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `producer` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `validFrom` datetime DEFAULT NULL,
  `validTo` datetime DEFAULT NULL,
  `deliveryDays` int(11) DEFAULT NULL,
  `offerWebpage` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`),
  KEY `product` (`product`) USING BTREE,
  KEY `vendor` (`vendor`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `nr` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mbox_sha1sum` char(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producer` (
  `nr` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `homepage` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `nr` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `producer` int(11) DEFAULT NULL,
  `propertyNum1` int(11) DEFAULT NULL,
  `propertyNum2` int(11) DEFAULT NULL,
  `propertyNum3` int(11) DEFAULT NULL,
  `propertyNum4` int(11) DEFAULT NULL,
  `propertyNum5` int(11) DEFAULT NULL,
  `propertyNum6` int(11) DEFAULT NULL,
  `propertyTex1` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `propertyTex2` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `propertyTex3` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `propertyTex4` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `propertyTex5` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `propertyTex6` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`),
  KEY `producer` (`producer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productfeature`
--

DROP TABLE IF EXISTS `productfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productfeature` (
  `nr` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productfeatureproduct`
--

DROP TABLE IF EXISTS `productfeatureproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productfeatureproduct` (
  `product` int(11) NOT NULL,
  `productFeature` int(11) NOT NULL,
  PRIMARY KEY (`product`,`productFeature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttype` (
  `nr` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producttypeproduct`
--

DROP TABLE IF EXISTS `producttypeproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttypeproduct` (
  `product` int(11) NOT NULL,
  `productType` int(11) NOT NULL,
  PRIMARY KEY (`product`,`productType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `nr` int(11) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `producer` int(11) DEFAULT NULL,
  `person` int(11) DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin,
  `language` char(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rating1` int(11) DEFAULT NULL,
  `rating2` int(11) DEFAULT NULL,
  `rating3` int(11) DEFAULT NULL,
  `rating4` int(11) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`),
  KEY `product` (`product`) USING BTREE,
  KEY `person` (`person`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `nr` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `homepage` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`)
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

-- Dump completed on 2016-06-28 13:18:02
