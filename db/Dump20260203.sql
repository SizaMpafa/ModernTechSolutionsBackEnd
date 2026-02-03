-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_dummydata
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `attendance`
--

-- DROP SCHEMA IF EXISTS `employee_dummydata`;
-- CREATE SCHEMA `employee_dummydata`;
DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_dummydata`.`attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `attendance_date` date NOT NULL,
  `attendance_status` varchar(45) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `employee_id_idx` (`employee_id`),
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `employee_dummydata`.`attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `employee_dummydata`.`attendance` VALUES (1,'2025-07-25','Present',1),(2,'2025-07-26','Absent',1),(3,'2025-07-27','Present',1),(4,'2025-07-28','Present',1),(5,'2025-07-29','Present',1),(6,'2025-07-25','Present',2),(7,'2025-07-26','Present',2),(8,'2025-07-27','Absent',2),(9,'2025-07-28','Present',2),(10,'2025-07-29','Present',2),(11,'2025-07-25','Present',3),(12,'2025-07-26','Present',3),(13,'2025-07-27','Present',3),(14,'2025-07-28','Absent',3),(15,'2025-07-29','Present',3),(16,'2025-07-25','Absent',4),(17,'2025-07-26','Present',4),(18,'2025-07-27','Present',4),(19,'2025-07-28','Present',4),(20,'2025-07-29','Present',4),(21,'2025-07-25','Present',5),(22,'2025-07-26','Present',5),(23,'2025-07-27','Absent',5),(24,'2025-07-28','Present',5),(25,'2025-07-29','Present',5),(26,'2025-07-25','Present',6),(27,'2025-07-26','Present',6),(28,'2025-07-27','Absent',6),(29,'2025-07-28','Present',6),(30,'2025-07-29','Present',6),(31,'2025-07-25','Present',7),(32,'2025-07-26','Present',7),(33,'2025-07-27','Present',7),(34,'2025-07-28','Absent',7),(35,'2025-07-29','Present',7),(36,'2025-07-25','Present',8),(37,'2025-07-26','Absent',8),(38,'2025-07-27','Present',8),(39,'2025-07-28','Present',8),(40,'2025-07-29','Present',8),(41,'2025-07-25','Present',9),(42,'2025-07-26','Present',9),(43,'2025-07-27','Present',9),(44,'2025-07-28','Absent',9),(45,'2025-07-29','Present',9),(46,'2025-07-25','Present',10),(47,'2025-07-26','Present',10),(48,'2025-07-27','Absent',10),(49,'2025-07-28','Present',10),(50,'2025-07-29','Present',10);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employee_dummydata`.`employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_dummydata`.`employees` (
  `employee_Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `salary` int NOT NULL,
  `employmentHistory` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_Id`),
  UNIQUE KEY `contact_UNIQUE` (`contact`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employee_dummydata`.`employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employee_dummydata`.`employees` VALUES (1,'Sibongile Nkosi','Software Engineer','Development',70000,'Joined in 2015, promoted to Senior in 2018','sibongile.nkosi@moderntech.com'),(2,'Lungile Moyo','HR Manager','HR',80000,'Joined in 2013, promoted to Manager in 2017','lungile.moyo@moderntech.com'),(3,'Thabo Molefe','Quality Analyst','QA',55000,'Joined in 2018','thabo.molefe@moderntech.com'),(4,'Keshav Naidoo','Sales Representative','Sales',60000,'Joined in 2020','keshav.naidoo@moderntech.com'),(5,'Zanele Khumalo','Marketing Specialist','Marketing',58000,'Joined in 2019','zanele.khumalo@moderntech.com'),(6,'Sipho Zulu','UI/UX Designer','Design',65000,'Joined in 2016','sipho.zulu@moderntech.com'),(7,'Naledi Moeketsi','DevOps Engineer','IT',72000,'Joined in 2017','naledi.moeketsi@moderntech.com'),(8,'Farai Gumbo','Content Strategist','Marketing',56000,'Joined in 2021','farai.gumbo@moderntech.com'),(9,'Karabo Dlamini','Accountant','Finance',62000,'Joined in 2018','karabo.dlamini@moderntech.com'),(10,'Fatima Patel','Customer Support Lead','Support',58000,'Joined in 2016','fatima.patel@moderntech.com');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_requests`
--

DROP TABLE IF EXISTS `employee_dummydata`.`leave_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_dummydata`.`leave_requests` (
  `leave_request_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `reason` varchar(45) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`leave_request_id`),
  KEY `fk_employee_id_idx` (`employee_id`),
  CONSTRAINT `fk_empl_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_requests`
--

LOCK TABLES `employee_dummydata`.`leave_requests` WRITE;
/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;
INSERT INTO `employee_dummydata`.`leave_requests` VALUES (1,'2025-07-22','Approved','Sick Leave',1),(2,'2024-12-01','Pending','Personal',1),(3,'2025-07-15','Denied','Family Responsibility',2),(4,'2024-12-02','Approved','Vacation',2),(5,'2025-07-10','Approved','Medical Appointment',3),(6,'2024-12-05','Pending','Personal',3),(7,'2025-07-20','Approved','Bereavement',4),(8,'2024-12-01','Pending','Childcare',5),(9,'2025-07-18','Approved','Sick Leave',6),(10,'2025-07-22','Pending','Vacation',7),(11,'2024-12-02','Approved','Medical Appointment',8),(12,'2025-07-19','Denied','Childcare',9),(13,'2024-12-03','Pending','Vacation',10);
/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_data`
--

DROP TABLE IF EXISTS `employee_dummydata`.`payroll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_dummydata`.`payroll_data` (
  `payroll_id` int NOT NULL,
  `hours_worked` int NOT NULL,
  `leave_deductions` int NOT NULL,
  `final_salary` int NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`payroll_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_data`
--

LOCK TABLES `employee_dummydata`.`payroll_data` WRITE;
/*!40000 ALTER TABLE `payroll_data` DISABLE KEYS */;
INSERT INTO `employee_dummydata`.`payroll_data` VALUES (1,160,8,69500,1),(2,150,10,79000,2),(3,170,4,54800,3),(4,165,6,59700,4),(5,158,5,57850,5),(6,168,2,64800,6),(7,175,3,71800,7),(8,160,0,56000,8),(9,155,5,61500,9),(10,162,4,57750,10);
/*!40000 ALTER TABLE `payroll_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-03 11:38:42
