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
-- Table structure for table `character_classes`
--

DROP TABLE IF EXISTS `character_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_classes` (
  `character_classes_id` int NOT NULL AUTO_INCREMENT,
  `character_id` int NOT NULL,
  `class_id` int NOT NULL,
  `class_level` int NOT NULL,
  PRIMARY KEY (`character_classes_id`),
  UNIQUE KEY `unique_character_class` (`character_id`,`class_id`),
  KEY `character_id_idx` (`character_id`),
  KEY `class_id_idx` (`class_id`),
  CONSTRAINT `FK_character_classes_character` FOREIGN KEY (`character_id`) REFERENCES `character` (`character_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_character_classes_classes` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_classes`
--

LOCK TABLES `character_classes` WRITE;
/*!40000 ALTER TABLE `character_classes` DISABLE KEYS */;
INSERT INTO `character_classes` VALUES (1,21,8,3),(2,22,5,5),(3,23,12,3),(4,24,11,3),(5,25,1,3),(6,26,9,3),(7,27,7,3),(8,28,3,4),(9,29,4,3),(10,31,2,3),(11,32,10,3),(12,36,6,3),(13,38,7,3),(14,39,14,4),(15,30,9,3),(17,33,4,3),(19,34,13,3),(21,35,12,3),(23,37,1,3),(25,40,9,3),(31,21,2,4),(32,23,2,3),(34,23,3,3),(35,42,1,3),(36,42,2,3),(37,42,3,3),(38,43,2,3),(39,44,2,3),(40,44,3,3),(41,25,3,1),(42,27,3,2),(44,26,3,1),(45,35,3,2),(47,43,3,1),(48,36,3,1),(50,40,2,1),(51,38,2,1),(52,45,1,1),(53,45,2,2);
/*!40000 ALTER TABLE `character_classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`avnadmin`@`%`*/ /*!50003 TRIGGER `giveCharacterClassItems` AFTER INSERT ON `character_classes` FOR EACH ROW BEGIN
	INSERT INTO `character_item` (`character_id`, `item_id`, `quantity`, `equipped`)
    SELECT
        NEW.`character_id`,
        ci.`item_id`,
        ci.`quantity`,
        0
    FROM `class_items` ci
    WHERE ci.`class_id` = NEW.`class_id`
    ON DUPLICATE KEY UPDATE
	quantity = ci.quantity + VALUES(quantity);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-17 17:36:20
