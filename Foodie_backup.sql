-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: foodie
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image_url` varchar(600) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_un_name` (`username`),
  UNIQUE KEY `client_un_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (5,'Lula','lulaa','gezuu','lmbulagezu@gmail.com','vcfd45567564','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRiycgsC6kzaMTt2t8ZA0emvx-gfF7rR2Ps3yrk5xi0KdzE9EwxtDqnF7w7vYa2jkJozA&usqp=CAU','2023-06-21','1f0985aa-03ca-4ddb-bce0-fc183062d8fb'),(13,'Danny','Daneal','','danel@gmail.com','54656tredf','https://media.istockphoto.com/id/466807030/photo/closeup-profile-of-business-woman-looking-forward.jpg?b=1&s=612x612&w=0&k=20&c=sRxDjdo5f3BRICNiDHRioOXJT-bsdvu66jTmpOXIbGQ=','2023-06-24','c32f63c8-9c1b-4389-a950-a260ed2a9d3f'),(17,'Tamerat','sazewed','Taye','gtsyh@gmail.com','mmn8765tredf','https://images.pexels.com/photos/595102/pexels-photo-595102.jpeg?auto=compress&cs=tinysrgb&w=1600','2023-06-24','e4d426f9-4b8f-4c00-8812-37d24c29e3f7'),(18,'maddi','maddi',' zeudi','madiz@gmail.com','undefined','https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1600','2023-06-24','5f7f3816-eb87-4b49-b972-7309623eae15'),(20,'nahom','Nahomi','Tadisu','nahomi@test.com','12345666','https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1600','2023-06-24','c4094817-8201-4f1c-9ce1-3704b1153251'),(21,'zebideru','zebibe','Ahmedi','zebideru@gmail.com','fhgjdkjdtredf','https://media.istockphoto.com/id/466807030/photo/closeup-profile-of-business-woman-looking-forward.jpg?b=1&s=612x612&w=0&k=20&c=sRxDjdo5f3BRICNiDHRioOXJT-bsdvu66jTmpOXIbGQ=','2023-06-24','3b00f6e2-2a91-4d68-9f35-dbebe59cbd50'),(22,'marv','marvi','zarihu','marvi@test.com','vgffs55478fu','https://images.pexels.com/photos/1034464/pexels-photo-1034464.jpeg?auto=compress&cs=tinysrgb&w=1600','2023-06-24','6af921fa-bab0-400f-a022-75bf160843d5'),(23,'Dev','Devin','hall','Devin@test.com','qrwew534372','https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1600','2023-06-24','c6b951e5-916c-4d71-aaea-79bfbf19af47'),(24,'daev','Devin','dev','bitproil@test.com','r4536383','https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1600','2023-06-24','8245d035-a031-44b5-a794-aa1ea6bb2669');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_session`
--

