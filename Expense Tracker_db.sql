CREATE DATABASE  IF NOT EXISTS `expense_tracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `expense_tracker`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: expense_tracker
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `Expense_ID` bigint DEFAULT NULL,
  `Expense_Date` text,
  `Category` text,
  `Description` text,
  `Amount` double DEFAULT NULL,
  `Payment_Method` text,
  `Currency` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1000001,'2023-01-01','Groceries','Bought vegetables',50.75,'Credit Card','USD'),(1000002,'2023-01-02','Rent','Monthly apartment rent',1200,'Bank Transfer','USD'),(1000003,'2023-01-03','Entertainment','Movie night',30,'Cash','USD'),(1000004,'2023-01-04','Utilities','Electricity bill',75.2,'Debit Card','EURO'),(1000005,'2023-01-05','Transport','Uber ride to office',15.5,'Cash','USD'),(1000006,'2023-01-06','Healthcare','Doctor consultation',100,'Credit Card','USD'),(1000007,'2023-01-07','Shopping','Bought new shoes',85.99,'Debit Card','IND'),(1000008,'2023-01-08','Education','Online course fee',200,'Bank Transfer','USD'),(1000009,'2023-01-09','Groceries','Weekly grocery shopping',60.1,'Credit Card','EURO'),(1000010,'2023-01-10','Rent','Monthly rent payment',1100,'Bank Transfer','IND'),(1000011,'2023-01-11','Entertainment','Concert tickets',150,'Debit Card','USD'),(1000012,'2023-01-12','Dining','Dinner at a restaurant',45.3,'Credit Card','IND'),(1000013,'2023-01-13','Healthcare','Medicine purchase',20,'Cash','USD'),(1000014,'2023-01-14','Utilities','Water bill',35.5,'Bank Transfer','EURO'),(1000015,'2023-01-15','Shopping','Bought new clothes',120.75,'Credit Card','USD'),(1000016,'2023-01-16','Transport','Train ticket',12,'Cash','EURO'),(1000017,'2023-01-17','Groceries','Bought fruits',25.4,'Debit Card','IND'),(1000018,'2023-01-18','Entertainment','Video game purchase',60,'Credit Card','USD'),(1000019,'2023-01-19','Rent','Apartment rent',1000,'Bank Transfer','USD'),(1000020,'2023-01-20','Utilities','Gas bill',40,'Cash','IND'),(1000021,'2023-01-21','Shopping','Bought new jacket',150.99,'Credit Card','USD'),(1000022,'2023-01-22','Dining','Lunch with friends',60.5,'Debit Card','EURO'),(1000023,'2023-01-23','Transport','Taxi to airport',30,'Cash','IND'),(1000024,'2023-01-24','Groceries','Weekly grocery shopping',70.1,'Credit Card','USD'),(1000025,'2023-01-25','Healthcare','Dentist visit',120,'Bank Transfer','USD'),(1000026,'2023-01-26','Utilities','Internet bill',55,'Credit Card','EURO'),(1000027,'2023-01-27','Education','Books purchase',45,'Debit Card','IND'),(1000028,'2023-01-28','Entertainment','Music subscription',10,'Bank Transfer','USD'),(1000029,'2023-01-29','Rent','Apartment rent',1250,'Bank Transfer','USD'),(1000030,'2023-01-30','Dining','Coffee with colleagues',15.2,'Cash','IND'),(1000031,'2023-02-01','Groceries','Bought snacks',25.6,'Credit Card','USD'),(1000032,'2023-02-02','Healthcare','Medicine purchase',30.5,'Cash','EURO'),(1000033,'2023-02-03','Utilities','Electricity bill',80,'Bank Transfer','IND'),(1000034,'2023-02-04','Shopping','Bought a watch',200,'Credit Card','USD'),(1000035,'2023-02-05','Transport','Flight ticket',300,'Debit Card','EURO'),(1000036,'2023-02-06','Entertainment','Movie night',25,'Cash','USD'),(1000037,'2023-02-07','Rent','Monthly rent',1300,'Bank Transfer','USD'),(1000038,'2023-02-08','Groceries','Bought fruits and vegetables',55.75,'Debit Card','IND'),(1000039,'2023-02-09','Dining','Family dinner',90.25,'Credit Card','USD'),(1000040,'2023-02-10','Utilities','Water bill',40,'Bank Transfer','EURO'),(1000041,'2023-02-11','Shopping','Bought new bag',150.5,'Credit Card','IND'),(1000042,'2023-02-12','Entertainment','Video game purchase',70,'Debit Card','USD'),(1000043,'2023-02-13','Healthcare','Eye doctor visit',200,'Cash','EURO'),(1000044,'2023-02-14','Transport','Train ticket',15,'Debit Card','USD'),(1000045,'2023-02-15','Rent','Monthly rent',1400,'Bank Transfer','USD'),(1000046,'2023-02-16','Dining','Brunch with friends',50,'Cash','IND'),(1000047,'2023-02-17','Groceries','Weekly grocery shopping',65,'Credit Card','EURO'),(1000048,'2023-02-18','Utilities','Gas bill',30,'Bank Transfer','USD'),(1000049,'2023-02-19','Shopping','Bought a smartphone',800,'Credit Card','IND'),(1000050,'2023-02-20','Healthcare','Pharmacy purchase',35.5,'Cash','EURO'),(1000051,'2023-02-21','Entertainment','Music festival',120,'Debit Card','USD'),(1000052,'2023-02-22','Dining','Lunch with colleagues',45,'Cash','IND'),(1000053,'2023-02-23','Groceries','Bought household items',55.25,'Credit Card','USD'),(1000054,'2023-02-24','Rent','Monthly apartment rent',1500,'Bank Transfer','EURO'),(1000055,'2023-02-25','Utilities','Electricity bill',70,'Debit Card','USD'),(1000056,'2023-02-26','Healthcare','Hospital check-up',220,'Credit Card','EURO'),(1000057,'2023-02-27','Shopping','Bought sunglasses',90,'Cash','IND'),(1000058,'2023-02-28','Dining','Dinner at a restaurant',55,'Credit Card','USD'),(1000059,'2023-03-01','Transport','Bus fare',10,'Cash','IND'),(1000060,'2023-03-02','Groceries','Weekly grocery shopping',60.5,'Credit Card','USD'),(1000061,'2023-03-03','Entertainment','Theater tickets',85,'Debit Card','EURO'),(1000062,'2023-03-04','Utilities','Gas bill',35,'Bank Transfer','IND'),(1000063,'2023-03-05','Shopping','Bought a backpack',95,'Credit Card','USD'),(1000064,'2023-03-06','Healthcare','Dentist appointment',180,'Cash','EURO'),(1000065,'2023-03-07','Dining','Breakfast at cafe',25,'Debit Card','USD'),(1000066,'2023-03-08','Transport','Flight ticket',350,'Credit Card','IND'),(1000067,'2023-03-09','Entertainment','Concert tickets',200,'Debit Card','USD'),(1000068,'2023-03-10','Groceries','Bought snacks',40,'Cash','EURO'),(1000069,'2023-03-11','Rent','Monthly rent',1350,'Bank Transfer','USD'),(1000070,'2023-03-12','Dining','Lunch with family',75,'Credit Card','USD'),(1000071,'2023-03-13','Utilities','Internet bill',45,'Bank Transfer','IND'),(1000072,'2023-03-14','Shopping','Bought shoes',120,'Credit Card','USD'),(1000073,'2023-03-15','Healthcare','Pharmacy purchase',50,'Debit Card','EURO'),(1000074,'2023-03-16','Transport','Taxi to office',20,'Cash','IND'),(1000075,'2023-03-17','Groceries','Bought vegetables',45,'Credit Card','USD'),(1000076,'2023-03-18','Entertainment','Movie tickets',35,'Debit Card','EURO'),(1000077,'2023-03-19','Dining','Dinner at restaurant',65,'Cash','IND'),(1000078,'2023-03-20','Rent','Monthly rent',1450,'Bank Transfer','USD'),(1000079,'2023-03-21','Utilities','Gas bill',30,'Debit Card','EURO'),(1000080,'2023-03-22','Healthcare','Doctor visit',190,'Cash','USD'),(1000081,'2023-03-23','Groceries','Bought groceries',60,'Credit Card','IND'),(1000082,'2023-03-24','Entertainment','Concert tickets',110,'Debit Card','USD'),(1000083,'2023-03-25','Transport','Bus fare',12,'Cash','EURO'),(1000084,'2023-03-26','Dining','Lunch at restaurant',50,'Credit Card','IND'),(1000085,'2023-03-27','Utilities','Electricity bill',75,'Bank Transfer','USD'),(1000086,'2023-03-28','Shopping','Bought a new phone',850,'Credit Card','USD'),(1000087,'2023-03-29','Healthcare','Medicine purchase',45,'Cash','EURO'),(1000088,'2023-03-30','Transport','Train ticket',18,'Debit Card','IND'),(1000089,'2023-03-31','Rent','Monthly rent',1550,'Bank Transfer','USD'),(1000090,'2023-04-01','Dining','Dinner with friends',80,'Credit Card','USD'),(1000091,'2023-04-02','Groceries','Bought snacks',35,'Debit Card','EURO'),(1000092,'2023-04-03','Healthcare','Doctor consultation',130,'Cash','USD'),(1000093,'2023-04-04','Entertainment','Movie tickets',40,'Debit Card','IND'),(1000094,'2023-04-05','Transport','Flight ticket',400,'Credit Card','EURO'),(1000095,'2023-04-06','Utilities','Water bill',50,'Bank Transfer','USD'),(1000096,'2023-04-07','Shopping','Bought a watch',200,'Credit Card','USD'),(1000097,'2023-04-08','Dining','Lunch with family',65,'Cash','IND'),(1000098,'2023-04-09','Groceries','Weekly groceries',70,'Debit Card','EURO'),(1000099,'2023-04-09','Rent','Apartment rent',1250,'Bank Transfer','USD'),(1000100,'2023-04-10','Healthcare','Eye doctor visit',120,'Debit Card','USD');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `Income_ID` bigint DEFAULT NULL,
  `Income_Source` text,
  `Salary_Amount` int DEFAULT NULL,
  `Income_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (22412,'Freelancing',25000,'2024-10-22');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `Phone_Number` bigint DEFAULT NULL,
  `Email_ID` text,
  `Name` text,
  `Password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1234567890,'bot@gmail.com','BOT','Bot123@');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 21:12:47
