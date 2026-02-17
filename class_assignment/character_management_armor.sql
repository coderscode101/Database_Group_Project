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
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor` (
  `armor_id` int NOT NULL,
  `durability` int NOT NULL,
  `damage_reduction` int NOT NULL,
  `armor_type` enum('Helmet','Chestplate','Leggings','Boots','Shield') NOT NULL,
  PRIMARY KEY (`armor_id`),
  CONSTRAINT `armor_item_id` FOREIGN KEY (`armor_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (4,75,2,'Helmet'),(5,150,5,'Chestplate'),(459,60,1,'Helmet'),(460,100,8,'Helmet'),(461,120,10,'Helmet'),(462,130,11,'Helmet'),(463,140,12,'Helmet'),(464,150,13,'Helmet'),(465,170,16,'Helmet'),(466,60,2,'Chestplate'),(467,90,4,'Chestplate'),(468,100,5,'Chestplate'),(469,110,7,'Chestplate'),(470,130,9,'Chestplate'),(471,140,11,'Chestplate'),(472,160,14,'Chestplate'),(473,200,20,'Chestplate'),(474,80,4,'Chestplate'),(475,100,6,'Chestplate'),(476,90,5,'Chestplate'),(477,50,1,'Leggings'),(478,90,6,'Leggings'),(479,100,7,'Leggings'),(480,120,9,'Leggings'),(481,130,10,'Leggings'),(482,140,11,'Leggings'),(483,170,14,'Leggings'),(484,40,0,'Boots'),(485,70,2,'Boots'),(486,90,3,'Boots'),(487,110,7,'Boots'),(488,120,8,'Boots'),(489,90,4,'Boots'),(490,100,5,'Boots'),(491,70,2,'Shield'),(492,90,3,'Shield'),(493,110,6,'Shield'),(494,150,15,'Shield'),(495,120,7,'Shield'),(496,180,18,'Shield'),(497,170,17,'Shield'),(498,110,8,'Chestplate'),(499,150,13,'Chestplate'),(500,100,7,'Chestplate'),(501,170,15,'Chestplate'),(502,130,10,'Helmet'),(503,120,9,'Helmet'),(504,120,10,'Leggings'),(505,95,5,'Boots'),(506,130,11,'Shield'),(507,110,8,'Chestplate'),(548,90,4,'Helmet'),(549,110,8,'Helmet'),(550,130,10,'Helmet'),(551,140,11,'Helmet'),(552,150,12,'Helmet'),(553,170,14,'Helmet'),(554,150,13,'Helmet'),(555,200,20,'Helmet'),(556,70,2,'Chestplate'),(557,90,4,'Chestplate'),(558,100,5,'Chestplate'),(559,110,7,'Chestplate'),(560,130,9,'Chestplate'),(561,140,11,'Chestplate'),(562,160,14,'Chestplate'),(563,200,20,'Chestplate'),(564,50,1,'Leggings'),(565,90,6,'Leggings'),(566,100,7,'Leggings'),(567,120,9,'Leggings'),(568,130,10,'Leggings'),(569,140,11,'Leggings'),(570,180,14,'Leggings'),(571,195,19,'Leggings'),(572,40,0,'Boots'),(573,70,2,'Boots'),(574,90,3,'Boots'),(575,110,7,'Boots'),(576,120,8,'Boots'),(577,100,4,'Boots'),(578,120,5,'Boots'),(579,190,18,'Boots'),(580,70,2,'Shield'),(581,90,3,'Shield'),(582,110,6,'Shield'),(583,120,7,'Shield'),(584,150,15,'Shield'),(585,170,15,'Shield'),(586,170,17,'Shield'),(587,200,20,'Shield');
/*!40000 ALTER TABLE `armor` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:11
