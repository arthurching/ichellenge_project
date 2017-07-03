-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ecdb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `userPassword` varchar(45) DEFAULT NULL,
  `userPhone` varchar(45) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName_UNIQUE` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'john','321','4123123','asdasd'),(2,'mary','321','546356','qewhdas'),(5,'jack','23123','213123123','xzcdxcz'),(19,'johnzxc','asd','xzc','zxc'),(20,'xzcxczxcz','xczxcz','xczasd','asdasd'),(21,'xczxcxzavv','dasd','123','das'),(22,'johnxzcxczxcz','xczxczzc','ewqwe','asda'),(27,'xzczcxzcbq','easd','dasasd','dasa'),(28,'xzcxzczxvqeqwe','xcaxz','xczzxc','czzxc'),(33,'asfxzvxzcxz','das','21','xcz'),(34,'johnxzcxzc','asd','asd','213'),(35,'xcz','xczsad','xzcasd','zxcasd'),(36,'xzcdasdasd','zxcvzx','xzcax','zxc'),(37,'xzcdasdasd12','zcx','ads','xcz'),(40,'zxczad','dqwe','asda','xzc'),(41,'zxxczxcz','asdxzc','xczxzc','cadas'),(43,'asdad','xzczxcxz','xczxcz','czxcz'),(44,'zcxzcc','xzczxc','zxczx','czczxc'),(45,'dasxczcz','321','as2131231','1asxszcxzc'),(47,'zxvzxbb','123das','123123123','xzczxccz'),(52,'xczzxczxc','213','das','xzc'),(53,'xzcdasdasd12asdasdas','xczsad','asdasda','dasdasdad'),(54,'xzczxczxc','12313','sdasdaxzc','czcxzczxc'),(55,'xzcdasdasdxzczxc','zxczxc','12312','xzvzv');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 20:30:41
