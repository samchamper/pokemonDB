CREATE DATABASE  IF NOT EXISTS `pokemon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `pokemon`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pokemon
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventory` (
  `store_loc_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `store_sells_for_price` int(11) NOT NULL,
  `store_buys_for_price` text NOT NULL,
  `number_in_stock` int(11) NOT NULL,
  KEY `item_id_idx` (`item_id`),
  KEY `loc_id_idx` (`store_loc_id`),
  CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `loc_id` FOREIGN KEY (`store_loc_id`) REFERENCES `town` (`town_loc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (11,1,374,'187',0),(11,2,114,'57',29),(11,3,35,'17',0),(11,4,421,'210',2),(11,5,473,'236',4),(11,6,297,'148',0),(11,7,217,'108',0),(11,8,260,'130',0),(11,9,191,'95',0),(11,10,43,'21',0),(11,11,345,'172',8),(11,12,218,'109',0),(11,13,395,'197',0),(11,14,78,'39',0),(11,15,223,'111',2),(11,16,2762,'1381',2),(11,17,118,'59',8),(11,18,100,'50',0),(11,19,393,'196',2),(11,20,52,'26',2),(11,21,318,'159',0),(11,22,10,'5',31),(11,23,10,'5',0),(11,24,223,'111',0),(11,25,10,'5',0),(11,26,5479,'2739',16),(11,27,163,'81',0),(11,28,152,'76',0),(11,29,268,'134',0),(11,30,180,'90',40),(11,31,63,'31',5),(11,32,180,'90',0),(11,33,1837,'918',23),(11,34,132,'66',25),(11,35,274,'137',9),(11,36,157,'78',2),(11,37,42,'21',0),(11,38,6373,'3186',0),(11,39,317,'158',0),(11,40,207,'103',0),(11,41,24,'12',25),(11,42,145,'72',0),(11,43,111,'55',0),(11,44,10,'5',0),(11,45,214,'107',2),(11,46,334,'167',33),(11,47,20,'10',0),(11,48,72,'36',31),(11,49,99,'49',0),(11,50,276,'138',0),(11,51,174,'87',0),(11,52,297,'148',0),(11,53,19,'9',2),(11,54,257,'128',30),(11,55,293,'146',0),(11,56,13,'6',0),(11,57,220,'110',0),(11,58,205,'102',30),(11,59,286,'143',0),(11,60,226,'113',2),(11,61,261,'130',3),(11,62,147,'73',16),(11,63,4963,'2481',0),(11,64,109,'54',42),(11,65,243,'121',0),(11,66,175,'87',21),(11,67,80,'40',2),(11,68,470,'235',9),(11,69,363,'181',12),(11,70,55,'27',0),(11,71,17,'8',27),(11,72,26,'13',31),(11,73,360,'180',29),(11,74,10,'5',9),(11,75,231,'115',0),(11,76,128,'64',0),(11,77,720,'360',0),(11,78,267,'133',0),(11,79,306,'153',4),(11,80,256,'128',0),(11,81,288,'144',34),(11,82,257,'128',48),(11,83,114,'57',0),(11,84,28,'14',4),(11,85,10,'5',0),(11,86,184,'92',0),(11,87,249,'124',0),(11,88,356,'178',0),(11,89,303,'151',0),(11,90,29,'14',15),(11,91,287,'143',19),(11,92,302,'151',0),(11,93,272,'136',26),(11,94,270,'135',0),(11,95,124,'62',13),(11,96,164,'82',58),(11,97,126,'63',0),(11,98,188,'94',0),(11,99,144,'72',8),(11,100,42,'21',0),(11,101,10,'5',3),(11,102,279,'139',0),(11,103,376,'188',2),(11,104,274,'137',7),(11,105,114,'57',0),(11,106,22,'11',0),(11,107,279,'139',0),(11,108,218,'109',2),(11,109,164,'82',32),(11,110,145,'72',0),(11,111,174,'87',55),(11,112,380,'190',2),(11,113,248,'124',13),(11,114,294,'147',24),(11,115,28,'14',0),(11,116,25,'12',0),(11,117,504,'252',34),(11,118,1064,'532',0),(11,119,45,'22',0),(11,120,33,'16',42),(11,121,204,'102',36),(11,122,3325,'1662',0),(11,123,125,'62',0),(11,124,316,'158',32),(11,125,181,'90',35),(11,126,10,'5',0),(11,127,10,'5',0),(11,128,73,'36',0),(11,129,48,'24',19),(11,130,299,'149',0),(11,131,10,'5',21),(11,132,1977,'988',2),(11,133,286,'143',2),(11,134,326,'163',38),(11,135,394,'197',26),(11,136,171,'85',34),(11,137,10,'5',24),(11,138,194,'97',23),(11,139,48,'24',0),(11,140,273,'136',0),(11,141,222,'111',0),(11,142,277,'138',0),(11,143,2139,'1069',0),(11,144,151,'75',0),(11,145,268,'134',0),(11,146,330,'165',25),(11,147,72,'36',0),(11,148,143,'71',31),(11,149,151,'75',0),(11,150,165,'82',0),(11,151,10,'5',0),(11,152,4042,'2021',0),(11,153,1059,'529',2),(11,154,19,'9',5),(11,155,131,'65',0),(11,156,79,'39',0),(11,157,24,'12',0),(11,158,163,'81',0),(11,159,329,'164',0),(11,160,107,'53',0),(11,161,25,'12',0),(11,162,85,'42',25),(11,163,264,'132',0),(11,164,180,'90',0),(11,165,261,'130',0),(11,166,127,'63',0),(11,167,1869,'934',0),(11,168,171,'85',35),(11,169,209,'104',0),(11,170,245,'122',21),(11,171,194,'97',0),(11,172,206,'103',0),(11,173,1103,'551',0),(11,174,1209,'604',25),(11,175,2887,'1443',0),(11,176,101,'50',0),(11,177,114,'57',0),(11,178,228,'114',0),(11,179,140,'70',0),(11,180,298,'149',40),(11,181,170,'85',0),(11,182,20,'10',0),(11,183,3490,'1745',33),(11,184,281,'140',0),(11,185,225,'112',0),(11,186,165,'82',0),(11,187,323,'161',0),(11,188,222,'111',2),(11,189,411,'205',0),(11,190,197,'98',15),(11,191,131,'65',2),(11,192,113,'56',2),(11,193,21,'10',0),(11,194,24,'12',47),(11,195,216,'108',0),(11,196,42,'21',0),(11,197,151,'75',0),(11,198,122,'61',32),(11,199,135,'67',19),(11,200,10,'5',0),(11,201,279,'139',3),(11,202,172,'86',19),(11,203,308,'154',0),(11,204,22,'11',0),(11,205,285,'142',14),(11,206,4902,'2451',6),(11,207,15,'7',0),(11,208,210,'105',49),(11,209,107,'53',9),(11,210,2538,'1269',2),(11,211,5941,'2970',0),(11,212,216,'108',0),(11,213,107,'53',0),(11,214,251,'125',2),(11,215,255,'127',0),(11,216,166,'83',0),(11,217,18,'9',2),(12,1,332,'166',26),(12,2,262,'131',0),(12,3,35,'17',0),(12,4,274,'137',2),(12,5,67,'33',0),(12,6,248,'124',40),(12,7,222,'111',0),(12,8,148,'74',0),(12,9,323,'161',0),(12,10,319,'159',0),(12,11,364,'182',25),(12,12,217,'108',0),(12,13,302,'151',0),(12,14,10,'5',0),(12,15,148,'74',0),(12,16,250,'125',0),(12,17,104,'52',0),(12,18,244,'122',0),(12,19,270,'135',0),(12,20,96,'48',0),(12,21,196,'98',0),(12,22,164,'82',0),(12,23,303,'151',0),(12,24,36,'18',0),(12,25,140,'70',0),(12,26,165,'82',0),(12,27,297,'148',0),(12,28,327,'163',14),(12,29,243,'121',0),(12,30,2567,'1283',0),(12,31,107,'53',0),(12,32,263,'131',0),(12,33,214,'107',0),(12,34,210,'105',0),(12,35,226,'113',39),(12,36,3660,'1830',39),(12,37,256,'128',0),(12,38,175,'87',0),(12,39,287,'143',41),(12,40,241,'120',0),(12,41,10,'5',0),(12,42,214,'107',0),(12,43,133,'66',0),(12,44,199,'99',0),(12,45,166,'83',0),(12,46,3083,'1541',0),(12,47,10,'5',0),(12,48,229,'114',0),(12,49,418,'209',0),(12,50,144,'72',0),(12,51,5863,'2931',0),(12,52,348,'174',5),(12,53,162,'81',2),(12,54,180,'90',0),(12,55,250,'125',0),(12,56,10,'5',0),(12,57,1955,'977',0),(12,58,268,'134',33),(12,59,217,'108',0),(12,60,18,'9',3),(12,61,156,'78',0),(12,62,327,'163',0),(12,63,124,'62',0),(12,64,127,'63',0),(12,65,80,'40',0),(12,66,17,'8',0),(12,67,236,'118',0),(12,68,133,'66',0),(12,69,54,'27',32),(12,70,286,'143',2),(12,71,276,'138',25),(12,72,321,'160',0),(12,73,10,'5',0),(12,74,18,'9',0),(12,75,1249,'624',0),(12,76,2563,'1281',0),(12,77,58,'29',8),(12,78,16,'8',0),(12,79,266,'133',0),(12,80,10,'5',41),(12,81,4606,'2303',0),(12,82,10,'5',46),(12,83,340,'170',0),(12,84,73,'36',40),(12,85,188,'94',0),(12,86,159,'79',0),(12,87,198,'99',0),(12,88,142,'71',0),(12,89,10,'5',0),(12,90,182,'91',0),(12,91,1608,'804',0),(12,92,340,'170',0),(12,93,141,'70',0),(12,94,279,'139',0),(12,95,3870,'1935',0),(12,96,298,'149',21),(12,97,47,'23',0),(12,98,133,'66',0),(12,99,2942,'1471',0),(12,100,77,'38',0),(12,101,21,'10',0),(12,102,3153,'1576',0),(12,103,395,'197',41),(12,104,46,'23',14),(12,105,231,'115',31),(12,106,2312,'1156',0),(12,107,157,'78',0),(12,108,250,'125',0),(12,109,298,'149',0),(12,110,157,'78',0),(12,111,170,'85',38),(12,112,207,'103',16),(12,113,299,'149',0),(12,114,148,'74',0),(12,115,225,'112',0),(12,116,10,'5',0),(12,117,245,'122',0),(12,118,24,'12',10),(12,119,562,'281',28),(12,120,231,'115',0),(12,121,296,'148',0),(12,122,328,'164',0),(12,123,213,'106',8),(12,124,352,'176',0),(12,125,263,'131',0),(12,126,217,'108',0),(12,127,99,'49',0),(12,128,42,'21',5),(12,129,278,'139',0),(12,130,275,'137',0),(12,131,98,'49',0),(12,132,182,'91',0),(12,133,255,'127',0),(12,134,125,'62',0),(12,135,237,'118',0),(12,136,2345,'1172',0),(12,137,53,'26',25),(12,138,36,'18',0),(12,139,136,'68',0),(12,140,2208,'1104',0),(12,141,266,'133',29),(12,142,98,'49',0),(12,143,161,'80',0),(12,144,103,'51',0),(12,145,81,'40',0),(12,146,122,'61',33),(12,147,232,'116',0),(12,148,232,'116',0),(12,149,202,'101',0),(12,150,32,'16',0),(12,151,2246,'1123',0),(12,152,259,'129',2),(12,153,1368,'684',0),(12,154,369,'184',0),(12,155,271,'135',0),(12,156,250,'125',30),(12,157,1291,'645',0),(12,158,173,'86',12),(12,159,22,'11',0),(12,160,14,'7',0),(12,161,10,'5',0),(12,162,28,'14',0),(12,163,114,'57',0),(12,164,239,'119',2),(12,165,10,'5',0),(12,166,289,'144',2),(12,167,64,'32',63),(12,168,212,'106',0),(12,169,304,'152',0),(12,170,213,'106',0),(12,171,85,'42',0),(12,172,1462,'731',0),(12,173,10,'5',0),(12,174,415,'207',0),(12,175,315,'157',0),(12,176,329,'164',0),(12,177,343,'171',0),(12,178,10,'5',46),(12,179,260,'130',0),(12,180,311,'155',37),(12,181,106,'53',0),(12,182,137,'68',16),(12,183,230,'115',0),(12,184,27,'13',0),(12,185,236,'118',0),(12,186,328,'164',12),(12,187,289,'144',28),(12,188,219,'109',41),(12,189,80,'40',0),(12,190,167,'83',0),(12,191,365,'182',0),(12,192,23,'11',0),(12,193,5155,'2577',0),(12,194,77,'38',0),(12,195,197,'98',0),(12,196,316,'158',0),(12,197,84,'42',0),(12,198,341,'170',0),(12,199,258,'129',21),(12,200,383,'191',0),(12,201,301,'150',0),(12,202,163,'81',0),(12,203,20,'10',0),(12,204,145,'72',2),(12,205,89,'44',26),(12,206,258,'129',0),(12,207,10,'5',21),(12,208,293,'146',0),(12,209,181,'90',0),(12,210,266,'133',0),(12,211,261,'130',0),(12,212,62,'31',0),(12,213,228,'114',0),(12,214,2912,'1456',0),(12,215,237,'118',0),(12,216,280,'140',13),(12,217,142,'71',0),(15,1,256,'128',0),(15,2,208,'104',0),(15,3,71,'35',0),(15,4,247,'123',0),(15,5,334,'167',0),(15,6,235,'117',0),(15,7,239,'119',12),(15,8,4449,'2224',0),(15,9,1245,'622',29),(15,10,6103,'3051',0),(15,11,1813,'906',22),(15,12,188,'94',0),(15,13,215,'107',22),(15,14,2120,'1060',0),(15,15,252,'126',0),(15,16,214,'107',0),(15,17,173,'86',0),(15,18,389,'194',18),(15,19,56,'28',20),(15,20,287,'143',0),(15,21,51,'25',0),(15,22,54,'27',0),(15,23,210,'105',0),(15,24,227,'113',0),(15,25,222,'111',0),(15,26,306,'153',0),(15,27,295,'147',0),(15,28,10,'5',0),(15,29,36,'18',0),(15,30,271,'135',0),(15,31,241,'120',0),(15,32,118,'59',31),(15,33,18,'9',22),(15,34,24,'12',0),(15,35,137,'68',0),(15,36,167,'83',0),(15,37,232,'116',0),(15,38,246,'123',2),(15,39,3897,'1948',0),(15,40,245,'122',0),(15,41,142,'71',0),(15,42,109,'54',0),(15,43,92,'46',0),(15,44,317,'158',0),(15,45,177,'88',0),(15,46,277,'138',0),(15,47,33,'16',0),(15,48,98,'49',0),(15,49,140,'70',0),(15,50,1784,'892',33),(15,51,5498,'2749',0),(15,52,256,'128',0),(15,53,6349,'3174',21),(15,54,314,'157',0),(15,55,41,'20',0),(15,56,150,'75',0),(15,57,117,'58',35),(15,58,217,'108',35),(15,59,409,'204',16),(15,60,10,'5',0),(15,61,128,'64',0),(15,62,234,'117',0),(15,63,2780,'1390',15),(15,64,2994,'1497',0),(15,65,65,'32',0),(15,66,278,'139',0),(15,67,184,'92',0),(15,68,188,'94',0),(15,69,334,'167',0),(15,70,109,'54',0),(15,71,2678,'1339',0),(15,72,117,'58',0),(15,73,228,'114',0),(15,74,131,'65',0),(15,75,39,'19',0),(15,76,290,'145',0),(15,77,204,'102',0),(15,78,157,'78',0),(15,79,213,'106',0),(15,80,265,'132',0),(15,81,252,'126',0),(15,82,242,'121',17),(15,83,102,'51',0),(15,84,1014,'507',0),(15,85,415,'207',0),(15,86,52,'26',0),(15,87,540,'270',0),(15,88,282,'141',0),(15,89,1984,'992',0),(15,90,129,'64',0),(15,91,4341,'2170',26),(15,92,10,'5',0),(15,93,121,'60',27),(15,94,176,'88',0),(15,95,193,'96',85),(15,96,163,'81',0),(15,97,168,'84',0),(15,98,191,'95',0),(15,99,34,'17',0),(15,100,834,'417',0),(15,101,124,'62',0),(15,102,295,'147',12),(15,103,186,'93',0),(15,104,233,'116',0),(15,105,121,'60',0),(15,106,126,'63',23),(15,107,73,'36',0),(15,108,197,'98',0),(15,109,246,'123',0),(15,110,342,'171',30),(15,111,372,'186',0),(15,112,243,'121',0),(15,113,145,'72',0),(15,114,10,'5',20),(15,115,117,'58',0),(15,116,1933,'966',12),(15,117,27,'13',0),(15,118,247,'123',0),(15,119,238,'119',0),(15,120,163,'81',2),(15,121,183,'91',0),(15,122,205,'102',0),(15,123,1589,'794',0),(15,124,322,'161',0),(15,125,82,'41',0),(15,126,138,'69',0),(15,127,797,'398',0),(15,128,295,'147',0),(15,129,131,'65',0),(15,130,182,'91',0),(15,131,169,'84',0),(15,132,202,'101',40),(15,133,227,'113',0),(15,134,248,'124',0),(15,135,125,'62',16),(15,136,294,'147',54),(15,137,241,'120',0),(15,138,143,'71',0),(15,139,4108,'2054',0),(15,140,74,'37',0),(15,141,390,'195',0),(15,142,201,'100',0),(15,143,248,'124',37),(15,144,275,'137',0),(15,145,138,'69',0),(15,146,400,'200',7),(15,147,203,'101',0),(15,148,33,'16',24),(15,149,21,'10',0),(15,150,128,'64',0),(15,151,10,'5',20),(15,152,125,'62',0),(15,153,50,'25',0),(15,154,462,'231',0),(15,155,132,'66',0),(15,156,368,'184',0),(15,157,201,'100',0),(15,158,66,'33',0),(15,159,318,'159',0),(15,160,198,'99',0),(15,161,180,'90',0),(15,162,249,'124',0),(15,163,315,'157',0),(15,164,155,'77',0),(15,165,17,'8',0),(15,166,128,'64',25),(15,167,105,'52',0),(15,168,22,'11',0),(15,169,92,'46',0),(15,170,247,'123',2),(15,171,156,'78',53),(15,172,47,'23',0),(15,173,98,'49',0),(15,174,289,'144',0),(15,175,264,'132',0),(15,176,41,'20',0),(15,177,2978,'1489',0),(15,178,153,'76',0),(15,179,222,'111',8),(15,180,195,'97',0),(15,181,313,'156',0),(15,182,308,'154',0),(15,183,184,'92',0),(15,184,88,'44',0),(15,185,543,'271',0),(15,186,10,'5',0),(15,187,265,'132',0),(15,188,10,'5',0),(15,189,272,'136',30),(15,190,189,'94',0),(15,191,17,'8',66),(15,192,88,'44',0),(15,193,201,'100',0),(15,194,317,'158',0),(15,195,169,'84',0),(15,196,162,'81',0),(15,197,236,'118',0),(15,198,251,'125',5),(15,199,267,'133',0),(15,200,6029,'3014',0),(15,201,1059,'529',0),(15,202,131,'65',0),(15,203,164,'82',0),(15,204,202,'101',0),(15,205,324,'162',0),(15,206,97,'48',0),(15,207,299,'149',0),(15,208,2989,'1494',0),(15,209,194,'97',0),(15,210,2565,'1282',0),(15,211,302,'151',0),(15,212,151,'75',16),(15,213,13,'6',0),(15,214,353,'176',43),(15,215,170,'85',0),(15,216,45,'22',0),(15,217,724,'362',0);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `identifier` text,
  `short_effect` text,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'master-ball','Catches a wild Pokémon every time.'),(2,'ultra-ball','Tries to catch a wild Pokémon.  Success rate is 2×.'),(3,'great-ball','Tries to catch a wild Pokémon.  Success rate is 1.5×.'),(4,'poke-ball','Tries to catch a wild Pokémon.'),(5,'safari-ball','Tries to catch a wild Pokémon in the Great Marsh or Safari Zone.  Success rate is 1.5×.'),(6,'net-ball','Tries to catch a wild Pokémon.  Success rate is 3× for water and bug Pokémon.'),(7,'dive-ball','Tries to catch a wild Pokémon. Success rate is 3.5× when underwater, fishing, or surfing.'),(8,'nest-ball','Tries to catch a wild Pokémon.  Success rate is 3.9× for level 1 Pokémon, and drops steadily to 1× at level 30.'),(9,'repeat-ball','Tries to catch a wild Pokémon.  Success rate is 3× for previously-caught Pokémon.'),(10,'timer-ball','Tries to catch a wild Pokémon. Success rate increases by 0.1× (Gen V: 0.3×) every turn, to a max of 4×.'),(11,'luxury-ball','Tries to catch a wild Pokémon.  Caught Pokémon start with 200 happiness.'),(12,'premier-ball','Tries to catch a wild Pokémon.'),(13,'dusk-ball','Tries to catch a wild Pokémon.  Success rate is 3.5× at night and in caves.'),(14,'heal-ball','Tries to catch a wild Pokémon.  Caught Pokémon are immediately healed.'),(15,'quick-ball','Tries to catch a wild Pokémon. Success rate is 4× (Gen V: 5×), but only on the first turn.'),(16,'cherish-ball','Tries to catch a wild Pokémon.'),(17,'potion','Restores 20 HP.'),(18,'antidote','Cures poison.'),(19,'burn-heal','Cures a burn.'),(20,'ice-heal','Cures freezing.'),(21,'awakening','Cures sleep.'),(22,'paralyze-heal','Cures paralysis.'),(23,'full-restore','Restores HP to full and cures any status ailment and confusion.'),(24,'max-potion','Restores HP to full.'),(25,'hyper-potion','Restores 200 HP.'),(26,'super-potion','Restores 50 HP.'),(27,'full-heal','Cures any status ailment and confusion.'),(28,'revive','Revives with half HP.'),(29,'max-revive','Revives with full HP.'),(30,'fresh-water','Restores 50 HP.'),(31,'soda-pop','Restores 60 HP.'),(32,'lemonade','Restores 80 HP.'),(33,'moomoo-milk','Restores 100 HP.'),(34,'energy-powder','Restores 50 HP, but lowers happiness.'),(35,'energy-root','Restores 200 HP, but lowers happiness.'),(36,'heal-powder','Cures any status ailment, but lowers happiness.'),(37,'revival-herb','Revives with full HP, but lowers happiness.'),(38,'ether','Restores 10 PP for one move.'),(39,'max-ether','Restores PP to full for one move.'),(40,'elixir','Restores 10 PP for each move.'),(41,'max-elixir','Restores PP to full for each move.'),(42,'lava-cookie','Cures any status ailment and confusion.'),(43,'berry-juice','Restores 20 HP.'),(44,'sacred-ash','Revives all fainted Pokémon with full HP.'),(45,'hp-up','Raises HP effort and happiness.'),(46,'protein','Raises Attack effort and happiness.'),(47,'iron','Raises Defense effort and happiness.'),(48,'carbos','Raises Speed effort and happiness.'),(49,'calcium','Raises Special Attack effort and happiness.'),(50,'rare-candy','Causes a level-up and raises happiness.'),(51,'pp-up','Raises a move\'s max PP by 20%.'),(52,'zinc','Raises Special Defense and happiness.'),(53,'pp-max','Raises a move\'s max PP by 60%.'),(54,'old-gateau','Cures any status ailment and confusion.'),(55,'guard-spec','Prevents stat changes in battle for five turns in battle.  Raises happiness.'),(56,'dire-hit','Increases the chance of a critical hit in battle.  Raises happiness.'),(57,'x-attack','Raises Attack by one stage in battle.  Raises happiness.'),(58,'x-defense','Raises Defense by one stage in battle.  Raises happiness.'),(59,'x-speed','Raises Speed by one stage in battle.  Raises happiness.'),(60,'x-accuracy','Raises accuracy by one stage in battle.  Raises happiness.'),(61,'x-sp-atk','Raises Special Attack by one stage in battle.  Raises happiness.'),(62,'x-sp-def','Raises Special Defense by one stage in battle.  Raises happiness.'),(63,'poke-doll','Ends a wild battle.'),(64,'fluffy-tail','Ends a wild battle.'),(65,'blue-flute','Cures sleep.'),(66,'yellow-flute','Cures confusion.'),(67,'red-flute','Cures attraction.'),(68,'black-flute','Halves the wild Pokémon encounter rate.'),(69,'white-flute','Doubles the wild Pokémon encounter rate.'),(70,'super-repel','For 200 steps, prevents wild encounters of level lower than your party\'s lead Pokémon.'),(71,'max-repel','For 250 steps, prevents wild encounters of level lower than your party\'s lead Pokémon.'),(72,'escape-rope','Transports user to the outside entrance of a cave.'),(73,'repel','For 100 steps, prevents wild encounters of level lower than your party\'s lead Pokémon.'),(74,'sun-stone','Evolves a Cottonee into Whimsicott, a Gloom into Bellossom, a Petilil into Lilligant, or a Sunkern into Sunflora.'),(75,'moon-stone','Evolves a Clefairy into Clefable, a Jigglypuff into Wigglytuff, a Munna into Musharna, a Nidorina into Nidoqueen, a Nidorino into Nidoking, or a Skitty into Delcatty.'),(76,'fire-stone','Evolves an Eevee into Flareon, a Growlithe into Arcanine, a Pansear into Simisear, or a Vulpix into Ninetales.'),(77,'thunder-stone','Evolves an Eelektrik into Eelektross, an Eevee into Jolteon, or a Pikachu into Raichu.'),(78,'water-stone','Evolves an Eevee into Vaporeon, a Lombre into Ludicolo, a Panpour into Simipour, a Poliwhirl into Poliwrath, a Shellder into Cloyster, or a Staryu into Starmie.'),(79,'leaf-stone','Evolves an Exeggcute into Exeggutor, a Gloom into Vileplume, a Nuzleaf into Shiftry, a Pansage into Simisage, or a Weepinbell into Victreebel.'),(80,'tiny-mushroom','Fire Red and Leaf Green: Trade two for prior Level-up moves. Sell for 250 Pokédollars, or to Hungry Maid for 500 Pokédollars.'),(81,'big-mushroom','Fire Red and Leaf Green: Trade for prior Level-up moves. Sell for 2500 Pokédollars, or to Hungry Maid for 5000 Pokédollars.'),(82,'pearl','Sell for 700 Pokédollars, or to Ore Collector for 1400 Pokédollars.'),(83,'big-pearl','Sell for 3750 Pokédollars, or to Ore Collector for 7500 Pokédollars.'),(84,'stardust','Sell for 1000 Pokédollars, or to Ore Collector for 2000 Pokédollars.'),(85,'star-piece','Platinum: Trade for one of each color Shard. Black and White: Trade for PP Up. Sell for 4900 Pokédollars, or to Ore Collector for 9800 Pokédollars.'),(86,'nugget','Sell for 5000 Pokédollars, or to Ore Collector for 10000 Pokédollars.'),(87,'heart-scale','No effect. Can be traded for prior Level-up moves.'),(88,'honey','Tastes good.'),(89,'growth-mulch','Growing time of berries is reduced, but the soil dries out faster.'),(90,'damp-mulch','Growing time of berries is increased, but the soil dries out slower.'),(91,'stable-mulch','Berries stay on the plant for longer than their usual time.'),(92,'gooey-mulch','Berries regrow from dead plants an increased number of times.'),(93,'root-fossil','Can be revived into a Lileep.'),(94,'claw-fossil','Can be revived into an Anorith.'),(95,'helix-fossil','Can be revived into an Omanyte.'),(96,'dome-fossil','Can be revived into a Kabuto.'),(97,'old-amber','Can be revived into an Aerodactyl.'),(98,'armor-fossil','Can be revived into a Shieldon.'),(99,'skull-fossil','Can be revived into a Cranidos.'),(100,'rare-bone','Sell for 5000 Pokédollars, or to Bone Man for 10000 Pokédollars.'),(101,'cheri-berry','Held: Consumed when paralyzed to cure paralysis.'),(102,'chesto-berry','Held: Consumed when asleep to cure sleep.'),(103,'pecha-berry','Held: Consumed when poisoned to cure poison.'),(104,'rawst-berry','Held: Consumed when burned to cure a burn.'),(105,'aspear-berry','Held: Consumed when frozen to cure frozen.'),(106,'leppa-berry','Held: Consumed when a move runs out of PP to restore its PP by 10.'),(107,'oran-berry','Held: Consumed at 1/2 max HP to recover 10 HP.'),(108,'persim-berry','Held: Consumed when confused to cure confusion.'),(109,'lum-berry','Held: Consumed to cure any status condition or confusion.'),(110,'sitrus-berry','Held: Consumed at 1/2 max HP to recover 1/4 max HP.'),(111,'figy-berry','Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike spicy flavor.'),(112,'wiki-berry','Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike dry flavor.'),(113,'mago-berry','Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike sweet flavor.'),(114,'aguav-berry','Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike bitter flavor.'),(115,'iapapa-berry','Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike sour flavor.'),(116,'razz-berry','Used for creating PokéBlocks and Poffins.'),(117,'bluk-berry','Used for creating PokéBlocks and Poffins.'),(118,'nanab-berry','Used for creating PokéBlocks and Poffins.'),(119,'wepear-berry','Used for creating PokéBlocks and Poffins.'),(120,'pinap-berry','Used for creating PokéBlocks and Poffins.'),(121,'pomeg-berry','Drops HP Effort Values by 10 and raises happiness.'),(122,'kelpsy-berry','Drops Attack Effort Values by 10 and raises happiness.'),(123,'qualot-berry','Drops Defense Effort Values by 10 and raises happiness.'),(124,'hondew-berry','Drops Special Attack Effort Values by 10 and raises happiness.'),(125,'grepa-berry','Drops Special Defense Effort Values by 10 and raises happiness.'),(126,'tamato-berry','Drops Speed Effort Values by 10 and raises happiness.'),(127,'cornn-berry','Used for creating PokéBlocks and Poffins.'),(128,'magost-berry','Used for creating PokéBlocks and Poffins.'),(129,'rabuta-berry','Used for creating PokéBlocks and Poffins.'),(130,'nomel-berry','Used for creating PokéBlocks and Poffins.'),(131,'spelon-berry','Used for creating PokéBlocks and Poffins.'),(132,'pamtre-berry','Used for creating PokéBlocks and Poffins.'),(133,'watmel-berry','Used for creating PokéBlocks and Poffins.'),(134,'durin-berry','Used for creating PokéBlocks and Poffins.'),(135,'belue-berry','Used for creating PokéBlocks and Poffins.'),(136,'occa-berry','Held: Consumed when struck by a super-effective Fire-type attack to halve the damage.'),(137,'passho-berry','Held: Consumed when struck by a super-effective Water-type attack to halve the damage.'),(138,'wacan-berry','Held: Consumed when struck by a super-effective Electric-type attack to halve the damage.'),(139,'rindo-berry','Held: Consumed when struck by a super-effective Grass-type attack to halve the damage.'),(140,'yache-berry','Held: Consumed when struck by a super-effective Ice-type attack to halve the damage.'),(141,'chople-berry','Held: Consumed when struck by a super-effective Fighting-type attack to halve the damage.'),(142,'kebia-berry','Held: Consumed when struck by a super-effective Poison-type attack to halve the damage.'),(143,'shuca-berry','Held: Consumed when struck by a super-effective Ground-type attack to halve the damage.'),(144,'coba-berry','Held: Consumed when struck by a super-effective Flying-type attack to halve the damage.'),(145,'payapa-berry','Held: Consumed when struck by a super-effective Psychic-type attack to halve the damage.'),(146,'tanga-berry','Held: Consumed when struck by a super-effective Bug-type attack to halve the damage.'),(147,'charti-berry','Held: Consumed when struck by a super-effective Rock-type attack to halve the damage.'),(148,'kasib-berry','Held: Consumed when struck by a super-effective Ghost-type attack to halve the damage.'),(149,'haban-berry','Held: Consumed when struck by a super-effective Dragon-type attack to halve the damage.'),(150,'colbur-berry','Held: Consumed when struck by a super-effective Dark-type attack to halve the damage.'),(151,'babiri-berry','Held: Consumed when struck by a super-effective Steel-type attack to halve the damage.'),(152,'chilan-berry','Held: Consumed when struck by a Normal-type attack to halve the damage.'),(153,'liechi-berry','Held: Consumed at 1/4 max HP to boost Attack.'),(154,'ganlon-berry','Held: Consumed at 1/4 max HP to boost Defense.'),(155,'salac-berry','Held: Consumed at 1/4 max HP to boost Speed.'),(156,'petaya-berry','Held: Consumed at 1/4 max HP to boost Special Attack.'),(157,'apicot-berry','Held: Consumed at 1/4 max HP to boost Special Defense.'),(158,'lansat-berry','Held: Consumed at 1/4 max HP to boost critical hit ratio by two stages.'),(159,'starf-berry','Held: Consumed at 1/4 max HP to boost a random stat by two stages.'),(160,'enigma-berry','Held: Consumed when struck by a super-effective attack to restore 1/4 max HP.'),(161,'micle-berry','Held: Consumed at 1/4 max HP to boost accuracy of next move by 20%. (Gen IV: Perfect accuracy)'),(162,'custap-berry','Held: Consumed at 1/4 max HP when using a move to go first.'),(163,'jaboca-berry','Held: Consumed to deal 1/8 attacker\'s max HP when holder is struck by a physical attack.'),(164,'rowap-berry','Held: Consumed to deal 1/8 attacker\'s max HP when holder is struck by a special attack.'),(165,'bright-powder','Held: Increases the holder\'s evasion by 1/9 (11 1/9%).'),(166,'white-herb','Held: Resets all lowered stats to normal at end of turn. Consumed after use.'),(167,'macho-brace','Held: Holder gains double effort values from battles, but has halved Speed in battle.'),(168,'exp-share','Held: Half the experience from a battle is split between Pokémon holding this item.'),(169,'quick-claw','Held: Holder has a 3/16 (18.75%) chance to move first.'),(170,'soothe-bell','Held: Doubles the happiness earned by the holder.'),(171,'mental-herb','Held: Consumed to cure infatuation. Gen V: Also removes Taunt, Encore, Torment, Disable, and Cursed Body.'),(172,'choice-band','Held: Increases Attack by 50%, but restricts the holder to only one move.'),(173,'kings-rock','Held: Damaging moves gain a 10% chance to make their target flinch. Traded on a Poliwhirl: Holder evolves into Politoed. Traded on a Slowpoke: Holder evolves into Slowking.'),(174,'silver-powder','Held: Bug-Type moves from holder do 20% more damage.'),(175,'amulet-coin','Held: Doubles the money earned from a battle. Does not stack with Luck Incense.'),(176,'cleanse-tag','Prevents wild encounters of level lower than your party\'s lead Pokémon.'),(177,'soul-dew','Raises Latias and Latios\'s Special Attack and Special Defense by 50%.'),(178,'deep-sea-tooth','Doubles Clamperl\'s Special Attack. Traded on a Clamperl: Holder evolves into Huntail.'),(179,'deep-sea-scale','Doubles Clamperl\'s Special Defense. Traded on a Clamperl: Holder evolves into Gorebyss.'),(180,'smoke-ball','Held: Allows the Holder to escape from any wild battle.'),(181,'everstone','Held: Prevents level-based evolution from occuring.'),(182,'focus-band','Held: Holder has 10% chance to survive attacks or self-inflicted damage at 1 HP.'),(183,'lucky-egg','Held: Increases EXP earned in battle by 50%.'),(184,'scope-lens','Held: Raises the holder\'s critical hit ratio by one stage.'),(185,'metal-coat','Held: Steel-Type moves from holder do 20% more damage.'),(186,'leftovers','Held: Restores 1/16 (6.25%) holder\'s max HP at the end of each turn.'),(187,'dragon-scale','Traded on a Seadra: Holder evolves into Kingdra.'),(188,'light-ball','Doubles Pikachu\'s Attack and Special Attack. Breed on Pikachu or Raichu: Pichu Egg will have Volt Tackle.'),(189,'soft-sand','Held: Ground-Type moves from holder do 20% more damage.'),(190,'hard-stone','Held: Rock-Type moves from holder do 20% more damage.'),(191,'miracle-seed','Held: Grass-Type moves from holder do 20% more damage.'),(192,'black-glasses','Held: Dark-Type moves from holder do 20% more damage.'),(193,'black-belt','Held: Fighting-Type moves from holder do 20% more damage.'),(194,'magnet','Held: Electric-Type moves from holder do 20% more damage.'),(195,'mystic-water','Held: Water-Type moves from holder do 20% more damage.'),(196,'sharp-beak','Held: Flying-Type moves from holder do 20% more damage.'),(197,'poison-barb','Held: Poison-Type moves from holder do 20% more damage.'),(198,'never-melt-ice','Held: Ice-Type moves from holder do 20% more damage.'),(199,'spell-tag','Held: Ghost-Type moves from holder do 20% more damage.'),(200,'twisted-spoon','Held: Psychic-Type moves from holder do 20% more damage.'),(201,'charcoal','Held: Fire-Type moves from holder do 20% more damage.'),(202,'dragon-fang','Held: Dragon-Type moves from holder do 20% more damage.'),(203,'silk-scarf','Held: Normal-Type moves from holder do 20% more damage.'),(204,'muscle-band','Held: Boosts the damage of physical moves used by the holder by 10%.'),(205,'wise-glasses','Held: Boosts the damage of special moves used by the holder by 1/10 (10%).'),(206,'expert-belt','Held: Holder\'s Super Effective moves do 20% extra damage.'),(207,'light-clay','Held: Light Screen and Reflect used by the holder last 8 rounds instead of 5.'),(208,'life-orb','Held: Holder\'s moves inflict 30% extra damage, but cost 10% max HP.'),(209,'power-herb','Held: Both turns of a two-turn charge move happen at once. Consumed upon use.'),(210,'toxic-orb','Held: Inflicts Toxic on the holder at the end of the turn. Activates after Poison damage would occur.'),(211,'flame-orb','Held: Inflicts Burn on the holder at the end of the turn. Activates after Burn damage would occur.'),(212,'quick-powder','Doubles Ditto\'s Speed when held. The boost is lost after transforming.'),(213,'focus-sash','Held: Holder survives any single-hit attack at 1 HP if at max HP, then the item is consumed.'),(214,'zoom-lens','Held: Provides a 1/5 (20%) boost in accuracy if the holder moves after the target.'),(215,'metronome','Held: Consectutive uses of the same attack have a cumulative damage boost of 10%. Maximum 100% boost.'),(216,'iron-ball','Held: Holder\'s Speed is halved. Negates all Ground-type immunities, and makes Flying-types take neutral damage from Ground-type moves. Arena Trap. Spikes, and Toxic Spikes affect the holder.'),(217,'lagging-tail','Held: Holder moves last in its priority bracket.');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL,
  `loc_name` text NOT NULL,
  `loc_type` text NOT NULL,
  `north_loc` int(11) DEFAULT NULL,
  `south_loc` int(11) DEFAULT NULL,
  `west_loc` int(11) DEFAULT NULL,
  `east_loc` int(11) DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Route 1','Route',NULL,1,12,2),(2,'Route 2','Route',NULL,NULL,1,8),(3,'Route 3','Route',NULL,14,13,NULL),(4,'Route 4','Route',5,9,NULL,4),(5,'Route 5','Route',NULL,4,11,13),(6,'Route 6','Route',NULL,15,NULL,11),(7,'Route 7','Route',10,NULL,NULL,15),(8,'Drab Dunes','Route',NULL,13,2,NULL),(9,'Cerulean Caves','Route',4,NULL,NULL,NULL),(10,'Mt. Apple','Route',NULL,7,NULL,NULL),(11,'East City','Town',1,NULL,6,5),(12,'Peninsula City','Town',NULL,NULL,NULL,1),(13,'Dunes City','Town',8,NULL,5,3),(14,'Island Town','Town',3,NULL,4,NULL),(15,'Mountain Town','Town',6,NULL,7,NULL);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pokemon` (
  `pokemon_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type_1` varchar(45) NOT NULL,
  `type_2` varchar(45) DEFAULT NULL,
  `hit_points` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `special_attack` int(11) NOT NULL,
  `special_defense` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `generation` int(11) NOT NULL,
  `legendary` varchar(45) DEFAULT NULL,
  `evolves_from_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pokemon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','Grass','Poison',45,49,49,65,65,45,1,'FALSE',NULL),(2,'Ivysaur','Grass','Poison',60,62,63,80,80,60,1,'FALSE',1),(3,'Venusaur','Grass','Poison',80,82,83,100,100,80,1,'FALSE',2),(4,'Charmander','Fire',NULL,39,52,43,60,50,65,1,'FALSE',NULL),(5,'Charmeleon','Fire',NULL,58,64,58,80,65,80,1,'FALSE',4),(6,'Charizard','Fire','Flying',78,84,78,109,85,100,1,'FALSE',5),(7,'Squirtle','Water',NULL,44,48,65,50,64,43,1,'FALSE',NULL),(8,'Wartortle','Water',NULL,59,63,80,65,80,58,1,'FALSE',7),(9,'Blastoise','Water',NULL,79,83,100,85,105,78,1,'FALSE',8),(10,'Caterpie','Bug',NULL,45,30,35,20,20,45,1,'FALSE',NULL),(11,'Metapod','Bug',NULL,50,20,55,25,25,30,1,'FALSE',10),(12,'Butterfree','Bug','Flying',60,45,50,90,80,70,1,'FALSE',11),(13,'Weedle','Bug','Poison',40,35,30,20,20,50,1,'FALSE',NULL),(14,'Kakuna','Bug','Poison',45,25,50,25,25,35,1,'FALSE',13),(15,'Beedrill','Bug','Poison',65,90,40,45,80,75,1,'FALSE',14),(16,'Pidgey','Normal','Flying',40,45,40,35,35,56,1,'FALSE',NULL),(17,'Pidgeotto','Normal','Flying',63,60,55,50,50,71,1,'FALSE',16),(18,'Pidgeot','Normal','Flying',83,80,75,70,70,101,1,'FALSE',17),(19,'Rattata','Normal',NULL,30,56,35,25,35,72,1,'FALSE',NULL),(20,'Raticate','Normal',NULL,55,81,60,50,70,97,1,'FALSE',19),(21,'Spearow','Normal','Flying',40,60,30,31,31,70,1,'FALSE',NULL),(22,'Fearow','Normal','Flying',65,90,65,61,61,100,1,'FALSE',21),(23,'Ekans','Poison',NULL,35,60,44,40,54,55,1,'FALSE',NULL),(24,'Arbok','Poison',NULL,60,85,69,65,79,80,1,'FALSE',23),(25,'Pikachu','Electric',NULL,35,55,40,50,50,90,1,'FALSE',NULL),(26,'Raichu','Electric',NULL,60,90,55,90,80,110,1,'FALSE',25),(27,'Sandshrew','Ground',NULL,50,75,85,20,30,40,1,'FALSE',NULL),(28,'Sandslash','Ground',NULL,75,100,110,45,55,65,1,'FALSE',27),(29,'NidoranF','Poison',NULL,55,47,52,40,40,41,1,'FALSE',NULL),(30,'Nidorina','Poison',NULL,70,62,67,55,55,56,1,'FALSE',29),(31,'Nidoqueen','Poison','Ground',90,92,87,75,85,76,1,'FALSE',30),(32,'NidoranM','Poison',NULL,46,57,40,40,40,50,1,'FALSE',NULL),(33,'Nidorino','Poison',NULL,61,72,57,55,55,65,1,'FALSE',32),(34,'Nidoking','Poison','Ground',81,102,77,85,75,85,1,'FALSE',33),(35,'Clefairy','Fairy',NULL,70,45,48,60,65,35,1,'FALSE',NULL),(36,'Clefable','Fairy',NULL,95,70,73,95,90,60,1,'FALSE',35),(37,'Vulpix','Fire',NULL,38,41,40,50,65,65,1,'FALSE',NULL),(38,'Ninetales','Fire',NULL,73,76,75,81,100,100,1,'FALSE',37),(39,'Jigglypuff','Normal','Fairy',115,45,20,45,25,20,1,'FALSE',NULL),(40,'Wigglytuff','Normal','Fairy',140,70,45,85,50,45,1,'FALSE',39),(41,'Zubat','Poison','Flying',40,45,35,30,40,55,1,'FALSE',NULL),(42,'Golbat','Poison','Flying',75,80,70,65,75,90,1,'FALSE',41),(43,'Oddish','Grass','Poison',45,50,55,75,65,30,1,'FALSE',NULL),(44,'Gloom','Grass','Poison',60,65,70,85,75,40,1,'FALSE',43),(45,'Vileplume','Grass','Poison',75,80,85,110,90,50,1,'FALSE',44),(46,'Paras','Bug','Grass',35,70,55,45,55,25,1,'FALSE',NULL),(47,'Parasect','Bug','Grass',60,95,80,60,80,30,1,'FALSE',46),(48,'Venonat','Bug','Poison',60,55,50,40,55,45,1,'FALSE',NULL),(49,'Venomoth','Bug','Poison',70,65,60,90,75,90,1,'FALSE',48),(50,'Diglett','Ground',NULL,10,55,25,35,45,95,1,'FALSE',NULL),(51,'Dugtrio','Ground',NULL,35,80,50,50,70,120,1,'FALSE',50),(52,'Meowth','Normal',NULL,40,45,35,40,40,90,1,'FALSE',NULL),(53,'Persian','Normal',NULL,65,70,60,65,65,115,1,'FALSE',52),(54,'Psyduck','Water',NULL,50,52,48,65,50,55,1,'FALSE',NULL),(55,'Golduck','Water',NULL,80,82,78,95,80,85,1,'FALSE',54),(56,'Mankey','Fighting',NULL,40,80,35,35,45,70,1,'FALSE',NULL),(57,'Primeape','Fighting',NULL,65,105,60,60,70,95,1,'FALSE',56),(58,'Growlithe','Fire',NULL,55,70,45,70,50,60,1,'FALSE',NULL),(59,'Arcanine','Fire',NULL,90,110,80,100,80,95,1,'FALSE',58),(60,'Poliwag','Water',NULL,40,50,40,40,40,90,1,'FALSE',NULL),(61,'Poliwhirl','Water',NULL,65,65,65,50,50,90,1,'FALSE',60),(62,'Poliwrath','Water','Fighting',90,95,95,70,90,70,1,'FALSE',61),(63,'Abra','Psychic',NULL,25,20,15,105,55,90,1,'FALSE',NULL),(64,'Kadabra','Psychic',NULL,40,35,30,120,70,105,1,'FALSE',63),(65,'Alakazam','Psychic',NULL,55,50,45,135,95,120,1,'FALSE',64),(66,'Machop','Fighting',NULL,70,80,50,35,35,35,1,'FALSE',NULL),(67,'Machoke','Fighting',NULL,80,100,70,50,60,45,1,'FALSE',66),(68,'Machamp','Fighting',NULL,90,130,80,65,85,55,1,'FALSE',67),(69,'Bellsprout','Grass','Poison',50,75,35,70,30,40,1,'FALSE',NULL),(70,'Weepinbell','Grass','Poison',65,90,50,85,45,55,1,'FALSE',69),(71,'Victreebel','Grass','Poison',80,105,65,100,70,70,1,'FALSE',70),(72,'Tentacool','Water','Poison',40,40,35,50,100,70,1,'FALSE',NULL),(73,'Tentacruel','Water','Poison',80,70,65,80,120,100,1,'FALSE',72),(74,'Geodude','Rock','Ground',40,80,100,30,30,20,1,'FALSE',NULL),(75,'Graveler','Rock','Ground',55,95,115,45,45,35,1,'FALSE',74),(76,'Golem','Rock','Ground',80,120,130,55,65,45,1,'FALSE',75),(77,'Ponyta','Fire',NULL,50,85,55,65,65,90,1,'FALSE',NULL),(78,'Rapidash','Fire',NULL,65,100,70,80,80,105,1,'FALSE',77),(79,'Slowpoke','Water','Psychic',90,65,65,40,40,15,1,'FALSE',NULL),(80,'Slowbro','Water','Psychic',95,75,110,100,80,30,1,'FALSE',79),(81,'Magnemite','Electric','Steel',25,35,70,95,55,45,1,'FALSE',NULL),(82,'Magneton','Electric','Steel',50,60,95,120,70,70,1,'FALSE',81),(83,'Farfetch\'d','Normal','Flying',52,65,55,58,62,60,1,'FALSE',NULL),(84,'Doduo','Normal','Flying',35,85,45,35,35,75,1,'FALSE',NULL),(85,'Dodrio','Normal','Flying',60,110,70,60,60,100,1,'FALSE',84),(86,'Seel','Water',NULL,65,45,55,45,70,45,1,'FALSE',NULL),(87,'Dewgong','Water','Ice',90,70,80,70,95,70,1,'FALSE',86),(88,'Grimer','Poison',NULL,80,80,50,40,50,25,1,'FALSE',NULL),(89,'Muk','Poison',NULL,105,105,75,65,100,50,1,'FALSE',88),(90,'Shellder','Water',NULL,30,65,100,45,25,40,1,'FALSE',NULL),(91,'Cloyster','Water','Ice',50,95,180,85,45,70,1,'FALSE',90),(92,'Gastly','Ghost','Poison',30,35,30,100,35,80,1,'FALSE',NULL),(93,'Haunter','Ghost','Poison',45,50,45,115,55,95,1,'FALSE',92),(94,'Gengar','Ghost','Poison',60,65,60,130,75,110,1,'FALSE',93),(95,'Onix','Rock','Ground',35,45,160,30,45,70,1,'FALSE',NULL),(96,'Drowzee','Psychic',NULL,60,48,45,43,90,42,1,'FALSE',NULL),(97,'Hypno','Psychic',NULL,85,73,70,73,115,67,1,'FALSE',96),(98,'Krabby','Water',NULL,30,105,90,25,25,50,1,'FALSE',NULL),(99,'Kingler','Water',NULL,55,130,115,50,50,75,1,'FALSE',98),(100,'Voltorb','Electric',NULL,40,30,50,55,55,100,1,'FALSE',NULL),(101,'Electrode','Electric',NULL,60,50,70,80,80,140,1,'FALSE',100),(102,'Exeggcute','Grass','Psychic',60,40,80,60,45,40,1,'FALSE',NULL),(103,'Exeggutor','Grass','Psychic',95,95,85,125,65,55,1,'FALSE',102),(104,'Cubone','Ground',NULL,50,50,95,40,50,35,1,'FALSE',NULL),(105,'Marowak','Ground',NULL,60,80,110,50,80,45,1,'FALSE',104),(106,'Hitmonlee','Fighting',NULL,50,120,53,35,110,87,1,'FALSE',NULL),(107,'Hitmonchan','Fighting',NULL,50,105,79,35,110,76,1,'FALSE',NULL),(108,'Lickitung','Normal',NULL,90,55,75,60,75,30,1,'FALSE',NULL),(109,'Koffing','Poison',NULL,40,65,95,60,45,35,1,'FALSE',NULL),(110,'Weezing','Poison',NULL,65,90,120,85,70,60,1,'FALSE',109),(111,'Rhyhorn','Ground','Rock',80,85,95,30,30,25,1,'FALSE',NULL),(112,'Rhydon','Ground','Rock',105,130,120,45,45,40,1,'FALSE',111),(113,'Chansey','Normal',NULL,250,5,5,35,105,50,1,'FALSE',NULL),(114,'Tangela','Grass',NULL,65,55,115,100,40,60,1,'FALSE',NULL),(115,'Kangaskhan','Normal',NULL,105,95,80,40,80,90,1,'FALSE',NULL),(116,'Horsea','Water',NULL,30,40,70,70,25,60,1,'FALSE',NULL),(117,'Seadra','Water',NULL,55,65,95,95,45,85,1,'FALSE',116),(118,'Goldeen','Water',NULL,45,67,60,35,50,63,1,'FALSE',NULL),(119,'Seaking','Water',NULL,80,92,65,65,80,68,1,'FALSE',118),(120,'Staryu','Water',NULL,30,45,55,70,55,85,1,'FALSE',NULL),(121,'Starmie','Water','Psychic',60,75,85,100,85,115,1,'FALSE',120),(122,'Mr. Mime','Psychic','Fairy',40,45,65,100,120,90,1,'FALSE',NULL),(123,'Scyther','Bug','Flying',70,110,80,55,80,105,1,'FALSE',NULL),(124,'Jynx','Ice','Psychic',65,50,35,115,95,95,1,'FALSE',NULL),(125,'Electabuzz','Electric',NULL,65,83,57,95,85,105,1,'FALSE',NULL),(126,'Magmar','Fire',NULL,65,95,57,100,85,93,1,'FALSE',NULL),(127,'Pinsir','Bug',NULL,65,125,100,55,70,85,1,'FALSE',NULL),(128,'Tauros','Normal',NULL,75,100,95,40,70,110,1,'FALSE',NULL),(129,'Magikarp','Water',NULL,20,10,55,15,20,80,1,'FALSE',NULL),(130,'Gyarados','Water','Flying',95,125,79,60,100,81,1,'FALSE',129),(131,'Lapras','Water','Ice',130,85,80,85,95,60,1,'FALSE',NULL),(132,'Ditto','Normal',NULL,48,48,48,48,48,48,1,'FALSE',NULL),(133,'Eevee','Normal',NULL,55,55,50,45,65,55,1,'FALSE',NULL),(134,'Vaporeon','Water',NULL,130,65,60,110,95,65,1,'FALSE',133),(135,'Jolteon','Electric',NULL,65,65,60,110,95,130,1,'FALSE',133),(136,'Flareon','Fire',NULL,65,130,60,95,110,65,1,'FALSE',133),(137,'Porygon','Normal',NULL,65,60,70,85,75,40,1,'FALSE',NULL),(138,'Omanyte','Rock','Water',35,40,100,90,55,35,1,'FALSE',NULL),(139,'Omastar','Rock','Water',70,60,125,115,70,55,1,'FALSE',138),(140,'Kabuto','Rock','Water',30,80,90,55,45,55,1,'FALSE',NULL),(141,'Kabutops','Rock','Water',60,115,105,65,70,80,1,'FALSE',140),(142,'Aerodactyl','Rock','Flying',80,105,65,60,75,130,1,'FALSE',NULL),(143,'Snorlax','Normal',NULL,160,110,65,65,110,30,1,'FALSE',NULL),(144,'Articuno','Ice','Flying',90,85,100,95,125,85,1,'TRUE',NULL),(145,'Zapdos','Electric','Flying',90,90,85,125,90,100,1,'TRUE',NULL),(146,'Moltres','Fire','Flying',90,100,90,125,85,90,1,'TRUE',NULL),(147,'Dratini','Dragon',NULL,41,64,45,50,50,50,1,'FALSE',NULL),(148,'Dragonair','Dragon',NULL,61,84,65,70,70,70,1,'FALSE',147),(149,'Dragonite','Dragon','Flying',91,134,95,100,100,80,1,'FALSE',148),(150,'Mewtwo','Psychic',NULL,106,110,90,154,90,130,1,'TRUE',NULL),(151,'Mew','Psychic',NULL,100,100,100,100,100,100,1,'TRUE',NULL);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon_at_location`
