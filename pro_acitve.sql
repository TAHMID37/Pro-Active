-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pro_active
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `addtrainersplan`
--

DROP TABLE IF EXISTS `addtrainersplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addtrainersplan` (
  `trainername` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `trainerplanname` varchar(45) NOT NULL,
  PRIMARY KEY (`trainerplanname`,`username`),
  KEY `fk_trainer_n_idx` (`trainername`),
  CONSTRAINT `fk_trainer_n` FOREIGN KEY (`trainername`) REFERENCES `trainer_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addtrainersplan`
--

LOCK TABLES `addtrainersplan` WRITE;
/*!40000 ALTER TABLE `addtrainersplan` DISABLE KEYS */;
INSERT INTO `addtrainersplan` VALUES ('Tam37','grafix','training','cc'),('Tam37','grafix','training','My Plan'),('Tam37','Tam37','training','My Plan'),('Tah','Tam37','training','Test1'),('Tam37','Tam37','training','tt');
/*!40000 ALTER TABLE `addtrainersplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_info`
--

DROP TABLE IF EXISTS `exercise_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_info` (
  `name` varchar(200) NOT NULL,
  `category` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `description` longtext,
  `img` varchar(500) DEFAULT NULL,
  `difficulty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_info`
--

LOCK TABLES `exercise_info` WRITE;
/*!40000 ALTER TABLE `exercise_info` DISABLE KEYS */;
INSERT INTO `exercise_info` VALUES ('Declined Pushup','Calisthenics','Chest','Elevate your legs and keeps your hands on the floor. This elevation increases the intensity of the pushup, making it harder in every rep.','../image/exercise/declined-pushup.jpg','Intermediate'),('Diamon Pushup','Calisthenics','Triceps','Form a diamond shape using your palms. Spread your legs wide, and perform pushups.','../image/exercise/diamond-pushup.jpg','Intermediate'),('Full Planche Pushup','Calisthenics','Shoulder','Elevate yourself a little using a pushup bar or a platorm, then lift your legs up like a floating plank. From that positiion, perform pushups without dropping your legs on the floor.','../image/exercise/fullplanche-pushup.jpg','Extreme'),('Handstand Pushup','Calisthenics','Shoulder','Perform a handstand or a supported handstand, then perform pushups.','../image/exercise/handstand-pushup.jpg','Extreme'),('Inclined Pushup','Calisthenics','Triceps','Elevate yourself from the ground using a platform (chair, table, bench, etc.) and perform pushups.','../image/exercise/inclined-pushup.jpg','Beginner'),('One Arm Pushup','Calisthenics','Chest','Pushup using one arm. Keep the legs spread wide for good balance.','../image/exercise/onearm-pushup.jpg','Advanced'),('Pushup','Calisthenics','Triceps','Regular pushups. Go down slow, and explode up.','../image/exercise/pushup.jpg','Intermediate'),('Superman Pushup','Calisthenics','Chest','Perform a pushup, and then explode up. When you are up, spread your hands and legs like a superman flies.','../image/exercise/superman-pushup.jpg','Advanced'),('Wall Pushup','Calisthenics','Triceps','Perform pushup using the wall as support.','../image/exercise/wall-pushup.jpg','Beginner');
/*!40000 ALTER TABLE `exercise_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_plan`
--

DROP TABLE IF EXISTS `my_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_plan` (
  `plan_name` varchar(200) NOT NULL,
  `day` int NOT NULL,
  `workout_1` varchar(200) DEFAULT NULL,
  `workout_2` varchar(200) DEFAULT NULL,
  `workout_3` varchar(200) DEFAULT NULL,
  `workout_4` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Undone',
  PRIMARY KEY (`plan_name`,`day`),
  CONSTRAINT `my_plan_fk` FOREIGN KEY (`plan_name`) REFERENCES `my_plan_info` (`plan_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_plan`
--

LOCK TABLES `my_plan` WRITE;
/*!40000 ALTER TABLE `my_plan` DISABLE KEYS */;
INSERT INTO `my_plan` VALUES ('My Plan 1',1,'Push up','Push up','Push up','','Undone'),('My Plan 1',2,'Push up','Push up','','Push up','Undone'),('My Plan 1',3,'Push up','Push up','Push up','Push up','Undone'),('My Plan 1',4,'Push up','Push up','','','Undone'),('My Plan 1',5,'Push up','Push up','Push up','Push up','Undone'),('My Plan 1',6,'Push up','Push up','','','Undone'),('My Plan 1',7,'Push up','Push up','Push up','Push up','Undone'),('My plan 2',1,'','','','','Undone'),('My plan 2',2,'','','','','Undone'),('My plan 2',3,'','','','','Undone'),('My plan 2',4,'','','','','Undone'),('My plan 2',5,'','','','','Undone'),('My plan 2',6,'','','','','Undone'),('My plan 2',7,'','','','','Undone');
/*!40000 ALTER TABLE `my_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_plan_info`
--

DROP TABLE IF EXISTS `my_plan_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_plan_info` (
  `plan_name` varchar(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `difficulty` varchar(45) DEFAULT NULL,
  `desc` longtext,
  PRIMARY KEY (`plan_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_plan_info`
--

LOCK TABLES `my_plan_info` WRITE;
/*!40000 ALTER TABLE `my_plan_info` DISABLE KEYS */;
INSERT INTO `my_plan_info` VALUES ('A','grafix','','../image/trainer_plan/default3.jpg','','A'),('My Plan 1','grafix','calisthenics','../image/trainer_plan/default3.jpg','intermediate','Testing my plan'),('My plan 2','grafix','','../image/trainer_plan/default3.jpg','','A');
/*!40000 ALTER TABLE `my_plan_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutrition`
--

DROP TABLE IF EXISTS `nutrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutrition` (
  `plan_name` varchar(200) NOT NULL,
  `day` int NOT NULL,
  `breakfast` varchar(200) DEFAULT NULL,
  `lunch` varchar(200) DEFAULT NULL,
  `snacks` varchar(200) DEFAULT NULL,
  `dinner` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`plan_name`,`day`),
  CONSTRAINT `plan_name` FOREIGN KEY (`plan_name`) REFERENCES `nutrition_info` (`plan_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition`
--

LOCK TABLES `nutrition` WRITE;
/*!40000 ALTER TABLE `nutrition` DISABLE KEYS */;
INSERT INTO `nutrition` VALUES ('A',1,'1','2','4','er'),('A',2,'12','ewr','erw','rr'),('A',3,'erre','er','erwr','rr'),('A',4,'r','r','rr','rr'),('A',5,'r','rrrrrrrrr','rr','r'),('A',6,'r','r','r','r'),('A',7,'r','r','r','rrr'),('hero',1,'ddd','ddd','dddd','ee'),('hero',2,'d','ddddd','ddddd','ee'),('hero',3,'dd','ddd','dd','eee'),('hero',4,'d','dddd','d','eee'),('hero',5,'d','ddd','d','eeeeeee'),('hero',6,'d','ddd','d','eeeee'),('hero',7,'d','ddd','dddd','ee');
/*!40000 ALTER TABLE `nutrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutrition_info`
--

DROP TABLE IF EXISTS `nutrition_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutrition_info` (
  `plan_name` varchar(200) NOT NULL,
  `uploaded_by` varchar(200) DEFAULT NULL,
  `description` longtext,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`plan_name`),
  KEY `fk_nutri_idx` (`uploaded_by`),
  CONSTRAINT `fk_nutri` FOREIGN KEY (`uploaded_by`) REFERENCES `trainer_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition_info`
--

LOCK TABLES `nutrition_info` WRITE;
/*!40000 ALTER TABLE `nutrition_info` DISABLE KEYS */;
INSERT INTO `nutrition_info` VALUES ('A','Tam37','dsdffsd','../image/nutrition/pescatarian.jpg'),('hero','Tah','fggffgdf','../image/nutrition/high_protein.jpg'),('High Protein Diet','Tam37','Great for building muscle.','../image/nutrition/high_protein.jpg'),('Ketogenic Diet','Tam37','Great diet if you want to lose fat in a short amount of time.','../image/nutrition/keto.jpg'),('Paleo Diet','Tam37','For balanced diet.','../image/nutrition/paleo.jpg'),('Pescatarian Diet','Tam37','For people who only eat fish as a source of animal protein.','../image/nutrition/pescatarian.jpg'),('Vegan Diet','Tam37','For those who don\'t like flavour.','../image/nutrition/vegan.jpg');
/*!40000 ALTER TABLE `nutrition_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tips` (
  `uploader` varchar(200) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `tips_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`uploader`,`tips_desc`),
  CONSTRAINT `uploader` FOREIGN KEY (`uploader`) REFERENCES `trainer_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tips`
--

LOCK TABLES `tips` WRITE;
/*!40000 ALTER TABLE `tips` DISABLE KEYS */;
/*!40000 ALTER TABLE `tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_info`
--

DROP TABLE IF EXISTS `trainer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_info` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `expertise` varchar(20) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT '../image/default/default2.jpg',
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_info`
--

LOCK TABLES `trainer_info` WRITE;
/*!40000 ALTER TABLE `trainer_info` DISABLE KEYS */;
INSERT INTO `trainer_info` VALUES ('grafix','$2b$10$vvlTIj8CYA.EcY7ecQIh/OSi/J93J2mFqoNhO9EGyStp0sroo.Sr.','grafix235@gmail.com',22,165,60,'Calisthenics','Protyoy Rafi','../image/default/default2.jpg'),('ssdsd','$2b$10$AL9yakR6//WEVGXMry1dlu9q1tXvnV3.q4KvyeXtsdyWGAuGbdHl.','s@GMAIL.COM',1,1,-3,'','s',NULL),('Tah','$2b$10$lX4fZlhmslt8HIswnScrIO6aUCMw51vqnqrgTpyRqU9ANMk9HuRUm','tahmidrahman@iut-dhaka.edu',22,22,222,'calisthenics','Tahm','../image/default/default1.jpg'),('Tam37','$2b$10$njJO2ZhMia.XJGjVsc5rs.dyS3EZDPVR3QYSq2.SBrAjC4KEHjomu','190041237tr@gmail.com',22,200,70,'weighlifting','Tahmid Rahman','../image/default/default3.jpg');
/*!40000 ALTER TABLE `trainer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainertips`
--

DROP TABLE IF EXISTS `trainertips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainertips` (
  `username` varchar(200) NOT NULL,
  `tips` longtext CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL,
  KEY `fk_usern_idx` (`username`),
  CONSTRAINT `fk_usern` FOREIGN KEY (`username`) REFERENCES `trainer_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainertips`
--

LOCK TABLES `trainertips` WRITE;
/*!40000 ALTER TABLE `trainertips` DISABLE KEYS */;
INSERT INTO `trainertips` VALUES ('Tam37','dasssssssss'),('Tam37','saaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),('Tam37','daaaaaaaaaaaaaaaaaa'),('Tam37','dsaaaaaaaaaaaaaaaaaaaaxxxxxxxxxxxx'),('Tam37','Tahmid'),('Tam37','hoooooooooooooooooooo');
/*!40000 ALTER TABLE `trainertips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `focus` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `current_level` varchar(15) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(200) DEFAULT '../image/default/default2.jpg',
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('Gr','$2b$10$QfcIi0egwtJMx68PU2hnQemTggG0GPCInSLFjZjwQ8r9FdCwh3g1m','rafi190041235@gmail.com',222,222,22,'Maintain Current Physique and Weight','Calisthenics','Athletic','Gr','../image/default/default2.jpg'),('grafix','$2b$10$wdSOnOiX3YBP7asp80fyx.Jx.KmXZwrQThc11JSDtx7xSZThwKk5i','grafix235@gmail.com',21,165,60,'Fat Burn and Lose Weight','Calisthenics','Skinny Fat','Protyoy Rafi','../image/default/default3.jpg'),('Tah','$2b$10$hoLSikJPOCYjatZ48yhrdObz1qr.UCYG7gTSY0n59icoKvxX3pcCy','tahmidrahman@iut-dhaka.edu',22,172,69,'Fat Burn and Lose Weight','Calisthenics','Muscular','Tah','../image/default/default2.jpg'),('Tam37','$2b$10$OINDOkSjOUQD6OfMiuQpg.quS7srRotuLQxxrKa6N6hn3sN4fEgxW','190041237tr@gmail.com',23,170,68,'maintain','weightlifting','muscular','Tahmid Rahman','../image/default/default4.jpg');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout`
--

DROP TABLE IF EXISTS `workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout` (
  `plan_name` varchar(200) NOT NULL,
  `day` int NOT NULL,
  `workout_1` varchar(200) DEFAULT NULL,
  `workout_2` varchar(200) DEFAULT NULL,
  `workout_3` varchar(200) DEFAULT NULL,
  `workout_4` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Undone',
  PRIMARY KEY (`day`,`plan_name`),
  KEY `trainer_workout_fk_idx` (`plan_name`),
  CONSTRAINT `trainer_workout_fk` FOREIGN KEY (`plan_name`) REFERENCES `workout_info` (`plan_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout`
--

LOCK TABLES `workout` WRITE;
/*!40000 ALTER TABLE `workout` DISABLE KEYS */;
INSERT INTO `workout` VALUES ('My Plan',1,'A','B','C','d','Undone'),('Test1',1,'ggg','dddd','ddd','aa','Undone'),('tt',1,'11','22','33','44','Undone'),('tt2',1,'1','2','3','3','Undone'),('My Plan',2,'E','F','G','H','Undone'),('Test1',2,'ggggg','dd','ddd','ddddd','Undone'),('tt',2,'11','22','33','444','Undone'),('tt2',2,'1','2','3','3','Undone'),('My Plan',3,'I','J','K','L','Undone'),('Test1',3,'a','dd','dd','ddd','Undone'),('tt',3,'11','22','33','444','Undone'),('tt2',3,'1','2','3','3','Undone'),('My Plan',4,'M','N','O','P','Undone'),('Test1',4,'v','ddd','dd','dddd','Undone'),('tt',4,'11','22','33','44','Undone'),('tt2',4,'1','2','3','3','Undone'),('My Plan',5,'Q','R','S','T','Undone'),('Test1',5,'cccc','dd','d','dddd','Undone'),('tt',5,'11','22','33','44','Undone'),('tt2',5,'1','2','3','5','Undone'),('My Plan',6,'U','V','W','X','Undone'),('Test1',6,'c','dddd','d','gg','Undone'),('tt',6,'11','22','33','44','Undone'),('tt2',6,'1','2','3','5','Undone'),('My Plan',7,'Y','Z','A+','A-','Undone'),('Test1',7,'c','dd','d','xxxxxxx','Undone'),('tt',7,'11','22','33','44','Undone'),('tt2',7,'1','2','3','5','Undone');
/*!40000 ALTER TABLE `workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_info`
--

DROP TABLE IF EXISTS `workout_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout_info` (
  `plan_name` varchar(200) NOT NULL,
  `uploaded_by` varchar(200) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `difficulty` varchar(45) DEFAULT NULL,
  `description` longtext,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`plan_name`),
  KEY `fk_uploaded_plan_idx` (`uploaded_by`),
  CONSTRAINT `fk_uploaded_plan` FOREIGN KEY (`uploaded_by`) REFERENCES `trainer_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_info`
--

LOCK TABLES `workout_info` WRITE;
/*!40000 ALTER TABLE `workout_info` DISABLE KEYS */;
INSERT INTO `workout_info` VALUES ('cc','Tam37','calisthenics','intermediate','ccccccccccccccccccccccccccc','../image/trainer_plan/download (5).png'),('dasdasd','Tam37','weightlifting','intermediate','ddddd','../image/trainer_plan/download (5).png'),('fdsfdfsd','Tam37','calisthenics','intermediate','dfsdfdssd','../image/trainer_plan/download (4).png'),('ggg','Tam37','calisthenics','intermediate','gg','../image/trainer_plan/download.png'),('My Plan','Tam37','calisthenics','advanced','It is my plan.','../image/trainer_plan/download (5).png'),('new','Tah','calisthenics','intermediate','ghfghfghf','../image/trainer_plan/download (3).png'),('PlanA','Tah','calisthenics','intermediate','sdsdsaasd','../image/trainer_plan/download (1).jpg'),('PlanB','Tah','calisthenics','intermediate','adfdsfdfs','../image/trainer_plan/download (1).png'),('PlanC','Tah','calisthenics','expert','dsdddfdsdf','../image/trainer_plan/download (2).png'),('Test1','Tah','calisthenics','intermediate','123','../image/trainer_plan/download.jpg'),('tt','Tam37','calisthenics','intermediate','123','../image/trainer_plan/download.png'),('tt2','Tam37','calisthenics','intermediate','22','../image/trainer_plan/download (1).jpg');
/*!40000 ALTER TABLE `workout_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 23:11:11
