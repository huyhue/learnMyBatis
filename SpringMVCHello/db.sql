CREATE DATABASE  IF NOT EXISTS `demodb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `demodb`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: demodb
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hanshin`
--

DROP TABLE IF EXISTS `hanshin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hanshin` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTACHMENT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APPLICANT` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_DATE` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hanshin`
--

LOCK TABLES `hanshin` WRITE;
/*!40000 ALTER TABLE `hanshin` DISABLE KEYS */;
INSERT INTO `hanshin` VALUES ('1','complete','Pop-up production','Guidance in case of displaying processing','xlsx','Hong Gil Dong','1939-01-01'),('2','ok complte','Pop-up production2','Guidance in case of displaying processing','xlsx','Pard See Dong','1952-01-01'),('3','no complete','Pop-up production3','Guidance in case of displaying processing','xlsx','Lee Tee So','1960-01-01'),('4','complete','Pop-up production4','Guidance in case of displaying processing','xlsx','Ok san wa','1952-01-01'),('5','xyz','Pop-up production5','Guidance in case of displaying processing','xlsx','Oh dong ghu','1952-01-01');
/*!40000 ALTER TABLE `hanshin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ids`
--

DROP TABLE IF EXISTS `ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ids` (
  `TABLE_NAME` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `NEXT_ID` decimal(30,0) NOT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ids`
--

LOCK TABLES `ids` WRITE;
/*!40000 ALTER TABLE `ids` DISABLE KEYS */;
INSERT INTO `ids` VALUES ('SAMPLE',98);
/*!40000 ALTER TABLE `ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_YN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REG_USER` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES ('SAMPLE-00082','Runtime Environment1','Integration Layer','Y','eGov'),('SAMPLE-00083','Runtime Environment2','Integration Layer','Y','eGov'),('SAMPLE-00084','Runtime Environment3','Integration Layer','Y','eGov'),('SAMPLE-00085','Runtime Environment4','Integration Layer','Y','eGov'),('SAMPLE-00086','Runtime Environment5','Integration Layer','Y','eGov'),('SAMPLE-00088','LanHP','no content','Y','huyhue'),('SAMPLE-00089','huy','ok2','Y','huylap'),('SAMPLE-00090','ezogo','test thu','Y','thu1'),('SAMPLE-00091','quiz 1','1','Y','ok1');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-13 23:35:03
