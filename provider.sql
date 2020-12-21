-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: provider
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `byod`
--

DROP TABLE IF EXISTS `byod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `byod` (
  `idBYOD` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `Price` float NOT NULL,
  `Internet` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `idProvider` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `Offers` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Talktime` datetime NOT NULL,
  `URL` multilinestring NOT NULL,
  `Mobilephones` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`idBYOD`,`idProvider`),
  UNIQUE KEY `idBYOD_UNIQUE` (`idBYOD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `byod`
--

LOCK TABLES `byod` WRITE;
/*!40000 ALTER TABLE `byod` DISABLE KEYS */;
/*!40000 ALTER TABLE `byod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `id` int DEFAULT NULL,
  `Phone Name` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `PhonePrice` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `Down Payment` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `idProvider` int NOT NULL,
  `InternetGB` int NOT NULL,
  `Talktime` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `Numofinstallments` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `URL` longtext COLLATE utf8mb4_bin NOT NULL,
  `Planprice` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`idProvider`,`InternetGB`,`Talktime`,`Numofinstallments`,`Phone Name`,`Planprice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (39,'ALCATEL1','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/1alcatel/Black/8/TR4','$65'),(13,'AppleiPhone 7','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/7iphone/Black/32/TR4','$65'),(31,'AppleiPhone 8 Plus','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k30lg/Grey/16/TR4','$65'),(18,'AppleiPhone XS','$1560','on a 2-year Diamond plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xsiphone/Grey/64/TR20','$65'),(6,'GooglePixel 3a','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/google3a/Black/64/TR4','$65'),(24,'GooglePixel 3a XL','$1560','on a 2-year Gold plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel3axl/White/64/TR6','$65'),(28,'GooglePixel 4','$1560','on a 2-year Platinum plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel4/Black/64/TR18','$65'),(23,'GooglePixel 4 XL','$1560','on a 2-year Diamond plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel4xl/White/64/TR20','$65'),(26,'HUAWEIMate 20 Pro','$1560','on a 2-year Platinum plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/mate20pro/Twilight/128/TR18','$65'),(8,'HUAWEIP30','$1560','on a 2-year Platinum plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/p30huawei/Black/128/TR18','$65'),(5,'HUAWEIP30 Lite','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/litep30huawei/Black/128/TR4','$65'),(21,'HUAWEIP30 Pro','$1560','on a 2-year Diamond plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/prop30huawei/Black/128/TR20','$65'),(1,'LGG8X ThinQ™','$1560','on a 2-year Platinum plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/g8xlg/Black/128/TR18','$65'),(36,'LGK20','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xpower3/Blue/16/TR4','$65'),(30,'LGK30','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k30lg/Grey/16/TR4','$65'),(37,'LGQ60','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k20lg/Black/16/TR4','$65'),(11,'LGQ70','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/q70/Black/64/TR4','$65'),(35,'LGX PowerTM 3','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a10e/Black/32/TR4','$65'),(32,'MotorolaG7 Play','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/8plusiphone/Grey/64/TR25','$65'),(38,'MotorolaMoto e6','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/q60lg/Black/64/TR4','$65'),(20,'MotorolaOne Vision','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/onevision/Bronze/128/TR4','$65'),(34,'SamsungGalaxy A10e','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/z557bl/Black/8/TR4','$65'),(7,'SamsungGalaxy A20','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a20/Black/32/TR4','$65'),(17,'SamsungGalaxy A50','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a50/Black/64/TR4','$65'),(12,'SamsungGalaxy A70','$1560','on a 2-year Gold plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a70/Black/128/TR6','$65'),(3,'SamsungGalaxy S10','$1560','on a 2-year Platinum plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10galaxy/Black/128/TR18','$65'),(19,'SamsungGalaxy S10e','$1560','on a 2-year Platinum plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10e/Black/128/TR18','$65'),(9,'SamsungGalaxy S9','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/gs9/Grey/64/TR4','$65'),(33,'ZTEZ557','$1560','on a 2-year Silver plan.',2,1,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/motog7play/Blue/32/TR4','$65'),(15,'SamsungGalaxy S20 Ultra 5G','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$1,050','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20ultra/Grey/128/TR25','$65'),(10,'AppleiPhone 8','$1560','on a 2-year Diamond plan.',2,1,'UN','$120','https://www.virginmobile.ca/en/phones/phone-details.html#!/8iphone/Grey/64/TR20','$65'),(22,'AppleiPhone 11','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$205','https://www.virginmobile.ca/en/phones/phone-details.html#!/iphone11/Green/64/TR25','$65'),(4,'AppleiPhone XR','$1560','on a 2-year Diamond plan.',2,1,'UN','$240','https://www.virginmobile.ca/en/phones/phone-details.html#!/xriphone/White/64/TR20','$65'),(3,'SamsungGalaxy S10','$1800','on a 2-year Platinum plan.',2,1,'UN','$240','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10galaxy/Black/128/TR18','$75'),(27,'SamsungGalaxy Note10+','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$280','https://www.virginmobile.ca/en/phones/phone-details.html#!/notes10plus/Black/256/TR25','$65'),(29,'SamsungGalaxy S10+','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$40','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10plus/Black/128/TR25','$65'),(16,'AppleiPhone 11 Pro','$1560','on a 2-year Diamond plan.',2,1,'UN','$615','https://www.virginmobile.ca/en/phones/phone-details.html#!/11applepro/midnightgreen/64/TR20','$65'),(25,'AppleiPhone 11 Pro Max','$1560','on a 2-year Diamond plan.',2,1,'UN','$745','https://www.virginmobile.ca/en/phones/phone-details.html#!/11promax/midnightgreen/64/TR20','$65'),(14,'SamsungGalaxy S20+ 5G','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$780','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20plus/Black/128/TR25','$65'),(2,'SamsungGalaxy S20 5G','$1560','on a 2-year Diamond Plus plan.',2,1,'UN','$850','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20/Blue/128/TR25','$65'),(39,'ALCATEL1','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/1alcatel/Black/8/TR4','$75'),(22,'AppleiPhone 11','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/iphone11/Green/64/TR25','$75'),(16,'AppleiPhone 11 Pro','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/11applepro/midnightgreen/64/TR20','$75'),(25,'AppleiPhone 11 Pro Max','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/11promax/midnightgreen/64/TR20','$75'),(13,'AppleiPhone 7','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/7iphone/Black/32/TR4','$75'),(10,'AppleiPhone 8','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/8iphone/Grey/64/TR20','$75'),(31,'AppleiPhone 8 Plus','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k30lg/Grey/16/TR4','$75'),(4,'AppleiPhone XR','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xriphone/White/64/TR20','$75'),(18,'AppleiPhone XS','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xsiphone/Grey/64/TR20','$75'),(6,'GooglePixel 3a','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/google3a/Black/64/TR4','$75'),(24,'GooglePixel 3a XL','$1800','on a 2-year Gold plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel3axl/White/64/TR6','$75'),(28,'GooglePixel 4','$1800','on a 2-year Platinum plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel4/Black/64/TR18','$75'),(23,'GooglePixel 4 XL','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel4xl/White/64/TR20','$75'),(26,'HUAWEIMate 20 Pro','$1800','on a 2-year Platinum plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/mate20pro/Twilight/128/TR18','$75'),(8,'HUAWEIP30','$1800','on a 2-year Platinum plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/p30huawei/Black/128/TR18','$75'),(5,'HUAWEIP30 Lite','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/litep30huawei/Black/128/TR4','$75'),(21,'HUAWEIP30 Pro','$1800','on a 2-year Diamond plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/prop30huawei/Black/128/TR20','$75'),(1,'LGG8X ThinQ™','$1800','on a 2-year Platinum plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/g8xlg/Black/128/TR18','$75'),(36,'LGK20','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xpower3/Blue/16/TR4','$75'),(30,'LGK30','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k30lg/Grey/16/TR4','$75'),(37,'LGQ60','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k20lg/Black/16/TR4','$75'),(11,'LGQ70','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/q70/Black/64/TR4','$75'),(35,'LGX PowerTM 3','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a10e/Black/32/TR4','$75'),(32,'MotorolaG7 Play','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/8plusiphone/Grey/64/TR25','$75'),(38,'MotorolaMoto e6','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/q60lg/Black/64/TR4','$75'),(20,'MotorolaOne Vision','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/onevision/Bronze/128/TR4','$75'),(34,'SamsungGalaxy A10e','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/z557bl/Black/8/TR4','$75'),(7,'SamsungGalaxy A20','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a20/Black/32/TR4','$75'),(17,'SamsungGalaxy A50','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a50/Black/64/TR4','$75'),(12,'SamsungGalaxy A70','$1800','on a 2-year Gold plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a70/Black/128/TR6','$75'),(27,'SamsungGalaxy Note10+','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/notes10plus/Black/256/TR25','$75'),(3,'SamsungGalaxy S10','$1872','on a 2-year Platinum plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10galaxy/Black/128/TR18','$78'),(29,'SamsungGalaxy S10+','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10plus/Black/128/TR25','$75'),(19,'SamsungGalaxy S10e','$1800','on a 2-year Platinum plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10e/Black/128/TR18','$75'),(15,'SamsungGalaxy S20 Ultra 5G','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20ultra/Grey/128/TR25','$75'),(14,'SamsungGalaxy S20+ 5G','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20plus/Black/128/TR25','$75'),(9,'SamsungGalaxy S9','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/gs9/Grey/64/TR4','$75'),(33,'ZTEZ557','$1800','on a 2-year Silver plan.',2,2,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/motog7play/Blue/32/TR4','$75'),(2,'SamsungGalaxy S20 5G','$1800','on a 2-year Diamond Plus plan.',2,2,'UN','$650','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20/Blue/128/TR25','$75'),(39,'ALCATEL1','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/1alcatel/Black/8/TR4','$78'),(22,'AppleiPhone 11','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/iphone11/Green/64/TR25','$78'),(16,'AppleiPhone 11 Pro','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/11applepro/midnightgreen/64/TR20','$78'),(25,'AppleiPhone 11 Pro Max','$1872','on a 2-year Diamond plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/11promax/midnightgreen/64/TR20','$78'),(13,'AppleiPhone 7','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/7iphone/Black/32/TR4','$78'),(10,'AppleiPhone 8','$1872','on a 2-year Diamond plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/8iphone/Grey/64/TR20','$78'),(31,'AppleiPhone 8 Plus','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k30lg/Grey/16/TR4','$78'),(4,'AppleiPhone XR','$1872','on a 2-year Diamond plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xriphone/White/64/TR20','$78'),(18,'AppleiPhone XS','$1872','on a 2-year Diamond plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xsiphone/Grey/64/TR20','$78'),(6,'GooglePixel 3a','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/google3a/Black/64/TR4','$78'),(24,'GooglePixel 3a XL','$1872','on a 2-year Gold plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel3axl/White/64/TR6','$78'),(28,'GooglePixel 4','$1872','on a 2-year Platinum plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel4/Black/64/TR18','$78'),(23,'GooglePixel 4 XL','$1872','on a 2-year Diamond plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/pixel4xl/White/64/TR20','$78'),(26,'HUAWEIMate 20 Pro','$1872','on a 2-year Platinum plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/mate20pro/Twilight/128/TR18','$78'),(8,'HUAWEIP30','$1872','on a 2-year Platinum plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/p30huawei/Black/128/TR18','$78'),(5,'HUAWEIP30 Lite','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/litep30huawei/Black/128/TR4','$78'),(21,'HUAWEIP30 Pro','$1872','on a 2-year Diamond plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/prop30huawei/Black/128/TR20','$78'),(1,'LGG8X ThinQ™','$1872','on a 2-year Platinum plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/g8xlg/Black/128/TR18','$78'),(36,'LGK20','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/xpower3/Blue/16/TR4','$78'),(30,'LGK30','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k30lg/Grey/16/TR4','$78'),(37,'LGQ60','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/k20lg/Black/16/TR4','$78'),(11,'LGQ70','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/q70/Black/64/TR4','$78'),(35,'LGX PowerTM 3','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a10e/Black/32/TR4','$78'),(32,'MotorolaG7 Play','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/8plusiphone/Grey/64/TR25','$78'),(38,'MotorolaMoto e6','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/q60lg/Black/64/TR4','$78'),(20,'MotorolaOne Vision','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/onevision/Bronze/128/TR4','$78'),(34,'SamsungGalaxy A10e','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/z557bl/Black/8/TR4','$78'),(7,'SamsungGalaxy A20','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a20/Black/32/TR4','$78'),(17,'SamsungGalaxy A50','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a50/Black/64/TR4','$78'),(12,'SamsungGalaxy A70','$1872','on a 2-year Gold plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/a70/Black/128/TR6','$78'),(27,'SamsungGalaxy Note10+','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/notes10plus/Black/256/TR25','$78'),(29,'SamsungGalaxy S10+','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10plus/Black/128/TR25','$78'),(19,'SamsungGalaxy S10e','$1872','on a 2-year Platinum plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s10e/Black/128/TR18','$78'),(15,'SamsungGalaxy S20 Ultra 5G','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20ultra/Grey/128/TR25','$78'),(14,'SamsungGalaxy S20+ 5G','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20plus/Black/128/TR25','$78'),(9,'SamsungGalaxy S9','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/gs9/Grey/64/TR4','$78'),(33,'ZTEZ557','$1872','on a 2-year Silver plan.',2,4,'UN','$0','https://www.virginmobile.ca/en/phones/phone-details.html#!/motog7play/Blue/32/TR4','$78'),(2,'SamsungGalaxy S20 5G','$1872','on a 2-year Diamond Plus plan.',2,4,'UN','$520','https://www.virginmobile.ca/en/phones/phone-details.html#!/s20/Blue/128/TR25','$78');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `idProvider` int NOT NULL,
  `ProviderName` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`idProvider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Bell'),(2,'Virgin');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `Cityid` int DEFAULT NULL,
  `City` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `Provider` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `Reviews` int NOT NULL,
  `Username` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`City`,`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (14,'London','Virgin',3,'jello@gmail.com'),(9,'London','Roger',5,'neo34@gmail.com'),(4,'London','Bell',4,'tyui@gmail.com'),(7,'Mississauga','Roger',2,'getout56@gmail.com'),(12,'Mississauga','Virgin',2,'new1@gmail.com'),(2,'Mississauga','Bell',5,'umang332@gmail.com'),(13,'Ottawa','Virgin',4,'ello@gmail.com'),(3,'Ottawa','Bell',4,'mpokl@gmail.com'),(8,'Ottawa','Roger',4,'testit@gmail.com'),(11,'Toronto','Virgin',3,'fury@gmail.com'),(1,'Toronto','Bell',5,'jaimin@gmail.com'),(6,'Toronto','Roger',3,'kesha@gmail.com'),(15,'Windsor','Virgin',3,'harsh@gmail.com'),(10,'Windsor','Roger',4,'katty889@gmail.com'),(5,'Windsor','Bell',5,'weros@gmail.com');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 15:58:37
