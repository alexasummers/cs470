CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
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
-- Temporary view structure for view `administration`
--

DROP TABLE IF EXISTS `administration`;
/*!50001 DROP VIEW IF EXISTS `administration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `administration` AS SELECT 
 1 AS `Last_Name`,
 1 AS `First_Name`,
 1 AS `HouseNum`,
 1 AS `Street`,
 1 AS `Apartment`,
 1 AS `Zip`,
 1 AS `Phone`,
 1 AS `ICE_Fname`,
 1 AS `ICE_Lname`,
 1 AS `ICE_relation`,
 1 AS `ICE_number`,
 1 AS `client_InformationID`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,1111,38,168,'Normal'),(2,2222,23,120,'Normal'),(3,2222,12,312,'Abnormal'),(4,1111,1,48,'Normal'),(5,3333,3,7,'Normal'),(6,3333,14,192,'Abnormal'),(7,5555,21,192,'Abnormal'),(8,4444,1,5,'Normal'),(9,5555,32,72,'Abnormal'),(10,1111,21,216,'Abnormal'),(11,1111,11,15,'Normal'),(12,2222,7,48,'Normal'),(13,4444,32,504,'Abnormal'),(14,2222,1,48,'Normal'),(15,5555,5,7,'Normal'),(16,5555,21,24,'Normal'),(17,4444,2,312,'Abnormal'),(18,1111,40,192,'Abnormal'),(19,3333,28,360,'Abnormal'),(20,5555,30,120,'Abnormal'),(21,3333,36,192,'Abnormal'),(22,4444,28,96,'Normal'),(23,3333,19,48,'Normal'),(24,3333,8,432,'Abnormal'),(25,2222,36,216,'Abnormal'),(49,2232,41,15,'Abnormal'),(50,2222,12,123,'no');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientdrugjunction`
--

DROP TABLE IF EXISTS `clientdrugjunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientdrugjunction` (
  `ClientID` int NOT NULL,
  `DrugID` int NOT NULL,
  PRIMARY KEY (`ClientID`,`DrugID`),
  KEY `drug_fk` (`DrugID`),
  CONSTRAINT `client2_fk` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT,
  CONSTRAINT `drug_fk` FOREIGN KEY (`DrugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientdrugjunction`
--

LOCK TABLES `clientdrugjunction` WRITE;
/*!40000 ALTER TABLE `clientdrugjunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientdrugjunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientstaffjunction`
--

DROP TABLE IF EXISTS `clientstaffjunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientstaffjunction` (
  `ClientID` int NOT NULL,
  `StaffID` int NOT NULL,
  PRIMARY KEY (`ClientID`,`StaffID`),
  KEY `staff_fk` (`StaffID`),
  CONSTRAINT `client_fk` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT,
  CONSTRAINT `staff_fk` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`Staff_ID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientstaffjunction`
--

LOCK TABLES `clientstaffjunction` WRITE;
/*!40000 ALTER TABLE `clientstaffjunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientstaffjunction` ENABLE KEYS */;
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
-- Temporary view structure for view `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!50001 DROP VIEW IF EXISTS `doctor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctor` AS SELECT 
 1 AS `Last_Name`,
 1 AS `First_Name`,
 1 AS `HouseNum`,
 1 AS `Street`,
 1 AS `Apartment`,
 1 AS `Zip`,
 1 AS `Phone`,
 1 AS `ICE_Fname`,
 1 AS `ICE_Lname`,
 1 AS `ICE_relation`,
 1 AS `ICE_number`,
 1 AS `client_InformationID`,
 1 AS `ClientID`,
 1 AS `StaffID`,
 1 AS `DrugID`,
 1 AS `Length_of_stay`,
 1 AS `Vitals`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `loginID` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`loginID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','$2y$10$4IL1ixYfu/Ok7X3V843tAeKInfFI90HdALiWBnBxs.mhc8RK3N8X.'),(2,'doctor','$2y$10$DQwDPL8WJ8UqbueeO8.WBOGnr7p/oWPZDvvwp1KxzKJ8nI626WBdK'),(3,'nurse','$2y$10$PXugIto6/qEgtkx37Fnj4.BwOC6Tx.cOksHZP83BcYdLBpTe9yYYi'),(4,'practitioner','$2y$10$E3LsWPOJ5MmbvqXfYeapuO9U0ZMZJhMmAeCE/cMS7cKNnA/ziqg3u'),(5,'examiner','$2y$10$pyK07srlBtx07vjG8hh.C.euOjPEf07Pn2fjObkqvDHXVtip/FJ5q'),(6,'surgeon','$2y$10$LjQ.RpV4hv9D094KC86YZOFYgT6DF2JgQcd/uOA1Q/1OdXEWx229S'),(7,'assistant','$2y$10$xMsaQDNsjWLROPqyjbijPOKlFwRHHdevbhfePdBHHV/A9UJUHFIyu');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2345346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'Lisinopril','Entresto'),(2,'Atorvastatin','Cyclosporine'),(3,'Levothyroxine','Metoprolol'),(4,'Metformin Hydrochloride','Acetazolamide'),(5,'Amlodipine','Clarithromycin'),(6,'Metoprolol','Ibuprofen'),(7,'Omeprazole','Rifampin'),(8,'Simvastatin','Warfarin'),(9,'Losartan Potassium','Rifampin'),(10,'Albuterol','NONE'),(11,'Gabapentin','Losartan'),(12,'Hydrochlorothiazide','Metoprolol'),(13,'Acetaminophen','Carbamazepine'),(14,'Sertraline Hydrochloride','Naproxen'),(15,'Fluticasone','Ritonavir'),(16,'Montelukast','Acetaminophen'),(17,'Furosemide','Amisulpride'),(18,'Amoxicillin','Demeclocycline'),(19,'Pantoprazole Sodium','Afatinib'),(20,'Escitalopram Oxalate','Warfarin'),(21,'Alprazolam','Carbamazepine'),(22,'Prednisone','Ciprofloxacin'),(23,'Bupropion','Eiglustat'),(24,'Bupropion','Cyclosporine'),(25,'Acetaminophen','Aspirin'),(26,'Citalopram','Clopidogrel'),(27,'Dextroamphetamine','Haloperidol'),(28,'Ibuprofen','Naproxen'),(29,'Carvedilol','Fingolimod'),(30,'Trazodone','Isocarboxazid'),(31,'Fluoxetine','Tryptophan'),(32,'Tramadol','Isocarboxazid'),(33,'Insulin','Lisinopril'),(34,'Clonazepam','Chlorpromazine'),(35,'Tamsulosin','Butabarbital'),(36,'Atenolol','Isocarboxazid'),(37,'Potassium','Captopril'),(38,'Meloxicam','Lisinopril'),(39,'Rosuvastatin','Atazanavir'),(40,'Clopidogrel ','Atorvastatin'),(41,'Vasotec','Sacubitril');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicinestaffjunction`
