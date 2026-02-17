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
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `features_id` int NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`features_id`),
  UNIQUE KEY `feature_name_UNIQUE` (`feature_name`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Power Strike','Deliver a powerful attack that deals extra damage.'),(2,'Quick Reflexes','React swiftly to avoid danger or seize openings in combat.'),(3,'Battle Focus','Maintain heightened awareness, increasing hit accuracy.'),(4,'Fortified Defense','Boosts armor temporarily to withstand powerful blows.'),(5,'Rage','Enter a state of fury, increasing damage at the cost of defense.'),(6,'Second Wind','Regain a small portion of health once per battle.'),(7,'Sneak Attack','Deal bonus damage when attacking from stealth or surprise.'),(8,'Divine Smite','Channel energy to deal radiant damage upon striking.'),(9,'Arcane Surge','Unleash stored magical energy for increased spell power.'),(10,'Steady Aim','Gain advantage on ranged attacks by sacrificing movement.'),(11,'Spellcasting','Harness magical power to cast spells of various effects.'),(12,'Healing Touch','Restore health to an ally through divine or natural energy.'),(13,'Mana Regeneration','Recover a small amount of mana each turn.'),(14,'Arcane Shield','Form a barrier that absorbs magical damage.'),(15,'Life Bond','Share health or damage between allies through mystical connection.'),(16,'Channel Divinity','Invoke divine power for special effects once per rest.'),(17,'Elemental Mastery','Increase potency of spells using elemental magic.'),(18,'Summon Familiar','Call forth a magical companion to assist in combat.'),(19,'Rejuvenation Aura','Emit an aura that heals nearby allies over time.'),(20,'Soul Ward','Protect your soul from death once per long rest.'),(21,'Darkvision','See in complete darkness for a limited distance.'),(22,'Stealth Training','Move quietly and stay hidden even in partial cover.'),(23,'Climb Expert','Ascend vertical surfaces without penalty.'),(24,'Water Breathing','Breathe underwater for extended periods.'),(25,'Danger Sense','Sense traps or ambushes moments before they happen.'),(26,'Evasion','Reduce or avoid area-of-effect damage when agile.'),(27,'Lockpicking','Unlock mechanical or magical locks without a key.'),(28,'Tracking','Follow trails or scents left by creatures or people.'),(29,'Nature’s Step','Move through difficult terrain without penalty.'),(30,'Quick Escape','Disengage from combat swiftly to reposition safely.'),(31,'Inspiring Presence','Motivate allies, boosting morale and attack rolls.'),(32,'Tactical Insight','Predict enemy movements for an advantage in battle.'),(33,'Battle Command','Direct an ally to strike immediately.'),(34,'Protective Stance','Defend a nearby ally by intercepting attacks.'),(35,'Aura of Courage','Prevent allies from being frightened in your presence.'),(36,'Leadership','Increase group effectiveness when leading a team.'),(37,'War Cry','Intimidate enemies, reducing their morale and defenses.'),(38,'Guardian’s Oath','Swear to protect a target, absorbing part of their damage.'),(39,'Sacred Flame','Summon divine fire to smite foes from afar.'),(40,'Unbreakable Will','Resist mind control or charm effects.'),(41,'Arcane Recovery','Recover a small number of used spell slots after resting.'),(42,'Extra Attack','Attack multiple times during one turn.'),(43,'Martial Training','Gain access to specialized weapons or combat styles.'),(44,'Battle Hardened','Gain resistance to critical hits.'),(45,'Mystic Step','Teleport a short distance to evade danger.'),(46,'Dual Wielding','Effectively use two weapons simultaneously.'),(47,'Sneak Mastery','Increase stealth duration and reduce detection chance.'),(48,'Nature’s Wrath','Entangle enemies with vines or roots from the ground.'),(49,'Divine Intervention','Call upon a higher power for miraculous aid.'),(50,'Metamagic','Alter the effects of your spells in creative ways.'),(51,'Arcane Infusion','Enhance a weapon or armor piece with magical energy.'),(52,'Hunter’s Mark','Focus on one target, dealing extra damage to it.'),(53,'Lay on Hands','Heal yourself or others through divine energy.'),(54,'Wild Shape','Transform into a beast to fight or explore.'),(55,'Ki Burst','Unleash inner energy to strike multiple foes.'),(56,'Blood Rite','Empower your attacks by sacrificing health.'),(57,'Hexblade’s Curse','Curse an enemy to suffer extra damage from your strikes.');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
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

-- Dump completed on 2026-02-17 17:36:18
