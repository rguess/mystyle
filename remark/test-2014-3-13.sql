-- MySQL dump 10.13  Distrib 5.6.12, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_icon`
--

DROP TABLE IF EXISTS `sys_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_icon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_icon`
--

LOCK TABLES `sys_icon` WRITE;
/*!40000 ALTER TABLE `sys_icon` DISABLE KEYS */;
INSERT INTO `sys_icon` VALUES (1,NULL,'icon-adjust','css'),(2,NULL,'icon-exclamation-sign','css'),(3,NULL,'icon-money','css'),(4,NULL,'icon-signal','css'),(5,NULL,'icon-asterisk','css'),(6,NULL,'icon-external-link','css'),(7,NULL,'icon-move','css'),(8,NULL,'icon-signin','css'),(9,NULL,'icon-ban-circle','css'),(10,NULL,'icon-eye-close','css'),(11,NULL,'icon-music','css'),(12,NULL,'icon-signout','css'),(13,NULL,'icon-bar-chart','css'),(14,NULL,'icon-eye-open','css'),(15,NULL,'icon-off','css'),(16,NULL,'icon-sitemap','css'),(20,NULL,'icon-barcode','css'),(21,NULL,'icon-facetime-video','css'),(22,NULL,'icon-ok','css'),(23,NULL,'icon-sort','css'),(24,NULL,'icon-beaker','css'),(25,NULL,'icon-film','css'),(26,NULL,'icon-ok-circle','css'),(27,NULL,'icon-sort-down','css'),(28,NULL,'icon-bell','css'),(29,NULL,'icon-filter','css'),(30,NULL,'icon-ok-sign','css'),(31,NULL,'icon-sort-up','css'),(32,NULL,' icon-bolt','css'),(33,NULL,'icon-fire','css'),(34,NULL,'icon-pencil','css'),(35,NULL,'icon-star','css'),(36,NULL,'icon-book','css'),(37,NULL,'icon-flag','css'),(38,NULL,'icon-picture','css'),(39,NULL,'icon-star-empty','css'),(40,NULL,'icon-bookmark','css'),(41,NULL,'icon-folder-close','css'),(42,NULL,'icon-plane','css'),(43,NULL,'icon-star-half','css'),(44,NULL,'icon-bookmark-empty','css'),(45,NULL,'icon-folder-open','css'),(46,NULL,'icon-plus','css'),(47,NULL,'icon-tag','css'),(48,NULL,'icon-briefcase','css'),(49,NULL,'icon-gift','css'),(50,NULL,'icon-plus-sign','css'),(51,NULL,'icon-tags','css'),(52,NULL,'icon-bullhorn','css'),(53,NULL,'icon-glass','css'),(54,NULL,'icon-print','css'),(55,NULL,'icon-tasks','css'),(56,NULL,'icon-calendar','css'),(57,NULL,'icon-globe','css'),(58,NULL,'icon-pushpin','css'),(59,NULL,'icon-thumbs-down','css'),(60,NULL,'icon-camera','css'),(61,NULL,'icon-group','css'),(62,NULL,'icon-qrcode','css'),(63,NULL,'icon-thumbs-up','css'),(64,NULL,'icon-camera-retro','css'),(65,NULL,'icon-certificate','css'),(66,NULL,'icon-check','css'),(67,NULL,'icon-check-empty','css'),(68,NULL,'icon-cloud','css'),(69,NULL,'icon-cog','css'),(70,NULL,'icon-cogs','css'),(71,NULL,'icon-comment','css'),(72,NULL,'icon-comment-alt','css'),(73,NULL,'icon-comments','css'),(74,NULL,'icon-comments-alt','css'),(75,NULL,'icon-credit-card','css'),(76,NULL,'icon-dashboard','css'),(77,NULL,'icon-download','css'),(78,NULL,'icon-download-alt','css'),(79,NULL,'icon-edit','css'),(80,NULL,'icon-envelope','css'),(81,NULL,'icon-envelope-alt','css'),(82,NULL,'icon-hdd','css'),(83,NULL,'icon-headphones','css'),(84,NULL,'icon-heart','css'),(85,NULL,'icon-heart-empty','css'),(86,NULL,'icon-home','css'),(87,NULL,'icon-inbox','css'),(88,NULL,'icon-info-sign','css'),(89,NULL,'icon-key','css'),(90,NULL,'icon-leaf','css'),(91,NULL,'icon-legal','css'),(92,NULL,'icon-lemon','css'),(93,NULL,'icon-lock','css'),(94,NULL,'icon-unlock','css'),(95,NULL,'icon-magic','css'),(96,NULL,'icon-magnet','css'),(97,NULL,'icon-map-marker','css'),(98,NULL,'icon-minus','css'),(99,NULL,'icon-minus-sign','css'),(100,NULL,'icon-question-sign','css'),(101,NULL,'icon-random','css'),(102,NULL,'icon-refresh','css'),(103,NULL,'icon-remove','css'),(104,NULL,'icon-remove-circle','css'),(105,NULL,'icon-remove-sign','css'),(106,NULL,'icon-reorder','css'),(107,NULL,'icon-resize-horizontal','css'),(108,NULL,'icon-resize-vertical','css'),(109,NULL,'icon-retweet','css'),(110,NULL,'icon-road','css'),(111,NULL,'icon-rss','css'),(112,NULL,'icon-screenshot','css'),(113,NULL,'icon-search','css'),(114,NULL,'icon-share','css'),(115,NULL,'icon-share-alt','css'),(116,NULL,'icon-shopping-cart','css'),(117,NULL,'icon-time','css'),(118,NULL,'icon-tint','css'),(119,NULL,'icon-trash','css'),(120,NULL,'icon-trophy','css'),(121,NULL,'icon-truck','css'),(122,NULL,'icon-umbrella','css'),(123,NULL,'icon-upload','css'),(124,NULL,'icon-upload-alt','css'),(125,NULL,'icon-user','css'),(126,NULL,'icon-user-md','css'),(127,NULL,'icon-volume-off','css'),(128,NULL,'icon-volume-down','css'),(129,NULL,'icon-volume-up','css'),(130,NULL,'icon-warning-sign','css'),(131,NULL,'icon-wrench','css'),(132,NULL,'icon-zoom-in','css'),(133,NULL,'icon-zoom-out','css'),(134,NULL,'ztree_edit','png'),(135,NULL,'ztree_root_close','png'),(136,NULL,'ztree_root_open','png'),(137,NULL,'ztree_star','png'),(138,NULL,'ztree_calendar','png'),(139,NULL,'ztree_heart','png'),(140,NULL,'ztree_save','png'),(141,NULL,'ztree_msg','png'),(142,NULL,'ztree_report','png'),(143,NULL,'ztree_setting','png'),(148,NULL,'ztree_folder_open','png'),(149,NULL,'ztree_folder_close','png'),(150,NULL,'ztree_file2','png'),(151,NULL,'ztree_edit2','png'),(152,NULL,'ztree_delete','png'),(153,NULL,'ztree_arrow','png'),(154,NULL,'ztree_plus','png'),(155,NULL,'ztree_minus','png'),(156,NULL,'ztree_add','png'),(157,NULL,'ztree_cicle_arrow_left1','png'),(158,NULL,'ztree_cicle_arrow_right1','png'),(159,NULL,'ztree_cicle_arrow_left2','png'),(160,NULL,'ztree_cicle_arrow_right2','png'),(161,NULL,'ztree_cicle_arrow','png'),(162,NULL,'ztree_star_light','png'),(163,NULL,'ztree_star_dark','png');
/*!40000 ALTER TABLE `sys_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_res`
--

DROP TABLE IF EXISTS `sys_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_res` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorize` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orderNo` int(11) NOT NULL,
  `permsString` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `resString` varchar(255) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3428FEED6C7D0A5` (`PARENT_ID`),
  CONSTRAINT `FKC3428FEED6C7D0A5` FOREIGN KEY (`PARENT_ID`) REFERENCES `sys_res` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_res`
--

LOCK TABLES `sys_res` WRITE;
/*!40000 ALTER TABLE `sys_res` DISABLE KEYS */;
INSERT INTO `sys_res` VALUES (1,NULL,1,'ztree_root_close','系统管理',1,'sys','系统管理','/sys',5),(2,NULL,2,'icon-user-md','用户管理',1,'sys:user','用户管理','/sys/user/list',1),(3,NULL,2,'icon-user','角色管理',2,'sys:role','角色管理','/sys/role/list',1),(4,NULL,2,'icon-sitemap','资源管理',3,'sys:resource','资源管理','/sys/resource/list',1),(5,NULL,0,'','system',1,'system','最高的节点只能有一个','/system',NULL),(7,NULL,3,'icon-tasks','用户列表',1,'sys:user:list','用户列表','sys/user/list',2),(8,NULL,3,'icon-plus','添加用户',2,'sys:user:add','添加用户','sys/user/add',2),(9,NULL,3,'icon-minus','删除用户',3,'sys:user:delete','','sys/user/delete',2),(10,NULL,3,'icon-pencil','修改用户',4,'sys:user:update','','sys/user/update',2),(11,NULL,3,'icon-tasks','角色列表',1,'sys:role:list','','sys/role/list',3),(12,NULL,3,'icon-plus','添加角色',2,'sys:role:add','','sys/role/add',3),(13,NULL,3,'icon-minus','删除角色',3,'sys:role:delete','','sys/role/delete',3),(14,NULL,3,'icon-pencil','修改角色',4,'sys:role:update','','sys/role/update',3),(15,NULL,3,'icon-tasks','资源列表',1,'sys:resource:list','','sys/resource/list',4),(16,NULL,3,'icon-plus','添加资源',2,'sys:resource:add','','sys/resource/add',4),(17,NULL,3,'icon-minus','删除资源',3,'sys:resource:delete','','sys/resource/delete',4),(18,NULL,3,'icon-pencil','修改资源',4,'sys:resource:update','','sys/resource/update',4),(19,NULL,2,'icon-picture','图标管理',4,'sys:user:list','','/sys/icon/list',1),(20,NULL,3,'icon-tasks','图标列表',1,'sys:icon:list','','/sys/icon/list',19),(21,NULL,3,'icon-plus','添加图标',2,'sys:icon:add','','/sys/icon/add',19),(22,NULL,3,'icon-minus','删除图标',3,'sys:icon:delete','','/sys/icon/delete',19),(23,NULL,3,'icon-pencil','修改图标',4,'sys:icon:update','','/sys/icon/update',19);
/*!40000 ALTER TABLE `sys_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorize` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,NULL,'superAdmin','超级管理员','拥有所有权限'),(2,NULL,'busAdmin','业务管理员','业务管理员'),(3,NULL,'admin1','管理员1号',''),(4,NULL,'admin2','管理员2号',''),(5,NULL,'user','用户','');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_res`
--

