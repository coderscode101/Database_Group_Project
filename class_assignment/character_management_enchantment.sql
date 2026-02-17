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
-- Table structure for table `enchantment`
--

DROP TABLE IF EXISTS `enchantment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enchantment` (
  `enchantment_id` int NOT NULL AUTO_INCREMENT,
  `enchantment_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`enchantment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enchantment`
--

LOCK TABLES `enchantment` WRITE;
/*!40000 ALTER TABLE `enchantment` DISABLE KEYS */;
INSERT INTO `enchantment` VALUES (1,'Flamebrand','Imbues the weapon with blazing fire, causing each strike to ignite enemies and deal extra fire damage over time.'),(2,'Frostbite Edge','Coats the blade in chilling frost, slowing enemies and dealing cold damage with each cut.'),(3,'Stormcaller','Harnesses lightning energy, shocking enemies on hit and occasionally chaining bolts to nearby foes.'),(4,'Lifebloom','Restores a small portion of the wielder’s health with each successful hit, channeling nature’s vitality.'),(5,'Shadowveil','Cloaks the bearer in shadows, slightly reducing visibility to enemies and increasing evasion.'),(6,'Mindshield','Protects the wearer’s mind from charm, fear, and confusion effects, strengthening mental resilience.'),(7,'Titan Grip','Enhances physical might, granting the user increased strength and weapon stability.'),(8,'Swiftstep','Grants supernatural agility, increasing movement and attack speed for a limited duration.'),(9,'Holy Radiance','Channels divine energy to heal nearby allies slightly whenever damage is dealt to enemies.'),(10,'Arcane Echo','Causes spells to occasionally reverberate, casting a weaker duplicate of the last magical ability used.'),(11,'Stoneguard','Reinforces the bearer’s defenses with earthen magic, reducing incoming physical damage.'),(12,'Bloodthirst','Feeds on the life force of slain enemies, granting temporary attack power after each kill.'),(13,'Windstride','Surrounds the user with rushing winds, increasing dodge chance and reducing fall damage.'),(14,'Spellward','Forms a barrier of arcane wards that reduces incoming magical damage and spell effects.'),(15,'Lifedrain','Transfers a portion of inflicted damage back to the wielder as health, draining life from enemies.'),(16,'Thunderclap','Empowers strikes to release bursts of thunder, dealing area-of-effect shock damage.'),(17,'Silentshroud','Dampens sound around the wearer, improving stealth and reducing detection by nearby enemies.'),(18,'Radiant Ward','Creates a protective aura of light that shields allies and reflects a portion of dark magic.'),(19,'Venombrand','Coats weapons with deadly poison, inflicting toxin damage that weakens and slows enemies.'),(20,'Ward of Clarity','Clears the mind and senses, dispelling minor curses and granting immunity to blindness or confusion.');
/*!40000 ALTER TABLE `enchantment` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:27
