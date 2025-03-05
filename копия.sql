-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: foto
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointmentssssss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentsssssssss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Fio` varchar(255) NOT NULL,
  `appIspol` varchar(255) NOT NULL,
  `appDate` date NOT NULL,
  `appTime` time NOT NULL,
  `appTypeOfService` varchar(255) NOT NULL,
  `IDras` int NOT NULL,
  `IDft` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (23,'Винтер Леха Денисович','Роман','2024-10-16','14:00:00','Свадебная съемка (15 000,00 ₽)',9,9),(27,'Перевалова Юля Сергеевна','Анна','2024-12-12','09:00:00','Портретная съемка (5 000,00 ₽)',3,3);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `clName` varchar(100) NOT NULL,
  `clFamilia` varchar(100) NOT NULL,
  `clNumber` varchar(15) NOT NULL,
  `clLogin` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `clLogin` (`clLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (5,'Дарья','Агеенкова','89076451234','dariaag2003@gmail.com'),(10,'Аня','Степанькова','89025402399','annastep2006@gmail.com'),(12,'Алескей ','Винтер','89048962089','lexavin2006@gmail.com'),(13,'Юлия ','Перевалова','89501362526','ul30@gmail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotograf`
--

DROP TABLE IF EXISTS `fotograf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotograf` (
  `Idft` int NOT NULL AUTO_INCREMENT,
  `ftName` varchar(255) NOT NULL,
  `ftFamilia` varchar(255) NOT NULL,
  `ftTypeOfServise` varchar(255) NOT NULL,
  `ftContactinfo` varchar(255) NOT NULL,
  PRIMARY KEY (`Idft`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotograf`
--

LOCK TABLES `fotograf` WRITE;
/*!40000 ALTER TABLE `fotograf` DISABLE KEYS */;
INSERT INTO `fotograf` VALUES (1,'Анна','Иванова','Портретная съемка','anna.ivanova@example.com'),(2,'Мария','Петрова','Cемейная съемка','maria.petrova@example.com'),(3,'Екатерина','Сидорова','Cвадебная съемка','ekaterina.sidorova@example.com'),(4,'Ольга','Кузнецова','Рекламная съемка','olga.kuznetsova@example.com'),(5,'Татьяна','Семенова','Предметная съемка','tatiana.semenova@example.com'),(6,'Алексей','Иванов','Редактирование изображений','alexey@example.com'),(7,'Мария','Петрова','Цветокоррекция','maria@example.com'),(8,'Дмитрий','Сидоров','Ретушь','dmitry@example.com'),(9,'Елена','Кузнецова','Коллажирование','elena@example.com'),(10,'Сергей','Смирнов','Печать фотографий','sergey@example.com'),(11,'Ольга','Попова','Изготовление фотокниг','olga@example.com'),(12,'Андрей','Васильев','Изготовление календарей','andrey@example.com'),(13,'Наталья','Морозова','Создание слайд-шоу','natalya@example.com'),(14,'Игорь','Федоров','Фотосессия','igor@example.com'),(15,'Татьяна','Лебедева','Видеосъемка','tatiana@example.com'),(16,'Роман','Ковалев','Свадебная съемка','roman@example.com'),(17,'Анна','Григорьева','Детская фотосессия','anna@example.com'),(18,'Виктор','Соловьев','Семейная фотосессия','victor@example.com');
/*!40000 ALTER TABLE `fotograf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raspisanie`
--

DROP TABLE IF EXISTS `raspisanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raspisanie` (
  `ID` int NOT NULL,
  `rasDate` date NOT NULL,
  `rastStartTime` time NOT NULL,
  `rastEndTime` time NOT NULL,
  `rasTypeOfService` varchar(255) NOT NULL,
  `IDft` int NOT NULL,
  `isBooked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IDft` (`IDft`),
  CONSTRAINT `raspisanie_ibfk_1` FOREIGN KEY (`IDft`) REFERENCES `fotograf` (`Idft`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raspisanie`
--

LOCK TABLES `raspisanie` WRITE;
/*!40000 ALTER TABLE `raspisanie` DISABLE KEYS */;
INSERT INTO `raspisanie` VALUES (1,'2024-12-10','10:00:00','12:00:00','Портретная съемка',1,1),(2,'2024-12-11','13:00:00','15:00:00','Семейная съемка',2,0),(3,'2024-12-12','09:00:00','11:00:00','Свадебная съемка',3,1),(4,'2024-12-13','14:00:00','16:00:00','Рекламная съемка',4,0),(5,'2024-12-14','11:00:00','13:00:00','Предметная съемка',5,0),(6,'2024-12-15','15:00:00','17:00:00','Редактирование изображений',6,0),(7,'2024-12-16','08:00:00','10:00:00','Цветокоррекция',7,0),(8,'2024-12-10','10:00:00','12:00:00','Ретушь',8,0),(9,'2024-12-11','13:00:00','15:00:00','Коллажирование',9,0),(10,'2024-12-12','09:00:00','11:00:00','Печать фотографий',10,0),(11,'2024-12-13','14:00:00','16:00:00','Изготовление фотокниг',11,0),(12,'2024-12-14','11:00:00','13:00:00','Изготовление календарей',12,0),(13,'2024-12-15','15:00:00','17:00:00','Создание слайд-шоу',13,0),(14,'2024-12-16','08:00:00','10:00:00','Фотоссесия',14,0),(15,'2024-12-10','10:00:00','12:00:00','Видеосъемка',15,0),(16,'2024-12-11','13:00:00','15:00:00','Свадебная съемка',16,0),(17,'2024-12-12','09:00:00','11:00:00','Детская фотоссесия',17,0),(18,'2024-12-13','14:00:00','16:00:00','Семейная фотоссесия',18,0);
/*!40000 ALTER TABLE `raspisanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `usName` varchar(255) NOT NULL,
  `usFamilia` varchar(255) NOT NULL,
  `usNumber` varchar(255) NOT NULL,
  `usLogin` varchar(255) NOT NULL,
  `usParol` varchar(255) NOT NULL,
  `usKodovoeslovo` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Анна','Степанькова','89025402399','annastep2006@gmail.com','2006','клиент'),(3,'Ирина','Белых','89041209745','irinabel176@gmail.com','123','администратор'),(10,'Дарья','Агеенкова','89076451234','dariaag2003@gmail.com','228','клиент'),(11,'Алескей ','Винтер','89048962089','lexavin2006@gmail.com','2324','клиент'),(12,'Юлия ','Перевалова','89501362526','ul30@gmail.com','229','клиент'),(13,'Иван','Андрущак','89065432745','ivan1@example.com','9876','клиент');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yslygi`
--

DROP TABLE IF EXISTS `yslygi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yslygi` (
  `IDysl` int NOT NULL AUTO_INCREMENT,
  `yslTypeOfService` varchar(255) NOT NULL,
  `yslDescription` text NOT NULL,
  `yslPrice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`IDysl`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yslygi`
--

LOCK TABLES `yslygi` WRITE;
/*!40000 ALTER TABLE `yslygi` DISABLE KEYS */;
INSERT INTO `yslygi` VALUES (1,'Портретная съемка','Съемка индивидуальных и групповых портретов.',7000),(2,'Семейная съемка','Съемка семейных портретов и мероприятий.',7000),(3,'Свадебная съемка','Полный пакет услуг по съемке свадеб.',20000),(4,'Рекламная съемка','Создание рекламных материалов для бизнеса.',15000),(5,'Предметная съемка','Съемка товаров для интернет-магазинов.',8000),(6,'Редактирование изображений','Улучшение качества фотографий.',1500),(7,'Цветокоррекция','Коррекция цвета на фотографиях.',1000),(8,'Ретушь','Удаление недостатков и улучшение внешнего вида.',2000),(9,'Коллажирование','Создание коллажей из нескольких изображений.',2500),(10,'Печать фотографий','Печать фотографий различных форматов.',300),(11,'Изготовление фотокниг','Создание индивидуальных фотокниг.',4000),(12,'Изготовление календарей','Создание персонализированных календарей.',3500),(13,'Создание слайд-шоу','Монтаж слайд-шоу из фотографий.',5000),(14,'Фотосессия','Профессиональная фотосессия',5000),(15,'Видеосъемка','Съемка мероприятий на видео',7000),(16,'Свадебная съемка','Полный пакет свадебной съемки',15000),(17,'Детская фотосессия','Фотосессия для детей',4000),(18,'Семейная фотосессия','Семейные фотографии на память',6000);
/*!40000 ALTER TABLE `yslygi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-05 14:39:59
