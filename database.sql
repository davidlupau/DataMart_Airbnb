-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: data_mart_project
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `street_address` varchar(255) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `country_code` (`country`),
  CONSTRAINT `country_code` FOREIGN KEY (`country`) REFERENCES `countries` (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (38,'123 Main St','California','Los Angeles','90001','US'),(39,'456 Elm St','New York','New York','10001','US'),(40,'789 Pine St','Texas','Houston','77001','US'),(41,'1011 Oak Rd','Florida','Miami','33101','US'),(42,'1213 Cedar Blvd','Illinois','Chicago','60007','US'),(43,'789 High St','England','London','SW1A 1AA','UK'),(44,'1012 Oak St','Scotland','Edinburgh','EH1 1RF','UK'),(45,'1314 Pine Dr','Wales','Cardiff','CF10 1BS','UK'),(46,'1516 Birch Ln','Northern Ireland','Belfast','BT1 5GS','UK'),(47,'1314 Maple Ave','Ontario','Toronto','M5H 2N2','CA'),(48,'1516 Pine St','British Columbia','Vancouver','V5K 0A1','CA'),(49,'1718 Spruce Way','Quebec','Montreal','H1A 0A1','CA'),(50,'1920 Willow Rd','Alberta','Calgary','T2P 1G1','CA'),(51,'1718 George St','New South Wales','Sydney','2000','AU'),(52,'1920 King St','Victoria','Melbourne','3000','AU'),(53,'2122 Queen Ave','Queensland','Brisbane','4000','AU'),(54,'2324 Jack Blvd','Western Australia','Perth','6000','AU'),(55,'2122 Cherry Blossom Lane','Tokyo','Shibuya','150-0002','JP'),(56,'2324 Maple St','Kanagawa','Yokohama','221-0835','JP'),(57,'2526 Oak Rd','Osaka','Osaka','530-0001','JP'),(58,'2728 Cedar Ave','Aichi','Nagoya','460-0008','JP'),(59,'2324 Long St','Gauteng','Johannesburg','2000','ZA'),(60,'2526 Wide Ave','Western Cape','Cape Town','8001','ZA'),(61,'2728 High Rd','KwaZulu-Natal','Durban','4001','ZA'),(62,'2930 Big Blvd','Eastern Cape','Port Elizabeth','6001','ZA'),(63,'2526 Hauptstrasse','Bavaria','Munich','80331','DE'),(64,'2728 Lindenweg','Berlin','Berlin','10115','DE'),(65,'2930 Kastanienallee','North Rhine-Westphalia','Cologne','50667','DE'),(66,'3132 Goethestrasse','Hesse','Frankfurt','60313','DE'),(67,'2728 Rue de Rivoli','Île-de-France','Paris','75001','FR'),(68,'2930 Rue St. Antoine','Provence-Alpes-Côte d\'Azur','Marseille','13001','FR'),(69,'3132 Rue des Moulins','Auvergne-Rhône-Alpes','Lyon','69002','FR'),(70,'3334 Rue Vaugirard','Nouvelle-Aquitaine','Bordeaux','33000','FR'),(71,'2930 Bøgevej','Capital Region','Copenhagen','1050','DK'),(72,'3132 Fyrrevej','Central Denmark','Aarhus','8000','DK'),(73,'3334 Elmegade','Southern Denmark','Odense','5000','DK'),(74,'3536 Strandvejen','North Denmark','Aalborg','9000','DK');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenity_id` int NOT NULL AUTO_INCREMENT,
  `amenity_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Wi-Fi','High-speed wireless internet access throughout the property.'),(2,'Air Conditioning','Central or individual air conditioning units available.'),(3,'Heating','Indoor heating available in all rooms.'),(4,'Kitchen','Fully equipped kitchen with appliances and utensils.'),(5,'Washer','In-unit washer for laundry.'),(6,'Dryer','In-unit dryer for laundry.'),(7,'TV','Television with cable/satellite access.'),(8,'Private Bathroom','A bathroom available for personal use.'),(9,'Pool','Access to a private or shared swimming pool.'),(10,'Parking','On-site parking available.'),(11,'Gym','Access to a fitness center or gym.'),(12,'Hot Tub','Hot tub available for relaxation and leisure.'),(13,'Balcony','Outdoor balcony with seating area.'),(14,'Pet Friendly','Accommodation suitable for pets.'),(15,'Smoke Alarms','Smoke alarms installed for safety.'),(16,'First Aid Kit','First aid kit available in the property.'),(17,'Fire Extinguisher','Fire extinguisher available in case of emergency.'),(18,'Essentials','Towels, bed sheets, soap, and toilet paper provided.'),(19,'Breakfast','Breakfast options available.'),(20,'24-Hour Check-in','Check-in available at any time after check-in hour.');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_messages`
--

DROP TABLE IF EXISTS `booking_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `recipient_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `booking_messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `booking_messages_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `booking_messages_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_messages`
--

LOCK TABLES `booking_messages` WRITE;
/*!40000 ALTER TABLE `booking_messages` DISABLE KEYS */;
INSERT INTO `booking_messages` VALUES (1,39,59,37,'Hi, I wanted to report that the heating isn\'t working. It’s quite cold in the apartment.','2023-07-11 08:00:00'),(2,59,39,37,'Hello, I’m sorry to hear that. Have you tried adjusting the thermostat?','2023-07-11 08:15:00'),(3,39,59,37,'Yes, I’ve tried that already. It seems like the system is not turning on at all.','2023-07-11 08:30:00'),(4,59,39,37,'I see. Unfortunately, I’m not in the area currently. It might be something simple, but I can’t check on it until next week.','2023-07-11 09:00:00'),(5,39,59,37,'That’s quite inconvenient as it’s really cold. Is there no one else who can check this issue?','2023-07-11 09:05:00'),(6,59,39,37,'I don’t have anyone nearby to assist at the moment. Maybe you can get a portable heater for now?','2023-07-11 09:30:00'),(7,39,59,37,'That’s not really a solution, I’m expecting the amenities included to be functioning as advertised.','2023-07-11 09:45:00'),(8,59,39,37,'I understand, but there’s little I can do from here right now.','2023-07-13 10:15:00'),(9,39,59,37,'Our stay in your property was horrible because of the cold. This is quite unacceptable. I will be contacting support to complain and request a refund.','2023-07-15 12:00:00'),(10,28,38,26,'Hello, I have just arrived and the place looks great!','2023-02-01 14:00:00'),(11,38,28,26,'Thank you for letting me know! Hope you have a wonderful stay.','2023-02-01 14:10:00'),(12,28,38,26,'Could you recommend any good restaurants nearby?','2023-02-01 17:30:00'),(13,38,28,26,'Sure, I would recommend trying out The Seaside Grill. It’s just a few blocks away!','2023-02-01 17:45:00'),(14,29,39,27,'Hi, I’m planning to check in around 3 PM, is that okay?','2023-02-05 08:00:00'),(15,39,29,27,'Yes, that works perfectly. I will see you then!','2023-02-05 08:15:00'),(16,29,39,27,'Thank you! Also, is there parking available on the premises?','2023-02-05 09:00:00'),(17,39,29,27,'There is free parking available for one vehicle. Let me know if you need more.','2023-02-05 09:05:00'),(18,30,40,28,'Good evening, could you confirm the Wi-Fi details?','2023-02-10 19:00:00'),(19,40,30,28,'Good evening! Yes, the Wi-Fi network is \"Guests_40\" and the password is \"Welcome1234\".','2023-02-10 19:10:00'),(20,30,40,28,'Thanks! One more thing, is there a hairdryer in the bathroom?','2023-02-10 20:00:00'),(21,40,30,28,'Yes, you will find a hairdryer in the top drawer of the bathroom cabinet.','2023-02-10 20:05:00');
/*!40000 ALTER TABLE `booking_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `user_id` int NOT NULL,
  `booking_date` timestamp NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`booking_id`),
  KEY `property_id` (`property_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,23,'2024-05-02 22:00:00','2024-05-04','2024-05-07',300.00,'pending'),(2,1,24,'2024-04-13 22:00:00','2024-04-16','2024-06-18',450.00,'pending'),(3,1,25,'2024-07-31 22:00:00','2024-08-01','2024-08-05',500.00,'pending'),(4,1,26,'2024-09-10 22:00:00','2024-09-12','2024-09-18',600.00,'pending'),(5,2,27,'2024-05-08 22:00:00','2024-05-10','2024-05-12',200.00,'pending'),(6,2,28,'2024-06-20 22:00:00','2024-06-22','2024-06-28',700.00,'pending'),(7,2,29,'2024-08-05 22:00:00','2024-08-07','2024-08-13',650.00,'pending'),(8,2,30,'2024-09-20 22:00:00','2024-09-22','2024-09-28',750.00,'pending'),(9,3,31,'2024-05-14 22:00:00','2024-05-16','2024-05-22',550.00,'pending'),(10,3,32,'2024-06-28 22:00:00','2024-06-30','2024-07-05',500.00,'pending'),(11,3,33,'2024-08-13 22:00:00','2024-08-15','2024-08-21',600.00,'pending'),(12,3,34,'2024-09-28 22:00:00','2024-09-30','2024-10-05',550.00,'pending'),(13,4,35,'2024-05-21 22:00:00','2024-05-23','2024-05-29',400.00,'pending'),(14,4,36,'2024-07-05 22:00:00','2024-07-07','2024-07-13',450.00,'pending'),(15,4,37,'2024-08-21 22:00:00','2024-08-23','2024-08-29',475.00,'pending'),(16,4,38,'2024-09-05 22:00:00','2024-09-07','2024-09-13',425.00,'pending'),(17,5,39,'2024-05-28 22:00:00','2024-05-30','2024-06-05',350.00,'completed'),(18,6,40,'2024-06-04 22:00:00','2024-06-06','2024-06-12',600.00,'completed'),(19,7,41,'2024-06-11 22:00:00','2024-06-13','2024-06-19',550.00,'completed'),(20,8,42,'2024-04-29 22:00:00','2024-05-01','2024-05-05',250.00,'cancelled'),(21,1,43,'2023-01-31 23:00:00','2023-02-02','2023-02-05',320.00,'completed'),(22,1,44,'2023-02-09 23:00:00','2023-02-11','2023-02-14',300.00,'completed'),(23,1,45,'2023-02-17 23:00:00','2023-02-19','2023-02-22',310.00,'completed'),(24,1,46,'2023-02-28 23:00:00','2023-03-02','2023-03-05',330.00,'completed'),(25,2,47,'2023-03-09 23:00:00','2023-03-11','2023-03-14',220.00,'completed'),(26,2,48,'2023-03-19 23:00:00','2023-03-21','2023-03-24',210.00,'completed'),(27,2,49,'2023-03-31 22:00:00','2023-04-02','2023-04-05',200.00,'completed'),(28,2,50,'2023-04-09 22:00:00','2023-04-11','2023-04-14',230.00,'completed'),(29,3,51,'2023-04-19 22:00:00','2023-04-21','2023-04-24',250.00,'completed'),(30,3,52,'2023-04-30 22:00:00','2023-05-02','2023-05-05',270.00,'completed'),(31,3,53,'2023-05-09 22:00:00','2023-05-11','2023-05-14',260.00,'completed'),(32,3,54,'2023-05-19 22:00:00','2023-05-21','2023-05-24',280.00,'completed'),(33,4,55,'2023-05-31 22:00:00','2023-06-02','2023-06-05',350.00,'completed'),(34,4,56,'2023-06-09 22:00:00','2023-06-11','2023-06-14',360.00,'completed'),(35,4,57,'2023-06-19 22:00:00','2023-06-21','2023-06-24',340.00,'completed'),(36,4,58,'2023-06-30 22:00:00','2023-07-02','2023-07-05',370.00,'completed'),(37,5,59,'2023-07-09 22:00:00','2023-07-11','2023-07-14',320.00,'completed'),(38,6,60,'2023-07-19 22:00:00','2023-07-21','2023-07-24',310.00,'completed'),(39,7,61,'2023-07-31 22:00:00','2023-08-02','2023-08-05',300.00,'completed'),(40,8,62,'2023-08-09 22:00:00','2023-08-11','2023-08-14',290.00,'completed'),(41,11,25,'2024-04-25 17:32:48','2024-08-04','2024-08-08',720.00,'pending');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancellation_policies`
--

DROP TABLE IF EXISTS `cancellation_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation_policies` (
  `cancellation_policy_id` int NOT NULL AUTO_INCREMENT,
  `policy_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `time_frame` int NOT NULL,
  `refund_percentage` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cancellation_policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation_policies`
--

LOCK TABLES `cancellation_policies` WRITE;
/*!40000 ALTER TABLE `cancellation_policies` DISABLE KEYS */;
INSERT INTO `cancellation_policies` VALUES (1,'Flexible','Full refund 1 day prior to arrival, except fees.',1,100,1),(2,'Moderate','Full refund 5 days prior to arrival, except fees.',5,100,1),(3,'Strict','50% refund up to 1 week prior to arrival, except fees.',7,50,1),(4,'Long-term','50% refund of the first month’s rent up to 30 days prior to check-in, except fees.',30,50,1),(5,'Super Strict 30 Days','50% refund up to 30 days before arrival, except fees.',30,50,1),(6,'Super Strict 60 Days','50% refund up to 60 days before arrival, except fees.',60,50,1),(7,'Non-refundable','Non-refundable, except fees.',0,0,1),(8,'Special Event','No refunds offered during special event periods, except fees.',0,0,1),(9,'Seasonal','No refunds offered during high season periods, except fees.',0,0,1);
/*!40000 ALTER TABLE `cancellation_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_code` char(2) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `dialling_code` int NOT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AE','United Arab Emirates',971),('AR','Argentina',54),('AT','Austria',43),('AU','Australia',61),('BE','Belgium',32),('BR','Brazil',55),('CA','Canada',1),('CH','Switzerland',41),('CL','Chile',56),('CN','China',86),('CO','Colombia',57),('CZ','Czech Republic',420),('DE','Germany',49),('DK','Denmark',45),('EG','Egypt',20),('ES','Spain',34),('FI','Finland',358),('FR','France',33),('GB','United Kingdom',44),('GR','Greece',30),('HU','Hungary',36),('ID','Indonesia',62),('IE','Ireland',353),('IL','Israel',972),('IN','India',91),('IT','Italy',39),('JP','Japan',81),('KE','Kenya',254),('KR','South Korea',82),('MA','Morocco',212),('MX','Mexico',52),('MY','Malaysia',60),('NG','Nigeria',234),('NL','Netherlands',31),('NO','Norway',47),('NZ','New Zealand',64),('PE','Peru',51),('PH','Philippines',63),('PL','Poland',48),('PT','Portugal',351),('RU','Russia',7),('SA','Saudi Arabia',966),('SE','Sweden',46),('SG','Singapore',65),('TH','Thailand',66),('TR','Turkey',90),('UA','Ukraine',380),('UK','United Kingdom',44),('US','United States',1),('VE','Venezuela',58),('ZA','South Africa',27);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `currency_code` char(3) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `exchange_rate` decimal(18,6) NOT NULL,
  PRIMARY KEY (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES ('AUD','Australian Dollar',1.580000),('BRL','Brazilian Real',5.260000),('CAD','Canadian Dollar',1.450000),('CHF','Swiss Franc',1.020000),('CNY','Chinese Yuan',7.400000),('DKK','Danish Krone',7.440000),('EUR','Euro',1.000000),('GBP','British Pound',0.850000),('HKD','Hong Kong Dollar',8.650000),('INR','Indian Rupee',79.250000),('JPY','Japanese Yen',130.000000),('KRW','South Korean Won',1350.000000),('MXN','Mexican Peso',21.300000),('NOK','Norwegian Krone',9.800000),('NZD','New Zealand Dollar',1.690000),('RUB','Russian Ruble',82.500000),('SEK','Swedish Krona',10.300000),('SGD','Singapore Dollar',1.520000),('TRY','Turkish Lira',15.500000),('USD','US Dollar',1.100000),('ZAR','South African Rand',17.500000);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_transactions`
--

DROP TABLE IF EXISTS `financial_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  KEY `booking_id` (`booking_id`),
  KEY `currency` (`currency`),
  CONSTRAINT `financial_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `financial_transactions_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `financial_transactions_ibfk_3` FOREIGN KEY (`currency`) REFERENCES `currencies` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_transactions`
--

LOCK TABLES `financial_transactions` WRITE;
/*!40000 ALTER TABLE `financial_transactions` DISABLE KEYS */;
INSERT INTO `financial_transactions` VALUES (1,43,1,'Payment',320.00,'USD','2024-04-21 17:22:13','Paid to Host'),(2,44,2,'Payment',300.00,'CAD','2024-04-21 17:22:13','Paid to Host'),(3,45,3,'Payment',310.00,'USD','2024-04-21 17:22:13','Paid to Host'),(4,46,4,'Payment',330.00,'USD','2024-04-21 17:22:13','Paid to Host'),(5,47,5,'Payment',220.00,'USD','2024-04-21 17:22:13','Paid to Host'),(6,48,6,'Payment',210.00,'USD','2024-04-21 17:22:13','Paid to Host'),(7,49,7,'Payment',200.00,'USD','2024-04-21 17:22:13','Paid to Host'),(8,50,8,'Payment',230.00,'USD','2024-04-21 17:22:13','Paid to Host'),(9,51,9,'Payment',250.00,'GBP','2024-04-21 17:22:13','Paid to Host'),(10,52,10,'Payment',270.00,'USD','2024-04-21 17:22:13','Paid to Host'),(11,53,11,'Payment',260.00,'EUR','2024-04-21 17:22:13','Paid to Host'),(12,54,12,'Payment',280.00,'USD','2024-04-21 17:22:13','Paid to Host'),(13,55,13,'Payment',350.00,'USD','2024-04-21 17:22:13','Paid to Host'),(14,56,14,'Payment',360.00,'USD','2024-04-21 17:22:13','Paid to Host'),(15,57,15,'Payment',340.00,'USD','2024-04-21 17:22:13','Paid to Host'),(16,58,16,'Payment',370.00,'EUR','2024-04-21 17:22:13','Pending Payment from Guest'),(17,59,17,'Payment',320.00,'USD','2024-04-21 17:22:13','Pending Payment from Guest'),(18,60,18,'Payment',310.00,'USD','2024-04-21 17:22:13','Pending Payment from Guest'),(19,61,19,'Hold',300.00,'EUR','2024-04-21 17:22:13','Amount Blocked'),(20,62,20,'Hold',290.00,'USD','2024-04-21 17:22:13','Amount Blocked'),(21,24,2,'Payment',300.00,'CAD','2024-02-24 18:22:13','Paid by user'),(22,25,41,'Hold',720.00,'GBP','2024-04-25 17:32:58','Pending Payment from Guest');
/*!40000 ALTER TABLE `financial_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `user_id` int NOT NULL,
  `credit_card_details` varchar(50) NOT NULL,
  `guest_bio` text,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `guests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (23,'1234567890123456','Enthusiastic traveler from Australia who loves to explore new cultures.'),(24,'2345678901234567','Business professional frequently traveling for conferences and meetings.'),(25,'3456789012345678','Adventurous soul, climbing mountains and diving in seas.'),(26,'4567890123456789','History buff, visiting historical sites around the world.'),(27,'5678901234567890','Foodie, trying out local cuisines wherever I go.'),(28,'6789012345678901','Nature lover, seeking out the most serene landscapes.'),(29,'7890123456789012','Photography enthusiast capturing moments across continents.'),(30,'8901234567890123','Solo traveler, exploring the world one city at a time.'),(31,'9012345678901234','Digital nomad, working from different corners of the globe.'),(32,'1234567890123456','Retired couple enjoying leisurely travels around the world.'),(33,'2345678901234567','Studio artist finding inspiration in various cultures.'),(34,'3456789012345678','Documentary filmmaker creating content on global traditions.'),(35,'4567890123456789','College student on a gap year exploring diverse communities.'),(36,'5678901234567890','Tech enthusiast attending international tech expos and meet-ups.'),(37,'6789012345678901','Healthcare professional attending global seminars and workshops.'),(38,'7890123456789012','Musician on tour, performing in various cities worldwide.'),(39,'8901234567890123','Yoga instructor conducting retreats in tranquil locations.'),(40,'9012345678901234','Journalist covering international events and stories.'),(41,'1234567890123456','Real estate investor scouting properties in emerging markets.'),(42,'2345678901234567','Environmental scientist on field trips to study ecosystems.');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hosts`
--

DROP TABLE IF EXISTS `hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hosts` (
  `user_id` int NOT NULL,
  `bank_account_details` varchar(50) NOT NULL,
  `host_since` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_bio` text,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `hosts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosts`
--

LOCK TABLES `hosts` WRITE;
/*!40000 ALTER TABLE `hosts` DISABLE KEYS */;
INSERT INTO `hosts` VALUES (43,'BankXYZ-0123456789','2024-04-20 19:35:48','Passionate about providing cozy and welcoming spaces for travelers.'),(44,'BankABC-9876543210','2024-04-20 19:35:48','Offering a luxurious stay in the heart of the city.'),(45,'BankDEF-1234509876','2024-04-20 19:35:48','Loves to host and meet people from different parts of the world.'),(46,'BankGHI-5647382910','2024-04-20 19:35:48','Provides a rustic experience in a country cottage.'),(47,'BankJKL-0987654321','2024-04-20 19:35:48','Hosts a modern apartment with all tech conveniences.'),(48,'BankMNO-1234567890','2024-04-20 19:35:48','Beach house owner, loves surfing and beach volleyball.'),(49,'BankPQR-5647382901','2024-04-20 19:35:48','Mountain lodge owner, great for retreats and nature lovers.'),(50,'BankSTU-9078563412','2024-04-20 19:35:48','City center studio perfect for exploring nightlife.'),(51,'BankVWX-3126459780','2024-04-20 19:35:48','Offers a peaceful stay in a suburban guesthouse.'),(52,'BankYZA-7845129630','2024-04-20 19:35:48','Artistic loft owner, decorated with personal artwork.'),(53,'BankBCD-6758493021','2024-04-20 19:35:48','Family-friendly home with a playground nearby.'),(54,'BankEFG-5647382901','2024-04-20 19:35:48','Pet-friendly apartment with lots of walking trails.'),(55,'BankHIJ-4231567890','2024-04-20 19:35:48','Small town home with a warm, community feel.'),(56,'BankKLM-3126459780','2024-04-20 19:35:48','Historic home with antique furnishings and a large garden.'),(57,'BankNOP-9078563412','2024-04-20 19:35:48','Modern minimalist apartment in a high-rise.'),(58,'BankQRS-7845129630','2024-04-20 19:35:48','Cozy cabin in the woods, great for a quiet getaway.'),(59,'BankTUV-6758493021','2024-04-20 19:35:48','Luxury villa with a private pool and garden.'),(60,'BankWXY-5647382910','2024-04-20 19:35:48','Hostel owner, great for backpackers and solo travelers.'),(61,'BankZAB-4231567890','2024-04-20 19:35:48','Penthouse with panoramic city views.'),(62,'BankCDE-3126459780','2024-04-20 19:35:48','Country house with organic farm and fresh produce.');
/*!40000 ALTER TABLE `hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_rules`
--

DROP TABLE IF EXISTS `house_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_rules` (
  `house_rule_id` int NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`house_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_rules`
--

LOCK TABLES `house_rules` WRITE;
/*!40000 ALTER TABLE `house_rules` DISABLE KEYS */;
INSERT INTO `house_rules` VALUES (1,'No Smoking','Smoking is not allowed inside or around the property.',1),(2,'No Pets','Pets are not allowed in the property at any time.',1),(3,'No Parties','Parties and loud music are strictly prohibited.',1),(4,'Quiet Hours','Please observe quiet hours from 10 PM to 7 AM.',1),(5,'Maximum Occupancy','The maximum number of guests should not exceed 5.',1),(6,'Check-in Time','Check-in is available from 3 PM to 9 PM.',1),(7,'Check-out Time','Check-out must be completed by 11 AM on the departure day.',1),(8,'Parking','Parking is available for one vehicle per reservation.',1),(9,'Age Requirement','The primary renter must be at least 25 years old.',1),(10,'Self-Catering','The property is self-catering, please maintain cleanliness.',1),(11,'Recycling Rules','Please follow the recycling guidelines provided in the welcome manual.',1),(12,'No Long-term Storage','Storage of personal goods beyond stay duration is not allowed.',1),(13,'Energy Saving','Please turn off lights and appliances when not in use.',1),(14,'Water Usage','Please conserve water by limiting shower time.',1),(15,'Report Damages','Any damages to the property must be reported immediately.',1),(16,'Use of Amenities','Use property amenities responsibly and adhere to guidelines.',1),(17,'No Subletting','Subletting or re-rental of the property is strictly prohibited.',1),(18,'Key Return','Please return all keys at the time of check-out.',1),(19,'Emergency Procedures','Familiarize yourself with fire exits and emergency procedures.',1),(20,'Security Cameras','Security cameras are installed in public areas for safety.',1);
/*!40000 ALTER TABLE `house_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_code` char(2) NOT NULL,
  `language_name` varchar(50) NOT NULL,
  PRIMARY KEY (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('AR','Arabic'),('CS','Czech'),('DA','Danish'),('DE','German'),('EL','Greek'),('EN','English'),('ES','Spanish'),('FI','Finnish'),('FR','French'),('IT','Italian'),('JA','Japanese'),('KO','Korean'),('NL','Dutch'),('NO','Norwegian'),('PL','Polish'),('PT','Portuguese'),('RU','Russian'),('SV','Swedish'),('TR','Turkish'),('ZH','Chinese');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages_spoken`
--

DROP TABLE IF EXISTS `languages_spoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages_spoken` (
  `user_id` int NOT NULL,
  `language_code` char(2) NOT NULL,
  `language_level` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`language_code`),
  KEY `language_code` (`language_code`),
  CONSTRAINT `languages_spoken_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `languages_spoken_ibfk_2` FOREIGN KEY (`language_code`) REFERENCES `languages` (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_spoken`
--

LOCK TABLES `languages_spoken` WRITE;
/*!40000 ALTER TABLE `languages_spoken` DISABLE KEYS */;
INSERT INTO `languages_spoken` VALUES (24,'EN','Fluent'),(24,'ES','Intermediate'),(25,'DE','Beginner'),(25,'FR','Fluent'),(26,'JA','Advanced'),(27,'IT','Fluent'),(28,'RU','Intermediate'),(29,'PT','Fluent'),(30,'ZH','Beginner'),(31,'NL','Fluent'),(32,'CS','Advanced'),(33,'KO','Intermediate'),(34,'SV','Fluent'),(35,'NO','Fluent'),(36,'PL','Intermediate'),(37,'TR','Fluent'),(38,'FI','Beginner'),(39,'EL','Fluent'),(40,'AR','Advanced'),(41,'DA','Intermediate'),(42,'EN','Fluent'),(43,'FR','Advanced'),(44,'ES','Fluent'),(45,'DE','Intermediate'),(46,'JA','Fluent'),(47,'IT','Beginner'),(48,'RU','Fluent'),(49,'PT','Intermediate'),(50,'ZH','Advanced'),(51,'NL','Beginner'),(52,'CS','Fluent'),(53,'KO','Beginner'),(54,'SV','Advanced'),(55,'NO','Intermediate'),(56,'PL','Fluent'),(57,'TR','Beginner'),(58,'FI','Fluent'),(59,'EL','Intermediate'),(60,'AR','Fluent'),(61,'DA','Advanced');
/*!40000 ALTER TABLE `languages_spoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `bedrooms` int NOT NULL DEFAULT '1',
  `beds` int NOT NULL DEFAULT '1',
  `bathrooms` int NOT NULL DEFAULT '1',
  `private_bathroom` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `surface` int NOT NULL,
  `currency_payment` char(3) NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `min_stay` int DEFAULT NULL,
  `checkin_time` time NOT NULL,
  `cleaning_fee` decimal(10,2) DEFAULT NULL,
  `pets_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `house_rules_id` int NOT NULL,
  `cancellation_policy_id` int NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`property_id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  KEY `type_id` (`type_id`),
  KEY `currency_payment` (`currency_payment`),
  KEY `house_rules_id` (`house_rules_id`),
  KEY `cancellation_policy_id` (`cancellation_policy_id`),
  CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `properties_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `properties_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `property_types` (`type_id`),
  CONSTRAINT `properties_ibfk_4` FOREIGN KEY (`currency_payment`) REFERENCES `currencies` (`currency_code`),
  CONSTRAINT `properties_ibfk_5` FOREIGN KEY (`house_rules_id`) REFERENCES `house_rules` (`house_rule_id`),
  CONSTRAINT `properties_ibfk_6` FOREIGN KEY (`cancellation_policy_id`) REFERENCES `cancellation_policies` (`cancellation_policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,43,38,'Cozy Cottage','A beautiful and cozy cottage.',2,3,1,1,1,50,'EUR',85.50,2,'15:00:00',15.00,0,5,1,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(2,44,39,'Modern Apartment','Stylish apartment in the city center.',3,5,2,0,4,80,'USD',120.00,3,'14:00:00',20.00,1,3,2,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(3,45,40,'Beach House','House right on the beach.',4,4,2,1,2,120,'AUD',200.00,5,'16:00:00',25.00,1,7,3,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(4,46,41,'Downtown Studio','Compact studio in the heart of the city.',1,1,1,1,3,30,'CAD',75.00,1,'15:30:00',10.00,0,9,4,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(5,47,42,'Country Home','Spacious home in a tranquil rural setting.',5,5,3,0,5,150,'GBP',150.00,4,'14:30:00',30.00,1,2,5,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(6,48,43,'Suburban Bungalow','Quiet, well-connected location.',3,3,2,0,6,100,'CHF',90.00,2,'16:00:00',20.00,0,4,6,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(7,49,44,'Loft','Modern loft with industrial charm.',2,2,1,1,7,70,'JPY',11000.00,3,'15:00:00',15.00,1,1,7,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(8,50,45,'Villa','Luxurious villa with private pool.',4,6,4,1,8,200,'EUR',350.00,7,'14:00:00',50.00,0,6,8,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(9,51,46,'Penthouse','Top floor with stunning views.',3,4,3,1,9,110,'USD',250.00,2,'16:30:00',40.00,1,8,9,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(10,52,47,'Mansion','A grand mansion with exquisite gardens.',6,8,5,0,10,300,'DKK',2300.00,6,'14:00:00',60.00,0,3,1,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(11,53,48,'Townhouse','Elegant townhouse in a prestigious area.',4,5,2,0,11,90,'GBP',180.00,3,'15:00:00',25.00,1,11,2,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(12,54,49,'Farmhouse','Rustic farmhouse with lots of charm.',4,4,2,1,12,140,'AUD',130.00,4,'15:30:00',20.00,0,5,3,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(13,55,50,'Apartment','Convenient and affordable city living.',2,2,1,0,13,60,'CAD',95.00,2,'16:00:00',12.00,1,10,4,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(14,56,51,'Duplex','Spacious duplex near downtown.',3,3,2,1,14,85,'CHF',140.00,3,'14:30:00',18.00,0,12,5,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(15,57,52,'Cabin','Cozy cabin in the mountains.',2,2,1,1,15,45,'EUR',100.00,1,'15:00:00',20.00,1,14,6,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(16,58,53,'Mobile Home','Comfortable mobile home in a nice park.',1,1,1,0,16,25,'JPY',8000.00,1,'16:30:00',5.00,0,17,7,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(17,59,54,'Cottage','Charming cottage with garden access.',3,3,2,0,17,70,'GBP',110.00,5,'14:30:00',22.00,1,15,8,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(18,60,55,'Studio','Ideal for singles or young couples.',1,1,1,1,18,35,'DKK',750.00,2,'15:00:00',8.00,0,4,9,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(19,61,56,'Condo','Modern condo with all amenities.',2,2,1,1,19,65,'USD',130.00,3,'15:30:00',15.00,1,3,1,'2024-04-21 16:13:42','2024-04-21 16:13:42',1),(20,62,57,'Traditional Home','Beautifully furnished in a quiet neighborhood.',4,4,3,0,1,150,'KRW',160000.00,4,'16:00:00',35.00,1,8,2,'2024-04-21 16:13:42','2024-04-21 16:13:42',1);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_amenities`
--

DROP TABLE IF EXISTS `property_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_amenities` (
  `amenity_id` int NOT NULL,
  `property_id` int NOT NULL,
  `comment` text,
  PRIMARY KEY (`amenity_id`,`property_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `property_amenities_ibfk_1` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`amenity_id`),
  CONSTRAINT `property_amenities_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_amenities`
--

LOCK TABLES `property_amenities` WRITE;
/*!40000 ALTER TABLE `property_amenities` DISABLE KEYS */;
INSERT INTO `property_amenities` VALUES (1,1,''),(1,2,'Fast internet for business travelers.'),(1,3,'Wi-Fi available in all areas.'),(1,5,''),(1,7,'Complimentary Wi-Fi access.'),(2,1,''),(2,4,'Individual A/C in every room.'),(3,1,''),(3,3,''),(3,6,''),(4,1,''),(4,4,''),(5,1,''),(5,5,'Washer included for convenience.'),(6,2,''),(6,6,'Dryer available for guests.'),(7,2,''),(7,5,''),(8,2,''),(8,7,'Private bathroom facilities.'),(9,2,''),(9,4,''),(10,3,''),(10,7,'Ample parking space.'),(11,3,''),(11,7,'Gym for health enthusiasts.'),(12,1,''),(12,3,''),(13,2,'Enjoy the view from the balcony.'),(13,4,''),(14,3,'Relax in the hot tub.'),(14,4,'Pets are welcome.'),(15,4,'Safety first with smoke alarms.'),(16,5,'First aid kit available.'),(17,5,''),(18,6,'All essentials provided.'),(19,6,''),(20,6,'');
/*!40000 ALTER TABLE `property_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_availability`
--

DROP TABLE IF EXISTS `property_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_availability` (
  `availability_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `starts_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`availability_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `property_availability_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_availability`
--

LOCK TABLES `property_availability` WRITE;
/*!40000 ALTER TABLE `property_availability` DISABLE KEYS */;
INSERT INTO `property_availability` VALUES (1,1,'2024-05-04','2024-05-07','Booked'),(2,1,'2024-06-15','2024-06-18','Booked'),(3,1,'2024-07-08','2024-07-14','Maintenance'),(4,1,'2024-08-01','2024-08-03','Booked'),(5,1,'2024-09-14','2024-09-18','Booked'),(6,1,'2024-11-20','2024-11-26','Renovation'),(7,2,'2024-05-10','2024-05-12','Booked'),(8,2,'2024-06-22','2024-06-28','Booked'),(9,2,'2024-07-15','2024-07-19','Private Event'),(10,2,'2024-08-07','2024-08-13','Booked'),(11,2,'2024-09-22','2024-09-28','Booked'),(12,2,'2024-11-29','2024-12-05','Cleaning'),(13,3,'2024-05-16','2024-05-22','Booked'),(14,3,'2024-06-30','2024-07-05','Booked'),(15,3,'2024-07-20','2024-07-26','Owner Use'),(16,3,'2024-08-15','2024-08-21','Booked'),(17,3,'2024-09-30','2024-10-05','Booked'),(18,3,'2024-12-10','2024-12-16','Booked'),(19,4,'2024-05-23','2024-05-29','Booked'),(20,4,'2024-07-07','2024-07-13','Booked'),(21,4,'2024-08-23','2024-08-29','Booked'),(22,4,'2024-09-07','2024-09-13','Booked'),(23,4,'2024-10-15','2024-10-21','Seasonal Closure'),(24,4,'2024-11-02','2024-11-08','Booked'),(25,5,'2024-05-30','2024-06-05','Booked'),(26,5,'2024-07-14','2024-07-20','Booked'),(27,5,'2024-08-30','2024-09-05','Booked'),(28,5,'2024-09-14','2024-09-20','Booked'),(29,5,'2024-10-22','2024-10-28','Booked'),(30,5,'2024-11-09','2024-11-15','Upgrades'),(31,6,'2024-06-06','2024-06-12','Booked'),(32,6,'2024-07-21','2024-07-27','Booked'),(33,6,'2024-09-06','2024-09-12','Booked'),(34,6,'2024-09-21','2024-09-27','Booked'),(35,6,'2024-10-29','2024-11-04','Booked'),(36,6,'2024-11-16','2024-11-22','Pest Control'),(37,7,'2024-06-13','2024-06-19','Booked'),(38,7,'2024-07-28','2024-08-03','Booked'),(39,7,'2024-09-01','2024-09-07','Booked'),(40,7,'2024-09-28','2024-10-04','Booked'),(41,7,'2024-11-05','2024-11-11','Booked'),(42,7,'2024-11-23','2024-11-29','Filming'),(43,8,'2024-05-01','2024-05-05','Booked'),(44,8,'2024-06-20','2024-06-25','Booked'),(45,8,'2024-07-29','2024-08-04','Booked'),(46,8,'2024-08-10','2024-08-16','Booked'),(47,8,'2024-09-08','2024-09-14','Booked'),(48,8,'2024-10-06','2024-10-12','Construction'),(49,9,'2024-05-06','2024-05-10','Booked'),(50,9,'2024-06-26','2024-07-01','Booked'),(51,9,'2024-08-05','2024-08-11','Booked'),(52,9,'2024-08-17','2024-08-23','Booked'),(53,9,'2024-09-15','2024-09-21','Booked'),(54,9,'2024-10-13','2024-10-19','Local Event'),(55,11,'2024-08-04','2024-08-08','Booked');
/*!40000 ALTER TABLE `property_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_rules`
--

DROP TABLE IF EXISTS `property_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_rules` (
  `property_id` int NOT NULL,
  `house_rule_id` int NOT NULL,
  PRIMARY KEY (`property_id`,`house_rule_id`),
  KEY `house_rule_id` (`house_rule_id`),
  CONSTRAINT `property_rules_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `property_rules_ibfk_2` FOREIGN KEY (`house_rule_id`) REFERENCES `house_rules` (`house_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_rules`
--

LOCK TABLES `property_rules` WRITE;
/*!40000 ALTER TABLE `property_rules` DISABLE KEYS */;
INSERT INTO `property_rules` VALUES (1,1),(2,1),(5,1),(16,1),(1,2),(3,2),(6,2),(17,2),(1,3),(4,3),(7,3),(17,3),(1,4),(8,4),(18,4),(1,5),(4,5),(9,5),(18,5),(2,6),(5,6),(9,6),(19,6),(2,7),(6,7),(10,7),(19,7),(2,8),(7,8),(10,8),(2,9),(8,9),(11,9),(3,10),(6,10),(11,10),(3,11),(7,11),(12,11),(3,12),(8,12),(12,12),(3,13),(13,13),(4,14),(6,14),(13,14),(4,15),(7,15),(14,15),(4,16),(8,16),(14,16),(5,17),(6,17),(15,17),(5,18),(7,18),(15,18),(5,19),(8,19),(16,19);
/*!40000 ALTER TABLE `property_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_types`
--

DROP TABLE IF EXISTS `property_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_types` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_types`
--

LOCK TABLES `property_types` WRITE;
/*!40000 ALTER TABLE `property_types` DISABLE KEYS */;
INSERT INTO `property_types` VALUES (1,'Castle','A large building typically of the medieval period, fortified against attack.'),(2,'Apartment','An individual unit in a multi-unit building.'),(3,'House','A single-family dwelling with no shared walls.'),(4,'Loft','A large, open space that can be used as a living area.'),(5,'Condominium','A private residence in a multi-unit complex with shared common areas.'),(6,'Townhouse','A multilevel home that shares one or more walls with other units.'),(7,'Bungalow','A small, single-story house with a front porch.'),(8,'Cottage','A small, cozy house typically found in a rural or semi-rural location.'),(9,'Villa','A large and luxurious country house in its own grounds.'),(10,'Chalet','A wooden house with overhanging eaves, typically found in the Swiss Alps.'),(11,'Cabin','A small rustic house typically made of wood and located in a rural area.'),(12,'Studio','A small apartment consisting of one main room.'),(13,'Farmhouse','A house attached to a farm, especially the main house.'),(14,'Serviced Apartment','An apartment with hotel-like amenities.'),(15,'Boat','A watercraft that has been modified for use as a living space.'),(16,'Mansion','A large, impressive house or estate.'),(17,'Bedroom',''),(18,'Hostel','An establishment which provides inexpensive food and lodging for a specific group of people, such as students.'),(19,'Bed & Breakfast','A small lodging establishment that offers overnight accommodation and breakfast.'),(20,'Guesthouse','A private house offering accommodations to paying guests.'),(21,'Penthouse','An apartment on the top floor of a tall building, typically luxuriously fitted and offering fine views.');
/*!40000 ALTER TABLE `property_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `reviewee_id` int NOT NULL,
  `rating` int NOT NULL,
  `review_text` text,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `booking_id` (`booking_id`),
  KEY `reviewer_id` (`reviewer_id`),
  KEY `reviewee_id` (`reviewee_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`reviewee_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reviews_chk_1` CHECK (((`rating` >= 0) and (`rating` <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,21,23,43,9,'Fantastic experience, highly recommended!','2024-04-21 17:27:30'),(2,22,24,44,8,'Very clean and comfortable, great host.','2024-04-21 17:27:30'),(3,23,25,45,10,'Perfect stay, exceeded all expectations!','2024-04-21 17:27:30'),(4,24,26,46,9,'Wonderful location and amenities.','2024-04-21 17:27:30'),(5,25,27,47,8,'Host was very accommodating, lovely place.','2024-04-21 17:27:30'),(6,26,28,48,10,'Absolutely loved it here, will return!','2024-04-21 17:27:30'),(7,27,29,49,9,'Quiet, clean, and just as described.','2024-04-21 17:27:30'),(8,28,30,50,8,'Very pleasant stay, host was outstanding.','2024-04-21 17:27:30'),(9,29,31,51,9,'Great experience, everything was perfect.','2024-04-21 17:27:30'),(10,30,32,52,10,'Could not have asked for a better stay!','2024-04-21 17:27:30'),(11,31,33,53,6,'Decent place, but had some noisy neighbors.','2024-04-21 17:27:30'),(12,32,34,54,5,'Average stay, you get what you pay for.','2024-04-21 17:27:30'),(13,33,35,55,7,'Pretty good overall, but room for improvement.','2024-04-21 17:27:30'),(14,34,36,56,3,'Disappointing service, unclean bathroom.','2024-04-21 17:27:30'),(15,35,37,57,4,'Expectations not met, photos were misleading.','2024-04-21 17:27:30'),(16,36,38,58,5,'Mediocre service, inconvenient location.','2024-04-21 17:27:30'),(17,37,39,59,2,'Had issues with heating, very uncomfortable.','2024-04-21 17:27:30'),(18,38,40,60,6,'Okay for short stays, but not very welcoming.','2024-04-21 17:27:30'),(19,39,41,61,4,'Not as advertised, host was hard to reach.','2024-04-21 17:27:30'),(20,40,42,62,1,'Worst experience ever, very rude host.','2024-04-21 17:27:30');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_ticket`
--

DROP TABLE IF EXISTS `support_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_ticket` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `user_id` int NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closed_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'open',
  `resolution` text,
  PRIMARY KEY (`ticket_id`),
  KEY `booking_id` (`booking_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `support_ticket_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `support_ticket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_ticket`
--

LOCK TABLES `support_ticket` WRITE;
/*!40000 ALTER TABLE `support_ticket` DISABLE KEYS */;
INSERT INTO `support_ticket` VALUES (1,37,39,'Heating Issue in Accommodation','The heating system in the accommodation is not working, and it is very cold. I have contacted the host, but the issue has not been resolved.','2023-07-15 06:00:00','2023-07-22 13:00:00','closed','The host recognized the issue. The guest was given a 50% refund as compensation for the inconvenience.'),(21,1,23,'Request for Early Check-In','Can I check in at 10 AM instead of 2 PM?','2023-02-01 11:00:00',NULL,'pending customer reply',NULL),(22,3,24,'Lost Item','I think I left my watch in the bedroom. Could you please check?','2023-02-04 13:00:00',NULL,'open',NULL),(23,5,26,'Payment Issue','I was charged twice for my booking. Can you please look into this?','2023-02-07 15:00:00','2023-02-14 11:00:00','closed','The duplicate charge was a system error and has been refunded.'),(24,7,28,'Extra Guest Query','Is it possible to bring an extra guest?','2023-02-10 09:00:00',NULL,'open',NULL),(25,9,30,'Wifi Password Incorrect','The Wi-Fi password provided is not working.','2023-02-12 08:00:00','2023-02-12 14:00:00','closed','The correct Wi-Fi password was provided to the guest.'),(26,11,32,'Broken Air Conditioner','The air conditioning unit is not working properly.','2023-02-15 10:00:00',NULL,'working',NULL),(27,13,34,'Request for Property Review Removal','A recent review seems unfair and I would like it reviewed by your team.','2023-02-18 12:00:00',NULL,'pending customer reply',NULL),(28,15,36,'No Hot Water','There is no hot water in the shower.','2023-02-20 07:00:00','2023-02-23 13:00:00','closed','The issue was resolved by repairing the hot water heater.'),(29,17,38,'Inaccurate Listing Description','The listing description does not match the actual amenities provided.','2023-02-22 15:00:00',NULL,'open',NULL),(30,19,40,'Late Check-Out Request','Can I check out at 3 PM instead of 11 AM?','2023-02-25 16:00:00',NULL,'open',NULL),(31,21,42,'Missing Booking Confirmation','I have not received a booking confirmation email.','2023-02-28 12:00:00','2023-03-01 11:00:00','closed','Confirmation email was resent to the guest.'),(32,23,44,'Complaint About a Neighbor','The neighbor is very noisy. What can be done about this?','2023-03-02 18:00:00',NULL,'working',NULL),(33,25,46,'Request for Cleaning Service','Can the place be cleaned tomorrow?','2023-03-05 14:00:00',NULL,'pending customer reply',NULL),(34,27,48,'Parking Space Issue','The designated parking space is occupied by someone else.','2023-03-08 19:00:00',NULL,'working',NULL),(35,29,50,'Unresponsive Host','The host is not responding to my messages.','2023-03-10 17:00:00',NULL,'open',NULL),(36,31,52,'Pet Policy Clarification','Can you confirm if pets are allowed?','2023-03-12 10:00:00','2023-03-15 15:00:00','closed','Pets are allowed as per the listing details.'),(37,33,54,'Refund Request for Cancellation','I had to cancel due to an emergency. Can I get a refund?','2023-03-17 13:00:00',NULL,'pending customer reply',NULL),(38,35,56,'Report of Damage','There is some damage to the furniture that I wanted to report.','2023-03-20 08:00:00',NULL,'working',NULL),(39,40,60,'Feedback on Stay','I had a great experience,and would like to leave a review.','2023-03-23 11:00:00','2023-03-24 09:00:00','closed','Feedback noted and appreciated.');
/*!40000 ALTER TABLE `support_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address_id` int NOT NULL,
  `preferred_currency` char(3) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `failed_login_attempts` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `address_id` (`address_id`),
  KEY `preferred_currency` (`preferred_currency`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`preferred_currency`) REFERENCES `currencies` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Eve','Green','eve.green@example.com','654-321-7890',65,'EUR','evePwd789','2024-04-20 14:05:16',NULL,0,0),(2,'Sam','Violet','sam.violet@example.com','321-654-9870',46,'GBP','samPwd321','2024-04-20 14:05:16',NULL,0,0),(23,'John','Doe','john.doe@example.com','123-456-7890',38,'USD','password123','2024-04-20 14:09:59',NULL,0,1),(24,'Jane','Smith','jane.smith@example.com','321-654-9870',66,'EUR','password321','2024-04-20 14:09:59',NULL,0,1),(25,'Alice','Johnson','alice.johnson@example.com','231-564-1234',45,'GBP','aliceSecure123','2024-04-20 14:09:59',NULL,0,1),(26,'Bob','Brown','bob.brown@example.com','456-789-1230',42,'USD','bobPassword456','2024-04-20 14:09:59',NULL,0,1),(27,'Charlie','White','charlie.white@example.com','567-890-1234',50,'CAD','charliePass567','2024-04-20 14:09:59',NULL,0,1),(28,'Diana','Black','diana.black@example.com','678-901-2345',54,'AUD','dianaPass678','2024-04-20 14:09:59',NULL,0,1),(29,'Ethan','Green','ethan.green@example.com','789-012-3456',39,'USD','ethanPass789','2024-04-20 14:09:59',NULL,0,1),(30,'Fiona','Gray','fiona.gray@example.com','890-123-4567',68,'EUR','fionaPass890','2024-04-20 14:09:59',NULL,0,1),(31,'George','Blue','george.blue@example.com','901-234-5678',44,'GBP','georgePass901','2024-04-20 14:09:59',NULL,0,1),(32,'Hannah','Orange','hannah.orange@example.com','012-345-6789',40,'USD','hannahPass012','2024-04-20 14:09:59',NULL,0,1),(33,'Ivan','Pink','ivan.pink@example.com','123-456-7890',63,'EUR','ivanPass123','2024-04-20 14:09:59',NULL,0,1),(34,'Julia','Silver','julia.silver@example.com','234-567-8901',49,'CAD','juliaPass234','2024-04-20 14:09:59',NULL,0,1),(35,'Kevin','Gold','kevin.gold@example.com','345-678-9012',52,'AUD','kevinPass345','2024-04-20 14:09:59',NULL,0,1),(36,'Laura','Lime','laura.lime@example.com','456-789-0123',41,'USD','lauraPass456','2024-04-20 14:09:59',NULL,0,1),(37,'Mason','Magenta','mason.magenta@example.com','567-890-1234',72,'EUR','masonPass567','2024-04-20 14:09:59',NULL,0,1),(38,'Nora','Cyan','nora.cyan@example.com','678-901-2345',43,'GBP','noraPass678','2024-04-20 14:09:59',NULL,0,1),(39,'Oscar','Teal','oscar.teal@example.com','789-012-3456',69,'USD','oscarPass789','2024-04-20 14:09:59',NULL,0,1),(40,'Penny','Ivory','penny.ivory@example.com','890-123-4567',48,'CAD','pennyPass890','2024-04-20 14:09:59',NULL,0,1),(41,'Quinn','Khaki','quinn.khaki@example.com','901-234-5678',51,'AUD','quinnPass901','2024-04-20 14:09:59',NULL,0,1),(42,'Ruby','Coral','ruby.coral@example.com','012-345-6789',60,'USD','rubyPass012','2024-04-20 14:09:59',NULL,0,1),(43,'Alex','Marshall','alex.marshall@example.com','234-567-8912',59,'ZAR','alexPass234','2024-04-20 14:32:04',NULL,0,1),(44,'Beth','Cooper','beth.cooper@example.com','345-678-9013',60,'ZAR','bethPass345','2024-04-20 14:32:04',NULL,0,1),(45,'Cara','Wright','cara.wright@example.com','456-789-0124',61,'ZAR','caraPass456','2024-04-20 14:32:04',NULL,0,1),(46,'Dean','Taylor','dean.taylor@example.com','567-890-1235',62,'ZAR','deanPass567','2024-04-20 14:32:04',NULL,0,1),(47,'Ella','Moore','ella.moore@example.com','678-901-2346',55,'JPY','ellaPass678','2024-04-20 14:32:04',NULL,0,1),(48,'Finn','Clark','finn.clark@example.com','789-012-3457',56,'JPY','finnPass789','2024-04-20 14:32:04',NULL,0,1),(49,'Gina','Lewis','gina.lewis@example.com','890-123-4568',57,'JPY','ginaPass890','2024-04-20 14:32:04',NULL,0,1),(50,'Hugo','Roberts','hugo.roberts@example.com','901-234-5679',58,'JPY','hugoPass901','2024-04-20 14:32:04',NULL,0,1),(51,'Iris','James','iris.james@example.com','012-345-6780',71,'DKK','irisPass012','2024-04-20 14:32:04',NULL,0,1),(52,'Joel','Allen','joel.allen@example.com','123-456-7891',72,'DKK','joelPass123','2024-04-20 14:32:04',NULL,0,1),(53,'Kara','White','kara.white@example.com','234-567-8912',73,'DKK','karaPass234','2024-04-20 14:32:04',NULL,0,1),(54,'Liam','Harris','liam.harris@example.com','345-678-9013',74,'DKK','liamPass345','2024-04-20 14:32:04',NULL,0,1),(55,'Mila','Martin','mila.martin@example.com','456-789-0124',63,'EUR','milaPass456','2024-04-20 14:32:04',NULL,0,1),(56,'Noah','Thompson','noah.thompson@example.com','567-890-1235',64,'EUR','noahPass567','2024-04-20 14:32:04',NULL,0,1),(57,'Ollie','Garcia','ollie.garcia@example.com','678-901-2346',65,'EUR','olliePass678','2024-04-20 14:32:04',NULL,0,1),(58,'Pia','Martinez','pia.martinez@example.com','789-012-3457',66,'EUR','piaPass789','2024-04-20 14:32:04',NULL,0,1),(59,'Quinn','Davis','quinn.davis@example.com','890-123-4568',67,'EUR','quinnPass890','2024-04-20 14:32:04',NULL,0,1),(60,'Rosa','Lopez','rosa.lopez@example.com','901-234-5679',68,'EUR','rosaPass901','2024-04-20 14:32:04',NULL,0,1),(61,'Seth','Wilson','seth.wilson@example.com','012-345-6780',69,'EUR','sethPass012','2024-04-20 14:32:04',NULL,0,1),(62,'Tina','Anderson','tina.anderson@example.com','123-456-7891',70,'EUR','tinaPass123','2024-04-20 14:32:04',NULL,0,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_social_profiles`
--

DROP TABLE IF EXISTS `users_social_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_social_profiles` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `social_network_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `users_social_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_social_profiles`
--

LOCK TABLES `users_social_profiles` WRITE;
/*!40000 ALTER TABLE `users_social_profiles` DISABLE KEYS */;
INSERT INTO `users_social_profiles` VALUES (1,43,'Facebook','https://www.facebook.com/user43',1),(2,44,'Twitter','https://www.twitter.com/user44',0),(3,45,'Instagram','https://www.instagram.com/user45',1),(4,46,'LinkedIn','https://www.linkedin.com/in/user46',0),(5,47,'YouTube','https://www.youtube.com/user47',1),(6,48,'Pinterest','https://www.pinterest.com/user48',0),(7,49,'Snapchat','https://www.snapchat.com/add/user49',1),(8,50,'TikTok','https://www.tiktok.com/@user50',0),(9,51,'Reddit','https://www.reddit.com/user/user51',1),(10,52,'Tumblr','https://user52.tumblr.com',0),(11,53,'Flickr','https://www.flickr.com/people/user53',1),(12,54,'WeChat','https://wechat.com/user54',0),(13,55,'WhatsApp','https://wa.me/550',1),(14,56,'Instagram','https://www.instagram.com/user56',0),(15,57,'Twitter','https://www.twitter.com/user57',1),(16,58,'Facebook','https://www.facebook.com/user58',0),(17,59,'LinkedIn','https://www.linkedin.com/in/user59',1),(18,60,'YouTube','https://www.youtube.com/user60',0),(19,61,'Pinterest','https://www.pinterest.com/user61',1),(20,62,'Snapchat','https://www.snapchat.com/add/user62',0);
/*!40000 ALTER TABLE `users_social_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish_list_items`
--

DROP TABLE IF EXISTS `wish_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish_list_items` (
  `wish_list_id` int NOT NULL,
  `property_id` int NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wish_list_id`,`property_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `wish_list_items_ibfk_1` FOREIGN KEY (`wish_list_id`) REFERENCES `wish_lists` (`wish_list_id`),
  CONSTRAINT `wish_list_items_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish_list_items`
--

LOCK TABLES `wish_list_items` WRITE;
/*!40000 ALTER TABLE `wish_list_items` DISABLE KEYS */;
INSERT INTO `wish_list_items` VALUES (1,1,'2024-04-21 16:48:00'),(1,2,'2024-04-21 16:48:00'),(1,3,'2024-04-21 16:48:00'),(2,4,'2024-04-21 16:48:00'),(2,5,'2024-04-21 16:48:00'),(2,6,'2024-04-21 16:48:00'),(2,7,'2024-04-21 16:48:00'),(3,8,'2024-04-21 16:48:00'),(3,9,'2024-04-21 16:48:00'),(3,10,'2024-04-21 16:48:00'),(4,11,'2024-04-21 16:48:00'),(4,12,'2024-04-21 16:48:00'),(4,13,'2024-04-21 16:48:00'),(5,14,'2024-04-21 16:48:00'),(5,15,'2024-04-21 16:48:00'),(5,16,'2024-04-21 16:48:00'),(5,17,'2024-04-21 16:48:00'),(6,1,'2024-04-21 16:48:00'),(6,18,'2024-04-21 16:48:00'),(6,19,'2024-04-21 16:48:00'),(7,2,'2024-04-21 16:48:00'),(7,3,'2024-04-21 16:48:00'),(7,4,'2024-04-21 16:48:00'),(8,5,'2024-04-21 16:48:00'),(8,6,'2024-04-21 16:48:00'),(8,7,'2024-04-21 16:48:00'),(9,8,'2024-04-21 16:48:00'),(9,9,'2024-04-21 16:48:00'),(9,10,'2024-04-21 16:48:00'),(10,11,'2024-04-21 16:48:00'),(10,12,'2024-04-21 16:48:00'),(10,13,'2024-04-21 16:48:00'),(11,14,'2024-04-21 16:48:00'),(11,15,'2024-04-21 16:48:00'),(11,16,'2024-04-21 16:48:00'),(12,17,'2024-04-21 16:48:00'),(12,18,'2024-04-21 16:48:00'),(12,19,'2024-04-21 16:48:00'),(13,1,'2024-04-21 16:48:00'),(13,2,'2024-04-21 16:48:00'),(13,3,'2024-04-21 16:48:00'),(14,4,'2024-04-21 16:48:00'),(14,5,'2024-04-21 16:48:00'),(14,6,'2024-04-21 16:48:00'),(15,7,'2024-04-21 16:48:00'),(15,8,'2024-04-21 16:48:00'),(15,9,'2024-04-21 16:48:00'),(16,10,'2024-04-21 16:48:00'),(16,11,'2024-04-21 16:48:00'),(16,12,'2024-04-21 16:48:00'),(17,13,'2024-04-21 16:48:00'),(17,14,'2024-04-21 16:48:00'),(17,15,'2024-04-21 16:48:00'),(18,16,'2024-04-21 16:48:00'),(18,17,'2024-04-21 16:48:00'),(18,18,'2024-04-21 16:48:00'),(19,1,'2024-04-21 16:48:00'),(19,2,'2024-04-21 16:48:00'),(19,19,'2024-04-21 16:48:00');
/*!40000 ALTER TABLE `wish_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish_lists`
--

DROP TABLE IF EXISTS `wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish_lists` (
  `wish_list_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `wish_list_name` varchar(50) NOT NULL,
  `description` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`wish_list_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `wish_lists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish_lists`
--

LOCK TABLES `wish_lists` WRITE;
/*!40000 ALTER TABLE `wish_lists` DISABLE KEYS */;
INSERT INTO `wish_lists` VALUES (1,23,'Summer Escapes','Dream destinations for summer holidays',1),(2,24,'Winter Wonderlands','Cozy spots for winter breaks',1),(3,25,'Adventure Time','Exciting places for adventurous souls',1),(4,26,'Quiet Retreats','Peaceful getaways for relaxation',1),(5,27,'Luxury Living','Opulent and luxurious destinations',1),(6,28,'Budget Travels','Affordable vacation spots',1),(7,29,'Hidden Gems','Undiscovered places around the globe',1),(8,30,'Family Fun','Family-friendly vacation spots',1),(9,31,'Romantic Getaways','Perfect spots for a romantic retreat',1),(10,32,'Cultural Journeys','Rich cultural experiences',1),(11,33,'Foodie Adventures','Destinations known for amazing food',1),(12,34,'Artistic Inspirations','Places inspiring creativity and art',1),(13,35,'Historical Sites','Travel through history with these locations',1),(14,36,'Modern Marvels','Explore modern architecture and cities',1),(15,37,'Nature Lovers','Destinations for nature enthusiasts',1),(16,38,'Beach Holidays','Top beach destinations',1),(17,39,'Mountain Escapes','Best mountain locations for a getaway',1),(18,40,'Sporting Events','Travel to major sporting events around the world',1),(19,41,'Wellness Retreats','Focus on health and wellness',1),(20,42,'Shopping Spree','The best cities for shopping lovers',1);
/*!40000 ALTER TABLE `wish_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 21:19:36
