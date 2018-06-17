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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` varchar(40) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category_id_FK` (`category_id`),
  CONSTRAINT `category_id_FK` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('1','未来简史+人类简史','尤瓦尔·赫拉利',129.5,'1_1.jpg','尤瓦尔·赫拉利全球轰动作品！第十届文津图书奖获奖图书！比尔·盖茨、扎克伯格、奥巴马、丹尼尔·卡尼曼热荐！人类迎来第二次认知革命。','1'),('2','失落的一代','潘鸣啸',43.8,'1_2.png','《失落的一代》全新修订，本书揭示了发起“上山下乡运动”的领导人公开或隐蔽的动机，与他们为达到目的所使用的手法，同时分析了 他们的这些决定在整个社会上所引致的后果。本书也探讨了下乡运动进行了20多年，为何会在1980年突然寿终正寝，并且研究了这场运动在中国社会、政治及 经济上留下了什么印记，以及它在中国当代历史上应该占一个什么位置。','1'),('3','文明之光','吴军',219.5,'1_3.png','第六届中华优秀出版物《文明之光》系列全集，融科技、人文于一炉，深入浅出解读人类文明进步的各阶段。2014中国好书 文津图书奖得主《数学之美》《浪潮之巅》作者吴军博士全新力作！','1'),('4','自在独行','贾平凹',29.2,'2_1.png','陈坤开心推荐，贾平凹的独行世界，研磨孤独，收获自在，致每个孤独的行路人。你独自行走，不顾一切，哭着，笑着，留恋人间，只为不虚此行。独行是一场心灵的隐居，即便你认为自己是孤独的，也是可以自在的。','2'),('5','一只特立独行的猪','王小波',33.4,'2_2.png','王小波杂文精选集，逝世二十周年精装纪念版！幽默中充满智性，扛起一面自由、独立、理性的精神旗帜！——“我觉得黑色幽默是我的气质，是天生的。”','2'),('6','2019考研数学','李永乐',182,'3_1.png','已经很全了，李永乐2019考研数学大套装， 考研数学已经无忧了，只要踏实学','3'),('7','Python神经网络编程','塔里克·拉希德',65.6,'4_1.png','人工智能深度学习机器学习领域又一重磅力作 自己动手用Python编写神经网络 美亚排名前茅荣获众多好评 全彩印刷 图表丰富 ','4'),('8','深入理解LINUX内核（第三版）','博韦, 西斯特',93.1,'4_2.png','为了彻底理解是什么使得Linux能正常运行以及其为何能在各种不同的系统中运行良好，你需要深入研究内核本质的部分。 ','4'),('9','Java从入门到精通（第4版）（附光盘）','明日科技',66.2,'4_3.png','畅销书全新改版 累计63次重印 30万读者选择的 java入门经典书 持续八年畅销 全行业优秀畅销书 长期位居java 销售排行榜前列 好学、好用 32小时视频 732个经典实例 369项','4');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
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
