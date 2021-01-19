-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dassaultsystemes
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
-- Table structure for table `dependent_medical_history`
--

DROP TABLE IF EXISTS `dependent_medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependent_medical_history` (
  `dependentId` int NOT NULL,
  `dependentUser` int NOT NULL,
  `dependentIlliness` varchar(45) NOT NULL,
  `dependentDoctorDetail` varchar(45) NOT NULL,
  `dependentMedicine` varchar(45) NOT NULL,
  `dependentMedicineStartDate` datetime NOT NULL,
  `dependentMedicineEndDatw` datetime NOT NULL,
  `dependentDoageAmount` int NOT NULL,
  `dependentDosageFrequence` enum('Once','twice','thrice') DEFAULT NULL,
  `dependentDoageBreakfastTime` time DEFAULT NULL,
  `dependentDoageLunchTime` time DEFAULT NULL,
  `dependentDoageDinnerTime` time DEFAULT NULL,
  KEY `dependentId_idx` (`dependentId`),
  KEY `dependentUser` (`dependentUser`),
  CONSTRAINT `dependentId` FOREIGN KEY (`dependentId`) REFERENCES `user_dependent` (`dependentId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dependentUser` FOREIGN KEY (`dependentUser`) REFERENCES `user_info` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent_medical_history`
--

LOCK TABLES `dependent_medical_history` WRITE;
/*!40000 ALTER TABLE `dependent_medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependent_medical_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-19  1:06:13
