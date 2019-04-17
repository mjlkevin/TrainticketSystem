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
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_order` (
  `orderNumber` char(20) NOT NULL,
  `IDnumber` varchar(18) NOT NULL,
  `order_time` datetime NOT NULL,
  `ifpaied` enum('是','否') NOT NULL,
  `train_number` varchar(10) NOT NULL,
  `realname` varchar(20) NOT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `fk_TrainNumberInfo_tnumber` (`train_number`),
  CONSTRAINT `fk_TrainNumberInfo_tnumber` FOREIGN KEY (`train_number`) REFERENCES `tb_train` (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_station_gzn`
--

DROP TABLE IF EXISTS `tb_station_gzn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_station_gzn` (
  `trainnumber` varchar(10) NOT NULL,
  `ArrivalTime` time DEFAULT NULL,
  `LeaveTime` time DEFAULT NULL,
  PRIMARY KEY (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_station_gzn`
--

LOCK TABLES `tb_station_gzn` WRITE;
/*!40000 ALTER TABLE `tb_station_gzn` DISABLE KEYS */;
INSERT INTO `tb_station_gzn` VALUES ('C0001','00:00:00','06:00:00'),('C0002','07:12:00','07:30:00'),('C0003','00:00:00','06:30:00'),('C0004','07:20:00','07:45:00'),('C0005','00:00:00','07:15:00');
/*!40000 ALTER TABLE `tb_station_gzn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_station_tjw`
--

DROP TABLE IF EXISTS `tb_station_tjw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_station_tjw` (
  `trainnumber` varchar(10) NOT NULL,
  `ArrivalTime` time DEFAULT NULL,
  `LeaveTime` time DEFAULT NULL,
  PRIMARY KEY (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_station_tjw`
--

LOCK TABLES `tb_station_tjw` WRITE;
/*!40000 ALTER TABLE `tb_station_tjw` DISABLE KEYS */;
INSERT INTO `tb_station_tjw` VALUES ('C0001','06:55:00','06:58:00'),('C0003','07:20:00','07:23:00'),('C0004','06:44:00','06:47:00'),('C0005','08:10:00','08:12:00');
/*!40000 ALTER TABLE `tb_station_tjw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_station_zh`
--

DROP TABLE IF EXISTS `tb_station_zh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_station_zh` (
  `trainnumber` varchar(10) NOT NULL,
  `ArrivalTime` time DEFAULT NULL,
  `LeaveTime` time DEFAULT NULL,
  PRIMARY KEY (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_station_zh`
--

LOCK TABLES `tb_station_zh` WRITE;
/*!40000 ALTER TABLE `tb_station_zh` DISABLE KEYS */;
INSERT INTO `tb_station_zh` VALUES ('C0001','07:20:00','07:45:00'),('C0002','00:00:00','06:00:00'),('C0003','07:05:00','07:08:00'),('C0004','00:00:00','06:25:00'),('C0005','08:00:00','08:05:00');
/*!40000 ALTER TABLE `tb_station_zh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_station_zs`
--

DROP TABLE IF EXISTS `tb_station_zs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_station_zs` (
  `trainnumber` varchar(10) NOT NULL,
  `ArrivalTime` time DEFAULT NULL,
  `LeaveTime` time DEFAULT NULL,
  PRIMARY KEY (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_station_zs`
--

LOCK TABLES `tb_station_zs` WRITE;
/*!40000 ALTER TABLE `tb_station_zs` DISABLE KEYS */;
INSERT INTO `tb_station_zs` VALUES ('C0001','06:45:00','06:48:00'),('C0003','08:05:00','08:08:00'),('C0005','09:01:00','09:04:00');
/*!40000 ALTER TABLE `tb_station_zs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ticket`
--

DROP TABLE IF EXISTS `tb_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_ticket` (
  `ticketnumber` varchar(20) NOT NULL,
  `trainnumber` varchar(10) NOT NULL,
  `user_depStation` varchar(20) NOT NULL,
  `depDate` date NOT NULL,
  `seatType` enum('无座','二等座','一等座') NOT NULL,
  `ordernumber` char(20) NOT NULL,
  `carriagenumber` int(11) NOT NULL,
  `seatnumber` int(11) NOT NULL,
  `user_destination` varchar(20) NOT NULL,
  PRIMARY KEY (`ticketnumber`),
  UNIQUE KEY `seatnumber` (`seatnumber`),
  KEY `fk_TrainTicketInfo_TrainNumberInfo` (`trainnumber`),
  CONSTRAINT `fk_TrainTicketInfo_TrainNumberInfo` FOREIGN KEY (`trainnumber`) REFERENCES `tb_train` (`trainnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ticket`
--

LOCK TABLES `tb_ticket` WRITE;
/*!40000 ALTER TABLE `tb_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_train`
--

DROP TABLE IF EXISTS `tb_train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_train` (
  `trainnumber` varchar(10) NOT NULL,
  `depStation` varchar(10) NOT NULL,
  `Terminus` varchar(10) NOT NULL,
  `surplusticket` int(11) DEFAULT NULL,
  PRIMARY KEY (`trainnumber`),
  UNIQUE KEY `departurestation` (`depStation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_train`
--

LOCK TABLES `tb_train` WRITE;
/*!40000 ALTER TABLE `tb_train` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_user` (
  `uname` varchar(10) NOT NULL,
  `upassword` varchar(10) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `uid` int(5) NOT NULL,
  `uIDnumber` varchar(18) DEFAULT NULL,
  `realname` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uIDnumber` (`uIDnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('kevin','123','mjlkevin@outlook.com',0,NULL,NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-17 16:23:58
