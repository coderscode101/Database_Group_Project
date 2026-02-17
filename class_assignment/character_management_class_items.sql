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
-- Table structure for table `class_items`
--

DROP TABLE IF EXISTS `class_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_items` (
  `class_item_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`class_item_id`),
  UNIQUE KEY `unique_class_item` (`class_id`,`item_id`),
  KEY `FK_class_items_class_idx` (`class_id`),
  KEY `FK_class_items_items_idx` (`item_id`),
  CONSTRAINT `FK_class_items_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  CONSTRAINT `FK_class_items_items` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_items`
--

LOCK TABLES `class_items` WRITE;
/*!40000 ALTER TABLE `class_items` DISABLE KEYS */;
INSERT INTO `class_items` VALUES (1,1,411,1),(2,1,418,1),(3,1,380,2),(4,1,384,1),(5,1,385,1),(6,1,388,1),(7,1,395,1),(8,1,396,1),(9,1,390,1),(10,1,372,3),(11,2,419,1),(12,2,420,1),(13,2,378,1),(14,2,379,1),(15,2,372,2),(16,2,375,1),(17,2,388,1),(18,3,411,1),(19,3,381,1),(20,3,383,1),(21,3,392,1),(22,3,372,2),(23,3,373,1),(24,4,427,1),(25,4,428,1),(26,4,422,1),(27,4,395,1),(28,4,386,1),(29,4,385,1),(30,4,388,1),(31,4,389,5),(32,4,372,2),(33,5,412,1),(34,5,413,1),(35,5,414,1),(36,5,383,1),(37,5,377,1),(38,5,378,1),(39,5,395,1),(40,5,388,1),(41,6,434,1),(42,6,437,1),(43,6,438,1),(44,6,392,1),(45,6,393,1),(46,6,374,3),(47,6,375,1),(48,6,398,1),(49,6,397,1),(50,7,418,1),(51,7,437,1),(52,7,392,1),(53,7,391,1),(54,7,374,2),(55,7,372,3),(56,7,395,1),(57,8,433,1),(58,8,434,1),(59,8,395,1),(60,8,390,1),(61,8,374,2),(62,8,372,2),(63,9,422,1),(64,9,395,1),(65,9,388,1),(66,9,393,1),(67,9,389,3),(68,10,437,1),(69,10,438,1),(70,10,392,1),(71,10,374,3),(72,10,375,1),(73,10,398,1),(74,10,393,1),(75,11,430,1),(76,11,429,1),(77,11,392,1),(78,11,395,1),(79,11,388,1),(80,11,372,2);
/*!40000 ALTER TABLE `class_items` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:14