DROP TABLE IF EXISTS `sys_role_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_res` (
  `ROLE_ID` bigint(20) NOT NULL,
  `RES_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`RES_ID`),
  KEY `FK9A255A8923AE94EF` (`RES_ID`),
  KEY `FK9A255A895C176D41` (`ROLE_ID`),
  CONSTRAINT `FK9A255A8923AE94EF` FOREIGN KEY (`RES_ID`) REFERENCES `sys_res` (`id`),
  CONSTRAINT `FK9A255A895C176D41` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_res`
--

LOCK TABLES `sys_role_res` WRITE;
/*!40000 ALTER TABLE `sys_role_res` DISABLE KEYS */;
INSERT INTO `sys_role_res` VALUES (1,1),(2,1),(3,1),(5,1),(1,2),(2,2),(5,2),(1,3),(3,3),(1,4),(1,5),(2,5),(3,5),(5,5),(1,7),(2,7),(5,7),(1,8),(2,8),(5,8),(1,9),(2,9),(5,9),(1,10),(2,10),(5,10),(1,11),(3,11),(1,12),(3,12),(1,13),(3,13),(1,14),(3,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `sys_role_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loginId` varchar(255) DEFAULT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginId` (`loginId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'成都','2014-02-21 00:00:00','502876941@qq.com','admin','15108276486','管理员','bd2e01edc57144999856d77571151dda','第一个使用者',NULL),(3,'成都','2014-03-07 00:00:00','502876941@qq.com','user1','15108276486','用户1','bc8bbbfac4807977296c65389b27988f','用户1号',NULL),(4,'成都','2014-03-07 00:00:00','sa@ww.cc','user2','15222233426','用户2号','0c62621580d52a609bb9c853e0b0da8f','',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `USER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `FKAABB7D585C176D41` (`ROLE_ID`),
  KEY `FKAABB7D581423121` (`USER_ID`),
  CONSTRAINT `FKAABB7D581423121` FOREIGN KEY (`USER_ID`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKAABB7D585C176D41` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(4,2),(4,4),(3,5),(4,5);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-13 15:32:41
