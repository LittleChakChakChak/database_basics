-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: hardware_store
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `id_basket` int NOT NULL AUTO_INCREMENT,
  `product` int NOT NULL,
  `buyer` int NOT NULL,
  `quantity` int unsigned NOT NULL,
  PRIMARY KEY (`id_basket`),
  KEY `product` (`product`),
  KEY `buyer` (`buyer`),
  CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`id_product`),
  CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`buyer`) REFERENCES `buyer` (`id_buyer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (1,1,2,1),(2,5,2,1),(3,1,3,5),(4,7,1,2);
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `id_buyer` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password_buyer` varchar(100) NOT NULL,
  PRIMARY KEY (`id_buyer`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `phone_2` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,'Иван','ivan@mail.ru','89992763838','qwe123'),(2,'Василий','vasasilon@mail.ru','89950694848','123rtye1'),(3,'Дима','dmitriy11@gmail.ru','89153843030','sfldfns123131'),(4,'Мария','mashka3921@mail.ru','89054328128','Gdwdw123dsjk');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id_country` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_country`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (6,'Великобритания'),(4,'Германия'),(3,'Китай'),(7,'Норвегия'),(1,'Россия'),(2,'США'),(5,'Франция'),(8,'Япония');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacture`
--

DROP TABLE IF EXISTS `manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacture` (
  `id_manufacture` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country` int DEFAULT NULL,
  PRIMARY KEY (`id_manufacture`),
  UNIQUE KEY `name` (`name`),
  KEY `country` (`country`),
  CONSTRAINT `manufacture_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacture`
--

LOCK TABLES `manufacture` WRITE;
/*!40000 ALTER TABLE `manufacture` DISABLE KEYS */;
INSERT INTO `manufacture` VALUES (1,'Canon',2),(2,'Bork',4),(3,'lenovo',1),(4,'LG',2),(5,'Apple',8),(6,'HP',3),(7,'Asus',7),(8,'MSI',6),(9,'Logitec',5),(10,'Gigabite',2);
/*!40000 ALTER TABLE `manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `manufacturer` int NOT NULL,
  `model` tinytext NOT NULL,
  `type_product` int NOT NULL,
  `rating` float unsigned DEFAULT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `characteristic` text,
  `release_date` year DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  UNIQUE KEY `name` (`name`),
  KEY `manufacturer` (`manufacturer`),
  KEY `type_product` (`type_product`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`manufacturer`) REFERENCES `manufacture` (`id_manufacture`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`type_product`) REFERENCES `type_product` (`id_type_product`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Принтер canon 4h5 цветной',1,'4h5',1,4,15000.00,'цветной быстрый принер',2019),(5,'Ноутбук lenovo ausur3 черный fullhd',3,'ausur3',6,0,55001.50,'черный ноутбук разрешение экрана 1080x720',2020),(6,'Сканер canon zx1',1,'zx1',5,5,5100.00,'',2017),(7,'Монитор LG nf4k',4,'nf4k',3,4.4,55000.00,'4k монитор насыщаный цвет',2021),(8,'Механическая клавиатура Logi z5',9,'z5',2,3.5,5000.00,'механическая клавиатура',0000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_product`
--

DROP TABLE IF EXISTS `type_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_product` (
  `id_type_product` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_type_product`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_product`
--

LOCK TABLES `type_product` WRITE;
/*!40000 ALTER TABLE `type_product` DISABLE KEYS */;
INSERT INTO `type_product` VALUES (2,'Клавиатура'),(7,'Микроволновка'),(3,'Монитор'),(4,'Мышка'),(6,'Ноутбук'),(1,'Принтер'),(5,'Сканер');
/*!40000 ALTER TABLE `type_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id_warehouse` int NOT NULL AUTO_INCREMENT,
  `product` int NOT NULL,
  `address` text NOT NULL,
  `quantity` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_warehouse`),
  KEY `product` (`product`),
  CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,1,'Москва',15),(2,1,'Казань',5),(4,1,'Москва',15),(5,1,'Казань',5),(6,5,'Москва',10),(7,7,'Санкт-Петербург',7),(9,1,'Москва',15),(10,1,'Казань',5),(11,5,'Москва',10),(12,7,'Санкт-Петербург',7),(13,6,'Курск',2),(14,8,'Москва',1),(15,6,'Москва',1);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hardware_store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-27 21:01:50
