CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: test
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
-- Table structure for table `citystatezip`
--

DROP TABLE IF EXISTS `citystatezip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citystatezip` (
  `Zip` int NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  PRIMARY KEY (`Zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citystatezip`
--

LOCK TABLES `citystatezip` WRITE;
/*!40000 ALTER TABLE `citystatezip` DISABLE KEYS */;
INSERT INTO `citystatezip` VALUES (11001,'Kirkland','KS'),(12001,'New Haven','WA'),(12002,'Rodez','WA'),(12003,'Castelló De La Plana','WA'),(12005,'Ballwin','MO'),(12011,'Connecticut','MO'),(12034,'Paesana','WA'),(12201,'Hallows','NE'),(21001,'Bellevue','KS'),(42001,'New Oregon','FL');
/*!40000 ALTER TABLE `citystatezip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ClientID` int NOT NULL AUTO_INCREMENT,
  `StaffID` int NOT NULL,
  `DrugID` int DEFAULT NULL,
  `Length_of_stay` int NOT NULL,
  `Vitals` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClientID`),
  UNIQUE KEY `ClientID` (`ClientID`),
  KEY `DrugID` (`DrugID`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`DrugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,1111,38,168,'Normal'),(2,2222,23,120,'Normal'),(3,2222,12,312,'Abnormal'),(4,1111,1,48,'Normal'),(5,3333,3,7,'Normal'),(6,3333,14,192,'Abnormal'),(7,5555,21,192,'Abnormal'),(8,4444,1,5,'Normal'),(9,5555,32,72,'Abnormal'),(10,1111,21,216,'Abnormal'),(11,1111,11,15,'Normal'),(12,2222,7,48,'Normal'),(13,4444,32,504,'Abnormal'),(14,2222,1,48,'Normal'),(15,5555,5,7,'Normal'),(16,5555,21,24,'Normal'),(17,4444,2,312,'Abnormal'),(18,1111,40,192,'Abnormal'),(19,3333,28,360,'Abnormal'),(20,5555,30,120,'Abnormal'),(21,3333,36,192,'Abnormal'),(22,4444,28,96,'Normal'),(23,3333,19,48,'Normal'),(24,3333,8,432,'Abnormal'),(25,2222,36,216,'Abnormal');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (10001,'A&E'),(10002,'Admissions'),(10003,'Anesthetics'),(10004,'Burns'),(10005,'Cardiology'),(10006,'CCU'),(10007,'ICU'),(10008,'Diagnostic Imaging'),(10009,'Discharge Lounge'),(10010,'Gastroenterology'),(10011,'General Surgery'),(10012,'Gynecology'),(10013,'Mammography'),(10014,'Maternity'),(10015,'Neonatal'),(10016,'Nephrology'),(10017,'Neurology'),(10018,'Oncology'),(10019,'Ophthalmology'),(10020,'Orthopedics'),(10021,'Otolaryngology'),(10022,'Pharmacy'),(10023,'Urology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `drugID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Interactions` varchar(100) NOT NULL,
  PRIMARY KEY (`drugID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'Lisinopril','Entresto'),(2,'Atorvastatin','Cyclosporine'),(3,'Levothyroxine','Metoprolol'),(4,'Metformin Hydrochloride','Acetazolamide'),(5,'Amlodipine','Clarithromycin'),(6,'Metoprolol','Ibuprofen'),(7,'Omeprazole','Rifampin'),(8,'Simvastatin','Warfarin'),(9,'Losartan Potassium','Rifampin'),(10,'Albuterol','NONE'),(11,'Gabapentin','Losartan'),(12,'Hydrochlorothiazide','Metoprolol'),(13,'Acetaminophen','Carbamazepine'),(14,'Sertraline Hydrochloride','Naproxen'),(15,'Fluticasone','Ritonavir'),(16,'Montelukast','Acetaminophen'),(17,'Furosemide','Amisulpride'),(18,'Amoxicillin','Demeclocycline'),(19,'Pantoprazole Sodium','Afatinib'),(20,'Escitalopram Oxalate','Warfarin'),(21,'Alprazolam','Carbamazepine'),(22,'Prednisone','Ciprofloxacin'),(23,'Bupropion','Eiglustat'),(24,'Bupropion','Cyclosporine'),(25,'Acetaminophen','Aspirin'),(26,'Citalopram','Clopidogrel'),(27,'Dextroamphetamine','Haloperidol'),(28,'Ibuprofen','Naproxen'),(29,'Carvedilol','Fingolimod'),(30,'Trazodone','Isocarboxazid'),(31,'Fluoxetine','Tryptophan'),(32,'Tramadol','Isocarboxazid'),(33,'Insulin','Lisinopril'),(34,'Clonazepam','Chlorpromazine'),(35,'Tamsulosin','Butabarbital'),(36,'Atenolol','Isocarboxazid'),(37,'Potassium','Captopril'),(38,'Meloxicam','Lisinopril'),(39,'Rosuvastatin','Atazanavir'),(40,'Clopidogrel ','Atorvastatin');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientdrugjunction`
--

DROP TABLE IF EXISTS `patientdrugjunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientdrugjunction` (
  `junctionID` int NOT NULL AUTO_INCREMENT,
  `patientID` int DEFAULT NULL,
  `drugID` int DEFAULT NULL,
  PRIMARY KEY (`junctionID`),
  UNIQUE KEY `patientID` (`patientID`),
  KEY `drugID` (`drugID`),
  CONSTRAINT `patientdrugjunction_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT,
  CONSTRAINT `patientdrugjunction_ibfk_2` FOREIGN KEY (`drugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdrugjunction`
--

LOCK TABLES `patientdrugjunction` WRITE;
/*!40000 ALTER TABLE `patientdrugjunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientdrugjunction` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_ID` int NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Department_ID` int NOT NULL,
  `Credentials` varchar(10) NOT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1111,'Jones','Susan',10005,'PhD'),(1112,'Moore','Jennifer',10007,'RN'),(1121,'Green','Stephanie',10018,'MD'),(2222,'Smith','Thomas',10011,'MD'),(2223,'Clark','William',10008,'APRN'),(2232,'Adams','Laura',10020,'APRN'),(3333,'Wells','Mindy',10015,'DO'),(3334,'White','David',10009,'PhD'),(3343,'Baker','Ryan',10021,'PA'),(4444,'Wilson','George',10017,'APRN'),(4445,'Perez','Sarah',10010,'DO'),(4454,'Campbell','Jonathan',10022,'DO'),(5555,'Bartlett','Diane',1005,'RN'),(5556,'Lewis','Ronald',10012,'RN'),(5565,'Davidson','James',10019,'RN'),(6666,'Brown','John',10002,'MD'),(6667,'Young','Carol',10013,'RN'),(7777,'Garcia','Robert',10003,'MD'),(7778,'King','Melissa',10014,'DO'),(8888,'Anderson','Mary',10004,'DO'),(8889,'Hill','Amy',10016,'PA'),(9999,'Taylor','Patricia',10006,'PA');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'test'
--

--
-- Dumping routines for database 'test'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_client_information` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_client_information`(
	IN cID int
)
BEGIN

SELECT ClientID, StaffID, DrugID, Length_of_stay, Vitals FROM client
	WHERE ClientID = cID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_vitals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_vitals`(
	IN newVitals VARCHAR(10)
)
BEGIN

UPDATE test.client
	SET Vitals = newVitals
    WHERE ClientID = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02  5:59:21
