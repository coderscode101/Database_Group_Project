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
9ecf2cc7-0c4f-11f1-b2a9-e6e8de752423:1-16';

--
-- Table structure for table `class_stats`
--

DROP TABLE IF EXISTS `class_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_stats` (
  `class_stats_id` int NOT NULL AUTO_INCREMENT,
  `inital_stat_value` int NOT NULL,
  `class_id` int NOT NULL,
  `stat_id` int NOT NULL,
  PRIMARY KEY (`class_stats_id`),
  UNIQUE KEY `unique_character_stat` (`class_id`,`stat_id`),
  KEY `class_id_idx` (`class_id`),
  KEY `fk_class_stats_stat_idx` (`stat_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `FK_class_stats_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_class_stats_stat` FOREIGN KEY (`stat_id`) REFERENCES `stats` (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_stats`
--

LOCK TABLES `class_stats` WRITE;
/*!40000 ALTER TABLE `class_stats` DISABLE KEYS */;
INSERT INTO `class_stats` VALUES (1,16,1,1),(2,14,1,3),(3,10,1,2),(4,8,1,4),(5,10,1,5),(6,8,1,6),(7,8,2,1),(8,12,2,2),(9,10,2,3),(10,12,2,4),(11,10,2,5),(12,16,2,6),(13,10,3,1),(14,10,3,2),(15,14,3,3),(16,10,3,4),(17,16,3,5),(18,12,3,6),(19,10,4,1),(20,12,4,2),(21,12,4,3),(22,10,4,4),(23,16,4,5),(24,10,4,6),(25,16,5,1),(26,12,5,2),(27,14,5,3),(28,10,5,4),(29,10,5,5),(30,8,5,6),(31,12,6,1),(32,16,6,2),(33,12,6,3),(34,10,6,4),(35,14,6,5),(36,8,6,6),(37,16,7,1),(38,10,7,2),(39,14,7,3),(40,10,7,4),(41,12,7,5),(42,14,7,6),(43,14,8,1),(44,14,8,2),(45,12,8,3),(46,10,8,4),(47,12,8,5),(48,10,8,6),(49,8,9,1),(50,16,9,2),(51,10,9,3),(52,12,9,4),(53,10,9,5),(54,14,9,6),(55,8,10,1),(56,12,10,2),(57,10,10,3),(58,14,10,4),(59,10,10,5),(60,16,10,6),(61,10,11,1),(62,12,11,2),(63,10,11,3),(64,14,11,4),(65,12,11,5),(66,16,11,6),(67,8,12,1),(68,12,12,2),(69,10,12,3),(70,16,12,4),(71,12,12,5),(72,10,12,6),(73,10,13,1),(74,12,13,2),(75,12,13,3),(76,16,13,4),(77,12,13,5),(78,10,13,6),(79,14,14,1),(80,14,14,2),(81,12,14,3),(82,10,14,4),(83,12,14,5),(84,10,14,6),(85,8,15,1),(86,12,15,2),(87,10,15,3),(88,16,15,4),(89,12,15,5),(90,10,15,6),(91,8,16,1),(92,10,16,2),(93,10,16,3),(94,16,16,4),(95,14,16,5),(96,8,16,6),(97,8,17,1),(98,12,17,2),(99,10,17,3),(100,16,17,4),(101,12,17,5),(102,10,17,6),(103,8,18,1),(104,12,18,2),(105,10,18,3),(106,14,18,4),(107,16,18,5),(108,12,18,6),(109,16,19,1),(110,10,19,2),(111,14,19,3),(112,10,19,4),(113,12,19,5),(114,10,19,6),(115,10,20,1),(116,16,20,2),(117,10,20,3),(118,12,20,4),(119,10,20,5),(120,14,20,6);
/*!40000 ALTER TABLE `class_stats` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:25