--

DROP TABLE IF EXISTS `pokemon_at_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pokemon_at_location` (
  `location_id` int(11) DEFAULT NULL,
  `mon_id` int(11) DEFAULT NULL,
  KEY `loc_id_idx` (`location_id`),
  KEY `mon_id_idx` (`mon_id`),
  CONSTRAINT `location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`loc_id`),
  CONSTRAINT `mon_id` FOREIGN KEY (`mon_id`) REFERENCES `pokemon` (`pokemon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_at_location`
--

LOCK TABLES `pokemon_at_location` WRITE;
/*!40000 ALTER TABLE `pokemon_at_location` DISABLE KEYS */;
INSERT INTO `pokemon_at_location` VALUES (1,104),(1,129),(1,63),(1,151),(1,102),(1,113),(1,77),(1,143),(1,86),(1,122),(2,100),(2,123),(2,46),(2,32),(2,77),(2,129),(2,107),(2,147),(3,84),(3,115),(3,88),(3,81),(3,60),(3,122),(3,83),(4,115),(4,142),(4,88),(4,129),(4,72),(4,111),(4,138),(5,122),(5,92),(5,115),(5,108),(5,142),(5,52),(5,151),(5,137),(6,60),(6,77),(6,72),(6,109),(6,95),(6,27),(6,127),(6,107),(7,137),(7,108),(7,120),(7,90),(7,39),(7,79),(7,146),(8,50),(8,114),(8,4),(8,60),(8,147),(8,132),(8,23),(8,27),(9,23),(9,140),(9,145),(9,69),(9,43),(9,146),(9,54),(9,81),(9,7),(9,52);
/*!40000 ALTER TABLE `pokemon_at_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `town`
--

DROP TABLE IF EXISTS `town`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `town` (
  `town_loc_id` int(11) NOT NULL,
  `has_store` int(11) DEFAULT NULL,
  `has_pokemon_center` int(11) DEFAULT NULL,
  `has_gym` int(11) DEFAULT NULL,
  KEY `town_loc_id_idx` (`town_loc_id`),
  CONSTRAINT `town_loc_id` FOREIGN KEY (`town_loc_id`) REFERENCES `location` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `town`
--

LOCK TABLES `town` WRITE;
/*!40000 ALTER TABLE `town` DISABLE KEYS */;
INSERT INTO `town` VALUES (11,1,1,1),(12,1,1,1),(13,0,1,1),(14,0,0,1),(15,1,1,0);
/*!40000 ALTER TABLE `town` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainer` (
  `trainer_id` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `x_coord` int(11) NOT NULL,
  `y_coord` int(11) NOT NULL,
  PRIMARY KEY (`trainer_id`),
  KEY `route_idx` (`route`),
  CONSTRAINT `route` FOREIGN KEY (`route`) REFERENCES `location` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES (1,1,58,10),(2,1,65,172),(3,2,131,59),(4,2,208,79),(5,3,173,246),(6,3,96,5),(7,3,224,191),(8,3,38,221),(9,3,56,73),(10,3,211,231),(11,3,171,134),(12,3,129,157),(13,4,132,113),(14,4,90,229),(15,4,237,207),(16,4,147,167),(17,4,180,99),(18,5,51,1),(19,5,119,239),(20,5,70,59),(21,5,93,183),(22,5,90,2),(23,6,155,194),(24,6,84,212),(25,6,127,231),(26,6,150,132),(27,6,90,117),(28,7,93,255),(29,7,163,3),(30,8,200,148),(31,8,22,199),(32,8,79,55),(33,8,85,228),(34,8,68,54),(35,8,125,53),(36,9,202,191),(37,9,5,90),(38,9,167,212),(39,9,176,101),(40,9,227,128),(41,9,212,59),(42,9,249,62),(43,11,48,30),(44,12,247,64),(45,13,225,216),(46,14,10,206),(47,10,125,220),(48,10,125,200),(49,10,125,180),(50,10,125,150),(51,10,125,100);
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_has_item`
--

DROP TABLE IF EXISTS `trainer_has_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainer_has_item` (
  `trainer` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  KEY `trainer_idx` (`trainer`),
  KEY `item_idx` (`item`),
  CONSTRAINT `item` FOREIGN KEY (`item`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trainer` FOREIGN KEY (`trainer`) REFERENCES `trainer` (`trainer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_has_item`
--

LOCK TABLES `trainer_has_item` WRITE;
/*!40000 ALTER TABLE `trainer_has_item` DISABLE KEYS */;
INSERT INTO `trainer_has_item` VALUES (1,128),(1,1),(2,140),(2,71),(2,146),(3,215),(3,216),(3,96),(4,25),(4,135),(4,86),(5,41),(5,131),(6,157),(6,104),(7,98),(8,79),(8,30),(8,125),(9,21),(9,145),(9,160),(11,136),(11,37),(12,175),(12,182),(14,207),(17,114),(19,55),(19,39),(19,146),(20,176),(20,177),(20,141),(21,204),(21,73),(22,60),(22,197),(22,3),(23,135),(24,159),(25,215),(25,150),(25,140),(27,203),(27,161),(28,114),(28,18),(29,211),(29,85),(29,102),(30,112),(31,58),(32,51),(32,192),(33,135),(33,210),(33,159),(34,9),(36,116),(36,32),(37,167),(37,92),(38,169),(38,149),(39,55),(41,211),(41,183),(41,32),(43,66),(43,185),(43,128),(43,122),(44,205),(44,156),(44,76),(44,155),(45,79),(45,118),(45,141),(46,127),(46,52),(47,18),(47,170),(47,94),(47,8),(47,128),(47,70),(48,77),(48,131),(48,102),(49,49),(49,8),(49,135),(49,132),(49,66),(50,152),(50,99),(50,21),(50,75),(50,57),(51,206),(51,159),(51,8);
/*!40000 ALTER TABLE `trainer_has_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_has_pokemon`
--

DROP TABLE IF EXISTS `trainer_has_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainer_has_pokemon` (
  `trainer_num` int(11) NOT NULL,
  `pokemon_num` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  KEY `trainer_num_idx` (`trainer_num`),
  KEY `pokemon_num_idx` (`pokemon_num`),
  CONSTRAINT `trainer_num` FOREIGN KEY (`trainer_num`) REFERENCES `trainer` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_has_pokemon`
--

LOCK TABLES `trainer_has_pokemon` WRITE;
/*!40000 ALTER TABLE `trainer_has_pokemon` DISABLE KEYS */;
INSERT INTO `trainer_has_pokemon` VALUES (1,17,10),(1,82,8),(1,37,5),(2,132,5),(2,64,6),(2,82,9),(3,152,8),(3,14,7),(3,121,9),(3,32,8),(3,113,5),(4,121,11),(4,18,7),(4,7,10),(5,114,5),(5,148,8),(5,102,6),(5,133,7),(6,11,8),(6,36,5),(6,5,9),(7,149,6),(7,7,9),(7,133,7),(7,90,5),(8,18,10),(8,6,11),(8,109,7),(8,127,5),(8,59,5),(9,19,8),(9,68,8),(9,142,13),(9,150,8),(10,122,7),(10,93,13),(11,27,10),(11,139,9),(11,25,8),(11,9,9),(12,127,12),(12,112,10),(12,126,9),(12,17,12),(13,145,5),(13,77,9),(13,109,6),(13,94,13),(14,88,6),(14,150,14),(14,116,10),(14,150,10),(14,90,13),(15,15,11),(15,11,11),(16,30,15),(16,30,15),(17,78,12),(17,70,8),(18,1,13),(18,3,12),(18,33,14),(19,51,13),(19,117,14),(19,142,9),(19,13,9),(19,22,7),(20,52,16),(20,68,11),(21,151,14),(21,125,15),(21,76,12),(21,7,15),(22,13,15),(22,21,8),(22,34,12),(22,90,12),(23,132,10),(23,65,8),(24,69,13),(24,29,17),(24,145,16),(24,131,12),(25,65,9),(25,134,13),(26,72,16),(26,37,13),(27,82,10),(27,81,11),(27,105,13),(27,2,10),(27,36,13),(28,140,18),(28,80,12),(29,38,16),(29,121,15),(29,88,14),(29,151,14),(29,53,10),(30,79,19),(30,10,20),(30,19,18),(30,2,16),(30,46,18),(31,7,18),(31,139,25),(31,80,19),(32,11,18),(32,126,19),(32,126,24),(32,134,25),(32,2,25),(32,27,23),(33,144,26),(33,57,17),(33,42,26),(33,17,25),(34,79,19),(34,18,22),(34,134,17),(34,53,20),(34,87,24),(35,91,23),(35,15,21),(35,59,18),(35,39,24),(35,14,24),(35,131,22),(36,12,20),(36,46,18),(36,5,23),(36,10,28),(36,66,19),(36,76,24),(37,106,24),(37,72,26),(37,42,19),(37,83,24),(37,3,18),(38,77,21),(38,142,23),(38,61,28),(38,144,19),(38,1,26),(39,50,19),(39,144,21),(39,89,21),(39,105,25),(39,143,21),(39,100,27),(40,115,30),(40,42,23),(40,126,20),(41,128,23),(41,15,22),(41,134,20),(41,5,27),(41,25,29),(41,59,22),(42,73,25),(42,26,28),(42,124,22),(43,151,51),(43,99,48),(43,100,47),(43,140,45),(43,93,51),(43,61,46),(44,133,48),(44,72,54),(44,28,48),(44,124,51),(44,54,48),(44,44,50),(45,122,53),(45,21,50),(45,38,53),(45,16,55),(45,97,52),(45,64,46),(46,92,48),(46,58,56),(46,149,56),(46,20,51),(46,55,50),(46,23,52),(47,54,50),(47,131,51),(47,88,47),(47,108,50),(47,13,56),(47,39,53),(48,15,53),(48,12,56),(48,130,52),(48,134,56),(48,106,53),(48,112,49),(49,135,55),(49,76,57),(49,107,57),(49,106,57),(49,97,56),(49,117,49),(50,50,52),(50,73,55),(50,33,58),(50,100,52),(50,124,50),(50,77,52),(51,80,53),(51,8,53),(51,8,54),(51,66,55),(51,18,51),(51,53,60);
/*!40000 ALTER TABLE `trainer_has_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pokemon'
--

--
-- Dumping routines for database 'pokemon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 19:07:12
