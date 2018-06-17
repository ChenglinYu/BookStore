-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	5.7.17-enterprise-commercial-advanced

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` varchar(40) NOT NULL,
  `ordertime` datetime NOT NULL,
  `price` double NOT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `user_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK` (`user_id`),
  CONSTRAINT `user_id_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('014d4ebe-76e7-428d-976e-1c272f188f87','2018-06-17 20:42:53',467.1,0,'ed42f943-f2ec-4ae7-9599-1a8d20c40bc5'),('30f78536-7ae1-40f8-8ea7-a25507038bad','2018-06-17 20:09:45',43.8,0,'ed42f943-f2ec-4ae7-9599-1a8d20c40bc5'),('46645247-7aa2-486f-a7ac-d1b1011c12ae','2018-06-17 20:18:55',314.9,0,'ed42f943-f2ec-4ae7-9599-1a8d20c40bc5'),('7649d08d-3236-4ce2-a0d7-2cced29daae5','2018-06-17 19:37:05',126.5,0,'ed42f943-f2ec-4ae7-9599-1a8d20c40bc5'),('7bca35ca-88ce-4c11-a8e0-cf74a6944e4b','2018-06-17 19:59:19',182,0,'ed42f943-f2ec-4ae7-9599-1a8d20c40bc5'),('e258ce90-f514-4693-8f0b-88bb04eb8633','2018-06-17 20:04:54',173.3,0,'ed42f943-f2ec-4ae7-9599-1a8d20c40bc5');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-17 20:52:19
