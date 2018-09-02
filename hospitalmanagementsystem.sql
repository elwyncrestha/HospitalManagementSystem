CREATE DATABASE  IF NOT EXISTS `hospitalmanagementsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hospitalmanagementsystem`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmanagementsystem
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `contactme_tbl`
--

DROP TABLE IF EXISTS `contactme_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactme_tbl` (
  `contactId` int(11) NOT NULL,
  `contactEmail` varchar(255) DEFAULT NULL,
  `contactMessage` varchar(500) DEFAULT NULL,
  `contactName` varchar(255) DEFAULT NULL,
  `contactNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department_tbl`
--

DROP TABLE IF EXISTS `department_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_tbl` (
  `departmentId` int(11) NOT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_tbl`
--

DROP TABLE IF EXISTS `doctor_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_tbl` (
  `doctorId` int(11) NOT NULL,
  `doctorCountry` varchar(255) DEFAULT NULL,
  `doctorDOB` varchar(255) DEFAULT NULL,
  `doctorEduBG` varchar(255) DEFAULT NULL,
  `doctorFirstName` varchar(255) DEFAULT NULL,
  `doctorGender` char(1) NOT NULL,
  `doctorLastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nurse_tbl`
--

DROP TABLE IF EXISTS `nurse_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse_tbl` (
  `nurseId` int(11) NOT NULL,
  `nurseCountry` varchar(255) DEFAULT NULL,
  `nurseDOB` varchar(255) DEFAULT NULL,
  `nurseEduBG` varchar(255) DEFAULT NULL,
  `nurseFirstName` varchar(255) DEFAULT NULL,
  `nurseGender` varchar(255) DEFAULT NULL,
  `nurseLastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nurseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patient_tbl`
--

DROP TABLE IF EXISTS `patient_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_tbl` (
  `patientId` int(11) NOT NULL,
  `healthProblem` varchar(255) DEFAULT NULL,
  `patientCountry` varchar(255) DEFAULT NULL,
  `patientDOB` varchar(255) DEFAULT NULL,
  `patientFirstName` varchar(255) DEFAULT NULL,
  `patientGender` char(1) NOT NULL,
  `patientLastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_tbl`
--

DROP TABLE IF EXISTS `service_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_tbl` (
  `serviceId` int(11) NOT NULL,
  `serviceCost` float NOT NULL,
  `serviceEndTime` varchar(255) DEFAULT NULL,
  `serviceName` varchar(255) DEFAULT NULL,
  `serviceStartTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`serviceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userlogin_tbl`
--

DROP TABLE IF EXISTS `userlogin_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogin_tbl` (
  `id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtn7hgr9wh8n9t2hc7i94tm3sq` (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userrole_tbl`
--

DROP TABLE IF EXISTS `userrole_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole_tbl` (
  `roleId` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userrole_tbl_userlogin_tbl`
--

DROP TABLE IF EXISTS `userrole_tbl_userlogin_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole_tbl_userlogin_tbl` (
  `UserRole_roleId` int(11) NOT NULL,
  `userLogin_id` int(11) NOT NULL,
  UNIQUE KEY `UK_ateug14fst9g27o2mm2lh0pno` (`userLogin_id`),
  KEY `FKnk5c3r1yrubec5v4g3k1k4kva` (`UserRole_roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-02 14:17:11
