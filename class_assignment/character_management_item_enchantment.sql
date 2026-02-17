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
-- Table structure for table `item_enchantment`
--

DROP TABLE IF EXISTS `item_enchantment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_enchantment` (
  `item_enchantment_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `enchantment_id` int NOT NULL,
  PRIMARY KEY (`item_enchantment_id`),
  UNIQUE KEY `uq_item_enchantment_pair` (`item_id`,`enchantment_id`),
  KEY `fk_item_enchantment_enchantment` (`enchantment_id`),
  CONSTRAINT `fk_item_enchantment_enchantment` FOREIGN KEY (`enchantment_id`) REFERENCES `enchantment` (`enchantment_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_item_enchantment_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_enchantment`
--

LOCK TABLES `item_enchantment` WRITE;
/*!40000 ALTER TABLE `item_enchantment` DISABLE KEYS */;
INSERT INTO `item_enchantment` VALUES (1,1,1),(2,1,2),(3,1,3),(16,1,4),(18,1,8),(14,2,1),(4,2,4),(5,2,5),(15,3,2),(8,3,3),(6,3,6),(7,3,7),(19,3,10),(10,4,5),(9,4,8),(12,5,6),(17,5,7),(11,5,9),(13,5,10),(51,372,4),(70,372,6),(89,372,18),(50,373,4),(69,373,6),(88,373,18),(49,374,4),(68,374,6),(87,374,18),(48,375,4),(67,375,6),(86,375,18),(47,376,4),(66,376,6),(85,376,18),(46,377,4),(65,377,6),(84,377,18),(45,378,4),(64,378,6),(83,378,18),(44,379,4),(63,379,6),(82,379,18),(43,380,4),(62,380,6),(81,380,18),(42,381,4),(61,381,6),(80,381,18),(41,382,4),(60,382,6),(79,382,18),(40,383,4),(59,383,6),(78,383,18),(39,384,4),(58,384,6),(77,384,18),(38,385,4),(57,385,6),(76,385,18),(37,386,4),(56,386,6),(75,386,18),(36,387,4),(55,387,6),(74,387,18),(35,388,4),(54,388,6),(73,388,18),(34,389,4),(53,389,6),(72,389,18),(33,390,4),(52,390,6),(71,390,18);
/*!40000 ALTER TABLE `item_enchantment` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:19
