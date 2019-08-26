-- MySQL dump 10.13  Distrib 8.0.16, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: oauth2_resource
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_id` bigint(20) NOT NULL COMMENT '内容类目ID',
  `title` varchar(200) DEFAULT NULL COMMENT '内容标题',
  `sub_title` varchar(100) DEFAULT NULL COMMENT '子标题',
  `title_desc` varchar(500) DEFAULT NULL COMMENT '标题描述',
  `url` varchar(500) DEFAULT NULL COMMENT '链接',
  `pic` varchar(300) DEFAULT NULL COMMENT '图片绝对路径',
  `pic2` varchar(300) DEFAULT NULL COMMENT '图片2',
  `content` text COMMENT '内容',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否禁用, 0:否, 1:是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='内容表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,1,'标题','子标题','标题说明','http://www.jd.com',NULL,NULL,NULL,'2019-08-26 10:31:40','2019-08-26 10:31:40',0),(2,1,'ad2','ad2','ad2','http://www.baidu.com',NULL,NULL,NULL,'2019-08-26 10:31:40','2019-08-26 10:31:40',0),(3,1,'ad3','ad3','ad3','http://www.sina.com.cn',NULL,NULL,NULL,'2019-08-26 10:31:40','2019-08-26 10:31:40',0),(4,1,'ad4','ad4','ad4','http://www.funtl.com',NULL,NULL,NULL,'2019-08-26 10:31:40','2019-08-26 10:31:40',0);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_category`
--

DROP TABLE IF EXISTS `content_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `content_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目ID=0时，代表的是一级的类目',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `sort_order` int(4) DEFAULT NULL COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '该类目是否为父类目，1为true，0为false',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否禁用, 0:否, 1:是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='内容类目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_category`
--

LOCK TABLES `content_category` WRITE;
/*!40000 ALTER TABLE `content_category` DISABLE KEYS */;
INSERT INTO `content_category` VALUES (1,NULL,'大广告',1,NULL,1,'2019-08-26 10:32:07','2019-08-26 10:32:07',0);
/*!40000 ALTER TABLE `content_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-26 13:13:31
