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
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `id` varchar(40) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `book_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id_FK` (`book_id`),
  KEY `order_id_FK` (`order_id`),
  CONSTRAINT `book_id_FK` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_id_FK` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES ('09cb44b8-dab0-464b-ba86-f60983d71ff3',1,182,'014d4ebe-76e7-428d-976e-1c272f188f87','6'),('2403e7e1-9540-4bed-9796-812268d9d8ee',1,29.2,'46645247-7aa2-486f-a7ac-d1b1011c12ae','4'),('2a39434f-5f15-4c99-8547-74d17d2039d0',1,93.1,'7649d08d-3236-4ce2-a0d7-2cced29daae5','8'),('50d05d8a-e516-4414-8ddf-5ac6d557b1e3',1,182,'7bca35ca-88ce-4c11-a8e0-cf74a6944e4b','6'),('5d085b3b-540b-4c46-94e9-4a9728bec9e5',1,219.5,'46645247-7aa2-486f-a7ac-d1b1011c12ae','3'),('846120d5-99aa-4e37-9734-ae631a2bf438',1,65.6,'014d4ebe-76e7-428d-976e-1c272f188f87','7'),('927ae210-66d4-4e15-964a-ecf231513bda',1,129.5,'e258ce90-f514-4693-8f0b-88bb04eb8633','1'),('b547c043-65b9-4a61-8401-866d9b2ce835',1,33.4,'7649d08d-3236-4ce2-a0d7-2cced29daae5','5'),('bd8347a5-3d34-4990-8dc7-1947e286f3f0',1,43.8,'30f78536-7ae1-40f8-8ea7-a25507038bad','2'),('dc22f663-c97a-47c8-a546-abfed53e9224',1,219.5,'014d4ebe-76e7-428d-976e-1c272f188f87','3'),('de4d1005-a706-4af1-bad2-fe0477cdebfd',1,66.2,'46645247-7aa2-486f-a7ac-d1b1011c12ae','9'),('f78a05e1-7539-4eb7-a034-d3ba1b2c8fdd',1,43.8,'e258ce90-f514-4693-8f0b-88bb04eb8633','2');
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-17 20:52:18
