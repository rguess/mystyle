-- MySQL dump 10.13  Distrib 5.5.24, for Win64 (x86)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.24

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `mark_UNIQUE` (`mark`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_icon`
--

LOCK TABLES `sys_icon` WRITE;
/*!40000 ALTER TABLE `sys_icon` DISABLE KEYS */;
INSERT INTO `sys_icon` VALUES (1,NULL,'icon-adjust','css'),(2,NULL,'icon-exclamation-sign','css'),(3,NULL,'icon-money','css'),(4,NULL,'icon-signal','css'),(5,NULL,'icon-asterisk','css'),(6,NULL,'icon-external-link','css'),(7,NULL,'icon-move','css'),(8,NULL,'icon-signin','css'),(9,NULL,'icon-ban-circle','css'),(10,NULL,'icon-eye-close','css'),(11,NULL,'icon-music','css'),(12,NULL,'icon-signout','css'),(13,NULL,'icon-bar-chart','css'),(14,NULL,'icon-eye-open','css'),(15,NULL,'icon-off','css'),(16,NULL,'icon-sitemap','css'),(20,NULL,'icon-barcode','css'),(21,NULL,'icon-facetime-video','css'),(22,NULL,'icon-ok','css'),(23,NULL,'icon-sort','css'),(24,NULL,'icon-beaker','css'),(25,NULL,'icon-film','css'),(26,NULL,'icon-ok-circle','css'),(27,NULL,'icon-sort-down','css'),(28,NULL,'icon-bell','css'),(29,NULL,'icon-filter','css'),(30,NULL,'icon-ok-sign','css'),(31,NULL,'icon-sort-up','css'),(32,NULL,' icon-bolt','css'),(33,NULL,'icon-fire','css'),(34,NULL,'icon-pencil','css'),(35,NULL,'icon-star','css'),(36,NULL,'icon-book','css'),(37,NULL,'icon-flag','css'),(38,NULL,'icon-picture','css'),(39,NULL,'icon-star-empty','css'),(40,NULL,'icon-bookmark','css'),(41,NULL,'icon-folder-close','css'),(42,NULL,'icon-plane','css'),(43,NULL,'icon-star-half','css'),(44,NULL,'icon-bookmark-empty','css'),(45,NULL,'icon-folder-open','css'),(46,NULL,'icon-plus','css'),(47,NULL,'icon-tag','css'),(48,NULL,'icon-briefcase','css'),(49,NULL,'icon-gift','css'),(50,NULL,'icon-plus-sign','css'),(51,NULL,'icon-tags','css'),(52,NULL,'icon-bullhorn','css'),(53,NULL,'icon-glass','css'),(54,NULL,'icon-print','css'),(55,NULL,'icon-tasks','css'),(56,NULL,'icon-calendar','css'),(57,NULL,'icon-globe','css'),(58,NULL,'icon-pushpin','css'),(59,NULL,'icon-thumbs-down','css'),(60,NULL,'icon-camera','css'),(61,NULL,'icon-group','css'),(62,NULL,'icon-qrcode','css'),(63,NULL,'icon-thumbs-up','css'),(64,NULL,'icon-camera-retro','css'),(65,NULL,'icon-certificate','css'),(66,NULL,'icon-check','css'),(67,NULL,'icon-check-empty','css'),(68,NULL,'icon-cloud','css'),(69,NULL,'icon-cog','css'),(70,NULL,'icon-cogs','css'),(71,NULL,'icon-comment','css'),(72,NULL,'icon-comment-alt','css'),(73,NULL,'icon-comments','css'),(74,NULL,'icon-comments-alt','css'),(75,NULL,'icon-credit-card','css'),(76,NULL,'icon-dashboard','css'),(77,NULL,'icon-download','css'),(78,NULL,'icon-download-alt','css'),(79,NULL,'icon-edit','css'),(80,NULL,'icon-envelope','css'),(81,NULL,'icon-envelope-alt','css'),(82,NULL,'icon-hdd','css'),(83,NULL,'icon-headphones','css'),(84,NULL,'icon-heart','css'),(85,NULL,'icon-heart-empty','css'),(86,NULL,'icon-home','css'),(87,NULL,'icon-inbox','css'),(88,NULL,'icon-info-sign','css'),(89,NULL,'icon-key','css'),(90,NULL,'icon-leaf','css'),(91,NULL,'icon-legal','css'),(92,NULL,'icon-lemon','css'),(93,NULL,'icon-lock','css'),(94,NULL,'icon-unlock','css'),(95,NULL,'icon-magic','css'),(96,NULL,'icon-magnet','css'),(97,NULL,'icon-map-marker','css'),(98,NULL,'icon-minus','css'),(99,NULL,'icon-minus-sign','css'),(100,NULL,'icon-question-sign','css'),(101,NULL,'icon-random','css'),(102,NULL,'icon-refresh','css'),(103,NULL,'icon-remove','css'),(104,NULL,'icon-remove-circle','css'),(105,NULL,'icon-remove-sign','css'),(106,NULL,'icon-reorder','css'),(107,NULL,'icon-resize-horizontal','css'),(108,NULL,'icon-resize-vertical','css'),(109,NULL,'icon-retweet','css'),(110,NULL,'icon-road','css'),(111,NULL,'icon-rss','css'),(112,NULL,'icon-screenshot','css'),(113,NULL,'icon-search','css'),(114,NULL,'icon-share','css'),(115,NULL,'icon-share-alt','css'),(116,NULL,'icon-shopping-cart','css'),(117,NULL,'icon-time','css'),(118,NULL,'icon-tint','css'),(119,NULL,'icon-trash','css'),(120,NULL,'icon-trophy','css'),(121,NULL,'icon-truck','css'),(122,NULL,'icon-umbrella','css'),(123,NULL,'icon-upload','css'),(124,NULL,'icon-upload-alt','css'),(125,NULL,'icon-user','css'),(126,NULL,'icon-user-md','css'),(127,NULL,'icon-volume-off','css'),(128,NULL,'icon-volume-down','css'),(129,NULL,'icon-volume-up','css'),(130,NULL,'icon-warning-sign','css'),(131,NULL,'icon-wrench','css'),(132,NULL,'icon-zoom-in','css'),(133,NULL,'icon-zoom-out','css'),(134,NULL,'ztree_edit','png'),(135,NULL,'ztree_root_close','png'),(136,NULL,'ztree_root_open','png'),(137,NULL,'ztree_star','png'),(138,NULL,'ztree_calendar','png'),(139,NULL,'ztree_heart','png'),(140,NULL,'ztree_save','png'),(141,NULL,'ztree_msg','png'),(142,NULL,'ztree_report','png'),(143,NULL,'ztree_setting','png'),(148,NULL,'ztree_folder_open','png'),(149,NULL,'ztree_folder_close','png'),(150,NULL,'ztree_file2','png'),(151,NULL,'ztree_edit2','png'),(152,NULL,'ztree_delete','png'),(153,NULL,'ztree_arrow','png'),(154,NULL,'ztree_plus','png'),(155,NULL,'ztree_minus','png'),(156,NULL,'ztree_add','png'),(157,NULL,'ztree_cicle_arrow_left1','png'),(158,NULL,'ztree_cicle_arrow_right1','png'),(159,NULL,'ztree_cicle_arrow_left2','png'),(160,NULL,'ztree_cicle_arrow_right2','png'),(161,NULL,'ztree_cicle_arrow','png'),(162,NULL,'ztree_star_light','png'),(163,NULL,'ztree_star_dark','png'),(164,NULL,'diy_icon_01_01','png'),(165,NULL,'diy_icon_01_02','png'),(166,NULL,'diy_icon_01_03','png'),(167,NULL,'diy_icon_01_04','png'),(168,NULL,'diy_icon_01_05','png'),(169,NULL,'diy_icon_01_06','png'),(170,NULL,'diy_icon_01_07','png'),(171,NULL,'diy_icon_01_08','png'),(172,NULL,'diy_icon_01_09','png'),(173,NULL,'diy_icon_01_10','png'),(174,NULL,'diy_icon_01_11','png'),(175,NULL,'diy_icon_01_12','png'),(176,NULL,'diy_icon_01_13','png'),(177,NULL,'diy_icon_01_14','png'),(178,NULL,'diy_icon_01_15','png'),(179,NULL,'diy_icon_01_16','png'),(180,NULL,'diy_icon_01_17','png'),(181,NULL,'diy_icon_01_18','png'),(182,NULL,'diy_icon_01_19','png'),(183,NULL,'diy_icon_01_20','png'),(184,NULL,'diy_icon_01_21','png'),(185,NULL,'diy_icon_01_22','png'),(186,NULL,'diy_icon_01_23','png'),(187,NULL,'diy_icon_01_24','png'),(188,NULL,'diy_icon_01_25','png'),(189,NULL,'diy_icon_01_26','png'),(190,NULL,'diy_icon_01_27','png'),(191,NULL,'diy_icon_01_28','png'),(192,NULL,'diy_icon_01_29','png'),(193,NULL,'diy_icon_01_30','png'),(194,NULL,'diy_icon_01_31','png'),(195,NULL,'diy_icon_01_32','png'),(196,NULL,'diy_icon_01_33','png'),(197,NULL,'diy_icon_01_34','png'),(198,NULL,'diy_icon_01_35','png'),(199,NULL,'diy_icon_01_36','png'),(200,NULL,'diy_icon_01_37','png'),(201,NULL,'diy_icon_01_38','png'),(202,NULL,'diy_icon_01_39','png'),(203,NULL,'diy_icon_01_40','png'),(204,NULL,'diy_icon_01_41','png'),(205,NULL,'diy_icon_01_42','png'),(206,NULL,'diy_icon_01_43','png'),(207,NULL,'diy_icon_01_44','png'),(208,NULL,'diy_icon_01_45','png'),(209,NULL,'diy_icon_01_46','png'),(210,NULL,'diy_icon_01_47','png'),(211,NULL,'diy_icon_01_48','png'),(212,NULL,'diy_icon_01_49','png'),(213,NULL,'diy_icon_01_50','png'),(214,NULL,'diy_icon_02_01','png'),(215,NULL,'diy_icon_02_02','png'),(216,NULL,'diy_icon_02_03','png'),(217,NULL,'diy_icon_02_04','png'),(218,NULL,'diy_icon_02_05','png'),(219,NULL,'diy_icon_02_06','png'),(220,NULL,'diy_icon_02_07','png'),(221,NULL,'diy_icon_02_08','png'),(222,NULL,'diy_icon_02_09','png'),(223,NULL,'diy_icon_02_10','png'),(224,NULL,'diy_icon_02_11','png'),(225,NULL,'diy_icon_02_12','png'),(226,NULL,'diy_icon_02_13','png'),(227,NULL,'diy_icon_02_14','png'),(228,NULL,'diy_icon_02_15','png'),(229,NULL,'diy_icon_02_16','png'),(230,NULL,'diy_icon_02_17','png'),(231,NULL,'diy_icon_02_18','png'),(232,NULL,'diy_icon_02_19','png'),(233,NULL,'diy_icon_02_20','png'),(234,NULL,'diy_icon_02_21','png'),(235,NULL,'diy_icon_02_22','png'),(236,NULL,'diy_icon_02_23','png'),(237,NULL,'diy_icon_02_24','png'),(238,NULL,'diy_icon_02_25','png'),(239,NULL,'diy_icon_02_26','png'),(240,NULL,'diy_icon_02_27','png'),(241,NULL,'diy_icon_02_28','png'),(242,NULL,'diy_icon_02_29','png'),(243,NULL,'diy_icon_02_30','png'),(244,NULL,'diy_icon_02_31','png'),(245,NULL,'diy_icon_02_32','png'),(246,NULL,'diy_icon_02_33','png'),(247,NULL,'diy_icon_02_34','png'),(248,NULL,'diy_icon_02_35','png'),(249,NULL,'diy_icon_02_36','png'),(250,NULL,'diy_icon_02_37','png'),(251,NULL,'diy_icon_02_38','png'),(252,NULL,'diy_icon_02_39','png'),(253,NULL,'diy_icon_02_40','png'),(254,NULL,'diy_icon_02_41','png'),(255,NULL,'diy_icon_02_42','png'),(256,NULL,'diy_icon_02_43','png'),(257,NULL,'diy_icon_02_44','png'),(258,NULL,'diy_icon_02_45','png'),(259,NULL,'diy_icon_02_46','png'),(260,NULL,'diy_icon_02_47','png'),(261,NULL,'diy_icon_02_48','png'),(262,NULL,'diy_icon_02_49','png'),(263,NULL,'diy_icon_02_50','png'),(264,NULL,'diy_icon_03_01','png'),(265,NULL,'diy_icon_03_02','png'),(266,NULL,'diy_icon_03_03','png'),(267,NULL,'diy_icon_03_04','png'),(268,NULL,'diy_icon_03_05','png'),(269,NULL,'diy_icon_03_06','png'),(270,NULL,'diy_icon_03_07','png'),(271,NULL,'diy_icon_03_08','png'),(272,NULL,'diy_icon_03_09','png'),(273,NULL,'diy_icon_03_10','png'),(274,NULL,'diy_icon_03_11','png'),(275,NULL,'diy_icon_03_12','png'),(276,NULL,'diy_icon_03_13','png'),(277,NULL,'diy_icon_03_14','png'),(278,NULL,'diy_icon_03_15','png'),(279,NULL,'diy_icon_03_16','png'),(280,NULL,'diy_icon_03_17','png'),(281,NULL,'diy_icon_03_18','png'),(282,NULL,'diy_icon_03_19','png'),(283,NULL,'diy_icon_03_20','png'),(284,NULL,'diy_icon_03_21','png'),(285,NULL,'diy_icon_03_22','png'),(286,NULL,'diy_icon_03_23','png'),(287,NULL,'diy_icon_03_24','png'),(288,NULL,'diy_icon_03_25','png'),(289,NULL,'diy_icon_03_26','png'),(290,NULL,'diy_icon_03_27','png'),(291,NULL,'diy_icon_03_28','png'),(292,NULL,'diy_icon_03_29','png'),(293,NULL,'diy_icon_03_30','png'),(294,NULL,'diy_icon_03_31','png'),(295,NULL,'diy_icon_03_32','png'),(296,NULL,'diy_icon_03_33','png'),(297,NULL,'diy_icon_03_34','png'),(298,NULL,'diy_icon_03_35','png'),(299,NULL,'diy_icon_03_36','png'),(300,NULL,'diy_icon_03_37','png'),(301,NULL,'diy_icon_03_38','png'),(302,NULL,'diy_icon_03_39','png'),(303,NULL,'diy_icon_03_40','png'),(304,NULL,'diy_icon_03_41','png'),(305,NULL,'diy_icon_03_42','png'),(306,NULL,'diy_icon_03_43','png'),(307,NULL,'diy_icon_03_44','png'),(308,NULL,'diy_icon_03_45','png'),(309,NULL,'diy_icon_03_46','png'),(310,NULL,'diy_icon_03_47','png'),(311,NULL,'diy_icon_03_48','png'),(312,NULL,'diy_icon_03_49','png'),(313,NULL,'diy_icon_03_50','png'),(314,NULL,'diy_icon_04_01','png'),(315,NULL,'diy_icon_04_02','png'),(316,NULL,'diy_icon_04_03','png'),(317,NULL,'diy_icon_04_04','png'),(318,NULL,'diy_icon_04_05','png'),(319,NULL,'diy_icon_04_06','png'),(320,NULL,'diy_icon_04_07','png'),(321,NULL,'diy_icon_04_08','png'),(322,NULL,'diy_icon_04_09','png'),(323,NULL,'diy_icon_04_10','png'),(324,NULL,'diy_icon_04_11','png'),(325,NULL,'diy_icon_04_12','png'),(326,NULL,'diy_icon_04_13','png'),(327,NULL,'diy_icon_04_14','png'),(328,NULL,'diy_icon_04_15','png'),(329,NULL,'diy_icon_04_16','png'),(330,NULL,'diy_icon_04_17','png'),(331,NULL,'diy_icon_04_18','png'),(332,NULL,'diy_icon_04_19','png'),(333,NULL,'diy_icon_04_20','png'),(334,NULL,'diy_icon_04_21','png'),(335,NULL,'diy_icon_04_22','png'),(336,NULL,'diy_icon_04_23','png'),(337,NULL,'diy_icon_04_24','png'),(338,NULL,'diy_icon_04_25','png'),(339,NULL,'diy_icon_04_26','png'),(340,NULL,'diy_icon_04_27','png'),(341,NULL,'diy_icon_04_28','png'),(342,NULL,'diy_icon_04_29','png'),(343,NULL,'diy_icon_04_30','png'),(344,NULL,'diy_icon_04_31','png'),(345,NULL,'diy_icon_04_32','png'),(346,NULL,'diy_icon_04_33','png'),(347,NULL,'diy_icon_04_34','png'),(348,NULL,'diy_icon_04_35','png'),(349,NULL,'diy_icon_04_36','png'),(350,NULL,'diy_icon_04_37','png'),(351,NULL,'diy_icon_04_38','png'),(352,NULL,'diy_icon_04_39','png'),(353,NULL,'diy_icon_04_40','png'),(354,NULL,'diy_icon_04_41','png'),(355,NULL,'diy_icon_04_42','png'),(356,NULL,'diy_icon_04_43','png'),(357,NULL,'diy_icon_04_44','png'),(358,NULL,'diy_icon_04_45','png'),(359,NULL,'diy_icon_04_46','png'),(360,NULL,'diy_icon_04_47','png'),(361,NULL,'diy_icon_04_48','png'),(362,NULL,'diy_icon_04_49','png'),(363,NULL,'diy_icon_04_50','png');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_res`
--

LOCK TABLES `sys_res` WRITE;
/*!40000 ALTER TABLE `sys_res` DISABLE KEYS */;
INSERT INTO `sys_res` VALUES (1,NULL,1,'ztree_root_close','系统管理',1,'sys','系统管理','/sys',5),(2,NULL,2,'diy_icon_01_05','用户管理',1,'sys:user','用户管理','/sys/user/list',1),(3,NULL,2,'diy_icon_01_10','角色管理',2,'sys:role','角色管理','/sys/role/list',1),(4,NULL,2,'ztree_report','资源管理',3,'sys:resource','资源管理','/sys/resource/list',1),(5,NULL,0,'','system',1,'system','最高的节点只能有一个','/system',NULL),(7,NULL,3,'icon-tasks','用户列表',1,'sys:user:list','用户列表','/sys/user/list',2),(8,NULL,3,'icon-plus','添加用户',2,'sys:user:add','添加用户','/sys/user/add',2),(9,NULL,3,'icon-minus','删除用户',3,'sys:user:delete','','/sys/user/delete',2),(10,NULL,3,'icon-pencil','修改用户',4,'sys:user:update','','/sys/user/update',2),(11,NULL,3,'icon-tasks','角色列表',1,'/sys:role:list','','/sys/role/list',3),(12,NULL,3,'icon-plus','添加角色',2,'sys:role:add','','/sys/role/add',3),(13,NULL,3,'icon-minus','删除角色',3,'sys:role:delete','','/sys/role/delete',3),(14,NULL,3,'icon-pencil','修改角色',4,'sys:role:update','','/sys/role/update',3),(15,NULL,3,'icon-tasks','资源列表',1,'sys:resource:list','','/sys/resource/list',4),(16,NULL,3,'icon-plus','添加资源',2,'sys:resource:add','','/sys/resource/add',4),(17,NULL,3,'icon-minus','删除资源',3,'sys:resource:delete','','/sys/resource/delete',4),(18,NULL,3,'icon-pencil','修改资源',4,'sys:resource:update','','/sys/resource/update',4),(19,NULL,2,'diy_icon_01_02','图标管理',4,'sys:user:list','','/sys/icon/list',1),(20,NULL,3,'icon-tasks','图标列表',1,'sys:icon:list','','/sys/icon/list',19),(21,NULL,3,'icon-plus','添加图标',2,'sys:icon:add','','/sys/icon/add',19),(22,NULL,3,'icon-minus','删除图标',3,'sys:icon:delete','','/sys/icon/delete',19),(23,NULL,3,'icon-pencil','修改图标',4,'sys:icon:update','','/sys/icon/update',19),(24,NULL,3,'ztree_file2','详细信息',5,'sys:user:show','','/sys/user/show',2),(25,NULL,3,'ztree_file2','详细信息',5,'sys:role:show','','/sys/role/show',3),(26,NULL,3,'ztree_file2','详细信息',5,'sys:resource:show','','/sys/resource/show',4),(27,NULL,3,'icon-cog','详细信息',5,'sys:icon:show','','sys/icon/show',19),(28,NULL,1,'diy_icon_01_48','终端服务',1,'mobile','终端服务','/mobile',5),(29,NULL,2,'diy_icon_01_29','消息推送',1,'mobile:push','','/mobile/push',28);
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
INSERT INTO `sys_role_res` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(5,2),(1,3),(3,3),(5,3),(1,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,7),(2,7),(5,7),(1,8),(2,8),(5,8),(1,9),(2,9),(1,10),(2,10),(5,10),(1,11),(3,11),(5,11),(1,12),(3,12),(1,13),(3,13),(5,13),(1,14),(3,14),(5,14),(1,15),(5,15),(1,16),(1,17),(5,17),(1,18),(1,19),(4,19),(5,19),(1,20),(4,20),(5,20),(1,21),(4,21),(1,22),(4,22),(5,22),(1,23),(4,23),(5,23),(1,24),(1,25),(1,26),(1,27),(4,27),(1,28),(1,29);
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
  `createDate` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loginId` varchar(255) NOT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginId` (`loginId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (4,'成都','2014-03-07 00:00:00','sa@ww.cc','user2','15222233426','用户2号','0c62621580d52a609bb9c853e0b0da8f','','0'),(5,'成都','2014-03-14 00:00:00','502876941@qq.com','admin','15108276486','超级管理员','bd2e01edc57144999856d77571151dda','帅气的开发者','1'),(6,'成都','2014-03-14 00:00:00','sss@ii.cc','test1','15369654627','test1','d72fdca757e985ff7fc8127890842a0f','','1');
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
INSERT INTO `sys_user_role` VALUES (5,1),(4,3),(4,4),(6,4);
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

-- Dump completed on 2014-03-19 20:05:49
