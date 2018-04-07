-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: bsbm250k
-- ------------------------------------------------------
-- Server version	5.7.21

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
  `offerWebpage` varchar(100) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`),
  KEY `product` (`product`),
  KEY `vendor` (`vendor`),
  KEY `offer_producer_nr_fk` (`producer`),
  CONSTRAINT `offer_producer_nr_fk` FOREIGN KEY (`producer`) REFERENCES `producer` (`nr`),
  CONSTRAINT `offer_product_nr_fk` FOREIGN KEY (`product`) REFERENCES `product` (`nr`),
  CONSTRAINT `offer_vendor_nr_fk` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`nr`)
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
  `name` varchar(30) DEFAULT NULL,
  `mbox_sha1sum` char(40) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
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
  `label` varchar(100) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
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
  `label` varchar(100) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `producer` int(11) DEFAULT NULL,
  `propertyNum1` int(11) DEFAULT NULL,
  `propertyNum2` int(11) DEFAULT NULL,
  `propertyNum3` int(11) DEFAULT NULL,
  `propertyNum4` int(11) DEFAULT NULL,
  `propertyNum5` int(11) DEFAULT NULL,
  `propertyNum6` int(11) DEFAULT NULL,
  `propertyTex1` varchar(250) DEFAULT NULL,
  `propertyTex2` varchar(250) DEFAULT NULL,
  `propertyTex3` varchar(250) DEFAULT NULL,
  `propertyTex4` varchar(250) DEFAULT NULL,
  `propertyTex5` varchar(250) DEFAULT NULL,
  `propertyTex6` varchar(250) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`),
  KEY `producer` (`producer`)
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
  `label` varchar(100) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
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
  PRIMARY KEY (`product`,`productFeature`),
  KEY `productfeatureproduct_productfeature_nr_fk` (`productFeature`),
  CONSTRAINT `productfeatureproduct_product_nr_fk` FOREIGN KEY (`product`) REFERENCES `product` (`nr`),
  CONSTRAINT `productfeatureproduct_productfeature_nr_fk` FOREIGN KEY (`productFeature`) REFERENCES `productfeature` (`nr`)
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
  `label` varchar(100) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
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
  PRIMARY KEY (`product`,`productType`),
  KEY `producttypeproduct_producttype_nr_fk` (`productType`),
  CONSTRAINT `producttypeproduct_product_nr_fk` FOREIGN KEY (`product`) REFERENCES `product` (`nr`),
  CONSTRAINT `producttypeproduct_producttype_nr_fk` FOREIGN KEY (`productType`) REFERENCES `producttype` (`nr`)
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
  `title` varchar(200) DEFAULT NULL,
  `text` text,
  `language` char(2) DEFAULT NULL,
  `rating1` int(11) DEFAULT NULL,
  `rating2` int(11) DEFAULT NULL,
  `rating3` int(11) DEFAULT NULL,
  `rating4` int(11) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`nr`),
  KEY `product` (`product`),
  KEY `person` (`person`),
  KEY `review_producer_nr_fk` (`producer`),
  CONSTRAINT `review_person_nr_fk` FOREIGN KEY (`person`) REFERENCES `person` (`nr`),
  CONSTRAINT `review_producer_nr_fk` FOREIGN KEY (`producer`) REFERENCES `producer` (`nr`),
  CONSTRAINT `review_product_nr_fk` FOREIGN KEY (`product`) REFERENCES `product` (`nr`)
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
  `label` varchar(100) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
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

-- Dump completed on 2018-04-04  9:52:23
