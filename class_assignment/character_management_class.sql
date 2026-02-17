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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `class_name_UNIQUE` (`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Barbarian','A fierce warrior of primitive background who can enter a battle rage.'),(2,'Bard','An inspiring magician whose music and words weave magic to empower allies and hinder foes.'),(3,'Cleric','A priestly champion who wields divine magic in service of a higher power.'),(4,'Druid','A priest of the Old Faith, wielding the powers of nature and adopting animal forms.'),(5,'Fighter','A master of martial combat, skilled with a variety of weapons and armor.'),(6,'Monk','A master of martial arts who channels the energy of the body into powerful strikes.'),(7,'Paladin','A holy warrior bound by oath to uphold justice and righteousness.'),(8,'Ranger','A warrior who uses martial prowess and nature magic to hunt monsters and survive the wilds.'),(9,'Rogue','A scoundrel who uses stealth, agility, and cunning to overcome obstacles and foes.'),(10,'Sorcerer','A spellcaster who draws upon inherent magic from a gift or bloodline.'),(11,'Warlock','A wielder of magic derived from a bargain with an extraplanar entity.'),(12,'Wizard','A scholarly magic-user capable of manipulating the structures of reality.'),(13,'Artificer','A master of invention who uses tools and arcane science to infuse magic into objects.'),(14,'Blood Hunter','A warrior who uses forbidden alchemy and rituals to hunt monsters at any cost.'),(15,'Alchemist','A practitioner of transmutation and potion-making, blending science and sorcery.'),(16,'Necromancer','A wizard who commands the dead and manipulates the forces of life and death.'),(17,'Psion','A mentalist who wields psychic powers to shape thoughts and reality.'),(18,'Witch','A spellcaster who draws magic from nature, spirits, or ancient pacts.'),(19,'Knight','A noble warrior sworn to a code of honor, defending the weak and serving their liege.'),(20,'Assassin','A silent killer who eliminates targets with precision and cunning.');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
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
