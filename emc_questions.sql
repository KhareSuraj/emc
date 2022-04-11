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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (24,'Suomessa on liian helppo el�� sosiaaliturvan varassa'),(25,'Kaupan ja muiden liikkeiden aukioloajat on vapautettava.'),(26,'Suomessa on siirrytt�v� perustuloon joka korvaisi nykyisen sosiaaliturvan v�himm�istason.'),(27,'Ty�ntekij�lle on turvattava lailla minimity�aika.'),(28,'Ansiosidonnaisen ty�tt�myysturvan kestoa pit�� lyhent��.'),(29,'Euron ulkopuolella Suomi p�rj�isi paremmin.'),(30,'Ruoan verotusta on varaa kirist��.'),(31,'Valtion ja kuntien taloutta on tasapainotettava ensisijaisesti leikkaamalla menoja'),(32,'Lapsilisi� on korotettava ja laitettava verolle.'),(33,'Suomella ei ole varaa nykyisen laajuisiin sosiaali- ja terveyspalveluihin.'),(34,'\"Nato-j�senyys vahvistaisi Suomen turvallisuuspoliittista asemaa.'),(35,'Suomeen tarvitaan enemm�n poliiseja.'),(36,'Maahanmuuttoa Suomeen on rajoitettava terrorismin uhan vuoksi.'),(37,'Ven�j�n etupiiripolitiikka on uhka Suomelle.'),(38,'Verkkovalvonnassa valtion turvallisuus on t�rke�mp�� kuin kansalaisten yksityisyyden suoja.'),(39,'Suomen on osallistuttava Isisin vastaiseen taisteluun kouluttamalla Irakin hallituksen joukkoja.'),(40,'Parantumattomasti sairaalla on oltava oikeus avustettuun kuolemaan.'),(41,'Terveys- ja sosiaalipalvelut on tuotettava ensijaisesti julkisina palveluina.'),(42,'Viranomaisten pit�� puuttua lapsiperheiden ongelmiin nykyist� herkemmin.'),(43,'Test');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
