-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: character-database-dylanjablonski02-2000.i.aivencloud.com    Database: character_management
-- ------------------------------------------------------
-- Server version	8.0.45

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '1663ab26-03cb-11f1-9328-a282662bd2fd:1-15,
2b31c066-c297-11f0-b65a-52663f90e7a2:1-1665,
9ecf2cc7-0c4f-11f1-b2a9-e6e8de752423:1-15';

--
-- Table structure for table `class_proficiencies`
--

DROP TABLE IF EXISTS `class_proficiencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_proficiencies` (
  `class_proficiencies_id` int NOT NULL AUTO_INCREMENT,
  `max_given` int NOT NULL,
  `class_id` int NOT NULL,
  `proficiencies_id` int NOT NULL,
  PRIMARY KEY (`class_proficiencies_id`),
  UNIQUE KEY `unqiue_class_proficiencies` (`class_id`,`proficiencies_id`),
  KEY `class_id_idx` (`class_id`),
  KEY `fk_class_proficiencies_proficiencies` (`proficiencies_id`),
  CONSTRAINT `fk_class_proficiencies_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_class_proficiencies_proficiencies` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiencies` (`proficiencies_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_proficiencies`
--

LOCK TABLES `class_proficiencies` WRITE;
/*!40000 ALTER TABLE `class_proficiencies` DISABLE KEYS */;
INSERT INTO `class_proficiencies` VALUES (1,2,1,6),(2,1,1,20),(3,2,2,11),(4,1,2,13),(5,2,3,14),(6,1,3,4),(7,2,4,18),(8,1,4,14),(9,2,5,6),(10,1,5,3),(11,2,6,19),(12,1,6,20),(13,2,7,4),(14,1,7,13),(15,2,8,7),(16,1,8,18),(17,2,9,9),(18,1,9,10),(19,2,10,12),(20,1,10,19),(21,2,11,12),(22,1,11,5),(23,2,12,12),(24,1,12,5),(25,2,13,15),(26,1,13,16),(27,2,14,6),(28,1,14,10),(29,2,15,15),(30,1,15,14),(31,2,16,12),(32,1,16,5),(33,2,17,12),(34,1,17,17),(35,2,18,14),(36,1,18,7),(37,2,19,3),(38,1,19,4),(39,2,20,9),(40,1,20,10);
/*!40000 ALTER TABLE `class_proficiencies` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-17 17:36:17