DROP TABLE IF EXISTS `client_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_session_un` (`token`),
  KEY `client_session_FK` (`client_id`),
  CONSTRAINT `client_session_FK` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_session`
--

LOCK TABLES `client_session` WRITE;
/*!40000 ALTER TABLE `client_session` DISABLE KEYS */;
INSERT INTO `client_session` VALUES (97,5,'1f0985aa-03ca-4ddb-bce0-fc183062d8fb');
/*!40000 ALTER TABLE `client_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(600) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `image_url` varchar(600) DEFAULT NULL,
  `restaurant_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_item_FK` (`restaurant_id`),
  CONSTRAINT `menu_item_FK` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (111,'spicey mesere','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',16),(112,'spicey yello shiro','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',1),(115,'spicey yello shiro','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',13),(116,'spicey yello shiro','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',12),(127,'spicey yello shiro','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',12),(128,'spicey yello shiro','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',14),(129,'spicey yello shiro','pasta be shiro',12,'https://media.istockphoto.com/id/501037136/photo/detail-of-traditional-ethiopian-injera-meal.jpg?s=612x612&w=0&k=20&c=m58BEbLpZx94AznVLvH46PyxSivqp80dAQLKTZgDvvA=',13),(130,'chicken noodle','pasta be shiro',10,'https://images.pexels.com/photos/5338146/pexels-photo-5338146.jpeg?auto=compress&cs=tinysrgb&w=1600',1),(131,'chicken noodle','pasta be shiro',10,'https://images.pexels.com/photos/5338146/pexels-photo-5338146.jpeg?auto=compress&cs=tinysrgb&w=1600',1),(132,'chicken salad','pasta be shiro',10,'https://images.pexels.com/photos/6048196/pexels-photo-6048196.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(133,'chicken salad','pasta be shiro',10,'https://images.pexels.com/photos/6048196/pexels-photo-6048196.jpeg?auto=compress&cs=tinysrgb&w=1600',13),(135,'alfredo pasta','pasta be shiro',12,'https://images.pexels.com/photos/11220209/pexels-photo-11220209.jpeg?auto=compress&cs=tinysrgb&w=1600',1),(136,'alfredo vegi','pasta be shiro',13,'https://images.pexels.com/photos/9659595/pexels-photo-9659595.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(137,'stake dinner ','pasta be shiro',50,'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1600',16),(138,'Womtom Soup','Soup',12,'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(139,'Soup','wonton Soup',12,'https://images.pexels.com/photos/1731535/pexels-photo-1731535.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(140,'Soup','wonton Soup',12,'https://images.pexels.com/photos/1731535/pexels-photo-1731535.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(141,'Soup','wonton Soup',12,'https://images.pexels.com/photos/1731535/pexels-photo-1731535.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(142,'alfredo vegi','alfredo vegi',13,'https://images.pexels.com/photos/9659595/pexels-photo-9659595.jpeg?auto=compress&cs=tinysrgb&w=1600',16),(143,'alfredo vegi','Ethiopian Beyayenetu',13,'https://images.pexels.com/photos/9659595/pexels-photo-9659595.jpeg?auto=compress&cs=tinysrgb&w=1600',16),(144,'Womtom Soup','Soup',12,'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(145,'alfredo vegi','alfredo vegi',13,'https://images.pexels.com/photos/9659595/pexels-photo-9659595.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(146,'alfredo vegi','alfredo vegi',13,'https://images.pexels.com/photos/9659595/pexels-photo-9659595.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(147,'alfredo vegi','alfredo vegi',13,'https://images.pexels.com/photos/9659595/pexels-photo-9659595.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(148,'Womtom Soup','Soup',12,'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&w=1600',14),(149,'Soup','butternut Squash Soup',12,'https://images.pexels.com/photos/1731535/pexels-photo-1731535.jpeg?auto=compress&cs=tinysrgb&w=1600',16),(150,'Ethiopian Plater','Beyayenetu',45,'https://images.pexels.com/photos/1277483/pexels-photo-1277483.jpeg?auto=compress&cs=tinysrgb&w=1600',16),(151,'Soup','Pheo',12,'https://images.pexels.com/photos/3903586/pexels-photo-3903586.jpeg?auto=compress&cs=tinysrgb&w=1600',16);
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned DEFAULT NULL,
  `restaurant_id` int(10) unsigned DEFAULT NULL,
  `is_complete` tinyint(1) DEFAULT NULL,
  `is_confirmed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_FK` (`client_id`),
  KEY `order_FK_1` (`restaurant_id`),
  CONSTRAINT `order_FK` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_FK_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (428,13,13,1,1),(429,13,13,1,1),(430,13,1,1,1),(431,13,1,1,1),(434,13,14,1,1),(435,13,14,1,1),(436,13,1,1,1),(441,13,1,1,1),(442,13,13,1,1),(443,13,13,1,1),(444,13,13,1,1),(445,13,12,0,0),(446,5,1,1,1),(447,5,13,0,0),(448,5,13,0,0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_menu_item`
--

DROP TABLE IF EXISTS `order_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_menu_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `menu_item_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_menu_item_FK` (`order_id`),
  KEY `order_menu_item_FK_1` (`menu_item_id`),
  CONSTRAINT `order_menu_item_FK` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_menu_item_FK_1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_menu_item`
--

LOCK TABLES `order_menu_item` WRITE;
/*!40000 ALTER TABLE `order_menu_item` DISABLE KEYS */;
INSERT INTO `order_menu_item` VALUES (9,NULL,NULL),(410,428,128),(411,429,128),(412,430,111),(413,431,112),(416,434,116),(417,435,115),(418,436,128),(423,441,128),(424,442,111),(425,443,112),(426,444,111),(427,445,127),(428,446,128),(429,447,111),(430,448,112);
/*!40000 ALTER TABLE `order_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `bio` varchar(600) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `profile_url` varchar(600) DEFAULT NULL,
  `banner_url` varchar(600) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurant_un` (`name`),
  CONSTRAINT `restaurant_check` CHECK (`city` = 'Calgary' or `city` = 'Vancouver' or `city` = 'Toronto')
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Simret\'s','1234 street 2Ave','666-666-6666','bio_input one','Calgary','https://media.istockphoto.com/id/1248298359/photo/luxury-restaurant-interior-at-night.jpg?b=1&s=612x612&w=0&k=20&c=NJvJEI3G2zSN107qjFi9MAtC70bRs7Q1C-NL1X6BAt8=','https://images.pexels.com/photos/13012156/pexels-photo-13012156.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','resturant@test.com','vvgghhyyffo098','2023-06-21','hgf67898754erftg789'),(12,'tefle Restaurant','1234 2street SW','403-256-6222','rice and engera and ','Calgary','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','telefearalean@test.com','wethio786','2023-06-22','0e4cefe8-0c9d-4aec-b562-2e02f9e9b648'),(13,'tefljjje Restaurant','1234 2street SW','403-296-6222','rice and engera and ','Calgary','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','uiolefearalean@test.com','wethio786','2023-06-23','d6a8d77c-7bac-4fc8-94e2-b65673f992ee'),(14,'RestaurantOne','1234 2street SW','403-296-6222','rice and engera and ','Calgary','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','hdgdfdearalean@test.com','wetugdgdfdhio786','2023-06-24','f38233e9-ae7e-4467-9879-293dc0808adc'),(16,'One','1234 2street SW','403-296-6222','rice and engera and ','Calgary','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','https://images.pexels.com/photos/7476181/pexels-photo-7476181.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load','One@test.com','hgdfdfdhio786','2023-06-24','a778af65-4c05-4242-a7ca-bfc9a290f01b');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_session`
--

DROP TABLE IF EXISTS `restaurant_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(10) unsigned NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurant_session_un_token` (`token`),
  KEY `restaurant_session_FK` (`restaurant_id`),
  CONSTRAINT `restaurant_session_FK` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_session`
--

LOCK TABLES `restaurant_session` WRITE;
/*!40000 ALTER TABLE `restaurant_session` DISABLE KEYS */;
INSERT INTO `restaurant_session` VALUES (92,14,'f38233e9-ae7e-4467-9879-293dc0808adc'),(93,16,'a778af65-4c05-4242-a7ca-bfc9a290f01b');
/*!40000 ALTER TABLE `restaurant_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'foodie'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_new_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_order`(client_id_input int unsigned, restaurant_id_input int unsigned,menu_id_input int unsigned )
    MODIFIES SQL DATA
begin
	declare order_id int unsigned;
	insert into `order` (client_id,restaurant_id,is_complete,is_confirmed)
	values ((select id from client where id=client_id_input),(select id from restaurant where id= restaurant_id_input),0,0);
	
	set order_id = LAST_INSERT_ID();
	
	insert into order_menu_item (menu_item_id,order_id)
	values((select id from menu_item  where menu_item.id =menu_id_input),order_id);

    select id from `order` o;
    
	 
	commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `client_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `client_login`(email_input varchar(100),password_input varchar(100))
    MODIFIES SQL DATA
begin
	 insert into client_session(client_id,token)
	 values((select id from client where email=email_input and password=password_input),(select token from client where email=email_input and password=password_input ));
	 select  client_id , convert(token using 'utf8') as token  
	 from client_session where id=last_insert_id(); 
	 commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `complete_rest_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `complete_rest_order`(is_complete_input bool, order_id_input int unsigned)
    MODIFIES SQL DATA
begin
	 update `order` 
	 set is_complete=is_complete_input where `order`.id =order_id_input;
	 select id  from `order` o where  o.id=order_id_input;
	 commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `confirmed_rest_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `confirmed_rest_order`(is_confirmed_input bool, order_id_input int unsigned, token_input varchar(100))
    MODIFIES SQL DATA
begin
	 declare confiToken varchar(100);
	 select token into confiToken 
	 from restaurant where restaurant.token=token_input;
	
	 update `order` 
	 set is_confirmed=is_confirmed_input where `order`.id =order_id_input and confiToken=token_input;
	
	 select o.id   from `order` o  inner join restaurant r on o.restaurant_id =r.id 
	 where  o.id=order_id_input and r.token =confiToken; 
	 commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_client`(password_input varchar(100))
    MODIFIES SQL DATA
begin
	delete from client  where password =password_input;
	select row_count();
    commit;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_menu`(id_input int unsigned)
    MODIFIES SQL DATA
begin
	delete from menu_item  where id=id_input;
	select row_count();
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_restaurant`(password_input varchar(100))
    MODIFIES SQL DATA
begin
	delete from restaurant  where password =password_input;
	select row_count();
    commit;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_token` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_token`(token_input varchar(100))
    MODIFIES SQL DATA
begin
	delete  from client_session  where token=token_input;
    select row_count();
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edite_client_prof` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edite_client_prof`(username_input varchar(100),first_name_input varchar(100),last_name_input varchar(100),email_input varchar(100),password_input varchar(100),image_url_input varchar(600),token_input varchar(100))
    MODIFIES SQL DATA
begin
	update client  
		set username=ifnull(username_input,username),
		first_name=ifnull(first_name_input,first_name),
		last_name=ifnull(last_name_input,last_name),
		email=ifnull(email_input,email),
	    password=ifnull(password_input,password),
        image_url=ifnull(image_url_input,image_url)
	where client.token=token_input;
    select c.id from client c where c.token =token_input;
	commit;
	  
	  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edite_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edite_menu`(menu_item_id_input int unsigned,name_input varchar(100),description_input varchar(600),image_url_input varchar(600),price_input decimal ,token_input varchar(100))
begin
	
     declare restToken varchar(100);

    
	
	 select token into restToken
	 from restaurant where restaurant.token=token_input;
	
	update menu_item  
		set 
		name=ifnull(name_input,name),
		description=ifnull(description_input,description), 
		image_url=ifnull(image_url_input,image_url) ,
		price=ifnull(price_input,price)
	where id=menu_item_id_input and restToken= token_input;
    select mi.id from menu_item mi   where mi.id= menu_item_id_input;
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edite_restProf` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edite_restProf`(name_input varchar(100),address_input varchar(100),phone_number_input varchar(25),bio_input varchar(600),city_input varchar(100),profile_url_input varchar(600),banner_url_input varchar(600),email_input varchar(100),password_input varchar(100),token_input varchar(100))
    MODIFIES SQL DATA
begin
	update restaurant  
		set 
		name=ifnull(name_input,name),
		address=ifnull(address_input,address),
		phone_number=ifnull(phone_number_input,phone_number),
		bio=ifnull(bio_input,bio) ,
		city=ifnull(city_input,city),
		profile_url=ifnull(profile_url_input,profile_url) ,
		banner_url=ifnull(banner_url_input,banner_url) ,
		email=ifnull(email_input,email),
	    password=ifnull(password_input,password)
	where restaurant.token=token_input;
    select r.id from restaurant r  where r.token =token_input;
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_clientOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_clientOrders`(token_input varchar(100))
BEGIN
    select o.id , omi.order_id, o.is_complete ,o.is_confirmed,o.is_complete,convert(mi.name using 'utf8') as name , mi.price, convert( mi.description using 'utf8') as description
    from  menu_item mi
    inner join  order_menu_item omi on mi.id=omi.menu_item_id
    inner join `order` o  on  o.id=omi.order_id 
    inner join client c  on o.client_id  =c.id
    where c.token =token_input ;   
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_menus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_menus`(restaurant_id_input int unsigned)
begin
	select mi.id, convert(r.name using 'utf8')as restaurant_name, convert(r.phone_number  using 'utf8')as phone_number, convert(r.address  using 'utf8')as address,convert(mi.name  using 'utf8')as name,convert(mi.description using 'utf8')as description,convert(mi.image_url using 'utf8')as image_url ,price
    from menu_item mi inner join restaurant r on mi.restaurant_id =r.id  where mi.restaurant_id=restaurant_id_input;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_restaurant`()
begin
	select id, convert( name using 'utf8') as name,convert( address using 'utf8') as address, convert( phone_number using 'utf8') as phone_number,convert( bio using 'utf8') as  bio,convert( city using 'utf8') as  city
    , convert(  profile_url using 'utf8') as  profile_url,convert( banner_url using 'utf8') as  banner_url,convert( email using 'utf8') as email,
    convert(password using 'utf8') as password from restaurant;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_restorders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_restorders`(token_input varchar(100))
BEGIN
    select omi.order_id, o.is_complete ,o.is_confirmed,  convert(mi.name using 'utf8') as name , mi.price, convert( mi.description using 'utf8') as description
    from  menu_item mi
    inner join  order_menu_item omi on mi.id=omi.menu_item_id
    inner join `order` o  on  o.id=omi.order_id 
    inner join restaurant r on o.restaurant_id=r.id
    where r.token =token_input ;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_client_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_client_info`(client_id_input int unsigned)
begin
    select c.id,convert(c.username using 'utf8') as username, convert(c.first_name using 'utf8')as first_name ,convert(c.last_name using 'utf8')as last_name,convert(c.email using 'utf8') as email,convert(c.image_url using 'utf8') as image_url,c.created_at 
	from client c where  c.id=client_id_input; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_restaurant`(restaurant_id_input int unsigned)
begin
	select convert(r.name using 'utf8')as name,convert(r.address using 'utf8')as address,convert(r.phone_number using 'utf8')as phone_number,convert(r.bio using 'utf8')as bio,convert(city using 'utf8')as city  ,convert(r.banner_url using 'utf8') as banner_url,convert(r.profile_url using 'utf8')as profile_url,convert(r.email using 'utf8')as email, convert(r.password using 'utf8')as password, r.created_at  
	from restaurant r where  r.id=restaurant_id_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_client`(username_input varchar(100),first_name_input varchar(100),last_name_input varchar(100),email_input varchar(100),password_input varchar(100),image_url_input varchar(600),token_input varchar(100))
    MODIFIES SQL DATA
begin
	insert into client (username,first_name,last_name,email,password,image_url,token,created_at)
	values(username_input,first_name_input,last_name_input,email_input,password_input,image_url_input,token_input,now());
	
    select  c.id, convert(c.token using 'utf8') as token  
	from client c  where id=last_insert_id(); 

	insert into client_session(client_id,token)
	values((select id from client  where id=last_insert_id()),token_input);
	
    select  client_id , convert(token using 'utf8') as token  
	from client_session where id=last_insert_id(); 
	commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_menu`(name_input varchar(100),description_input varchar(600),image_url_input varchar(600),price_input decimal ,token_input varchar(100))
    MODIFIES SQL DATA
begin
	declare restaurantId Int unsigned;

	select id into restaurantId from restaurant where restaurant.token=token_input ;
	
	insert into menu_item ( name,description,image_url,price,restaurant_id)
	values(name_input,description_input,image_url_input, price_input,restaurantId);
    select  mi.id ,convert( mi.name using 'utf8')as name, convert(mi.description using 'utf8')as description, convert(mi.image_url using 'utf8')as image_url,mi.price
    from menu_item mi  inner join restaurant  on restaurant.id=restaurantId where restaurant.token =token_input;
   
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_restaurant`(name_input varchar(100),address_input varchar(100),phone_number_input varchar(25),bio_input varchar(600),city_input varchar(100),profile_url_input varchar(600),banner_url_input varchar(600),email_input varchar(100),password_input varchar(100),token_input varchar(100))
    MODIFIES SQL DATA
begin
	insert into restaurant (name,address,phone_number,bio,city,banner_url,profile_url,email,password,token,created_at)
	values(name_input ,address_input,phone_number_input,bio_input,city_input,banner_url_input,profile_url_input,email_input,password_input,token_input,now());
    select  r.id, convert(r.token using 'utf8') as token 
	from restaurant r where id=last_insert_id(); 
    commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `logOut_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `logOut_client`(token_input varchar(100))
    MODIFIES SQL DATA
begin
	delete  from client_session  where token=token_input;
    select row_count();
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `logOut_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `logOut_restaurant`(token_input varchar(100))
    MODIFIES SQL DATA
begin
	delete  from restaurant_session  where token=token_input;
    select row_count();
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `restaurant_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `restaurant_login`(email_input varchar(100),password_input varchar(100))
    MODIFIES SQL DATA
begin
	 insert into restaurant_session (restaurant_id,token)
	 values((select id from restaurant  where email=email_input and password=password_input),(select token from restaurant where email=email_input and password=password_input ));
	 select  restaurant_id , convert(token using 'utf8') as token  
	 from restaurant_session  where id=last_insert_id(); 
	 commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04 20:20:55
