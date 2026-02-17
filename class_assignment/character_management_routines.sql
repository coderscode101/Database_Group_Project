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
-- Temporary view structure for view `character_battle_info`
--

DROP TABLE IF EXISTS `character_battle_info`;
/*!50001 DROP VIEW IF EXISTS `character_battle_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `character_battle_info` AS SELECT 
 1 AS `character_id`,
 1 AS `character_name`,
 1 AS `max_health`,
 1 AS `current_health`,
 1 AS `action_count`,
 1 AS `total_defense_points`,
 1 AS `character_level`,
 1 AS `xp`,
 1 AS `classes`,
 1 AS `equipped_items`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `character's_rank`
--

DROP TABLE IF EXISTS `character's_rank`;
/*!50001 DROP VIEW IF EXISTS `character's_rank`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `character's_rank` AS SELECT 
 1 AS `wealth_rank`,
 1 AS `username`,
 1 AS `character_name`,
 1 AS `level`,
 1 AS `item_count`,
 1 AS `most_expensive_item`,
 1 AS `most_expensive_item_price`,
 1 AS `total_coins`,
 1 AS `total_wealth`,
 1 AS `average_total_money`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `items_list`
--

DROP TABLE IF EXISTS `items_list`;
/*!50001 DROP VIEW IF EXISTS `items_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `items_list` AS SELECT 
 1 AS `item_id`,
 1 AS `item_name`,
 1 AS `description`,
 1 AS `weight`,
 1 AS `cost`,
 1 AS `item_type`,
 1 AS `durability`,
 1 AS `weapon_damage`,
 1 AS `weapon_range`,
 1 AS `armor_reduction`,
 1 AS `armor_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `character_battle_info`
--

/*!50001 DROP VIEW IF EXISTS `character_battle_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`avnadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `character_battle_info` AS select `ch`.`character_id` AS `character_id`,concat(`ch`.`first_name`,' ',`ch`.`last_name`) AS `character_name`,`getMaxHealth`(`ch`.`character_id`) AS `max_health`,`ch`.`current_health` AS `current_health`,`ch`.`action_count` AS `action_count`,`getAllDefensePoint`(`ch`.`character_id`) AS `total_defense_points`,`getLevel`(`ch`.`xp`) AS `character_level`,`ch`.`xp` AS `xp`,group_concat(distinct `cl`.`class_name` order by `cl`.`class_name` ASC separator ', ') AS `classes`,group_concat(distinct `i`.`item_name` order by `i`.`item_name` ASC separator ', ') AS `equipped_items` from ((((`character` `ch` left join `character_item` `ci` on(((`ci`.`character_id` = `ch`.`character_id`) and (`ci`.`equipped` = 1)))) left join `item` `i` on((`i`.`item_id` = `ci`.`item_id`))) left join `character_classes` `cc` on((`cc`.`character_id` = `ch`.`character_id`))) left join `class` `cl` on((`cl`.`class_id` = `cc`.`class_id`))) group by `ch`.`character_id`,`ch`.`first_name`,`ch`.`last_name`,`ch`.`current_health`,`ch`.`xp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `character's_rank`
--

/*!50001 DROP VIEW IF EXISTS `character's_rank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`avnadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `character's_rank` AS select dense_rank() OVER (ORDER BY sum((`ci`.`quantity` * `i`.`cost`)) desc )  AS `wealth_rank`,`u`.`username` AS `username`,concat(`ch`.`first_name`,' ',`ch`.`last_name`) AS `character_name`,`getlevel`(`ch`.`xp`) AS `level`,count(distinct `ci`.`item_id`) AS `item_count`,(select `i2`.`item_name` from (`character_item` `ci2` join `item` `i2` on((`ci2`.`item_id` = `i2`.`item_id`))) where (`ci2`.`character_id` = `ch`.`character_id`) order by `i2`.`cost` desc limit 1) AS `most_expensive_item`,max(`i`.`cost`) AS `most_expensive_item_price`,sum((case when (`i`.`item_name` = 'Coins') then (`ci`.`quantity` * `i`.`cost`) else 0 end)) AS `total_coins`,sum((`ci`.`quantity` * `i`.`cost`)) AS `total_wealth`,avg(sum((`ci`.`quantity` * `i`.`cost`))) OVER ()  AS `average_total_money` from (((`user` `u` join `character` `ch` on((`ch`.`user_id` = `u`.`user_id`))) join `character_item` `ci` on((`ch`.`character_id` = `ci`.`character_id`))) join `item` `i` on((`ci`.`item_id` = `i`.`item_id`))) group by `u`.`user_id`,`u`.`username`,`ch`.`character_id`,`character_name` order by `wealth_rank` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `items_list`
--

/*!50001 DROP VIEW IF EXISTS `items_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`avnadmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `items_list` AS select `i`.`item_id` AS `item_id`,`i`.`item_name` AS `item_name`,`i`.`description` AS `description`,`i`.`weight` AS `weight`,`i`.`cost` AS `cost`,(case when (`w`.`weapon_id` is not null) then 'Weapon' when (`a`.`armor_id` is not null) then 'Armor' else 'General' end) AS `item_type`,ifnull(`w`.`durability`,ifnull(`a`.`durability`,'NONE')) AS `durability`,`w`.`damage_dealt` AS `weapon_damage`,concat(`w`.`range_amount`,' ',`w`.`range_unit_type`) AS `weapon_range`,`a`.`damage_reduction` AS `armor_reduction`,`a`.`armor_type` AS `armor_type` from ((`item` `i` left join `weapons` `w` on((`i`.`item_id` = `w`.`weapon_id`))) left join `armor` `a` on((`i`.`item_id` = `a`.`armor_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'character_management'
--

--
-- Dumping routines for database 'character_management'
--
/*!50003 DROP FUNCTION IF EXISTS `getAllDefensePoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" FUNCTION "getAllDefensePoint"(character_id INT) RETURNS int
BEGIN
	DECLARE defense_points INT DEFAULT 0;

    SELECT COALESCE(SUM(a.damage_reduction), 0)
    INTO defense_points
    FROM character_item ci
    JOIN armor a 
        ON ci.item_id = a.armor_id
    WHERE ci.character_id = character_id
      AND ci.equipped = 1;

    RETURN defense_points;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getCharacterStat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" FUNCTION "getCharacterStat"(characterId INT, statName VARCHAR(200)) RETURNS int
BEGIN
	DECLARE xp INT;
	DECLARE intitalStatValue INT;
    DECLARE value INT;
    
    SELECT c.xp
    INTO xp
    FROM character_management.character c
    WHERE character_id = characterId;
    
    SELECT IFNULL(cs.inital_stat_value, 0)
    INTO intitalStatValue
    FROM character_management.character c
    JOIN character_management.character_classes cc ON c.character_id = cc.character_id
    JOIN character_management.class cl ON cc.class_id = cl.class_id
    JOIN character_management.class_stats cs ON cl.class_id = cs.class_id
    JOIN stats s ON cs.stat_id = s.stat_id
    WHERE c.character_id = characterId 
    AND stat_type = statName; 
    
    SELECT intitalStatValue + getLevel(xp) - 1 INTO value;
RETURN value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getLevel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" FUNCTION "getLevel"(xp INT) RETURNS int
BEGIN
	DECLARE character_level INT;
		SELECT 
        CASE 
			WHEN xp < 300 THEN 1
            WHEN xp < 900 THEN 2
			WHEN xp < 2700 THEN 3
			WHEN xp < 6500 THEN 4
			WHEN xp < 14000 THEN 5
			WHEN xp < 23000 THEN 6
			WHEN xp < 34000 THEN 7
			WHEN xp < 48000 THEN 8
			WHEN xp < 64000 THEN 9
			WHEN xp < 85000 THEN 10
			WHEN xp < 100000 THEN 11
			WHEN xp < 120000 THEN 12
			WHEN xp < 140000 THEN 13
			WHEN xp < 165000 THEN 14
			WHEN xp < 195000 THEN 15
			WHEN xp < 225000 THEN 16
			WHEN xp < 265000 THEN 17
			WHEN xp < 305000 THEN 18
			WHEN xp < 355000 THEN 19
            ELSE 20
		END
        INTO character_level;
RETURN character_level;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMaxHealth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" FUNCTION "getMaxHealth"(character_id INT) RETURNS int
BEGIN
	DECLARE max_health INT DEFAULT 0;

    SELECT COALESCE(SUM(cl.health_increase), 0)
    INTO max_health
    FROM character_classes cc
    JOIN class_levels cl
      ON cl.class_id = cc.class_id
     AND cl.level <= cc.class_level
    WHERE cc.character_id = character_id
      AND cc.class_level > 0;   

    RETURN max_health;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getXPForLevel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" FUNCTION "getXPForLevel"(level INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE xp_required INT;

    SET xp_required = CASE 
        WHEN level <= 1 THEN 0
        WHEN level = 2 THEN 300
        WHEN level = 3 THEN 900
        WHEN level = 4 THEN 2700
        WHEN level = 5 THEN 6500
        WHEN level = 6 THEN 14000
        WHEN level = 7 THEN 23000
        WHEN level = 8 THEN 34000
        WHEN level = 9 THEN 48000
        WHEN level = 10 THEN 64000
        WHEN level = 11 THEN 85000
        WHEN level = 12 THEN 100000
        WHEN level = 13 THEN 120000
        WHEN level = 14 THEN 140000
        WHEN level = 15 THEN 165000
        WHEN level = 16 THEN 195000
        WHEN level = 17 THEN 225000
        WHEN level = 18 THEN 265000
        WHEN level = 19 THEN 305000
        ELSE 355000
    END;

    RETURN xp_required;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `attackPlayer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "attackPlayer"(
    attacker_id INT,
    target_id   INT,
    item_name   VARCHAR(100)
)
BEGIN
    DECLARE actions_left INT DEFAULT 0;
    DECLARE defense      INT DEFAULT 0;
    DECLARE item_id      INT DEFAULT NULL;
    DECLARE weapon_dmg   INT DEFAULT 0;
    DECLARE target_name  VARCHAR(255);
    DECLARE target_hp_before INT DEFAULT 0;
    DECLARE target_hp_after  INT DEFAULT 0;
	
    -- gets action count
    SELECT action_count
    INTO actions_left
    FROM `character`
    WHERE character_id = attacker_id;

	-- gets target info
    SELECT current_health, CONCAT(first_name, ' ', last_name)
    INTO target_hp_before, target_name
    FROM `character`
    WHERE character_id = target_id;

	-- sees if character's item is equipped
    SELECT i.item_id
    INTO item_id
    FROM item i
    JOIN character_item ci
      ON ci.item_id = i.item_id
    WHERE ci.character_id = attacker_id
      AND ci.equipped = 1
      AND i.item_name = item_name
    LIMIT 1;

    IF item_id IS NOT NULL AND actions_left > 0 THEN
        SELECT w.damage_dealt
        INTO weapon_dmg
        FROM weapons w
        WHERE w.weapon_id = item_id
        LIMIT 1;

        IF weapon_dmg IS NULL THEN
            SET weapon_dmg = 0;
        END IF;

        SET defense = getAllDefensePoint(target_id);

        SET target_hp_after = GREATEST(target_hp_before - GREATEST(weapon_dmg - defense, 0), 0);

        UPDATE `character`
        SET current_health = target_hp_after
        WHERE character_id = target_id;

        UPDATE `character`
        SET action_count = actions_left - 1
        WHERE character_id = attacker_id;
    ELSE
        SET target_hp_after = target_hp_before;
    END IF;

    SELECT target_name AS Targeted_Player,
           target_hp_before AS Health_Before,
           target_hp_after AS Health_After;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createCharacter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "createCharacter"(
    user_id    INT,
    first_name VARCHAR(100),
    last_name  VARCHAR(100),
    class_id   INT
)
BEGIN
    DECLARE character_id INT;

    INSERT INTO `character` (
        user_id,
        first_name,
        last_name,
        xp,
        action_count,
        current_health
    )
    VALUES (
        user_id,
        first_name,
        last_name,
        0,
        3,
        0
    );

    SET character_id = LAST_INSERT_ID();

    INSERT INTO character_classes (
        character_id,
        class_id,
        class_level
    )
    VALUES (
        character_id,
        class_id,
        1
    );

    UPDATE `character`
    SET current_health = getMaxHealth(character_id)
    WHERE character_id = character_id;

    SELECT
        character_id AS character_id,
        CONCAT(first_name, ' ', last_name) AS character_name,
        getMaxHealth(character_id) AS max_health,
        current_health,
        action_count
    FROM `character`
    WHERE character_id = character_id
    ORDER BY action_count DESC
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "createUser"(username VARCHAR(100), email VARCHAR(100), password VARCHAR(50) )
BEGIN
	INSERT INTO user (username, email, password, date_created)
    VALUES (username, email, password, CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_armor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "create_armor"(IN itemName VARCHAR(100),
IN description VARCHAR(5000),IN weight DOUBLE,IN cost DOUBLE,
IN durability INT, IN damage_reduction INT, IN armor_type ENUM('Helmet', 'Chestplate', 'Leggings', 'Boots', 'Shield')
)
BEGIN
	DECLARE last_id INT;

    CALL create_item(itemName, description, weight, cost, last_id);

    INSERT INTO armor (armor_id, durability, damage_reduction, armor_type)
    VALUES (last_id, durability, damage_reduction, armor_type);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "create_item"(IN itemName VARCHAR(100),
IN description VARCHAR(5000),IN weight DOUBLE,IN cost DOUBLE, OUT new_item_id  INT
)
BEGIN
    INSERT INTO item (item_name, description, weight, cost)
    VALUES (itemName, description, weight, cost);
    SET new_item_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "create_user"(username VARCHAR(100), email VARCHAR(100), password VARCHAR(50) )
BEGIN
	INSERT INTO user (username, email, password, date_created)
    VALUES (username, email, password, CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "create_weapon"(
    IN itemName VARCHAR(100),
    IN description VARCHAR(5000),
    IN weight DOUBLE,
    IN cost DOUBLE,
    IN durability INT,
    IN damage_dealt INT,
    IN range_amount INT,
    IN range_unit_type VARCHAR(10)
)
BEGIN
    DECLARE last_id INT;

    CALL create_item(itemName, description, weight, cost, last_id);

    INSERT INTO weapons (weapon_id, durability, damage_dealt, range_amount, range_unit_type)
    VALUES (last_id, durability, damage_dealt, range_amount, range_unit_type);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCharacterClasses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "getCharacterClasses"(characterId INT)
BEGIN
	SELECT
        cl.class_name  AS class_name,
        cc.class_level AS class_level
    FROM character_classes cc
    JOIN class cl
        ON cc.class_id = cl.class_id
    WHERE cc.character_id = characterId
    ORDER BY cl.class_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCharacterInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "getCharacterInventory"(characterId INT)
BEGIN
	SELECT 
        i.item_name AS item_name,
        i.description AS item_description,
        ci.quantity AS quantity,
        CASE 
            WHEN ci.equipped = 1 THEN 'Equipped'
            ELSE 'Unequipped'
        END AS equipped_status
    FROM character_item ci
    JOIN item i
        ON ci.item_id = i.item_id
    WHERE ci.character_id = characterId
    ORDER BY ci.equipped DESC, i.item_name ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCharacterStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "getCharacterStats"(character_id INT)
BEGIN
	SELECT 
        s.`stat_type` AS `stat_name`,
        MAX(cs.`inital_stat_value`) AS `value`
    FROM 
        `character` c
        JOIN `character_classes` cc
            ON c.`character_id` = cc.`character_id`
        JOIN `class_stats` cs
            ON cc.`class_id` = cs.`class_id`
        JOIN `stats` s
            ON cs.`stat_id` = s.`stat_id`
    WHERE 
        c.`character_id` = character_id
    GROUP BY 
        s.`stat_type`
    ORDER BY 
        s.`stat_type`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getClassItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "getClassItems"(className VARCHAR(100))
BEGIN
	SELECT 
        i.item_name AS item_name,
        i.description AS item_description,
        ci.quantity
    FROM class_items ci
    JOIN item i
        ON ci.item_id = i.item_id
    JOIN class c
        ON ci.class_id = c.class_id
    WHERE c.class_name = className
    ORDER BY i.item_name ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `giveCharacterItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "giveCharacterItem"(
    character_id INT,
    item_name    VARCHAR(100),
    quantity     INT,
    equipped     TINYINT
)
BEGIN
    DECLARE item_id INT DEFAULT NULL;

    SELECT i.item_id
    INTO item_id
    FROM item i
    WHERE i.item_name = item_name
    LIMIT 1;

    IF item_id IS NOT NULL THEN
        INSERT INTO character_item (character_id, item_id, quantity, equipped)
        VALUES (character_id, item_id, quantity, equipped)
        ON DUPLICATE KEY UPDATE
            quantity = character_item.quantity + VALUES(quantity);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `levelUpCharacterClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "levelUpCharacterClass"(
    p_character_id INT, 
    p_class_name   VARCHAR(100)
)
BEGIN
    DECLARE v_class_id  INT;
    DECLARE v_xp        INT;
    DECLARE v_new_level INT;
    DECLARE v_new_xp    INT;

    -- find class id
    SELECT c.class_id
    INTO v_class_id
    FROM class c
    WHERE c.class_name = p_class_name
    LIMIT 1;

    IF v_class_id IS NOT NULL THEN

        -- insert or level up class
        INSERT INTO character_classes (character_id, class_id, class_level)
        VALUES (p_character_id, v_class_id, 1)
        ON DUPLICATE KEY UPDATE
            class_level = class_level + 1;

        -- get current xp
        SELECT c.xp
        INTO v_xp
        FROM `character` c
        WHERE c.character_id = p_character_id
        LIMIT 1;

        -- calculate new xp
        SET v_new_level = getLevel(v_xp) + 1;
        SET v_new_xp    = getXPForLevel(v_new_level);

        UPDATE `character`
        SET xp = v_new_xp
        WHERE character_id = p_character_id;
    END IF;
END ;;
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

-- Dump completed on 2026-02-17 17:36:28
