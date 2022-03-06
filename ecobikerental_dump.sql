-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecobikerental
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `bike`
--

DROP TABLE IF EXISTS `bike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `dock` int DEFAULT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `bike_bikeId_uindex` (`id`),
  UNIQUE KEY `bike_code_uindex` (`code`),
  KEY `bike_dock_dockId_fk` (`dock`),
  KEY `bike_type_id_fk` (`type`),
  CONSTRAINT `bike_dock_dockId_fk` FOREIGN KEY (`dock`) REFERENCES `dock` (`id`),
  CONSTRAINT `bike_type_id_fk` FOREIGN KEY (`type`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike`
--

LOCK TABLES `bike` WRITE;
/*!40000 ALTER TABLE `bike` DISABLE KEYS */;
INSERT INTO `bike` VALUES (29,'10137980441081234561013798044108',2,3),(40,'13895405092831234561389540509283',3,2),(33,'14504289151111234561450428915111',1,1),(30,'17157429509821234561715742950982',1,3),(11,'17542384013741234561754238401374',2,3),(43,'19139112328331234561913911232833',2,3),(20,'20191694004551234562019169400455',4,1),(15,'21170772261611234562117077226161',3,3),(38,'24352135991731234562435213599173',1,2),(47,'25675502992831234562567550299283',1,1),(37,'28466774606821234562846677460682',3,2),(28,'28600333179081234562860033317908',4,3),(9,'28727996617901234562872799661790',2,2),(32,'28760791577171234562876079157717',5,1),(48,'29236422537581234562923642253758',1,1),(49,'29341619706451234562934161970645',1,1),(21,'34542950398051234563454295039805',4,2),(46,'39674174907091234563967417490709',2,1),(7,'40820613355421234564082061335542',2,2),(12,'41306126942541234564130612694254',1,3),(16,'43346315107161234564334631510716',3,1),(23,'43700756631441234564370075663144',1,2),(39,'51545830549381234565154583054938',3,2),(18,'52990233039161234565299023303916',4,1),(4,'54306206155401234565430620615540',3,2),(19,'54749326609581234565474932660958',4,1),(3,'57108540818731234565710854081873',3,3),(14,'60125669932931234566012566993293',3,3),(36,'64281534702891234566428153470289',5,2),(13,'65128932453271234566512893245327',3,3),(45,'70832491586391234567083249158639',2,3),(24,'70890488984501234567089048898450',5,2),(27,'73313585082921234567331358508292',4,3),(25,'74893328213651234567489332821365',5,2),(26,'75194990344011234567519499034401',1,3),(8,'76909111497841234567690911149784',2,2),(6,'77711568914841234567771156891484',1,3),(42,'80976850761221234568097685076122',3,3),(35,'81330178196811234568133017819681',5,1),(10,'81483334456251234568148333445625',2,2),(50,'84376816662051234568437681666205',1,2),(22,'93265644509781234569326564450978',4,2),(5,'94501608756441234569450160875644',1,3),(44,'95342637502841234569534263750284',2,3),(34,'96650273637281234569665027363728',5,1),(2,'96666886615111234569666688661511',1,1),(41,'97493518749801234569749351874980',3,3),(1,'98591513504001234569859151350400',3,1),(31,'98640507496281234569864050749628',4,1),(17,'99034712167061234569903471216706',4,1);
/*!40000 ALTER TABLE `bike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dock`
--

DROP TABLE IF EXISTS `dock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `area` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dock_dockId_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='dock infomation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dock`
--

LOCK TABLES `dock` WRITE;
/*!40000 ALTER TABLE `dock` DISABLE KEYS */;
INSERT INTO `dock` VALUES (1,'Bach Khoa','1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội',100,200),(2,'Thuy Loi','175 P. Tây Sơn, Trung Liệt, Đống Đa, Hà Nội',60,120),(3,'Kinh Te Quoc Dan','207 Giải Phóng, Đồng Tâm, Hai Bà Trưng, Hà Nội',60,120),(4,'Xay Dung','55 Giải Phóng, Đồng Tâm, Hai Bà Trưng, Hà Nội',100,200),(5,'Khoa Hoc Tu Nhien','334 Đ. Nguyễn Trãi, Thanh Xuân Trung, Thanh Xuân, Hà Nội',70,140),(6,'Khoa Hoc Xa Hoi & Nhan Van','336 Đ. Nguyễn Trãi, Thanh Xuân Trung, Thanh Xuân, Hà Nội',60,120),(7,'Phuong Dong','171 phố Trung Kính, phường Yên Hòa, quận Cầu Giấy , Hà Nội , Việt Nam',50,100),(8,'Cong Doan','169 P. Tây Sơn, Quang Trung, Đống Đa, Hà Nội',80,150),(9,'Hoc Vien Tai Chinh','58 Lê Văn Hiến, Đông Ngạc, Bắc Từ Liêm, Hà Nội',60,120),(10,'Ngoai Thuong','91 Chùa Láng, Láng Thượng, Đống Đa, Hà Nội',70,140),(11,'Kien Truc','Km10 Đ. Nguyễn Trãi, P. Văn Quán, Hà Đông, Hà Nội',90,180),(12,'Nong Nghiep','Viện Sinh học Nông nghiệp, Ngõ 86 Trâu Quỳ, Trâu Quỳ, Gia Lâm, Hà Nội',60,120);
/*!40000 ALTER TABLE `dock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebike`
--

DROP TABLE IF EXISTS `ebike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebike` (
  `id` int NOT NULL,
  `pin_status` int NOT NULL,
  `license_plate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `standard_electric_bike_bikeId_uindex` (`id`),
  UNIQUE KEY `standard_electric_bike_license_plate_uindex` (`license_plate`),
  CONSTRAINT `ebike_bike_id_fk` FOREIGN KEY (`id`) REFERENCES `bike` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebike`
--

LOCK TABLES `ebike` WRITE;
/*!40000 ALTER TABLE `ebike` DISABLE KEYS */;
INSERT INTO `ebike` VALUES (4,44,'36K6-423405'),(7,100,'64D9-786934'),(8,76,'10V4-522261'),(9,80,'30Z1-716135'),(10,97,'88Y9-341597'),(21,54,'43I7-624173'),(22,66,'00W0-483642'),(23,89,'84D1-315776'),(24,75,'22W7-183241'),(25,66,'49X0-957482'),(36,100,'65O8-531206'),(37,95,'57S9-987537'),(38,89,'45K4-444096'),(39,45,'42D7-645793'),(40,99,'95B2-854625'),(50,78,'80E8-674082');
/*!40000 ALTER TABLE `ebike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_rental` time NOT NULL,
  `rental_fees` int DEFAULT NULL,
  `bike` int DEFAULT NULL,
  `pay_deposit_transaction` varchar(50) DEFAULT NULL,
  `refund_transaction` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_invoiceId_uindex` (`id`),
  UNIQUE KEY `invoice_pay_deposit_transaction_uindex` (`pay_deposit_transaction`),
  UNIQUE KEY `invoice_refund_transaction_uindex` (`refund_transaction`),
  KEY `invoice_bike_bikeId_fk` (`bike`),
  CONSTRAINT `invoice_bike_bikeId_fk` FOREIGN KEY (`bike`) REFERENCES `bike` (`id`),
  CONSTRAINT `invoice_transaction_id_fk` FOREIGN KEY (`pay_deposit_transaction`) REFERENCES `transaction` (`id`),
  CONSTRAINT `invoice_transaction_id_fk_2` FOREIGN KEY (`refund_transaction`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'01:20:59',22000,30,'61d2aa082127ea00160a6b68','61d2aa0f2127ea00160a6b69'),(2,'01:20:59',22000,38,'61d2abb62127ea00160a6b6b','61d2ac252127ea00160a6b6c'),(3,'01:20:59',22000,38,'61d2ac332127ea00160a6b6d','61d2ac382127ea00160a6b6e'),(4,'01:20:59',22000,33,'61d2af762127ea00160a6b79','61d2af7d2127ea00160a6b7a'),(5,'01:20:59',22000,33,'61d2b5962127ea00160a6b88','61d2b59e2127ea00160a6b89'),(6,'01:20:59',22000,33,'61d2c0ec2127ea00160a6bc5','61d2c0f52127ea00160a6bc6'),(7,'01:20:59',22000,38,'61d313992127ea00160a6c57','61d313f02127ea00160a6c58'),(8,'01:20:59',22000,38,'61d314da2127ea00160a6c5f','61d314ee2127ea00160a6c60'),(9,'01:20:59',22000,38,'61d3314f2127ea00160a6cd9','61d3316f2127ea00160a6cda'),(10,'01:20:59',22000,12,'61d3f6ccaeae790016eb8055','61d3f6dfaeae790016eb8056'),(11,'01:20:59',22000,23,'61d3f7a9aeae790016eb805b','61d3f7b9aeae790016eb805c');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` varchar(50) NOT NULL,
  `card_code` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `date_expired` varchar(4) DEFAULT NULL,
  `method` varchar(50) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `amount` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_transaction_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('61d1e71a8bdbf000160e35dd','vn_group2_2021','Group 2','1125','pay','abcxyz',400,'2022-01-03 00:55:37'),('61d1e79b8bdbf000160e35e0','vn_group2_2021','Group 2','1125','pay','abcxyz',400,'2022-01-03 00:57:46'),('61d1e7ef8bdbf000160e35e2','vn_group2_2021','Group 2','1125','pay','abcxyz',400,'2022-01-03 00:59:10'),('61d1fa998bdbf000160e3623','vn_group2_2021','Group 2','1125','pay','abcxyz',400,'2022-01-03 02:18:48'),('61d1fb5c8bdbf000160e3625','vn_group2_2021','Group 2','1125','pay','abcxyz',400,'2022-01-03 02:22:03'),('61d1fb908bdbf000160e3628','vn_group2_2021','Group 2','1125','pay','abcxyz',550,'2022-01-03 02:22:56'),('61d1fc118bdbf000160e362a','vn_group2_2021','Group 2','1125','pay','abcxyz',550,'2022-01-03 02:25:04'),('61d298562127ea00160a6b32','vn_group2_2021','Group 2','1125','pay','abcxyz',700,'2022-01-03 13:31:49'),('61d29a7d2127ea00160a6b36','vn_group2_2021','Group 2','1125','pay','abcxyz',400,'2022-01-03 13:41:00'),('61d29aa72127ea00160a6b39','vn_group2_2021','Group 2','1125','pay','abcxyz',700,'2022-01-03 13:41:42'),('61d29d582127ea00160a6b3f','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 13:53:11'),('61d29eef2127ea00160a6b42','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-03 13:59:58'),('61d29f072127ea00160a6b44','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 14:00:22'),('61d2a3112127ea00160a6b4e','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-03 14:17:36'),('61d2a3392127ea00160a6b50','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:18:16'),('61d2a3af2127ea00160a6b52','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:20:15'),('61d2a44c2127ea00160a6b54','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:22:51'),('61d2a7012127ea00160a6b59','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:34:24'),('61d2a76e2127ea00160a6b5d','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:36:13'),('61d2a7762127ea00160a6b5e','vn_group2_2021','Group 2','1125','refund','request refund',528000,'2022-01-03 14:36:21'),('61d2a7a92127ea00160a6b5f','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:37:12'),('61d2a7b42127ea00160a6b60','vn_group2_2021','Group 2','1125','refund','request refund',528000,'2022-01-03 14:37:23'),('61d2a8eb2127ea00160a6b62','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 14:42:34'),('61d2a8f42127ea00160a6b63','vn_group2_2021','Group 2','1125','refund','request refund',378000,'2022-01-03 14:42:43'),('61d2a98d2127ea00160a6b64','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 14:45:16'),('61d2a9942127ea00160a6b65','vn_group2_2021','Group 2','1125','refund','request refund',378000,'2022-01-03 14:45:23'),('61d2a9d82127ea00160a6b66','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:46:31'),('61d2a9dc2127ea00160a6b67','vn_group2_2021','Group 2','1125','refund','request refund',528000,'2022-01-03 14:46:37'),('61d2aa082127ea00160a6b68','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-03 14:47:19'),('61d2aa0f2127ea00160a6b69','vn_group2_2021','Group 2','1125','refund','request refund',528000,'2022-01-03 14:47:26'),('61d2abb62127ea00160a6b6b','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-03 14:54:29'),('61d2ac252127ea00160a6b6c','vn_group2_2021','Group 2','1125','refund','request refund',678000,'2022-01-03 14:56:21'),('61d2ac332127ea00160a6b6d','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-03 14:56:35'),('61d2ac382127ea00160a6b6e','vn_group2_2021','Group 2','1125','refund','request refund',678000,'2022-01-03 14:56:40'),('61d2af762127ea00160a6b79','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 15:10:29'),('61d2af7d2127ea00160a6b7a','vn_group2_2021','Group 2','1125','refund','request refund',378000,'2022-01-03 15:10:36'),('61d2b5962127ea00160a6b88','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 15:36:37'),('61d2b59e2127ea00160a6b89','vn_group2_2021','Group 2','1125','refund','request refund',378000,'2022-01-03 15:36:45'),('61d2c0ec2127ea00160a6bc5','vn_group2_2021','Group 2','1125','pay','abcxyz',400000,'2022-01-03 16:24:59'),('61d2c0f52127ea00160a6bc6','vn_group2_2021','Group 2','1125','refund','request refund',378000,'2022-01-03 16:25:08'),('61d313992127ea00160a6c57','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-03 22:17:45'),('61d313f02127ea00160a6c58','vn_group2_2021','Group 2','1125','refund','request refund',678000,'2022-01-03 22:19:12'),('61d314da2127ea00160a6c5f','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-03 22:23:06'),('61d314ee2127ea00160a6c60','vn_group2_2021','Group 2','1125','refund','request refund',678000,'2022-01-03 22:23:26'),('61d3314f2127ea00160a6cd9','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-04 00:24:31'),('61d3316f2127ea00160a6cda','vn_group2_2021','Group 2','1125','refund','request refund',678000,'2022-01-04 00:25:03'),('61d3f6ccaeae790016eb8055','vn_group2_2021','Group 2','1125','pay','abcxyz',550000,'2022-01-04 14:26:57'),('61d3f6dfaeae790016eb8056','vn_group2_2021','Group 2','1125','refund','request refund',528000,'2022-01-04 14:27:28'),('61d3f7a9aeae790016eb805b','vn_group2_2021','Group 2','1125','pay','abcxyz',700000,'2022-01-04 14:30:49'),('61d3f7b9aeae790016eb805c','vn_group2_2021','Group 2','1125','refund','request refund',678000,'2022-01-04 14:31:01');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `deposit_fee` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Standard bike',400000),(2,'Standard e-bike',700000),(3,'Twin bike',550000);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 16:21:40
