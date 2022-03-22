CREATE DATABASE  IF NOT EXISTS "uobm" /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `uobm`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 10.7.20.39    Database: uobm
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
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Authors` (
  `ID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `pubID` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`deptID`,`uniID`,`role`,`pubID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors`
--

LOCK TABLES `Authors` WRITE;
/*!40000 ALTER TABLE `Authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chairs`
--

DROP TABLE IF EXISTS `Chairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chairs` (
  `chairID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  PRIMARY KEY (`chairID`,`deptID`,`uniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chairs`
--

LOCK TABLES `Chairs` WRITE;
/*!40000 ALTER TABLE `Chairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Chairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Colleges`
--

DROP TABLE IF EXISTS `Colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Colleges` (
  `uniID` int(11) NOT NULL,
  `collegeID` int(11) NOT NULL,
  PRIMARY KEY (`uniID`,`collegeID`),
  CONSTRAINT `uniID` FOREIGN KEY (`uniID`) REFERENCES `Universities` (`uniID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Colleges`
--

LOCK TABLES `Colleges` WRITE;
/*!40000 ALTER TABLE `Colleges` DISABLE KEYS */;
/*!40000 ALTER TABLE `Colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseEnrollments`
--

DROP TABLE IF EXISTS `CourseEnrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseEnrollments` (
  `courseID` int(11) NOT NULL,
  `courseDeptID` int(11) NOT NULL,
  `courseUniID` int(11) NOT NULL,
  `courseType` varchar(45) NOT NULL,
  `studentID` int(11) NOT NULL,
  `studDeptID` int(11) NOT NULL,
  `studUniID` int(11) NOT NULL,
  `studentType` varchar(45) NOT NULL,
  PRIMARY KEY (`courseID`,`courseDeptID`,`courseUniID`,`courseType`,`studentID`,`studDeptID`,`studUniID`,`studentType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseEnrollments`
--

LOCK TABLES `CourseEnrollments` WRITE;
/*!40000 ALTER TABLE `CourseEnrollments` DISABLE KEYS */;
/*!40000 ALTER TABLE `CourseEnrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Courses` (
  `courseID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `courseType` varchar(45) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  PRIMARY KEY (`courseID`,`deptID`,`uniID`,`courseType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deans`
--

DROP TABLE IF EXISTS `Deans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Deans` (
  `collegeID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `profID` int(11) NOT NULL,
  `profType` varchar(45) NOT NULL,
  `personURI` varchar(500) NOT NULL,
  PRIMARY KEY (`collegeID`,`uniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deans`
--

LOCK TABLES `Deans` WRITE;
/*!40000 ALTER TABLE `Deans` DISABLE KEYS */;
/*!40000 ALTER TABLE `Deans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departments` (
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `collegeID` int(11) NOT NULL,
  `deptName` varchar(100) NOT NULL,
  PRIMARY KEY (`deptID`,`uniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Friends`
--

DROP TABLE IF EXISTS `Friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Friends` (
  `friendID` int(11) NOT NULL,
  `friendDeptID` int(11) NOT NULL,
  `friendUniID` int(11) NOT NULL,
  `friendRole` varchar(45) NOT NULL,
  `personID` int(11) NOT NULL,
  `personDeptID` int(11) NOT NULL,
  `personUniID` int(11) NOT NULL,
  `personRole` varchar(45) NOT NULL,
  PRIMARY KEY (`friendID`,`friendDeptID`,`friendUniID`,`friendRole`,`personID`,`personDeptID`,`personUniID`,`personRole`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Friends`
--

LOCK TABLES `Friends` WRITE;
/*!40000 ALTER TABLE `Friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `Friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GraduateStudents`
--

DROP TABLE IF EXISTS `GraduateStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GraduateStudents` (
  `studentID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `advisorID` int(11) DEFAULT NULL,
  `advisorType` varchar(45) NOT NULL,
  `UnderGradUnvID` int(11) DEFAULT NULL,
  `major` varchar(100) NOT NULL,
  `isResearchAsst` bit(1) NOT NULL,
  PRIMARY KEY (`studentID`,`uniID`,`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GraduateStudents`
--

LOCK TABLES `GraduateStudents` WRITE;
/*!40000 ALTER TABLE `GraduateStudents` DISABLE KEYS */;
/*!40000 ALTER TABLE `GraduateStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interests`
--

DROP TABLE IF EXISTS `Interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interests` (
  `ID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `interest` varchar(100) NOT NULL,
  `isCrazyAbout` bit(1) NOT NULL,
  PRIMARY KEY (`ID`,`deptID`,`uniID`,`role`,`interest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interests`
--

LOCK TABLES `Interests` WRITE;
/*!40000 ALTER TABLE `Interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `Interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lecturers`
--

DROP TABLE IF EXISTS `Lecturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lecturers` (
  `lecturerID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `underGradDegreeID` int(11) NOT NULL,
  `masterDegreeID` int(11) NOT NULL,
  `doctoralDegreeID` int(11) NOT NULL,
  `isWorking` bit(1) NOT NULL,
  PRIMARY KEY (`lecturerID`,`deptID`,`uniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lecturers`
--

LOCK TABLES `Lecturers` WRITE;
/*!40000 ALTER TABLE `Lecturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lecturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `People`
--

DROP TABLE IF EXISTS `People`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `People` (
  `ID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`deptID`,`uniID`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `People`
--

LOCK TABLES `People` WRITE;
/*!40000 ALTER TABLE `People` DISABLE KEYS */;
/*!40000 ALTER TABLE `People` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professors`
--

DROP TABLE IF EXISTS `Professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professors` (
  `profID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `profType` varchar(45) NOT NULL,
  `researchInterestID` int(11) DEFAULT NULL,
  `underGradDegreeID` int(11) NOT NULL,
  `masterDegreeID` int(11) NOT NULL,
  `doctoralDegreeID` int(11) NOT NULL,
  `isWorking` bit(1) NOT NULL,
  `isHeadOfDep` bit(1) NOT NULL,
  PRIMARY KEY (`profID`,`deptID`,`uniID`,`profType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professors`
--

LOCK TABLES `Professors` WRITE;
/*!40000 ALTER TABLE `Professors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publications`
--

DROP TABLE IF EXISTS `Publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publications` (
  `pubID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `pubType` varchar(100) NOT NULL,
  PRIMARY KEY (`pubID`,`deptID`,`uniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publications`
--

LOCK TABLES `Publications` WRITE;
/*!40000 ALTER TABLE `Publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `Publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResearchGroups`
--

DROP TABLE IF EXISTS `ResearchGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResearchGroups` (
  `resGroupID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  PRIMARY KEY (`resGroupID`,`uniID`,`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResearchGroups`
--

LOCK TABLES `ResearchGroups` WRITE;
/*!40000 ALTER TABLE `ResearchGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResearchGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupportStaff`
--

DROP TABLE IF EXISTS `SupportStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupportStaff` (
  `ssID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `staffType` varchar(20) NOT NULL,
  PRIMARY KEY (`ssID`,`deptID`,`uniID`,`staffType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupportStaff`
--

LOCK TABLES `SupportStaff` WRITE;
/*!40000 ALTER TABLE `SupportStaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `SupportStaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teaching`
--

DROP TABLE IF EXISTS `Teaching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teaching` (
  `courseID` int(11) NOT NULL,
  `courseType` varchar(45) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `teacherType` varchar(45) NOT NULL,
  `uniID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  PRIMARY KEY (`courseID`,`courseType`,`teacherID`,`teacherType`,`uniID`,`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teaching`
--

LOCK TABLES `Teaching` WRITE;
/*!40000 ALTER TABLE `Teaching` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teaching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeachingAssistants`
--

DROP TABLE IF EXISTS `TeachingAssistants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeachingAssistants` (
  `graduateStdID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  PRIMARY KEY (`uniID`,`graduateStdID`,`deptID`,`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeachingAssistants`
--

LOCK TABLES `TeachingAssistants` WRITE;
/*!40000 ALTER TABLE `TeachingAssistants` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeachingAssistants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnderGradStudents`
--

DROP TABLE IF EXISTS `UnderGradStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnderGradStudents` (
  `studentID` int(11) NOT NULL,
  `uniID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `major` varchar(100) NOT NULL,
  PRIMARY KEY (`studentID`,`uniID`,`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnderGradStudents`
--

LOCK TABLES `UnderGradStudents` WRITE;
/*!40000 ALTER TABLE `UnderGradStudents` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnderGradStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universities`
--

DROP TABLE IF EXISTS `Universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Universities` (
  `uniID` int(11) NOT NULL,
  `uniName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universities`
--

LOCK TABLES `Universities` WRITE;
/*!40000 ALTER TABLE `Universities` DISABLE KEYS */;
/*!40000 ALTER TABLE `Universities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-30 11:26:33
