-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album_name` varchar(255) NOT NULL,
  `release_year` date DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `album_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE KEY `album_name` (`album_name`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `albums_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `creater` (`creatername`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (46,'Animal','2024-05-10','Bharath','AnimalP8uO6vG8w'),(47,'Vikram','2024-05-01','Bharath','VikramF3sF9jD2u'),(48,'Guntur Kaaram','2022-05-09','Bharath','Guntur KaaramM2aI3eV2i'),(50,'Pushpa 2','2024-04-26','Bharath','Pushpa 2H0kJ9tP8x'),(52,'Dhruva','2022-02-03','Bharath','DhruvaD8dH2xU7l'),(54,'Orange','2010-05-05','Bharath','OrangeP6eA3uN1s'),(55,'Hanuman','2024-01-25','Bharath','HanumanB1aX0oT2f');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `artist_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `artist_name` (`artist_name`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `artists_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `creater` (`creatername`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (56,'Ranbir Kapoor','Bharath','Ranbir KapoorD3gH1sA6s'),(57,'Kamal Hassan','Bharath','Kamal HassanZ8pC7pI5x'),(58,'Mahesh Babu','Bharath','Mahesh BabuQ0sJ7jW2n'),(60,'Allu Arjun','Bharath','Allu ArjunJ1iY3iD9t'),(62,'Ram Charan','Bharath','Ram CharanK8tE3fT0c'),(64,'Teja Sajja','Bharath','Teja SajjaH7uO5tM8m');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creater`
--

DROP TABLE IF EXISTS `creater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creater` (
  `creatername` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`creatername`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creater`
--

LOCK TABLES `creater` WRITE;
/*!40000 ALTER TABLE `creater` DISABLE KEYS */;
INSERT INTO `creater` VALUES ('Bharath','muralikrishnasahu271@gmail.com','0000','2024-05-10 10:40:29'),('mk','muralikrishnasahu001@gmail.com','1212','2024-05-10 11:00:39'),('Murali','sahumuralikrishna@gmail.com','9110','2024-05-15 10:46:47');
/*!40000 ALTER TABLE `creater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directors` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_name` varchar(255) NOT NULL,
  `director_pic` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  UNIQUE KEY `director_name` (`director_name`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `directors_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `creater` (`creatername`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (51,'    Sandeep Reddy Vanga','Sandeep Reddy VangaW6qU9fS1n','Bharath'),(53,'   Lokesh_kanakaraj','Lokesh_kanakarajJ2iU9qQ1x','Bharath'),(54,'Trivikram','TrivikramI1rE1lA3f','Bharath'),(56,'Sukumar','SukumarD5bS5iG4o','Bharath'),(58,'   Surender Reddy','Surender ReddyG4qO6yI2n','Bharath'),(59,'Bhaskar','BhaskarL6uF9tM8o','Bharath'),(60,'Prashanth Varma','Prashanth VarmaG3oG9bP5y','Bharath');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `creator_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `song_id` int NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`creator_id`,`user_id`,`song_id`),
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `creater` (`creatername`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`),
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES ('Bharath','baba',46,'2024-05-11 12:48:20'),('Bharath','baba',50,'2024-05-11 12:55:24'),('Bharath','Mk',54,'2024-05-16 10:01:25'),('Bharath','Mk',61,'2024-05-16 11:40:07'),('Bharath','mk',68,'2024-05-16 11:27:57');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singers`
--

DROP TABLE IF EXISTS `singers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singers` (
  `singer_id` int NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(255) NOT NULL,
  `singer_pic` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`singer_id`),
  UNIQUE KEY `singer_name` (`singer_name`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `singers_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `creater` (`creatername`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singers`
--

LOCK TABLES `singers` WRITE;
/*!40000 ALTER TABLE `singers` DISABLE KEYS */;
INSERT INTO `singers` VALUES (58,'Vishal Mishra','Vishal MishraS4yF6iY4s','Bharath'),(59,'Anirudh','AnirudhW3tB0vP4r','Bharath'),(60,'Kamal Hassan','Kamal HassanY9vK7kO9t','Bharath'),(61,'Thaman','ThamanV3xE3uO7e','Bharath'),(62,'DSP','DSPI7hN0oQ8h','Bharath'),(64,'HipHop Tamizha','HipHop TamizhaB7mP0hL2r','Bharath'),(65,'Harris Jayaraj','Harris JayarajM3dA7eO6w','Bharath'),(66,'Anudeep Dev','Anudeep DevO5jQ9gO1u','Bharath'),(67,'Gowra Hari','Gowra HariO5sR2pT2g','Bharath');
/*!40000 ALTER TABLE `singers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_name` varchar(255) NOT NULL,
  `release_date` date DEFAULT NULL,
  `audio_data` varchar(255) DEFAULT NULL,
  `song_picture` varchar(255) DEFAULT NULL,
  `mood` varchar(230) DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `uploaded_at` datetime DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `likes` int DEFAULT '0',
  `director_id` int DEFAULT NULL,
  `singer_id` int DEFAULT NULL,
  `artist2` int DEFAULT NULL,
  `singer2` int DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  UNIQUE KEY `audio_data` (`audio_data`),
  UNIQUE KEY `song_picture` (`song_picture`),
  KEY `created_by` (`created_by`),
  KEY `fk_album` (`album_id`),
  KEY `fk_artist_id` (`artist_id`),
  KEY `fk_director` (`director_id`),
  KEY `fk_singer` (`singer_id`),
  KEY `ar_2` (`artist2`),
  KEY `sr_2` (`singer2`),
  CONSTRAINT `ar_2` FOREIGN KEY (`artist2`) REFERENCES `artists` (`artist_id`),
  CONSTRAINT `fk_album` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_director` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`),
  CONSTRAINT `fk_singer` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `creater` (`creatername`),
  CONSTRAINT `sr_2` FOREIGN KEY (`singer2`) REFERENCES `singers` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (46,' Everevaro','2024-05-10',' AnimalZ3wL5uI3s',' AnimalN5aZ2yX8o','Happy,Romantic',46,'Bharath','2024-05-10 00:00:00',56,0,51,58,NULL,NULL),(50,'Mathuga Mathuga','2024-05-01','Mathuga MathugaU2lD8oM7i','Mathuga MathugaJ3nD2bQ4o','Energetic,Excited,Upbeat',47,'Bharath','2024-05-11 00:00:00',57,0,53,60,NULL,NULL),(51,'Once upon a time','2024-02-01','Once upon a timeI6hF7kL3d','Once upon a timeV6vN9uU2s','Energetic,Upbeat',47,'Bharath','2024-05-11 00:00:00',57,0,53,59,NULL,NULL),(54,'Dum Masala','2022-05-09','Dum MasalaP4oH9rH0i','Dum MasalaA1nH5gY3n','Happy,Energetic',48,'Bharath','2024-05-11 00:00:00',58,0,54,61,NULL,NULL),(59,'Pushpa Pushpa','2024-05-01','Pushpa PushpaR2kI1pJ5v','Pushpa PushpaO6rI7tJ0e','Energetic',50,'Bharath','2024-05-15 00:00:00',60,0,56,62,NULL,NULL),(61,'Ramana Aei','2024-03-08','Ramana AeiC6iT9fO6f','Ramana AeiZ3uC8eL7s','Energetic,Excited,Upbeat',48,'Bharath','2024-05-16 00:00:00',58,0,54,61,NULL,NULL),(65,'Choosa Choosa','2017-06-14','Choosa ChoosaJ8jG5aD5e','Choosa ChoosaE2rR0iC1m','Energetic',52,'Bharath','2024-05-16 00:00:00',62,0,58,64,NULL,NULL),(66,'Ammayi','2023-10-10','AmmayiW9nX7xB6n','AmmayiW7qM6gR7l','Happy,Romantic,Peaceful',46,'Bharath','2024-05-16 00:00:00',56,0,51,58,NULL,NULL),(67,'Rooba Rooba','2010-05-05','Rooba RoobaO9rN2tN5p','Rooba RoobaK7qS5mY5v','Happy,Romantic',54,'Bharath','2024-05-16 00:00:00',62,0,59,65,NULL,NULL),(68,'Hanuman Chalisa','2024-01-25','Hanuman ChalisaN8nY9yG9a','Hanuman ChalisaZ4dS9zT1u','Energetic,Peaceful',55,'Bharath','2024-05-16 00:00:00',64,0,60,66,NULL,67);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('baba','sahumuralikrishna@gmail.com','0000','2024-05-11 12:36:28'),('Mk','muralikrishnasahu001@gmail.com','mk','2024-05-10 11:02:30'),('Yugesh','muralikrishnasahu271@gmail.com','ugesh','2024-05-15 11:00:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 17:18:59
