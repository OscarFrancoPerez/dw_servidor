-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2000) DEFAULT NULL,
  `juego_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `juego_id` (`juego_id`),
  CONSTRAINT `tComentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuarios` (`id`),
  CONSTRAINT `tComentarios_ibfk_2` FOREIGN KEY (`juego_id`) REFERENCES `tJuegos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES (2,'Este juego me gusta',2,2,NULL),(3,'Este juego me gusta',3,3,NULL),(4,'Este juego me gusta',4,4,NULL),(5,'Este juego me gusta',5,5,NULL),(42,'1st comment',1,NULL,NULL),(43,'hola',1,NULL,'2022-10-13'),(44,'aaaaaaaaaaaaaaaaa',1,NULL,'2022-10-24'),(45,'aaaaaaaaaaaaaaaaaaaa\r\n',1,NULL,'2022-10-24'),(46,'aaaaaa',1,2,'2022-10-24'),(47,'aaaaaaaa',2,2,'2022-10-24');
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tJuegos`
--

DROP TABLE IF EXISTS `tJuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tJuegos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `desarrolladora` varchar(50) DEFAULT NULL,
  `publicación` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tJuegos`
--

LOCK TABLES `tJuegos` WRITE;
/*!40000 ALTER TABLE `tJuegos` DISABLE KEYS */;
INSERT INTO `tJuegos` VALUES (1,'Fallout: New Vegas','https://static.wikia.nocookie.net/fallout/images/f/ff/FNV_box_art_%28US%29.jpg','Bethesda','2010-10-19'),(2,'Diablo III','https://pobierzgry24.pl/wp-content/uploads/2018/11/ss1-min.jpg','Blizzard','2012-05-15'),(3,'The Elder Scrolls V: Skyrim','https://www.mobygames.com/images/covers/l/376858-the-elder-scrolls-v-skyrim-special-edition-xbox-one-front-cover.png','Bethesda','2011-11-11'),(4,'Bayonetta','https://www.mobygames.com/images/covers/l/175131-bayonetta-playstation-3-front-cover.jpg','SEGA','2009-10-29'),(5,'Grand Theft Auto IV','https://thumbnails.pcgamingwiki.com/b/b7/Grand_Theft_Auto_IV_cover.jpg/450px-Grand_Theft_Auto_IV_cover.jpg','Rockstar','2008-04-29');
/*!40000 ALTER TABLE `tJuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contraseña` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES (1,'Alex','Turner','alexturner1@mail189.uk','1234'),(2,'Carlos','Turner','carlosturner1@mail189.uk','1234'),(3,'Pedro','Turner','pedroturner1@mail189.uk','1234'),(4,'Juan','Turner','Juanturner1@mail189.uk','1234'),(5,'Yago','Turner','yagoturner1@mail189.uk','1234');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26 14:26:54
