-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: emc
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `party` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `salt` text,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (20,'Ahvenjarvi','Joel','Suomen Kristillisdemokraatit','Uurainen',86,'joel1','jIbyVe8IliLpSLUIi+8Nx4lBNw7AyfW9/unNWdG0J+c=','cpvqzQ2qHEXS2EDGUFabCQ=='),(21,'Aintila','Henrik Jeremias','Suomen ruotsalainen kansanpuolue','Doctor',47,'Henrik1','pWyCwRuYmYLV1ECJn3K2AWF6N1w+DW1cNqtIkAoFEj0=','SWoQuNw9zsUF1P4EPM1+6Q=='),(22,'Aittakumpu','Alviina','Vasemmistoliitto','Teacher',46,'Alviina1','lP//7K/5fS1UX08PcHmXpxuZBETquz0pvnc6Rf7JnVI=','TRMKNW24aftDHw0Mcdp8mA=='),(23,'Ala-Reinikka','Karl-Mikael','Kansallinen Kokoomus','Business man',37,'KarlMikael1','b5ohvUx9NtudN8glcDQWlr77cT5AeeCUF/f6i7gZxpI=','HyR7FDGtuatfOaHSpY5J1w=='),(24,'test','test','test','test',20,'test','HvLw0Wy2vxIauXRDc6d47JTccbPWfeAbkMeaZYQ5QLE=','ZPxPuO4IRNTHuE5aZxg28Q=='),(25,'Essi','Andersson','Suomen ruotsalainen kansanpuolue','Student',30,'Essi1','5jgHIpM4XHBRW4OmOqnim2H0X4PPp9k/IV5e7L5OOjI=','Fk1A840ZkJ1Svg7lKa8CPA=='),(26,'Andersson','Cosmo','Vasemmistoliitto','Business man',34,'Cosmo1','uSQW1TXq0NBmyBMCjMRxvZyTY/N0rJb/wmPwuBtICCM=','v231v0JTnzGMMYHip2A31Q=='),(27,'Anderson','Otto','Suomen ruotsalainen kansanpuolue','Major',32,'Otto1','fnW/QP7AsMfj0qyScqn0KdrTLTS/EulZuR4lSyRXbjo=','kmkFn52yEJM5Ne9CV5DsRg=='),(28,'Alhonnoro','Jasmine','Vihre� liitto','Doctor',35,'Jasmine1','+g0ExND4+mXu9gTLmhApakAbvwGI2MFHN2sniWLUm3Q=','zgmvzNKezy5IHFpuKJcXNQ==');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11 10:54:51
