CREATE DATABASE  IF NOT EXISTS `crypto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crypto`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: crypto
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `BB_stream`
--

DROP TABLE IF EXISTS `BB_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BB_stream` (
  `Trade_ID` varchar(20) DEFAULT NULL,
  `Event_type` varchar(20) DEFAULT NULL,
  `Event_time` datetime DEFAULT NULL,
  `Symbol` varchar(30) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Buyer_order_ID` varchar(20) DEFAULT NULL,
  `Seller_order_ID` varchar(20) DEFAULT NULL,
  `Trade_time` datetime DEFAULT NULL,
  `market_maker` tinyint DEFAULT NULL,
  `not_useful` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ETH_stream`
--

DROP TABLE IF EXISTS `ETH_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ETH_stream` (
  `Trade_ID` varchar(20) DEFAULT NULL,
  `Event_type` varchar(20) DEFAULT NULL,
  `Event_time` datetime DEFAULT NULL,
  `Symbol` varchar(30) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Buyer_order_ID` varchar(20) DEFAULT NULL,
  `Seller_order_ID` varchar(20) DEFAULT NULL,
  `Trade_time` datetime DEFAULT NULL,
  `market_maker` tinyint DEFAULT NULL,
  `not_useful` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OMNI_stream`
--

DROP TABLE IF EXISTS `OMNI_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OMNI_stream` (
  `Trade_ID` varchar(20) DEFAULT NULL,
  `Event_type` varchar(20) DEFAULT NULL,
  `Event_time` datetime DEFAULT NULL,
  `Symbol` varchar(30) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Buyer_order_ID` varchar(20) DEFAULT NULL,
  `Seller_order_ID` varchar(20) DEFAULT NULL,
  `Trade_time` datetime DEFAULT NULL,
  `market_maker` tinyint DEFAULT NULL,
  `not_useful` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REZ_stream`
--

DROP TABLE IF EXISTS `REZ_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REZ_stream` (
  `Trade_ID` varchar(20) DEFAULT NULL,
  `Event_type` varchar(20) DEFAULT NULL,
  `Event_time` datetime DEFAULT NULL,
  `Symbol` varchar(30) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Buyer_order_ID` varchar(20) DEFAULT NULL,
  `Seller_order_ID` varchar(20) DEFAULT NULL,
  `Trade_time` datetime DEFAULT NULL,
  `market_maker` tinyint DEFAULT NULL,
  `not_useful` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27  0:10:02
