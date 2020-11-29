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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 16:46:20