--

DROP TABLE IF EXISTS `medicinestaffjunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinestaffjunction` (
  `DrugID` int NOT NULL,
  `Staff_ID` int NOT NULL,
  PRIMARY KEY (`DrugID`,`Staff_ID`),
  KEY `staff2_fk` (`Staff_ID`),
  CONSTRAINT `drug2_fk` FOREIGN KEY (`DrugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT,
  CONSTRAINT `staff2_fk` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinestaffjunction`
--

LOCK TABLES `medicinestaffjunction` WRITE;
/*!40000 ALTER TABLE `medicinestaffjunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicinestaffjunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!50001 DROP VIEW IF EXISTS `nurse`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nurse` AS SELECT 
 1 AS `Last_name`,
 1 AS `First_name`,
 1 AS `ClientID`,
 1 AS `DrugID`,
 1 AS `Length_of_stay`,
 1 AS `Vitals`*/;
SET character_set_client = @saved_cs_client;

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
  `client_InformationID` int DEFAULT NULL,
  KEY `patient_InformationID` (`client_InformationID`),
  KEY `Zip` (`Zip`),
  CONSTRAINT `patientinformation_ibfk_1` FOREIGN KEY (`client_InformationID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
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
  `loginID` int DEFAULT NULL,
  `Staff_ID` int NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Department_ID` int NOT NULL,
  `Credentials` varchar(10) NOT NULL,
  PRIMARY KEY (`Staff_ID`),
  KEY `loginID` (`loginID`),
  KEY `Department_ID` (`Department_ID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`loginID`) REFERENCES `login` (`loginID`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (2,1111,'Jones','Susan',10005,'PhD'),(3,1112,'Moore','Jennifer',10007,'RN'),(2,1121,'Green','Stephanie',10018,'MD'),(2,2222,'Smith','Thomas',10011,'MD'),(4,2223,'Clark','William',10008,'APRN'),(4,2232,'Adams','Laura',10020,'APRN'),(2,3333,'Wells','Mindy',10015,'DO'),(2,3334,'White','David',10009,'PhD'),(7,3343,'Baker','Ryan',10021,'PA'),(4,4444,'Wilson','George',10017,'APRN'),(2,4445,'Perez','Sarah',10010,'DO'),(2,4454,'Campbell','Jonathan',10022,'DO'),(3,5555,'Bartlett','Diane',10005,'RN'),(3,5556,'Lewis','Ronald',10012,'RN'),(3,5565,'Davidson','James',10019,'RN'),(2,6666,'Brown','John',10002,'MD'),(3,6667,'Young','Carol',10013,'RN'),(2,7777,'Garcia','Robert',10003,'MD'),(2,7778,'King','Melissa',10014,'DO'),(2,8888,'Anderson','Mary',10004,'DO'),(7,8889,'Hill','Amy',10016,'PA'),(7,9999,'Taylor','Patricia',10006,'PA');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `administration`
--

/*!50001 DROP VIEW IF EXISTS `administration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `administration` AS select `patientinformation`.`Last_Name` AS `Last_Name`,`patientinformation`.`First_Name` AS `First_Name`,`patientinformation`.`HouseNum` AS `HouseNum`,`patientinformation`.`Street` AS `Street`,`patientinformation`.`Apartment` AS `Apartment`,`patientinformation`.`Zip` AS `Zip`,`patientinformation`.`Phone` AS `Phone`,`patientinformation`.`ICE_Fname` AS `ICE_Fname`,`patientinformation`.`ICE_Lname` AS `ICE_Lname`,`patientinformation`.`ICE_relation` AS `ICE_relation`,`patientinformation`.`ICE_number` AS `ICE_number`,`patientinformation`.`client_InformationID` AS `client_InformationID` from `patientinformation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `doctor`
--

/*!50001 DROP VIEW IF EXISTS `doctor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctor` AS select `patientinformation`.`Last_Name` AS `Last_Name`,`patientinformation`.`First_Name` AS `First_Name`,`patientinformation`.`HouseNum` AS `HouseNum`,`patientinformation`.`Street` AS `Street`,`patientinformation`.`Apartment` AS `Apartment`,`patientinformation`.`Zip` AS `Zip`,`patientinformation`.`Phone` AS `Phone`,`patientinformation`.`ICE_Fname` AS `ICE_Fname`,`patientinformation`.`ICE_Lname` AS `ICE_Lname`,`patientinformation`.`ICE_relation` AS `ICE_relation`,`patientinformation`.`ICE_number` AS `ICE_number`,`patientinformation`.`client_InformationID` AS `client_InformationID`,`client`.`ClientID` AS `ClientID`,`client`.`StaffID` AS `StaffID`,`client`.`DrugID` AS `DrugID`,`client`.`Length_of_stay` AS `Length_of_stay`,`client`.`Vitals` AS `Vitals` from (`patientinformation` join `client`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nurse`
--

/*!50001 DROP VIEW IF EXISTS `nurse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nurse` AS select `patientinformation`.`Last_Name` AS `Last_name`,`patientinformation`.`First_Name` AS `First_name`,`client`.`ClientID` AS `ClientID`,`client`.`DrugID` AS `DrugID`,`client`.`Length_of_stay` AS `Length_of_stay`,`client`.`Vitals` AS `Vitals` from (`patientinformation` join `client` on((`patientinformation`.`client_InformationID` = `client`.`ClientID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 10:32:00
