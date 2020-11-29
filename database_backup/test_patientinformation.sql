-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `patientinformation`
--

DROP TABLE IF EXISTS `patientinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientinformation` (
  `Last_Name` varchar(255) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `HouseNum` int NOT NULL,
  `Street` varchar(255) NOT NULL,
  `Apartment` int NOT NULL,
  `Zip` int NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `ICE_Fname` varchar(255) NOT NULL,
  `ICE_Lname` varchar(255) NOT NULL,
  `ICE_relation` varchar(255) NOT NULL,
  `ICE_number` varchar(255) NOT NULL,
  `patient_InformationID` int DEFAULT NULL,
  KEY `patient_InformationID` (`patient_InformationID`),
  KEY `Zip` (`Zip`),
  CONSTRAINT `patientinformation_ibfk_1` FOREIGN KEY (`patient_InformationID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `patientinformation_ibfk_2` FOREIGN KEY (`Zip`) REFERENCES `citystatezip` (`Zip`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientinformation`
--

LOCK TABLES `patientinformation` WRITE;
/*!40000 ALTER TABLE `patientinformation` DISABLE KEYS */;
INSERT INTO `patientinformation` VALUES ('Smith','Jacob',2444,'Spruce Road',0,12001,'123-123-1234','John','Smith','Father','122-124-1234',1),('Miller','Ginger',124,'Spring Lane',0,12011,'123-123-1235','Mary','Miller','Mother','122-124-1239',2),('Johnson','James',122,'Kings Circle',0,42001,'123-123-1134','Jake','Johnson','Brother','222-123-1111',3),('Jones','April',789,'Fall Lane',0,21001,'183-495-2039','May','Jones','Mother','931-304-2934',4),('Davis','Cindy',1231,'Forest Woods',621,12002,'123-495-6978','Martin','Davis','Husband','123-495-5976',5),('Williams','Michael',2333,'Spruce Road',0,12003,'123-444-5067','Lily','Williams','Sister','069-769-3456',6),('Wilson','Adam',872,'Happy Drive',0,12034,'344-344-5666','Kennie','Wilson','Mother','034-545-6578',7),('Clark','Matthew',1556,'Maverick Lane',0,11001,'123-123-1238','John','Clark','Father','122-156-1234',8),('Taylor','Mark',222,'Martin Luther King Road',0,12201,'123-123-1239','Nicholas','Taylor','Father','122-157-1234',9),('Davis','Nick',723,'Bellas Road',0,12005,'123-123-1240','Mary','Davis','Mother','122-158-1234',10),('Brown','Monica',334,'Kirkwood Circle',0,12001,'123-123-1241','Kim','Brown','Cousin','122-159-1234',11),('Garcia','Maya',2234,'Spring Lane',230,12003,'123-123-1242','Juan','Garcia','Grandfather','122-160-1235',12),('Smith','Bob',622,'Barret Street',0,12005,'123-123-1243','Mason','Hansen','Friend','122-161-1234',13),('Clark','Meredith',2334,'Junior Avenue',0,12005,'123-123-1244','Daniel','Clark','Husband','122-162-1234',14),('Lewis','Mona',7899,'Baldwin Drive',0,12003,'123-123-1245','Conner','Lewis','Brother','122-124-1263',15),('Robinson','Masie',641,'Blue Bright Lane',0,42001,'123-123-1246','Smith','Robinson','Father','164-124-1234',16),('Turner','Sanya',5324,'Callington Way',33,12005,'123-123-1247','Sonia','Turner','Mother','122-159-0034',17),('Cook','Heather',3214,'Kavenlaw Street',0,21001,'123-123-1248','Honey','Cook','Mother','122-166-1234',18),('Walker','Mason',4442,'Pellington Road',4,12003,'123-123-1249','Ginny','Walker','Wife','122-167-1234',19),('Young','Jason',6281,'Manor Lane',9,12002,'123-123-1250','Paulina','Sandoval','Friend','122-168-1234',20),('Scott','Samantha',782,'Langview Road',0,11001,'123-123-1251','Jamie','Scott','Husband','122-169-1234',21),('Nyugen','Li',9229,'Hammington Drive',0,12003,'123-123-1252','Han','Nyugen','Husband','122-170-1234',22),('Lopez','Alexander',532,'Carmen Road',0,12011,'123-123-1252','Mario','Lopez','Father','172-124-1234',23),('Hill','John',432,'Rockford Lane',0,12001,'123-123-1253','Judy','Hill','Mother','122-124-7334',24),('Green','Jimmy',9294,'Longview Drive',341,42001,'173-123-1255','Arnie','Green','Friend','122-174-1234',25);
/*!40000 ALTER TABLE `patientinformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 16:46:20
