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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (21,'alice01','alice01@example.com','Alic3!pwd','2025-01-01'),(22,'bobsmith','bobsmith@example.com','B0b$mith22','2025-01-02'),(23,'charlie_k','charliek@example.com','CharK#904','2025-01-03'),(24,'diana22','diana22@example.com','Dia22@pwD','2025-01-04'),(25,'eric_m','ericm@example.com','Er1c_Mmm!','2025-01-05'),(26,'franklin','franklin@example.com','Fr4nk!2025','2025-01-06'),(27,'grace_h','graceh@example.com','Grac3_H**','2025-01-07'),(28,'henry89','henry89@example.com','H89#Pass','2025-01-08'),(29,'irene_w','irenew@example.com','Ir3n3_Wpw','2025-01-09'),(30,'jackson_p','jacksonp@example.com','Jacks0nP??','2025-01-10'),(31,'karen_l','karenl@example.com','Kar3n!Lock','2025-01-11'),(32,'leo_mart','leomart@example.com','L30_M@rt','2025-01-12'),(33,'mia_green','miagreen@example.com','MiA#Gr33n','2025-01-13'),(34,'nate07','nate07@example.com','N07!Gate','2025-01-14'),(35,'olivia_s','olivias@example.com','OliV!A_s2','2025-01-15'),(36,'peter_w','peterw@example.com','Pet3r_Wpw','2025-01-16'),(37,'quincy_r','quincyr@example.com','Qu!ncy_R44','2025-01-17'),(38,'rachel92','rachel92@example.com','Rach92@pw','2025-01-18'),(39,'samturner','samturner@example.com','SamT#2025','2025-01-19'),(40,'tina_x','tinax@example.com','T!naX_66','2025-01-20');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:15
