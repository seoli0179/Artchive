CREATE DATABASE  IF NOT EXISTS `finaldb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finaldb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: finaldb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bookmark`
--

DROP TABLE IF EXISTS `reviewNote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE reviewNote (
	reviewNoteId int NOT NULL PRIMARY KEY ,
    reviewNoteTitle	varchar(150) DEFAULT NULL,
	reviewNote	longtext,
    reviewNoteLike int DEFAULT '0',
    reviewNoteCommentNum int DEFAULT '0',
    reviewNoteCreatedDate datetime default now(),
    reviewPageViewState varchar(50) DEFAULT 'POST',
    courseId int,
    userId  varchar(20) NOT NULL,
    exhbnId int,
    KEY `courseId` (`courseId`),
    KEY `userId` (`userId`),
	KEY `exhbnId` (`exhbnId`),
    CONSTRAINT FK_reviewNote_course FOREIGN KEY (courseId) REFERENCES course (courseId),
	CONSTRAINT FK_reviewNote_user FOREIGN KEY (userId) REFERENCES user (userId),
    CONSTRAINT FK_reviewNote_exhbn FOREIGN KEY (exhbnId) REFERENCES exhbn (exhbnId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark`
--

LOCK TABLES `reviewNote` WRITE;
/*!40000 ALTER TABLE `reviewNote` DISABLE KEYS */;
INSERT INTO `reviewNote` VALUES ('1','리뷰게시판 타이틀','리뷰게시판 내용부분 입니다','0','0',default,'POST','1','user2','217842');
/*!40000 ALTER TABLE `reviewNote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

alter table reviewNote modify reviewNoteId int not null auto_increment;

-- Dump completed on 2022-08-26  9:46:37