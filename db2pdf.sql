-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: upwork_db2pdf
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sample_test_main`
--

DROP TABLE IF EXISTS `sample_test_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_test_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `county` text COLLATE utf8mb4_unicode_ci,
  `fin_project_no` text COLLATE utf8mb4_unicode_ci,
  `fap_project_no` text COLLATE utf8mb4_unicode_ci,
  `contract_no` text COLLATE utf8mb4_unicode_ci,
  `cctv_name` text COLLATE utf8mb4_unicode_ci,
  `local_hub` text COLLATE utf8mb4_unicode_ci,
  `station` text COLLATE utf8mb4_unicode_ci,
  `cctv_voltage_reading` text COLLATE utf8mb4_unicode_ci,
  `product_manufacturer_name` text COLLATE utf8mb4_unicode_ci,
  `product_make` text COLLATE utf8mb4_unicode_ci,
  `product_model` text COLLATE utf8mb4_unicode_ci,
  `product_serial_number` text COLLATE utf8mb4_unicode_ci,
  `product_firmware_version_number` text COLLATE utf8mb4_unicode_ci,
  `product_ip_address` text COLLATE utf8mb4_unicode_ci,
  `product_gateway` text COLLATE utf8mb4_unicode_ci,
  `product_subnet_mask` text COLLATE utf8mb4_unicode_ci,
  `technician_name` text COLLATE utf8mb4_unicode_ci,
  `technician_signature` text COLLATE utf8mb4_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device_serial_number` text COLLATE utf8mb4_unicode_ci,
  `test_start_time` text COLLATE utf8mb4_unicode_ci,
  `test_finish_time` text COLLATE utf8mb4_unicode_ci,
  `test_anomalies_and_comments` text COLLATE utf8mb4_unicode_ci,
  `department_rep_name` text COLLATE utf8mb4_unicode_ci,
  `departement_rep_signature` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_test_main`
--

LOCK TABLES `sample_test_main` WRITE;
/*!40000 ALTER TABLE `sample_test_main` DISABLE KEYS */;
INSERT INTO `sample_test_main` VALUES (1,'owner 1 ','location 1 ','county 1 ','fin_project_no 1 ','fap_project_no 1 ','contract_no 1 ','cctv_name 1 ','local_hub 1 ','station 1 ','cctv_voltage_reading 1 ','product_manufacturer_name 1 ','product_make 1 ','product_model 1 ','product_serial_number 1 ','product_firmware_version_number 1 ','product_ip_address 1 ','product_gateway 1 ','product_subnet_mask 1 ','technician_name 1 ','technician_signature 1 ','2018-11-09 04:33:05','device_serial_number 1 ','test_start_time 1 ','test_finish_time 1 ','test_anomalies_and_comments 1 ','department_rep_name 1 ','departement_rep_signature 1'),(2,'owner 2 ','location 2 ','county 2 ','fin_project_no 2 ','fap_project_no 2 ','contract_no 2 ','cctv_name 2 ','local_hub 2 ','station 2 ','cctv_voltage_reading 2 ','product_manufacturer_name 2 ','product_make 2 ','product_model 2 ','product_serial_number 2 ','product_firmware_version_number 2 ','product_ip_address 2 ','product_gateway 2 ','product_subnet_mask 2 ','technician_name 2 ','technician_signature 2 ','2018-11-09 04:33:24','device_serial_number 2 ','test_start_time 2 ','test_finish_time 2 ','test_anomalies_and_comments 2 ','department_rep_name 2 ','departement_rep_signature 2'),(3,'owner 3 ','location 3 ','county 3 ','fin_project_no 3 ','fap_project_no 3 ','contract_no 3 ','cctv_name 3 ','local_hub 3 ','station 3 ','cctv_voltage_reading 3 ','product_manufacturer_name 3 ','product_make 3 ','product_model 3 ','product_serial_number 3 ','product_firmware_version_number 3 ','product_ip_address 3 ','product_gateway 3 ','product_subnet_mask 3 ','technician_name 3 ','technician_signature 3 ','2018-11-09 04:33:39','device_serial_number 3 ','test_start_time 3 ','test_finish_time 3 ','test_anomalies_and_comments 3 ','department_rep_name 3 ','departement_rep_signature 3');
/*!40000 ALTER TABLE `sample_test_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_test_main_options`
--

DROP TABLE IF EXISTS `sample_test_main_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_test_main_options` (
  `id_main` int(11) NOT NULL,
  `id_options` int(11) NOT NULL,
  `check_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_main`,`id_options`),
  KEY `fk_2` (`id_options`),
  CONSTRAINT `fk_1` FOREIGN KEY (`id_main`) REFERENCES `sample_test_main` (`id`),
  CONSTRAINT `fk_2` FOREIGN KEY (`id_options`) REFERENCES `sample_test_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_test_main_options`
--

LOCK TABLES `sample_test_main_options` WRITE;
/*!40000 ALTER TABLE `sample_test_main_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_test_main_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_test_options`
--

DROP TABLE IF EXISTS `sample_test_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_test_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_operation` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_test_options`
--

LOCK TABLES `sample_test_options` WRITE;
/*!40000 ALTER TABLE `sample_test_options` DISABLE KEYS */;
INSERT INTO `sample_test_options` VALUES (1,'Verify that power supplies, local control equipment, and transient voltage surge suppressors are securiely monted in device cabinet'),(2,'Ensure that data and videos cables from the pole or support structure to the camera are routed inside the mounting hardware and protected from exposure to the ouside'),(3,'Verify that phisical contruction of pole and conduit inside tpole has been completed per plan and that conduit(if applicable) is securiely fastened');
/*!40000 ALTER TABLE `sample_test_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-09 15:16:38
