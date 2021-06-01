-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Emp_ID` varchar(20) NOT NULL DEFAULT '',
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Mngr_Indc` char(1) DEFAULT NULL,
  `Mngr_emp_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1','muthu','muthurajbharathi@gmail.com','tsepaktech','N','4'),('2','gautam','goodgautam@gmail.com','goodgautam','N','4'),('3','krishna','reddykrishna351@gmail.com','krishnareddy','N','4'),('4','karthik','karthikeshwar@gmail.com','karthikeshwar12','Y','5'),('5','sunilcoushik','sunil@gmail.com','sunil123','Y','6');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leav_requests`
--

DROP TABLE IF EXISTS `leav_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leav_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_ID` varchar(20) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL,
  `no_of_days` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Emp_ID` (`Emp_ID`),
  CONSTRAINT `leav_requests_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leav_requests`
--

LOCK TABLES `leav_requests` WRITE;
/*!40000 ALTER TABLE `leav_requests` DISABLE KEYS */;
INSERT INTO `leav_requests` VALUES (8,'1','2015-07-23','2015-07-29','g d hgg hfghfghgfh','6','Rejected'),(9,'2','2015-05-23','2015-05-29','hello','6','Approved'),(11,'2','2015-08-06','2015-08-12','jjdfgfd gf ','6','Approved'),(15,'3','2015-08-22','2015-09-05','sick','13','Approved'),(17,'2','2015-12-23','2015-12-28','going to new year ce','5','Approved'),(18,'1','2015-04-03','2015-04-10','going to vacation','7','Rejected'),(21,'1','2015-05-15','2015-06-03','muthu second leave','13','Approved'),(22,'2','2015-04-16','2015-05-05','gautam applying for ','13','Rejected'),(26,'2','2015-05-14','2015-05-29','14-29 treatment','11','pending'),(27,'1','2015-03-27','2015-04-15','27-15 going to fest','13','pending'),(28,'3','2015-03-20','2015-03-26','going to temple','4','pending');
/*!40000 ALTER TABLE `leav_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-02 20:00:28
