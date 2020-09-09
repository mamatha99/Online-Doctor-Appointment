-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: world
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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `idappointment` int NOT NULL AUTO_INCREMENT,
  `dname` varchar(45) NOT NULL,
  `speciality` varchar(45) NOT NULL,
  `demail` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `pemail` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `datetime` varchar(45) NOT NULL,
  PRIMARY KEY (`idappointment`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'pra','cardio','pratyus11976@gmail.com','17093422750','pratynair1976@gmail.com','K pratyush',''),(2,'pra','cardio','pratyus11976@gmail.com','17093422750','pratyushnair1976@gmail.com','K pratyush',''),(3,'pra','cardio','pratyus11976@gmail.com','17093422750','pratyushnair1976@gmail.com','K pratyush',''),(4,'pra','cardio','pratyus11976@gmail.com','17093422750','pratyushnair1976@gmail.com','K pratyush',''),(5,'pra','cardio','pratyus11976@gmail.com','17093422750','pratyushnair1976@gmail.com','K pratyush',''),(6,'pra','cardio','pratyus11976@gmail.com','17093422750','pratyushnair1976@gmail.com','K pratyush',''),(8,'K pratttyush','neuro','nair1976@gmail.com','678930','pratyushnair1976@gmail.com','K pratyush',''),(9,'K pratttyush','neuro','nair1976@gmail.com','678930','pratyushnair1976@gmail.com','K pratyush','2020-08-27'),(10,'K pratttyush','neuro','nair1976@gmail.com','678930','dibbimumum@gmail.com','mumum','2020-08-26');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-27  1:28:58
