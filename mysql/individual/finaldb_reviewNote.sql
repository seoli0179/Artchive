-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: finaldb
-- ------------------------------------------------------
-- Server version	8.0.29

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


 

-- Table structure for table `reviewnote`
--

DROP TABLE IF EXISTS `reviewnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewnote` (
  `reviewNoteId` int NOT NULL AUTO_INCREMENT,
  `reviewNoteTitle` varchar(150) DEFAULT NULL,
  `reviewNote` longtext,
  `reviewNoteLike` int DEFAULT '0',
  `reviewNoteCommentNum` int DEFAULT '0',
  `reviewNoteCreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `reviewPageViewState` varchar(50) DEFAULT 'POST',
  `courseId` int DEFAULT NULL,
  `userId` varchar(20) NOT NULL,
  `exhbnId` int DEFAULT NULL,
  PRIMARY KEY (`reviewNoteId`),
  KEY `courseId` (`courseId`),
  KEY `userId` (`userId`),
  KEY `exhbnId` (`exhbnId`),
  CONSTRAINT `FK_reviewNote_course` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`)
  ON DELETE CASCADE,
  CONSTRAINT `FK_reviewNote_exhbn` FOREIGN KEY (`exhbnId`) REFERENCES `exhbn` (`exhbnId`),
  CONSTRAINT `FK_reviewNote_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewnote`
--

LOCK TABLES `reviewnote` WRITE;
/*!40000 ALTER TABLE `reviewnote` DISABLE KEYS */;

/*!40000 ALTER TABLE `reviewnote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-03  2:25:01
