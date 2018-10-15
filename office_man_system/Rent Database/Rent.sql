-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: office_management_system
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `available_machines`
--

DROP TABLE IF EXISTS `available_machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available_machines` (
  `machineSerial` varchar(20) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `copycount` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `discrip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`machineSerial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_machines`
--

LOCK TABLES `available_machines` WRITE;
/*!40000 ALTER TABLE `available_machines` DISABLE KEYS */;
INSERT INTO `available_machines` VALUES ('1234567890','Ricoh','Color','90','Brand New','New'),('4569871230','Thoshiba','Black','100','Good Condition','Used');
/*!40000 ALTER TABLE `available_machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `cusNIC` varchar(10) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`cusNIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent` (
  `customerNIC` varchar(10) NOT NULL,
  `amount` double DEFAULT NULL,
  `chequeNum` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`customerNIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_customers`
--

DROP TABLE IF EXISTS `rented_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rented_customers` (
  `nic` varchar(10) NOT NULL,
  `customerName` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `depositAmount` varchar(10) NOT NULL,
  `paidType` varchar(25) NOT NULL,
  `bank` varchar(45) DEFAULT 'No',
  `chequeNum` varchar(7) DEFAULT 'No',
  PRIMARY KEY (`nic`),
  UNIQUE KEY `nic_UNIQUE` (`nic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_customers`
--

LOCK TABLES `rented_customers` WRITE;
/*!40000 ALTER TABLE `rented_customers` DISABLE KEYS */;
INSERT INTO `rented_customers` VALUES ('741258963V','User Four','Address','+94766218901','12000','Cash Payment','No','No'),('919076723V','User Test','12/A , Main Street , Nugegoda.','+94112751918','20000','Cash Payment','No','No'),('951100374V','Naveen','Address','+94779090433','10000','Cash Payment','No','No'),('962790712V','Pasindu Senarathne','457/A,Koratota,Kaduwela.','+94766261660','10000','Cheque Payment','Peoples Bank','258741');
/*!40000 ALTER TABLE `rented_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_machine_records`
--

DROP TABLE IF EXISTS `rented_machine_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rented_machine_records` (
  `nic` varchar(45) NOT NULL,
  `machineBrand` varchar(45) NOT NULL,
  `machineType` varchar(45) NOT NULL,
  `serialNum` varchar(45) NOT NULL,
  `copyCount` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `discription` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`nic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_machine_records`
--

LOCK TABLES `rented_machine_records` WRITE;
/*!40000 ALTER TABLE `rented_machine_records` DISABLE KEYS */;
INSERT INTO `rented_machine_records` VALUES ('741258963V','Ricoh','Color','3698521470',0,'Brand New','','2018-09-05'),('919076723V','Toshiba','Color','2345670981',90,'Good Condition','New','2018-09-05'),('962790712V','Ricoh','Color','9871236540',0,'Brand New','Brand New Machine','2018-09-05');
/*!40000 ALTER TABLE `rented_machine_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-05 22:21:30
