--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
INSERT INTO `goods` VALUES (1,'Good 1',550),(2,'Good 2',182),(3,'Good 3',256),(4,'Good 4',733),(5,'Good 5',899),(6,'Good 6',298),(7,'Good 7',789),(8,'Good 8',55),(9,'Good 9',906),(10,'Good 10',368),(11,'Good 11',121),(12,'Good 12',500),(13,'Good 13',137),(14,'Good 14',185),(15,'Good 15',513),(16,'Good 16',7),(17,'Good 17',498),(18,'Good 18',1221),(19,'Product 19',123123),(20,'Pr 20',123),(21,'Pr 20',123),(22,'Pr 20',123),(23,'Pr 21',234),(24,'qqq',123),(101,'new good',123123),(102,'ffff',111);
UNLOCK TABLES;
