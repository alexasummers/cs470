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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 16:46:21
