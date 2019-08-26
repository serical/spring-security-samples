-- MySQL dump 10.13  Distrib 8.0.16, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: oauth2
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
-- Table structure for table `ClientDetails`
--

DROP TABLE IF EXISTS `ClientDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ClientDetails` (
  `appId` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `resourceIds` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `appSecret` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grantTypes` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `redirectUrl` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authorities` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `autoApproveScopes` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientDetails`
--

LOCK TABLES `ClientDetails` WRITE;
/*!40000 ALTER TABLE `ClientDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('3b3a3978fcef455ff2467ce96686fa5a',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0l\Œ\Êâxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$ae06344a-8243-40ce-99fb-570ef62247c6sq\0~\0	w\0\0mf—®àxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0apppxt\0bearert\0$a0b942ac-3a50-4293-92ae-998439dd8465','95428139b700f266bd8adb7fb84b9e37','admin','2ec1d45c-8127-444f-86e4-2a1c200cc837',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0˛\0L\0rolet\0Ljava/lang/String;xpt\0\rSystemContentxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0$2ec1d45c-8127-444f-86e4-2a1c200cc837sr\0%java.util.Collections$UnmodifiableMap\Ò•®˛t\ıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0LcyjDat\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0apppxsq\0~\0&w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0https://www.sonovel.ccpsq\0~\0&w\0\0\0?@\0\0\0\0\0\0xsq\0~\0&w\0\0\0?@\0\0\0\0\0q\0~\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\01sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 A359E2865C2F8C32F066AD2690CB87CBpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0#sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0q\0~\0xpt\0admin','54ef462984f7f42d532fcd90e1208605');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clientId` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `resource_ids` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_secret` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authorized_grant_types` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authorities` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `autoapprove` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('2ec1d45c-8127-444f-86e4-2a1c200cc837',NULL,'$2a$10$mI8yP3nB0bGzNH.IPW/ltuXnkx/u/FzBIjSF16ulC3cuhOc5AMH7i','appp',NULL,'https://www.sonovel.cc',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_code` (
  `code` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('54ef462984f7f42d532fcd90e1208605',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$ae06344a-8243-40ce-99fb-570ef62247c6sr\0java.util.DatehjÅKYt\0\0xpw\0\0mf—®àx',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0˛\0L\0rolet\0Ljava/lang/String;xpt\0\rSystemContentxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0$2ec1d45c-8127-444f-86e4-2a1c200cc837sr\0%java.util.Collections$UnmodifiableMap\Ò•®˛t\ıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0C1uZFqt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0apppxsq\0~\0&w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0https://www.sonovel.ccpsq\0~\0&w\0\0\0?@\0\0\0\0\0\0xsq\0~\0&w\0\0\0?@\0\0\0\0\0q\0~\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\01sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 7D67D8ED4D15F81A651D35BA838B5DF1psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0#sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0q\0~\0xpt\0admin');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '‰∏ªÈîÆ',
  `parent_id` bigint(20) NOT NULL COMMENT 'Áà∂ID',
  `name` varchar(50) NOT NULL COMMENT 'ÊùÉÈôêÂêç',
  `en_name` varchar(100) NOT NULL COMMENT 'ÊùÉÈôêËã±ÊñáÂêç',
  `url` varchar(256) NOT NULL,
  `description` varchar(256) DEFAULT NULL COMMENT 'Â§áÊ≥®',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '‰øÆÊîπÊó∂Èó¥',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ÊòØÂê¶Á¶ÅÁî®, 0:Âê¶, 1:ÊòØ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ÊùÉÈôêË°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,0,'ÂÜÖÂÆπÁÆ°ÁêÜ','SystemContent','/api/content',NULL,'2019-08-26 12:37:34','2019-08-26 12:37:34',0);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '‰∏ªÈîÆ',
  `parent_id` bigint(20) NOT NULL COMMENT 'Áà∂ID',
  `name` varchar(50) NOT NULL COMMENT 'ËßíËâ≤Âêç',
  `en_name` varchar(100) NOT NULL COMMENT 'ËßíËâ≤Ëã±ÊñáÂêç',
  `description` varchar(256) NOT NULL COMMENT 'Â§áÊ≥®',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '‰øÆÊîπÊó∂Èó¥',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ÊòØÂê¶Á¶ÅÁî®, 0:Âê¶, 1:ÊòØ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ËßíËâ≤Ë°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,0,'Ë∂ÖÁ∫ßÁÆ°ÁêÜÂëò','admin','Ë∂ÖÁ∫ßÁÆ°ÁêÜÂëò','2019-08-26 12:36:40','2019-08-26 12:36:40',0);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '‰∏ªÈîÆ',
  `role_id` bigint(20) NOT NULL COMMENT 'ËßíËâ≤ID',
  `permission_id` bigint(20) NOT NULL COMMENT 'ÊùÉÈôêID',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '‰øÆÊîπÊó∂Èó¥',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ÊòØÂê¶Á¶ÅÁî®, 0:Âê¶, 1:ÊòØ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ËßíËâ≤ÊùÉÈôêË°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,1,1,'2019-08-26 12:37:43','2019-08-26 12:37:43',0);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '‰∏ªÈîÆ',
  `uid` bigint(20) NOT NULL COMMENT 'Áî®Êà∑ID',
  `user_name` varchar(50) NOT NULL COMMENT 'Áî®Êà∑Ë¥¶Âè∑',
  `password` varchar(100) NOT NULL COMMENT 'Áî®Êà∑ÂØÜÁ†Å',
  `phone` varchar(20) NOT NULL COMMENT 'Áî®Êà∑ÊâãÊú∫Âè∑',
  `user_nick` varchar(50) NOT NULL COMMENT 'Áî®Êà∑ÊòµÁß∞',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '‰øÆÊîπÊó∂Èó¥',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ÊòØÂê¶Á¶ÅÁî®, 0:Âê¶, 1:ÊòØ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_phone_uindex` (`phone`),
  UNIQUE KEY `user_uid_uindex` (`uid`),
  UNIQUE KEY `user_user_name_uindex` (`user_name`),
  UNIQUE KEY `user_user_nick_uindex` (`user_nick`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Áî®Êà∑Ë°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1111,'admin','$2a$10$ip3/bfgmU3sJTr5RtoztXOydYZhJbTPOq6ZZQbH.e1vqT2xPuu9hW','15111111111','‰Ω†Â•Ω','2019-08-24 12:54:52','2019-08-24 12:54:52',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '‰∏ªÈîÆ',
  `user_id` bigint(20) NOT NULL COMMENT 'Áî®Êà∑ID',
  `role_id` bigint(20) NOT NULL COMMENT 'ËßíËâ≤ID',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '‰øÆÊîπÊó∂Èó¥',
  `disable` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ÊòØÂê¶Á¶ÅÁî®, 0:Âê¶, 1:ÊòØ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Áî®Êà∑ËßíËâ≤Ë°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (4,1,1,'2019-08-26 13:11:33','2019-08-26 13:11:33',0);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-26 13:16:53
