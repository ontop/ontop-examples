CREATE DATABASE  IF NOT EXISTS `vig_scale_5_dblp_2017_02_04` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vig_scale_5_dblp_2017_02_04`;
-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: 10.7.20.65    Database: dblp_2017_02_04
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `dblp_author_ref_new`
--

DROP TABLE IF EXISTS `dblp_author_ref_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblp_author_ref_new` (
  `id` int(8) NOT NULL COMMENT 'Our internal database key in dblp_pub_new',
  `author` varchar(70) NOT NULL DEFAULT '' COMMENT 'The author name',
  `editor` int(1) NOT NULL DEFAULT '0' COMMENT 'Bool being true when the author is editor of the book',
  `author_num` int(3) NOT NULL COMMENT 'The author number (from the implicit order in the dblp xml file)',
  PRIMARY KEY (`id`,`author`),
  KEY `dblp_auth_id` (`id`),
  KEY `dblp_author_names` (`author`),
  FULLTEXT KEY `dblp_author_ind_full` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='References between publication/collection and authors';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dblp_authorid_ref_new`
--

DROP TABLE IF EXISTS `dblp_authorid_ref_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblp_authorid_ref_new` (
  `id` int(8) NOT NULL COMMENT 'Our internal database key in dblp_pub_new',
  `author` varchar(70) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'The author name',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `pub_count` int(5) NOT NULL,
  PRIMARY KEY (`id`,`author`),
  KEY `aid_id` (`id`),
  KEY `aid_authors` (`author`),
  KEY `aid_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dblp_main_aliases_new`
--

DROP TABLE IF EXISTS `dblp_main_aliases_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblp_main_aliases_new` (
  `author` varchar(150) NOT NULL,
  `all_aliases` text,
  `author_id` int(11) DEFAULT NULL,
  `pub_count` decimal(32,0) DEFAULT NULL,
  `avg_pub_count` int(1) NOT NULL DEFAULT '0',
  `start_year` int(1) NOT NULL DEFAULT '0',
  `end_year` int(1) NOT NULL DEFAULT '0',
  `num_sources` int(1) NOT NULL DEFAULT '0',
  `hp_dblp_key` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `hp_ee` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `hp_publisher` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`author`),
  KEY `main_aliases_name` (`author`),
  KEY `main_aliases_id` (`author_id`),
  FULLTEXT KEY `main_aliases_author_full` (`author`),
  FULLTEXT KEY `main_aliasesall_author_full` (`all_aliases`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dblp_pub_new`
--

DROP TABLE IF EXISTS `dblp_pub_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblp_pub_new` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'The internal key in the database',
  `dblp_key` varchar(150) NOT NULL DEFAULT '' COMMENT 'The key in the xml file',
  `title` longtext NOT NULL COMMENT 'Title of the publication',
  `source` varchar(150) DEFAULT NULL COMMENT 'Name to the publication source, i.e. Conference, Journal, etc.; for collections, the booktitle is stored here',
  `source_id` varchar(50) DEFAULT NULL COMMENT 'Reference to the publication source (first part of the dblp_key)',
  `series` varchar(100) DEFAULT NULL COMMENT 'Reference to the publication series (books and proceedings only)',
  `year` int(4) unsigned NOT NULL DEFAULT '0' COMMENT 'The year of the publication',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT 'Type of publication, i.e. article, proceedings, etc.',
  `volume` varchar(50) DEFAULT NULL COMMENT 'Volume of the source where the publication was published',
  `number` varchar(20) DEFAULT NULL COMMENT 'Number of the source where the publication was published',
  `month` varchar(30) DEFAULT NULL COMMENT 'Month(s) when the publication was published',
  `pages` varchar(100) DEFAULT NULL COMMENT 'Pages in the source, i.e. for example the journal',
  `ee` varchar(200) DEFAULT NULL COMMENT 'external URL to the electronic edition of the publication',
  `ee_uniq` int(1) NOT NULL DEFAULT '1' COMMENT 'ee field is unique',
  `ee_PDF` varchar(200) DEFAULT NULL COMMENT 'external URL to the PDF version of the electronic edition of the publication',
  `url` varchar(150) DEFAULT NULL COMMENT 'DBLP-internal URL (starting with db/...) where a web-page for that publication can be found on DBLP',
  `publisher` varchar(250) DEFAULT NULL COMMENT 'Name of the publisher of the publication; school for theses; affiliation for homepages',
  `isbn` varchar(25) DEFAULT NULL COMMENT 'ISBN number of the collection',
  `crossref` varchar(50) DEFAULT NULL COMMENT 'dblpkey crossreference to one other publication (book, proceeding, in the dblp_collections table), in which this publication was published',
  `titleSignature` varchar(255) DEFAULT NULL COMMENT 'Title string without space and some common characters like !?,. for comparing the title with citeseer titles',
  `doi` varchar(255) DEFAULT NULL COMMENT 'The DOI of the publication',
  `doi_uniq` int(1) NOT NULL DEFAULT '1' COMMENT 'doi field is unique ',
  PRIMARY KEY (`id`),
  KEY `dblp_index_title` (`titleSignature`),
  KEY `dblp_index_crossref` (`crossref`),
  KEY `dblp_index_source` (`source`),
  KEY `dblp_index_type_source` (`type`,`source_id`,`source`),
  KEY `dblp_index_type_source2` (`source_id`,`type`,`source`),
  KEY `dblp_index_type_dblp_key` (`type`,`dblp_key`),
  KEY `dblp_index_type_dblp_key2` (`dblp_key`,`type`),
  FULLTEXT KEY `dblp_pub_new2_fulltext` (`title`),
  FULLTEXT KEY `dblp_pub_new2_fulltext2` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=5504954 DEFAULT CHARSET=utf8 COMMENT='Stores dblp publications of all types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dblp_ref_new`
--

DROP TABLE IF EXISTS `dblp_ref_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblp_ref_new` (
  `id` int(8) NOT NULL COMMENT 'Our internal database key in dblp_pub_new',
  `ref_id` varchar(150) NOT NULL DEFAULT '' COMMENT 'DBLP key of the publication being cited (not crossreferenced) by source',
  PRIMARY KEY (`id`,`ref_id`),
  KEY `dblp_ref_id` (`id`),
  KEY `dblp_ref_ref_id` (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Holds all citations (no cross-references) between dblp publications';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-19 10:55:23
