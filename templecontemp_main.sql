-- MySQL dump 10.13  Distrib 5.5.29, for Linux (x86_64)
--
-- Host: db152a.pair.com    Database: templecontemp_main
-- ------------------------------------------------------
-- Server version	5.5.36-log

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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `object` int(10) unsigned DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'jpg',
  `caption` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'2014-10-01 17:46:24','2014-10-01 17:46:24',2,NULL,NULL,'jpg',''),(2,1,'2014-10-01 19:18:56','2014-10-01 19:28:23',4,NULL,1,'jpg',''),(3,1,'2014-10-01 19:18:56','2014-10-01 19:28:23',4,NULL,1,'jpg',''),(4,1,'2014-10-01 19:18:56','2014-10-01 19:28:23',4,NULL,1,'jpg',''),(5,1,'2014-10-01 19:18:56','2014-10-01 19:28:23',4,NULL,1,'jpg',''),(6,1,'2014-10-01 19:18:56','2014-10-01 19:28:23',4,NULL,1,'jpg',''),(7,1,'2014-10-01 19:45:33','2014-10-01 19:46:48',6,NULL,1,'jpg','');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `name1` tinytext,
  `name2` tinytext,
  `address1` text,
  `address2` text,
  `city` tinytext,
  `state` tinytext,
  `zip` tinytext,
  `country` tinytext,
  `phone` tinytext,
  `fax` tinytext,
  `url` tinytext,
  `email` tinytext,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `head` tinytext,
  `deck` blob,
  `body` blob,
  `notes` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,1,'2014-09-29 19:05:56','2014-09-29 19:05:56',1000,'_Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL),(2,1,'2014-09-29 19:06:20','2014-09-29 21:50:28',10,'TEMPLE CONTEMPORARY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','Our mission is to creatively re-imagine the social function of art through questions of local relevance and international significance.',NULL),(3,1,'2014-09-29 19:06:36','2014-10-01 19:25:59',10,'The Front Door Sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','<a href=\"http://darinrowland.com\" target=\"iframe\">Darin Rowland</a> painted our opening hours on the door. He\'s one of a handful of sign painters living in Philly. \r\n\r\n<a href=\"http://www.gibbsconnors.com/\" target=\"iframe\">Gibbs Connors</a> is another sign painter we\'ve worked with. Gibbs works with us on a citywide project called <a href=\"http://tyler.temple.edu/vital-signs\" target=\"iframe\">Vital Signs</a> that repaints the fading \"ghost sign\" advertisements on the sides of still operating family run businesses in Philadelphia. So far, thanks to an ongoing partnership with Gibbs, Darin, and the <a href=\"http://www.muralarts.org/\" target=\"iframe\">Mural Arts Program</a> we\'ve refurbished the fading hand painted signs of four multi-generational businesses in Philly and trained three Tyler students in the commercial art of sign painting.',NULL),(4,1,'2014-09-29 19:06:49','2014-10-01 21:00:33',20,'Seat Cushions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','These seat cushions were sewn by women in a <a href=\"http://doc.sd.gov/adult/work\" target=\"iframe\">South Dakota prison</a> and dyed with plants grown in Philadelphia by the all woman collective <a href=\"http://blueredyellow.org/\" target=\"iframe\">Blue Red Yellow</a>. The seating arrangements for all of our events are dictated by the German color field artist <a href=\"https://twitter.com/lothargoetz\" target=\"iframe\">Lothar Goetz</a>. For each of our events Lothar thinks about the configurations of our chairs and their colored cushions as if he is composing one of his bright canvases and we arrange the chairs to match each of his <a href=\"http://www.pauloneill.org.uk/files/5013/4778/9438/Lothar-Goetz1.jpg\" target=\"iframe\">individual compositions</a>.',NULL),(5,1,'2014-09-29 19:06:59','2014-10-01 19:51:03',30,'Our Neon Signs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','Our neon signs were designed by <a href=\"http://theheadsofstate.com/\" target=\"iframe\">The Heads of State</a>. They\'re two Tyler graduates named Jason Kernevitch and Dusty Summers (isn\'t that an awesome name!). Because our programming changes everyday, we asked them to make signs for each of the types of events we do. It works like this, on the days we\'re having workshops like <a href=\"http://www.theverge.com/2013/11/28/5154536/how-to-build-your-own-cellphone-mit-media-lab-david-mellis\" target=\"iframe\">build your own cell phone</a> we only light up the neon \"workshop\" window, or if we\'re doing food - like at one of our Fulfill dinners - we just light up the \"food\" sign. The Heads of State were also the first to participate in our \"distinguished alumni mentoring program\" - They mentored <a href=\"http://cargocollective.com/woodyharrington\" target=\"iframe\">Woody Harrington</a> and now he works for Jason and Dusty full-time. Since that first mentor program, we\'ve also now done it with <a href=\"http://www.pollyapfelbaum.com/\" target=\"iframe\">Polly Apfelbaum</a>, and next year it\'ll be <a href=\"http://www.pentagram.com/partners/#/19/\" target=\"iframe\">Paula Scher</a>.',NULL),(6,1,'2014-09-29 19:07:17','2014-10-01 19:51:37',40,'Silk-screened Calendars',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','This is one of our <a href=\"http://tyler.temple.edu/temple-contemporary/whats-happening\" target=\"iframe\">silk screened calendars</a> from last year\'s programming. From September through mid-February Temple Contemporary does about three events a week. Monthly calendars like this one help to give our audiences a heads up about what\'s coming next. If you\'d like to get one of our upcoming calendars mailed to you, sign up here. We ask different designers or artists to come up with a new concept for each calendar. This one was made by <a href=\"http://andrewjeffreywright.com/\" target=\"iframe\">Andrew Jeffrey Wright</a>. Each hand has as many fingers as that day of the month.',NULL),(7,1,'2014-09-29 19:07:30','2014-10-01 20:54:26',50,'Funeral for a Home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','This is our logo for a project we\'ve been working on called <a href=\"http://funeralforahome.org/\" target=\"iframe\">Funeral for a Home</a>. The project is arranging a funeral for a two story stand along row home in the <a href=\"http://en.wikipedia.org/wiki/Mantua,_Philadelphia\" target=\"iframe\">Mantua</a> section of Philadelphia that is about to be demolished. This row home at 3711 Melon Street used to be in a full block of row homes, but now there are only three left. The house was pulled down on May 31, 2014 as part of the <a href=\"http://www.youtube.com/watch?v=mlsgfft2KjI\" target=\"iframe\">funeral services</a> that also included testimonies by the family that once lived in the house, neighbors, civic leaders from Mantua, and the local preacher with his choir.',NULL);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wires`
--

DROP TABLE IF EXISTS `wires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wires` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `fromid` int(10) unsigned DEFAULT NULL,
  `toid` int(10) unsigned DEFAULT NULL,
  `weight` float NOT NULL DEFAULT '1',
  `notes` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wires`
--

LOCK TABLES `wires` WRITE;
/*!40000 ALTER TABLE `wires` DISABLE KEYS */;
INSERT INTO `wires` VALUES (1,1,'2014-09-29 19:05:56','2014-09-29 19:05:56',0,1,1,NULL),(2,1,'2014-09-29 19:06:20','2014-09-29 19:06:20',0,2,1,NULL),(3,1,'2014-09-29 19:06:36','2014-09-29 19:06:36',2,3,1,NULL),(4,1,'2014-09-29 19:06:49','2014-09-29 19:06:49',2,4,1,NULL),(5,1,'2014-09-29 19:06:59','2014-09-29 19:06:59',2,5,1,NULL),(6,1,'2014-09-29 19:07:17','2014-09-29 19:07:17',2,6,1,NULL),(7,1,'2014-09-29 19:07:30','2014-09-29 19:07:30',2,7,1,NULL);
/*!40000 ALTER TABLE `wires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-02  9:25:19
