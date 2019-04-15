-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trainticketsystem
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trainticketinfo`
--

DROP TABLE IF EXISTS `trainticketinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainticketinfo` (
  `ticketnumber` varchar(20) NOT NULL,
  `Tnumber` varchar(10) NOT NULL,
  `startstation` varchar(10) NOT NULL,
  `traindate` datetime NOT NULL,
  `traintype` enum('无座','硬座','硬卧','软卧') DEFAULT NULL,
  `ordernumber` char(20) NOT NULL,
  `carriagenumber` int(11) NOT NULL,
  `seatnumber` int(11) NOT NULL,
  PRIMARY KEY (`ticketnumber`),
  UNIQUE KEY `seatnumber` (`seatnumber`),
  KEY `fk_TrainTicketInfo_TrainNumberInfo` (`Tnumber`),
  CONSTRAINT `fk_TrainTicketInfo_TrainNumberInfo` FOREIGN KEY (`Tnumber`) REFERENCES `trainnumberinfo` (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainticketinfo`
--

LOCK TABLES `trainticketinfo` WRITE;
/*!40000 ALTER TABLE `trainticketinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainticketinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16  0:25:18
