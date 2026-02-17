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
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `weapon_id` int NOT NULL,
  `durability` int NOT NULL,
  `damage_dealt` int NOT NULL,
  `range_amount` int NOT NULL,
  `range_unit_type` varchar(10) NOT NULL,
  PRIMARY KEY (`weapon_id`),
  CONSTRAINT `weapon_item_fk` FOREIGN KEY (`weapon_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,100,18,3,'ft'),(2,80,18,80,'ft'),(3,120,17,0,'ft'),(402,60,10,5,'ft'),(403,100,19,5,'ft'),(404,120,6,5,'ft'),(405,140,10,5,'ft'),(406,150,12,5,'ft'),(407,120,8,5,'ft'),(408,140,5,5,'ft'),(409,150,19,5,'ft'),(410,160,2,5,'ft'),(411,160,11,5,'ft'),(412,80,10,15,'ft'),(413,90,17,20,'ft'),(414,90,12,20,'ft'),(415,100,9,25,'ft'),(416,70,9,30,'ft'),(417,100,19,3,'ft'),(418,150,8,3,'ft'),(419,170,1,3,'ft'),(420,150,3,3,'ft'),(421,90,9,10,'ft'),(422,110,16,15,'ft'),(423,130,11,20,'ft'),(424,140,10,20,'ft'),(425,160,13,25,'ft'),(427,110,16,150,'ft'),(428,120,1,180,'ft'),(429,130,18,140,'ft'),(430,120,5,90,'ft'),(431,130,13,100,'ft'),(432,150,6,120,'ft'),(433,90,14,30,'ft'),(434,100,9,30,'ft'),(435,110,2,60,'ft'),(436,110,5,60,'ft'),(437,120,19,70,'ft'),(438,100,17,60,'ft'),(439,100,6,60,'ft'),(440,100,2,60,'ft'),(441,130,9,15,'ft'),(442,130,20,5,'ft'),(443,140,13,5,'ft'),(444,140,3,5,'ft'),(445,120,15,10,'ft'),(446,100,7,40,'ft'),(447,90,11,10,'ft'),(448,130,12,3,'ft'),(449,130,6,3,'ft'),(450,130,14,15,'ft'),(451,200,10,5,'ft'),(452,200,10,5,'ft'),(453,190,19,200,'ft'),(454,190,4,3,'ft'),(455,180,5,25,'ft'),(456,180,9,20,'ft'),(457,190,10,5,'ft'),(458,190,1,3,'ft'),(508,70,5,15,'ft'),(509,90,7,15,'ft'),(511,130,14,25,'ft'),(512,160,17,25,'ft'),(513,90,7,5,'ft'),(514,110,10,5,'ft'),(515,130,13,5,'ft'),(516,140,15,5,'ft'),(517,160,18,5,'ft'),(518,100,9,5,'ft'),(519,120,12,5,'ft'),(520,140,15,5,'ft'),(521,150,17,5,'ft'),(522,180,20,5,'ft'),(523,70,8,3,'ft'),(524,110,12,3,'ft'),(525,130,15,3,'ft'),(526,150,17,3,'ft'),(527,180,20,3,'ft'),(528,60,4,10,'ft'),(529,110,10,15,'ft'),(530,120,12,15,'ft'),(531,140,14,20,'ft'),(532,170,18,25,'ft'),(533,120,12,140,'ft'),(534,130,14,160,'ft'),(535,140,16,180,'ft'),(536,130,13,90,'ft'),(537,150,17,110,'ft'),(538,110,10,60,'ft'),(539,120,12,60,'ft'),(540,130,13,60,'ft'),(543,100,8,10,'ft'),(544,130,13,30,'ft'),(545,140,15,60,'ft'),(546,160,17,70,'ft'),(547,150,16,60,'ft');
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:16
