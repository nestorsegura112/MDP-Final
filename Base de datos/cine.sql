-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: cine
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

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
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asiento` (
  `idasiento` int(11) NOT NULL AUTO_INCREMENT,
  `posicion` varchar(45) NOT NULL,
  `tipo_asiento` varchar(45) NOT NULL,
  PRIMARY KEY (`idasiento`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
INSERT INTO `asiento` VALUES
(1,'A1','General'),
(2,'A2','General'),
(3,'A3','General'),
(4,'A4','General'),
(5,'A5','General'),
(6,'A6','General'),
(7,'A7','General'),
(8,'A8','General'),
(9,'A9','General'),
(10,'A10','General'),
(11,'B1','General'),
(12,'B2','General'),
(13,'B3','General'),
(14,'B4','General'),
(15,'B5','General'),
(16,'B6','General'),
(17,'B7','General'),
(18,'B8','General'),
(19,'B9','General'),
(20,'B10','General'),
(21,'C1','General'),
(22,'C2','General'),
(23,'C3','General'),
(24,'C4','General'),
(25,'C5','General'),
(26,'C6','General'),
(27,'C7','General'),
(28,'C8','General'),
(29,'C9','General'),
(30,'C10','General'),
(31,'D1','General'),
(32,'D2','General'),
(33,'D3','General'),
(34,'D4','General'),
(35,'D5','General'),
(36,'D6','General'),
(37,'D7','General'),
(38,'D8','General'),
(39,'D9','General'),
(40,'D10','General'),
(41,'E1','Preferencial'),
(42,'E2','Preferencial'),
(43,'E3','Preferencial'),
(44,'E4','Preferencial'),
(45,'E5','Preferencial'),
(46,'E6','Preferencial'),
(47,'E7','Preferencial'),
(48,'E8','Preferencial'),
(49,'E9','Preferencial'),
(50,'E10','Preferencial'),
(51,'F1','Preferencial'),
(52,'F2','Preferencial'),
(53,'F3','Preferencial'),
(54,'F4','Preferencial'),
(55,'F5','Preferencial'),
(56,'F6','Preferencial'),
(57,'F7','Preferencial'),
(58,'F8','Preferencial'),
(59,'F9','Preferencial'),
(60,'F10','Preferencial');
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calificacion` (
  `idcalificacion` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(1,0) NOT NULL,
  `pelicula_idpelicula` int(11) NOT NULL,
  `cliente_documento` int(11) NOT NULL,
  PRIMARY KEY (`idcalificacion`,`pelicula_idpelicula`,`cliente_documento`),
  KEY `fk_calificacion_pelicula1_idx` (`pelicula_idpelicula`),
  KEY `fk_calificacion_cliente1_idx` (`cliente_documento`),
  CONSTRAINT `fk_calificacion_cliente1` FOREIGN KEY (`cliente_documento`) REFERENCES `cliente` (`documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_calificacion_pelicula1` FOREIGN KEY (`pelicula_idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES
(3,1,1,1),
(4,2,2,1),
(5,3,1,2),
(6,5,1,3),
(7,2,3,3);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `documento` int(11) NOT NULL,
  `contraseÃ±a` varchar(45) NOT NULL,
  `puntos` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,'1',0,'Andres'),
(2,'2',0,'Paula'),
(3,'3',0,'Pepe'),
(4,'4',0,'Pepito'),
(5,'5',0,'Test');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `codigo` int(11) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `salario` varchar(45) NOT NULL,
  `fecha_contratacion` varchar(45) NOT NULL,
  `multiplex_idmultiplex` int(11) NOT NULL,
  PRIMARY KEY (`multiplex_idmultiplex`,`codigo`),
  KEY `fk_empleados_multiplex1_idx` (`multiplex_idmultiplex`),
  CONSTRAINT `fk_empleados_multiplex1` FOREIGN KEY (`multiplex_idmultiplex`) REFERENCES `multiplex` (`idmultiplex`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES
(123,'123','3133214097','Admin','7000000','2010-03-12',1),
(1234,'1234','1234','Director','100000','2022-02-11',1);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas`
--

DROP TABLE IF EXISTS `fechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechas` (
  `idfecha` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idfecha`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas`
--

LOCK TABLES `fechas` WRITE;
/*!40000 ALTER TABLE `fechas` DISABLE KEYS */;
INSERT INTO `fechas` VALUES
(1,'2022-04-07'),
(2,'2022-04-08'),
(3,'2022-04-09'),
(4,'2022-04-10'),
(5,'2022-04-11'),
(6,'2022-04-12'),
(7,'2022-04-13'),
(8,'2022-04-14');
/*!40000 ALTER TABLE `fechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion`
--

DROP TABLE IF EXISTS `funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcion` (
  `idfuncion` int(11) NOT NULL AUTO_INCREMENT,
  `numsala` int(11) NOT NULL,
  `pelicula_idpelicula` int(11) NOT NULL,
  `multiplex_idmultiplex` int(11) NOT NULL,
  `horario_idhorario` int(11) NOT NULL,
  `fechas_idfecha` int(11) NOT NULL,
  PRIMARY KEY (`idfuncion`,`pelicula_idpelicula`,`multiplex_idmultiplex`,`horario_idhorario`,`fechas_idfecha`),
  KEY `fk_sala_pelicula1_idx` (`pelicula_idpelicula`),
  KEY `fk_sala_multiplex1_idx` (`multiplex_idmultiplex`),
  KEY `fk_funcion_horario1_idx` (`horario_idhorario`),
  KEY `fk_funcion_fechas1_idx` (`fechas_idfecha`),
  CONSTRAINT `fk_funcion_fechas1` FOREIGN KEY (`fechas_idfecha`) REFERENCES `fechas` (`idfecha`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcion_horario1` FOREIGN KEY (`horario_idhorario`) REFERENCES `horario` (`idhorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sala_multiplex1` FOREIGN KEY (`multiplex_idmultiplex`) REFERENCES `multiplex` (`idmultiplex`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sala_pelicula1` FOREIGN KEY (`pelicula_idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion`
--

LOCK TABLES `funcion` WRITE;
/*!40000 ALTER TABLE `funcion` DISABLE KEYS */;
INSERT INTO `funcion` VALUES
(1,1,1,1,7,1),
(2,1,1,1,14,1),
(3,1,1,1,20,1),
(4,1,1,1,27,1),
(5,2,2,1,3,1),
(6,2,2,1,10,1),
(7,2,2,1,18,1),
(8,3,3,1,14,1),
(9,3,3,1,22,1),
(10,4,4,1,7,1),
(11,4,4,1,17,1),
(12,5,5,1,17,1),
(13,5,5,1,24,1),
(14,1,1,1,8,2),
(15,1,1,1,17,2),
(16,1,1,1,24,2),
(17,2,2,1,1,2),
(18,2,2,1,13,2),
(19,3,3,1,13,2),
(20,5,5,1,11,2),
(21,5,5,1,19,2),
(22,5,5,1,25,2),
(23,1,1,1,13,3),
(24,1,1,1,20,3),
(25,3,3,1,20,3),
(26,3,3,1,10,3),
(27,4,4,1,14,3),
(28,4,4,1,22,3),
(29,5,5,1,8,3),
(30,5,5,1,20,3),
(31,1,1,1,20,4),
(32,1,1,1,10,4),
(33,2,2,1,10,4),
(34,3,3,1,10,4),
(35,4,4,1,17,4),
(36,5,5,1,15,4),
(37,5,5,1,22,4),
(38,2,2,2,10,1),
(39,2,2,2,18,1),
(41,4,4,2,9,1),
(42,4,4,2,19,1),
(43,4,4,2,25,1),
(44,2,2,2,10,2),
(45,2,2,2,18,2),
(47,4,4,2,2,2),
(48,4,4,2,17,2),
(49,4,4,2,9,2),
(50,2,2,2,9,4),
(51,2,2,2,17,4),
(52,4,4,2,7,4),
(53,4,4,2,15,4),
(54,4,4,2,22,4),
(55,1,1,3,17,1),
(56,1,1,3,27,1),
(57,2,2,3,1,1),
(58,2,2,3,9,1),
(59,2,2,3,17,1),
(60,5,5,3,7,1),
(61,5,5,3,15,1),
(62,5,5,3,22,1),
(63,1,1,3,10,2),
(64,1,1,3,19,2),
(65,2,2,3,4,2),
(66,2,2,3,12,2),
(67,5,5,3,12,2),
(68,5,5,3,22,2),
(69,1,1,3,10,3),
(70,1,1,3,18,3),
(71,1,1,3,27,3),
(72,2,2,3,7,3),
(73,2,2,3,14,3),
(74,5,5,3,4,3),
(75,5,5,3,14,3),
(76,5,5,3,24,3),
(77,3,3,4,10,1),
(78,3,3,4,20,1),
(79,4,4,4,2,1),
(80,4,4,4,12,1),
(81,4,4,4,22,1),
(82,5,5,4,7,1),
(83,5,5,4,15,1),
(84,5,5,4,23,1),
(85,3,3,4,10,2),
(86,3,3,4,19,2),
(87,4,4,4,5,2),
(88,4,4,4,14,2),
(89,4,4,4,21,2),
(90,5,5,4,12,2),
(91,5,5,4,19,2),
(92,3,3,4,9,3),
(93,3,3,4,19,3),
(94,4,4,4,5,3),
(95,4,4,4,11,3),
(96,4,4,4,20,3),
(97,5,5,4,20,3),
(98,3,3,4,3,4),
(99,3,3,4,13,4),
(100,3,3,4,23,4),
(101,4,4,4,23,4),
(102,5,5,4,13,4),
(103,5,5,4,20,4),
(104,1,1,5,5,1),
(105,1,1,5,13,1),
(106,1,1,5,19,1),
(107,1,1,5,27,1),
(108,2,2,5,1,1),
(109,2,2,5,11,1),
(110,2,2,5,17,1),
(111,2,2,5,24,1),
(112,1,1,5,14,2),
(113,1,1,5,24,2),
(114,3,3,5,4,2),
(115,3,3,5,13,2),
(116,3,3,5,19,2),
(117,4,4,5,10,2),
(118,4,4,5,17,2),
(119,1,1,5,17,3),
(120,1,1,5,27,3),
(121,3,3,5,7,3),
(122,3,3,5,15,3),
(123,3,3,5,22,3),
(124,4,4,5,2,3),
(125,4,4,5,10,3),
(126,1,1,5,10,4),
(127,1,1,5,18,4),
(128,1,1,5,25,4),
(129,3,3,5,5,4),
(130,3,3,5,15,4),
(131,3,3,5,25,4),
(132,4,4,5,13,4),
(133,2,2,6,10,1),
(134,2,2,6,20,1),
(136,3,3,6,8,1),
(137,3,3,6,17,1),
(138,2,2,6,4,2),
(139,2,2,6,14,2),
(140,2,2,6,22,2),
(141,3,3,6,9,2),
(142,3,3,6,18,2),
(143,3,3,6,25,2),
(144,1,1,6,5,3),
(145,1,1,6,12,3),
(146,1,1,6,18,3),
(147,1,1,6,25,3),
(148,2,2,6,5,3),
(149,2,2,6,15,3),
(150,3,3,6,19,3),
(151,1,1,6,9,4),
(152,1,1,6,17,4),
(153,2,2,6,17,4),
(154,2,2,6,27,4),
(155,3,3,6,15,4);
/*!40000 ALTER TABLE `funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idhorario` int(11) NOT NULL AUTO_INCREMENT,
  `hora` varchar(45) NOT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES
(1,'10:00'),
(2,'10:30'),
(3,'11:00'),
(4,'11:30'),
(5,'12:00'),
(6,'12:30'),
(7,'13:00'),
(8,'13:30'),
(9,'14:00'),
(10,'14:30'),
(11,'15:00'),
(12,'15:30'),
(13,'16:00'),
(14,'16:30'),
(15,'17:00'),
(16,'17:30'),
(17,'18:00'),
(18,'18:30'),
(19,'19:00'),
(20,'19:30'),
(21,'20:00'),
(22,'20:30'),
(23,'21:00'),
(24,'21:30'),
(25,'22:00'),
(26,'22:30'),
(27,'23:00');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiplex`
--

DROP TABLE IF EXISTS `multiplex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiplex` (
  `idmultiplex` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idmultiplex`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiplex`
--

LOCK TABLES `multiplex` WRITE;
/*!40000 ALTER TABLE `multiplex` DISABLE KEYS */;
INSERT INTO `multiplex` VALUES
(1,'Titan'),
(2,'Unicentro'),
(3,'Plaza central'),
(4,'Gran Estacion'),
(5,'Embajador'),
(6,'Las americas');
/*!40000 ALTER TABLE `multiplex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `idpelicula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `imagen` blob NOT NULL,
  PRIMARY KEY (`idpelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES
(1,'The Batman','ÿØÿà\0JFIF\0\0`\0`\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ð\0 \"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üC„§dž•jÆÌN£?ÅSM¤ì_—¨¬e4™êSÂT”‘žNýTÞÕ|iLö÷ h|¶Ú{{RçOaK\r5ñöû6i¥jÑUCýi­ÍW1”¨•ñÖ€¼Ôâ!éA‡©óì0(\rƒõ©DX®( â(lRnþT/Ž(Ænâ”Ž)7dQÞ‚Cµ.y§F™4ï(\Z\r#4ÿ\0U7Õ Œ-yôô¡j¯¨Ýäw4ªÇ§ˆÔŠtJ¤öâ©\"7/iq±·Œ¯Þçùš¶°™ziš(Íœ}öŽ3W\"•måNÕçÖ—½cë²úØÅ½¬¿!¯mäŸŸ×­f¼?i¹fÆtÅkszÅ˜qÔý*AoJp¹ãò¬ãS—s¶¶\rVÒ;#­~ïËÒ«½£Œí^™­Ól\nçv¡ªò>6þ5¬k\\óëe©-Ì`µ\"Gæ(\\wÁ5mì718åµÚ;V¾ÑzÁÍ;2¥æ=ŠBóC$qÜ¡’&eÀ•CÜ§¸Ü¬3ê\rT™2sÞºïYù‘Ù¨û°YÛŒÛÔ·ô5‚šwÏór;S…M.N#%>H™Ë«z^>³ö$°5Ä¤œ*\"õ9÷$êHMM=¶*÷Åli^^•à½Ro›Îºxí‡(O˜ùã©a=³ž¢œªi¡2ôæÔöI·òWüô9VcP!5`B\\Ô‚ÑiÌqÇÞ¥u\\\n™!/õ§‹Lw©GËÊ³r:éÑ¶åV‹þª×5rH÷óþEC:JFuhèBÚh	¸qRE`qéÞ´ö‡\'±fžßè¯û\'>üš ËœU]$bÎíýMhf]ÊµçÕÒlûT°ñO¢_ÛVû3U¢ËrŸ)ÛëYîŽÆ­p+9Fú´«òû¶Ðµe\\«/µ9ìä,9øßz/½YŠ0bUZÂSå=*8xÔVeqoví^ªô\">^‡Ú·&´GòîzÕk-µ­bÒÍ[h™\"GÝËNEpÆ`Z*ZŸÃ…‡âOÅ;Èo!ºþÆÓ´»X¯\Z)WX\"P°@máŽ:½zŽ¥û(xkBÑ~Õoguu›©‰uAÂ¹ßƒ¿_F­¹X^âí§Éq¶äÈÅ¼¦Ïºç£q‘ï:7Ä7UÑüøÕd2)V†GT07trÄaèy•ñ™ÎcŒŽ&É¸Óµ´¿N®ÝÏëo8‚ñ™$¡˜ÆÅIÊwœSk™è¡}Ôvj×½ÚÑ£åß|8Òô¶y!Óí¦	ÈBïƒíÁò5ËøÛÄº~£ðÖ=[K«–¹Gƒ!›xÕ÷[;P‚NFÜtéìß|k¥éÚ¼‘Â¶Lë—»H¨}ÎÐ?,Šù×Æ:¤sêí0)ûÓ†Úz×¿’Ô­])Õ¾š­OÂüVÂå™>\"¶.p|ÉÂVŠZ7ºêšitº(ÅS=)ËÍV,£V¶SíÇ5\'Ù7ôo›°õ¯zU5±øÝ<-à¤ŒùSüj>£Þ®KVÚËó*Ì$Ö±–‡J/›B&Œ•ú\Zk&õ\njæÐÜTL™fúþTã\"g‡±[\06ÞÃ©ô¥ˆí\\ÃŠ{Åó4|‡šÕ3†Pî\\Ó\"e²‡ýÜÿ\0ZÔ³—x—îŽj+\rÝ¿uBŒ:¿gmå˜rFkÎ­Q]³ì²Ì+QŠOKµP2?Š v­h_Å”Žý=jºÙ¶p6ƒüªc%cJô%ítE«(#»OÍß¡g¿*¯¦iì¥N8Åi%»ÿ\0tšã«5}Ï¤Ëð²åO–ÄaVEÇsRèvK»nÛ¶°bA=ŽàqSÛX‡¿äF*ÔVª¬…F1ÍsºÉh{PË\\Ò›^gc;GjÄ3/8=liÿ\0®4´\\HÒ]\\LÏ$§<÷?^µ“se$4#jî;Ic€=yª¾#Ð£Mk…Ô´ù¸Ç’²0~¯GÙÓ«îÏf|\\qØì]\\+jP[Ý+y«ïø³3Uñl·÷RÉ#3<„±ç‚MbOp×ó§µ>hùþð=½*\"œûW³Nœ ½Óóv6¾\"mÖmës¦ðÈó´¯ur¿N•¢ð¬QgiaPxRÇf‘æF,sß·ô­i-0…q^N\"¢UÑ²œåƒƒk[#¼ÏÝ€¨íâÂŸzÛ’Áž@ÇéƒL6)}Þ}j•ekòÊçÏÌÌ³(4ÜäÖÌ61º°Ú	íP?2vúQ\ZÉ“S-šI£*Hw>êdpsôÅl6–ØéÅFús»ÓÚ¶dqÔÊäÚ$· q€w«…÷§ãU-nvÇß0íWm]T×Kî}•®X±ÂÝ¤±ß°©¡²VïÞ¬ Û\ZàÔ–±olzs\\²›±ô°qr]YjÆÙB{Ž*ñ´Ùå¦Ø¢ªsÃUÈÔqéé^eJšŸi‚ÂÇÙ¤VŽÜ(äõ©ðÙ	§­Xuîå_NôlY&]œn!~„Ö\\Çlpé;À)øÇÃr_éÚ†µ^m¬3¤wj©þ¤ºô\'9<`ãÔWšê1…YTmcÁîµô7‚¼_k êž*ÒK½¼‹2<-¤kå“ÿ\0 “þñô5Èøïá¦— ¸|–¸ÉkˆãoS·†+³™û:žÊ²kk>êÈð8£Þ7~]R2—¼§dã%9GMôi\'gk_GªG‰ßéæÞÊ9s÷É\\}?Èª8ÝnµÙx¿Âmk+ÂeŒ° °ààc¡ö¬I-#Ò´íÌ¿énCÏ¯§àkê¨×RŠhþÌ²z´kÊVQWrÚÝ[èwv:DvV6ñ¦ì$J	?OëNkc2÷ëô§ø.òMÃ6óIóJ…¢~~ñSÇèE_’Éºœÿ\0…|ÝZ’G÷?pÀa)ÕÁÓ«Ai(¦½,Œ\rA6œî1š‚Ý~|·Ý­KËŒ¬Fê«qÙUU{t­¡;­\'…”jsI*!Âî¢šÖ˜ùêÌ0žô­›z}îx©æ4xtã±B@v~5ÖÛ÷~µfxÚ7ùºúÓí—tm–ÁëÍmÙRÃóJÌæb|øüêí¥Ù7áYÖól\0T†\\9ÅwN7>CˆäI¦tÖw« ^øàÖ¥´q·ÝþUÊØ^”;qÖµ¬µO)ŽïâÆ+Í­EÛCî2¬Î›·´7·có©ËcÐ(ç=S´Ý8ÝÔtâ¯[ØoeÜÑîPJ¦ìdûñ¯:QIê}…\Z³©ÀÐÒÄ.Ü\\3IbÌWö˜> ÇÐúú%çÚôísì÷YÛ¦ï-]#ab3¼Ípwdñ“ŒŒUÝÅšL6ÓCunmÕ˜ÆY£-Ž…	2÷ÎAzÔ~#ÑìçÓíWûHG¦ïÙa¨_ìY?5¼Øhû«Œã‘’Tô›SVü¯ëÐõqq‹ÂÆ¦¢“Z»5ŸfšO£Ù7fÕÓãk‹È58õ\rÓ[ß+yw8m¯éÃr?¼ìô;˜s‚M?ÇñßhþLÍäÞ!$d„úŠÈö“Ç,ÚÜ’C:Dš…¼kòG.è®Ly×d¦Îàå_<µqsÙ5´:ýî™ï^Í:TêÓQ’ØüÓ˜bð8Ê•0òn2½ï×Õt•ÿ\0\"Ö¹¨Ísu#ÉogåìÇú ¸÷Ï­r÷³›©—²¯=\0«7P¦ÿ\0qÚ£†Ý¹±ú×¯F1ŠÐüç2ÄUÄÕ|Ý]Þ·7¼#âk¯é’$kla‘üÌL­½¸ÇÊã§½oéß¬ç”‹yíùûÊ7¯ô#õ®fßTµyé÷@É?Sý:{T2ëÖ³J-¤rN\0\n>cù×\\,*É¹C^çÒeùö\'/£\nTq•m®»ü·écÔ>Ã±cö‹y#‘H8+Ðû}}ºÖ\\ú,¤çnÎÝ+´ñ%æ…&ûxu<õ!p¤{Ž‡ñ­Í7ã$m—}åÈGñ˜ü·ý>_ÐW™,\rzzÒÕ~?ä}µ,ÊqVŽ6ôçÕý–þvkî~¥¸íäµŸ÷ƒŽÆŸ%¾ù•½ñW4ŸØëèÑÇ$räòÿ\0ŒŸj¼šbJ»Z,z’kš¥IAþñYžîGá*)ÇËòÐÇ6ë>ÝËßõ¢ëN_/*»HãÖ·¢··²SÆæ=3Ú£¹¶ißnÞ:œw¬£ˆwÓc¶y<y5œŸcÇcŸäëD··½W‰Ó95$`¯Ês×ƒ_cÊ®6Æ´ÜR.Át@ëÒ®ØÝó»=½k![u«¶q^qšç«MZç­‚ÄÏ+6—«9MªkkL2\\ÝÛÜdúÖ‡CÏ?Q]N‘VV78â¼[QnÇë\\?\n•”}£:.Î+xQ´SiÉÎqíÒ­iÖ–1‰qclñÈØ}©òÉÇFìÃØäf²ÒÝÜ¯(ì:VÀ-kfÇj¾â\nå±ƒÿ\0Öç¥|íFÓÒNìý£	N›Ž´ãh.ªý<Ó*Oð»EñûK2Gã11G !»~5ÌøŸá¼Ûw\ZE¥Ä·—V÷$•ÔG&ìñ“Ðtë]›G2Ü……–S€ß)ÚÇÔí8Ÿþ³<?£I©ø«XeY\ZH®	*ßê‘~oA“Œž9ë]|]x^NwIh¼ï÷ž^qÃù^&TèSÃ¨Js´¤®¯Vì•ùoæ•ÿ\0Ã5É¦Ê~g—…ÅU‚ÇíÛï,ý}ÿ\0*öïøÚÙ¦’éá…¡ùCI»Œ+€p™ÈÉÉ òò+¾Ó³¢Í\rž›¤0·ö€c.<‘¿™\Z¯ÌH#iÜ[\'ËQÉä}3ç‚rþ¿Ïä~+œp*Ãb%\Z/åfÞŸ•»ËþÎÿ\0³!c•M¾¤v4ØâEš;Äg‘£;HèGN˜äÙ÷«º´¿kº?{w÷Àþ~¿V†ÛcaŒþµèF¦—gÈÕÂÅO–	]lüý\r­#â\rÄê±½Ì›Áû²‘ôö«\Zž³°Fû;yçT`<Õó,1¸QÔ{Ö4Zº•‘•}WœcéM&]V_1V#æÿ\0>õÏìisÞžŒöÿ\0´±þÃÙâß4—zíëùœö½¦C£Ý¤–—[Ø0$*²˜›ê@ý;Æ½—ÁWëâŸ\rÚ^oýôÉ‡QÙ‡Ê<gñäš†¤×6[ù6åšO5¥)™}1ŸOjì~jl\ZúÇq]„\\ ü•¿öZ3ŠN¦™ïÈËÃœt0™÷Õ×ðë+[[)-W]÷_3½þÁÃnaÎ;Õ‰´•·\"·?ÅžÕvÖ_>L3.ßR*Íý²òýÖúWÄ<D¯fPÓÊè{7:kúî|Ä‡ÈžôøäÝUOÜ$Rã>¾µú{Gð¥:›Óò­MÙd;Ù»ôÅaÏ1qýkh²˜TncçXÖO“CÔË*EâS’;\r:(ö£èk ÒeXBî?¥rš‹\"©Z»£#uoÂ¾{‡r?dÊsjtlÒÔîmukŽùOZ¿ww°{äŒ\Zät«Öã>ÙÍoE{«ŒŠñ+Qå–‡éÙfmí©4í¯rhõ	4Ù’hÝŠ¯ÞN¤lÿ\0Zu—Å{J:”–±XÁutê‹2*ý¡>E¯`K`œ“È8\"„‘´òªîlç²¯-Ø]Ÿ*gUc†\nÇšÚŒ)½&“õ<üÃ‹§iaêJ	7ð»jÕ›]´eè4xnškRòëQ¿º!¥“Ï’5à`\0ÀËsÀéD[éRî†æídE1©y<åD ‚¸lñ‚xíÖªÅí¹|Æn>\\jÖŸr’mÚ¿7C]JR”­)|º}Ç‡R4iSN~ûÊýÜ¯vïæb½«DìŠsÎ	êÙ~Êœ®æà€mGeÔö¸éžjæ÷·}ïZô)ÕMê|~+/¨¡x/ø=©qiqæd0cœÅZ¾u$9ûD‡îŽ‹×©ü¿3O¾Óö“üýj‹X<n­‚9à×|\\e©ò)×¥zr»Oðó)¾šPío¼z×EðfUÓ~#iá¾d¸ßÐîRþ=ƒøTvŒÖÛfŽF†dèèv°Ï\Z«ew&—®Át¹2C*È	õ4ªIÕ§*oªh¼\rà1´1‘ûŒ¾I§øõÐ÷KÝ;ìó†UùO8ö¥Ž|ƒO\0ÖŒ‹ö¶È“¨Éê;Tvñ`¶ß»ô¯Î}¦žöçö’Á®~j{3ä‘;Å9[ræ«–â¤€üÂ¿a”l›tê;Ù“(b½+RÑØ(ÏjÏŒsô«M»§Ý®jš£ØÁû’¹³¦Ý°þ£k)VÏµ`ÛÜíâ¯A¨Â¼ê´î}¶Ê•ÙÒÚj¹;~ïô­=?SË•ÝÛk‘Kƒ¿†«Ñßãæ_Jó«aS>Ë/Ï%«ØìUX!lc=*¶&ù7uîsY·»ÀßÊ·¥kZrð¸öë\\£È¬}v1–&J]CjÛLS&õçŒâ’êØ\"n+ÓÚ¤Ó¦V\0zŠ¶éæB}\ry’“RÔûz8zs£îo¹•o¦y„±^~•SPÑ|²Í×unZ¸‡(íEé#2¯ÞÏ¤kÉHæ©•Qw8-NÅW¦p;zUim–HþUåy¹­YíŸ5E-rIÛ»é^Õ:¾éùŽ7/µgheµ¡	ý*­vµš7Cô«O¢I1hÙvðAã…mí¹w<ÿ\0ì·SH£Ó<yöÿ\0é÷¾o!ccêWå?¨­2}ö¯­aü\'exØòfqøúšßÂâ6çÜ{×Âãy¯3ú›‡e:ÙV§WT¬ÿ\0|vzŸjñMþ#J\0Í~Ìš‘“Ý`“8õ«Q¦ßÆ³â-ªÂÌXu5„âúŽ²·¼hC&zU¸$Ûüë:ÞçhÀô«pË¸W-H³è0•´ÓsA%ïÖ¯ÀëjÉ·”2jü/ˆ×Ú¸êDú\\mnkÙÈ£å{95µex3ýîÕÉÁ!u­­.SnZó±´>Ï\'Çµ+f—)|¸ÆsÍkÛUŽïa\\æ•.|Ýð+v	@àb ïd~·“â ›ãæn)¯÷qþM<6é*Xm÷?®kžöÜõãRZ:–œÒÛKqÈ¬Ù´™dp=k·ŠÁ>p¹â©^é!ÎÑó{ZÒÆ[C‹Ã|ëÚ#‘XÜ^[×*V-$j£—kŸÂºðÄq\'ï3Œ“ÓJîÖ++‚ewšéX˜ÉÙ\rL–­Þ¦ˆÕøYpéw}l~U‘VP=Á#ù5u§ÌY*½1žµÇx>ål¼Ijçå7”ßð!ŸÇèìU~UáfNÕ¹»£õž	§Ï—{\'-a&¾OUù³âbrÑÛñ œƒCu¯ÙóL*9Z‹9ïN\rŠ™FV,$¹9jä1ÝùV|Gk~•j®}«Dô°õ{š9ÛZÜAYOŒcžõv²?/jã©é08›liÁq†ëZ6W¾SVW›ñÒ¬C}å\\u)ÜúL;“[ež¦ßSÛÖ¶ ÕÔ¯zâí/þU³Åji÷[×æþuåb0Ësô§;—Â™ÕA{æmçšÐ±ºÌŠ=Msð\\+¢Ž3ÅkiÀc×Þ¼ŠÔÒ?BÊñ’œ•ŽŠVPÙ¦Êû,p>¸ª±\\ùPíüª7™Ÿh<ŽõçªnçÚK¹	ží$d\\ô`sXú¤‘›†û¼sÔÖ•Ä0Ü.ºíù²:š«=åªLÑÍn¡ƒHD£²P\0þ?ŸU®‡Ïæ•$Õ¤×®¥{VI‡?)ù×£˜šeS»åp­yòy?l‘cmÑ«xg‚W xvF¸Ðíß©Ù°ñÓÐWi¢RGÖp:Nu(¾©?¹ëùŸõj;PÃ©:Wì\'ùº+t£4t rq@SRÇ.ç[|<Rš|ÓÉoDï½3d8&½JÙOL‚m^,›rWÉBTg#vqšòñ¹¦\r>JÎÎ×Ù³ï8k€sÌëõ¬ºš”9¹u”cª³µ›]ÏÊŸÇ5ryëÖº3àë?ÆðµÕçîÔ;›˜“ªÌŠpÝ	Àõ=ú×Qñöx´ð_‚nõKmJîâK2…£–%U*Ìò¸¬kf˜XÔ…)KYÙ­:=S-àLö¶§G÷xyJ5/$œ\\rV½Ý“étyÔL>µÒü9ð;xçPšÝnÝG‚È[y’hâQÇûR/ášô/öQÑõ7Úë÷WQîÛ¾(ãeÆA#<Ž=ë£øû9[è:ÜÏ¦ø‚I6¤ì±G\"‚²‰UI\rýèPý	ú×‹ŠÏðŠ2å“N=ÓÓT»¦ä~ñJô%[B¥íËRõ¢äíïtJï·SÊ<oðæãáì\ZsÜL&{õvc*±í*1“ÔäòN=EQÓä,:ý=«ºø±á\rFçâ×‡¼+yqo3LÇ\rÜq“Ë‘°C.qò•|p:óÛ¿g_\0ø2ûT‡T¼¬ÕË–ÝT6é9 ñ÷³YË3 £J5fœª--×SÑ§À¹¤«ã«`°î4p’q©Í%x¸«´õÕèÞ—8+Û(ÿ\0<WE¦L­n:ä÷«>øDÞ%ð•®¤/ž.‹â3Tb£œçœÔ–¾šÏÄÒiM\"™#PÛ‚ç ¨aø×jô§)AKXî}FW”æ8jtkÕ¤Ôk[•é¯2ºëÕw‘™qÏ%°,ë¹¾´íKC—E–ÜHÙûA*0½#üsQÛ–K‰AµŒúŒÿ\0,~uËkÇš\'½JÕ*É©_o•ÿ\0\"õÄ+l78âªÉ§Hï\n±V)Û•îr¹ýhA>!mÃÛ5ilÖr¬§øHÁ÷l×4k8#Ø­•ÃÓ_wÌÇµÒ––Û÷U¸ÿ\0dWyàUY4Ù!n±É¸}ÿ\0\\\Zçá²ÚïÇ×Ià ±]Íãzÿ\0ëþ•çãêsÓgØp–añ²²wOçÿ\0ÇÄ¬~cõ£f†9?{WíGù†tÑÛ­½ƒ@Çì÷)‡â,eçÞQúW§Üø’ßÃ_ï®¯¦kx\"ÐÑ¶3e¼å!F^úõæ_³µˆÔ>$GnÚÖÒçkm8Ûë^¯wàÍ7Ä?î´	´èbµ‡LKñ$9I‹Bc=1†ÏN½s_%›J’ÆOÚÞÜšÛµÿ\03ú+ÃÊ9„øs,/7Ö—\'5ìçÉ¢i-­{»öÐá¢ø§ÚÎ›â[E·Sp›ŠaQIÚ¬=~üúV×Œ<cyâ¯jqO}%ÂÍ’ªykÑ€cŒnàÀÈù{)¶ÿ\0³ÛZë¾(þÈ¸‘¤ÑVÜÁm(Ì—[ãó	°ƒœãë¢A$\Z2ÛÞ24—!Ÿt›øa!SÀÈ#{drEiªMÆ¥+7çk]oäÎzÑâ,,*á3hÇ*ÍÙ¿gÍÏÉ\'dìõ‹Z«ÚÏkÃû …7³w•®JÜÀòmë†ø3™ÿ\0gˆ\rý©s¥¬r©YíÉ`àd«p§@cÁ$\n¯û(|]Ô¾hòBtÑªh÷7­!Ž7òç‚]±‚èpCev§\0ãï.I®SDñ×ö?À\rsF‰Ù_ZÖJØ8Gm¼q’Û{ñ¶¸?³k}oÕ­)Óié²wwZíé©õ²¿õ{&§S›š†	E§ÊtÒ…¤­u&ÖªWµ±é^ø™oñwão„//¼»y¼/`ÿ\0Ú7R¹X§Æ\\NK€Kr{gŒ€;Oø³Rñì§yªj_e7Wp³¦ÄUhŒžpê=ò~vø®Xi·Þ*[Æhä¾ðåÝµ HÙ÷JB|¼FT0Éàg\'[>ñ…õÿ\0À=SIŽám¬ln„ÒC\"K²íaî‹€;…=©æ9hÎš²§(Zë¦­Ûæÿ\0ØÇƒ<QÄG/¯‡ÆTu%‹¥‰råv¼ùiÂ.iÙ>XSºoÞ÷¤ÕÛ7ôo‰wÞ°±´†hä¢ID…Z,ƒ‘œcºƒÜ1Úï…¾)´ž6]Zö0Í2}™ÌASP7\0XÞ¹=¹5Åkvì.<¤…ŸËÂ—ÛßŽßLd}:ö–Ÿ™µ-.ËP-Ô-%žXaÈxÊcå$“É3×Œz^*–+šªK™;÷ing‘cøŽ­EC)IQ”ySøc&Ôa{é¾Ÿ–ˆí5ùtÿ\0A§\\Z\\$Æ˜D€©*1Æv2W¶½aøÂ/ìÝr5UeÝ?69˜OóÞOü>°‚[ˆí`š´ÛµE‘\\ù‡Û¡ÇNÀý+üK—ÊñDm…]Ðp8å˜ÿ\0^ßýjðiÆ”j{*Rm$÷ù4~­Œ­Ž«€y†>œa9J)¸7ÊÚæ‹øµOKZï½õÚó|ÓÖ¯éú±IvŸ»Ó5ÏZÜnêyÅiÙ²g#©©Eu4Ëñór‹‹:kR\'ÿ\0gëZ:I6š¤,9V;OãXšdûÇ^NkB£	¤^=Zní¢åø¤ÔjuM3ã“– }èühÇ¿l?ËÀÁô£¯­$v£<Ð ~Í\\|LN[þ=fÉü+Þ-|3{añFó\\o%ìçÒ’Æ<>\\8•Xü¸à`}Å|¯áß^x[QûUÕÅ¥ÆÂžd2bQ‘ØúW@¿|T±mÿ\0„‹\\ÚAvx¯›Í²|F&³©Ji\'W{í{Ÿ·xâVQ’e”ðY…\n“:ÞÚ.)s%Ê“¾ëW–§Ó\ZF©ÿ\0íß‰u&]ÛdûD‹·†XmQ€ü³X¿²5ÎŸñÀwGÄêW©2¥PaD8Ü0{·ç_:ÛüU×,ôë‹HumV;[£!š1tvËægÌÝë»\'>¹5…~(ë¾†hô=[RÒc¸`Ò­µÁQ!\0œw?pÔáŠ¯\rR”&”¤ãgª·.¬Àøï†u‚Çâ0Ò•\nQ®ªS|²Ru›–—ÑÙõi>¨úCö_øW¡à­j6H/´ß][$ŠK ‚6ú^¿^+À4Ýkþ½“Ìxmc¸p–YV<íô¯¸è2j¾ƒñ·Å¾_Ù¾\"ÕìþÙp÷wMÁ_6gÆéûG\'Úªhþ?Ö´-óK³Õµ]7Pm×VðÎÉÁ*Tî®T‘ÏPkÒÂe¸ªëU”ÓSqk}ßþñYÿ\0d–Y–à)a§Má¡Z3i«MÍ§M­tJÖ“ÞÝìWðÖ­wáëÿ\0¶ÛÂÒ~êX[r…]\n7ä?€¯yøðÎßÄŸµIš„]j¶‰†êDÖêòr:·™·\0àl÷¯Ò¾\"kz7…n´]Zú\rPm×6+\'î\'n9eè~êþU£á‰ú÷„ôÇ³Ó5{ë9%Yš_llêÁ•ˆþð*¼õùG`+lËZ¼9i5u®º¥®»Yýÿ\0‰åp>q•åx¸ÔÇBu©ºsN6Šåœ×+qÕó+YÝò»ôÒïÚ>7év¾ø•á6±…-ä¸ºþõßÍQ,`ÜÄc;»w9ô¿®èV±ø«H’;¡[˜•‡ûh\'ý‘ï×½|ƒ¯xûWñ¦¡\rÎ­¨\\êë²7•¹Œg<~<×OÇßÎèÍ¯^3ÆÛ”á88+éèHçÔ×Êâ²DéÒ‹šæŠ’o]oþGôøµ“aq¸ú‘ÂÊ4«Ô¥:qŠŠäTÚm=RNM\'¥üÏJ¶ñÔ~øã5¸·‘‘žP¯îùT\'ç+ÙÁõÈŽÜßÄnsW·¸e_Üàù›w¹º…f\0óÊ“•9q\\ŽŸãÍZÛÄRjË?öŒÙó.	Û<¿AôÀéÅYÕ|]}â;˜æ¾¸k©#MŠÌ\0ÀÎ{ÜšÞ9tiÉM%Íd›»è’Ûäy¸Æ¶2Œ°ò¨ý—<å8ÇNi¹]Ê÷¿½kZÞf­‹~ñw:Ø·8eÛÏÖ¹‹+¬8;¸ëgN¹Êõÿ\0õW&\"›Ü÷2|t]¢tV\r¶\"ÃƒžkbÖMéÊ×?g*ù“ëÖ­®ª±+|Øé^5jnLý+/ÇFœS“ÐùSò ŽEsš$×ì\'ù¾\0âŽ¢…ÔŠ\0;v£Rc&‚hBæŒí ŒŠL(CWYð?àæ»û@|WÐüá»u¹Ö¼Ap-­Õ‰œgm ¶ÕPÌv‚p§\0œ\n£ðæÏÃž\"Åº†½§é+rÚ>ŸåÌÎ\nâ<K4J†ïÞeŠ>F¯ ¼ñögøeñO×<;7í\r§ßi3%ÅüØþl.#õ¾ô™|À”²¬‘¼ŠÊ1†¨ró.{Û­·°JR·»¿C/âüã~?ø‡áÍŸ†ÿ\0á,Õü;¢Iâv½ÑdgÓïô„b‡P·’e‰¤·Þ\nÚ	e ^k/x=+ëŸ‰ßµ§ÁO‹ß¼Eã-cÄ_´×ü$\Zô2X\\jÖ7\Z&™ö›Y¡a2;X£Š(Ë±\rm²PÎìU˜©ù›âEŸ„-/íåð~­®ê÷cÏ¥¤G`l¾‘­ÌþhØFYŠÀŒ†9ÖŒ9Ÿ%íÒçf´Õ”÷ò3­å«¶Óàf²á“½[Ž\\ŽŸÊ¼Ú‘>Ãˆ²6m§ÍZŠïkb±íîjÒ\\.F+ŠtÏ¨Âãl·:+®Þ¶ôÛŒoç\\…µæ\0Íi[k‚%ÂŸ»ï^u|;–ÇÙeYÄ)»Í„Z¡gåéÖ¥}Ch$× ž#só€ÕË_¯“†Úwsô®	`dµ±õØ~\'¥/uÈÿÙ'),
(2,'Los tipos malos','ÿØÿà\0JFIF\0\0`\0`\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿì\0Ducky\0\0\0\0\0\0\0ÿáhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\r\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \">\r\n	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\r\n		<rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:079f6ed2-e7de-45d7-a305-8b6524bef768\" xmpMM:DocumentID=\"xmp.did:22DA57465D0B11ECB1B296D44BAD343C\" xmpMM:InstanceID=\"xmp.iid:22DA57455D0B11ECB1B296D44BAD343C\" xmp:CreatorTool=\"Adobe Photoshop 22.4 (Macintosh)\">\r\n			<xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:a3ef0747-b05e-4698-9a2e-c7e5f8805402\" stRef:documentID=\"adobe:docid:photoshop:d4bd8c76-d4a7-2143-a73a-0012bfaefd5f\"/>\r\n		</rdf:Description>\r\n	</rdf:RDF>\r\n</x:xmpmeta>\r\n<?xpacket end=\'w\'?>ÿâXICC_PROFILE\0\0\0HLino\0\0mntrRGB XYZ Î\0\0	\0\01\0\0acspMSFT\0\0\0\0IEC sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-HP  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0cprt\0\0P\0\0\03desc\0\0„\0\0\0lwtpt\0\0ð\0\0\0bkpt\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0,\0\0\0bXYZ\0\0@\0\0\0dmnd\0\0T\0\0\0pdmdd\0\0Ä\0\0\0ˆvued\0\0L\0\0\0†view\0\0Ô\0\0\0$lumi\0\0ø\0\0\0meas\0\0\0\0\0$tech\0\00\0\0\0rTRC\0\0<\0\0gTRC\0\0<\0\0bTRC\0\0<\0\0text\0\0\0\0Copyright (c) 1998 Hewlett-Packard Company\0\0desc\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0óQ\0\0\0\0ÌXYZ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïdesc\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0view\0\0\0\0\0¤þ\0_.\0Ï\0íÌ\0\0\\ž\0\0\0XYZ \0\0\0\0\0L	V\0P\0\0\0Wçmeas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0sig \0\0\0\0CRT curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ð\0Õ\0Û\0à\0å\0ë\0ð\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„Ž˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáðþ\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\uŽ§ÀÙó\r\r\r&\r@\rZ\rt\rŽ\r©\rÃ\rÞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îð4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·Ý\Z\Z*\ZQ\Zw\Zž\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ð!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"Ý#\n#8#f#”#Â#ð$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ð**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/þ050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e4ž4Ø55M5‡5Â5ý676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEÞF\"FgF«FðG5G{GÀHHKH‘H×IIcI©IðJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OÝP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbðcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qðrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰þŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿŽfŽÎ6žnÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒž@ž®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ý§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ð­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ð·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ð9ÐºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠÝÝ–ÞÞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéÐê[êåëpëûì†ííœî(î´ï@ïÌðXðåñrñÿòŒóó§ô4ôÂõPõÞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ý)ýºþKþÜÿmÿÿÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ð\0—\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ú?ö¸øókñÿ\0âö­e\rÅå¼qYËm¨Bpc|ïÕŠ°ÏHkÌåKh5­xÉeq	% \"I-ØdˆðÁ@ÃõÃò±Ís>&ÛøÆWš…–ƒŠ—R–ï$•c-ódŽz{TZÏ‰ìÎool­{y.æ–[˜,\nJ‚rÄç¸#ðA¯å<dg‰¯*ó•Ûß¢~3ö,-\nt©*qÑ#Ñþ\'†|oñRÇM×ä‡CÒædˆßG’i\03)l€øaÂ³gx¯¨¬4ï‡¿±‡í5?Œ4CÄ\ZÆŸ7Úc}7M·O³D% v*¬º\0{{‡~ë7Z?ˆíµÓWP†Îe»K.ó÷F9Ï=»þµöv‹¨êÿ\0¾ëZF¡jšGˆ´tqÊaK{k›IX`D‰”?1,C©ÏS^žMUaâýœ©Ï	Zîñ[omuzîqæXu&œ¤ù_ºÕûõî}õáZøÏÂún±gæý—T¶Žê*ä\nêSÊ°Î=­jä¾\rË$ßô•›,ÐÙÃb~ó*Ÿ|œœ×ÿ\0\0ý¦uOØëö@ñÇÄ­Ã±ø³Vð­¤Wº<—FÕ5{ˆ¡™B¶Ìù™ÜAñ“_Ñø*Î­T–í&þãòÚÑå›ŠèÏd®?ãíà¿ÙóLÒ/<mâM+Ã6¾ Õ­ô1ï¦òÿ\0´/çÜa¶ˆuyX# „cÐ>øIÿ\0êñÄ_ÚÁ>Ô¾ÏáEñgŠ?áþÎÖuy­üJé&¹¨i†[k¶’)ÿ\0³â²K@›„Xå\n–PüŸTÿ\0‚‡Yÿ\0Áh¾\'ü-ø?â/‡¶þkŸêþ!Ñ®t¯Åw«Zk:ŸöENk»y”;5Ôb$“†o.^£3ôKá¯üÓö~øÇã­7Ã>ø¿à?kÚÅœ×öv:¬sI{\"c+Åƒ‡Ú¶÷B’vÁ!Æˆ«¥ÿ\0ÁSÿ\0g]gÀÑøš×ã$ðô°Åp5í%[q†ü!.x\\ÿ\0eêq²JN\0¯ÃÙ{â„f{ÿ\0†ž8ðÏÁŸˆZ·4_iñx^#ã#ö‹­SVšÀxIçm\"(Ãéºäº“K!2¡Š‘ä•þü\'ðÁ¿†º-Âo‹°è¾>ðÎ½¡áMWÆrØë-ö=[XÐ­ä{(ô§n¬-õ+ûé•>Íj÷rÊ.Ys(îÿ\0‚©þÎ\r ÞjŸðº¾ÿ\0géêís?öÄ[!	l—D·<f×ûû°»ëŸ	¾.x_ãÇÃ\'Åþ×ôŸx_^‡í\Z~©¦\\­Å­Úd©*êH8`ÊGUe €AüêéÃá¥×…u­kàŠ´ÿ\0i¾&ð¾—sãY|y£K­é‹{£]Çv4¡±ØYhöw$ˆîgtæ7)/Ò±/ü‹âÁØÓK´ðŸÀ½6ÏJÐtx“P¶ñ/‹oî<Asokk¯Ow6,n¿}i\"B¤›exÂFc@ûsE~MëŸðqÿ\0<9àwR‚¾¼\Z^¥uo©ÿ\0	eå¶‹ºÙ5i[Gžá´æòõÉÓK-íÌIS´ÌŠÇÊoÔïxšO\Zx#GÖ%Óµ\rMZÆÇ°¿Ëº²2F®a•†DÝµ‡f€5«”øÉñ“@øðþûÄž$¾[\r2ÅycËJçîÆƒ«3vêp+«=kóÓþ\nµw¬|cø‡7…Öå´Ý@±HìÙÛjÞ_LÛå“Ž5…žróc\06|Ü×°˜wYïÓÔÒ•79Ygíÿ\0]Ö¼EáM¼\'¥ø‹e´?i¸‰ˆÞ7vJ¡Æ?Ö9Zú»þ	ámRÏöxþÛÕ¤ó&ñô²Y†]¬–q&-Øþ\'d’_¤ v¯Íß…Ÿ±wÄOÛ7â§…|qpè>–Í_[7G§À2Â5cÃNûò©Î6äü¹\'öÂ>Óü\rám;EÒíRÇLÒm£´´	ÛQ¨TQžx\0rrMx<?\ZØŠ¯Y¶•Ò¿èi[•.TiÑ^eû@~ÕÞýž$Ó¬õk¯´kzÂ´–Z]»)¹ž$Ç™.\Zä\rÍ€I\0dš+èkæ˜J3öuj$û6g\Z3’¼Qøÿ\0âÏÙÄ^¸Ö¿¶\ZÒMøéÒÜ‰	Žîa‚Ë	 oÀ9íÛ8ëX6ú\'ÚVxÆzÿ\0ž+ëø)_….tOˆ6–ò]HÖsy³%¹QwUŠ&”(è¡$óŒWÍš‡Ù^3´ù¹ˆ\'Æ¿˜3Å.xX_Üv×sö\\¦›¯†iuÔ›Â\Z=Ö‘$—P¡‡z©ÚNÇÌ£Ó<dcŽ•ö·ìmáÿ\0_øÇTðþ òÞi3Z5´âo™b}¨Wku(Û€q 5µû~ÏZ>¯ðk\\]cMK‹­CPÌqÈ»“hƒjž˜ó\\úà××šg…-tF{«xV).\0ÞWøˆ,sõù}ç	ðM|LifjZ.ÎËªÕ4ÿ\0“>K<Ï!	ÏÝ®¾zh:-¾¤ZÙÚ ŽÞÖ1h:(Q€*ãÇæu£î¥ù¯Ü!¨Çd|#m»±¦ÝYÃ\\àã‘ž´Ô8m£r‚ ã2?AùSÃdW/ñ?Xñ“¤ÙÉá2ßT½“Rµ†æ9¤UÚ4ª·\rÒ ,‘’Áwd\055*rEÊÍú+±Ó<”SZ÷v_yÑ”QØzô§cÿ\0¯ï^G¡üOø®Öau…¶Ëq¹v{oÛyRÍ´ƒ\'*¥‰ØÚ~÷Ç©üKø´Úªý‡áÎ–¶«nex®uÈ>Ñ#	I*¥_h-\náe–<±Ev?ÚtùoË?ü_äwfUæåç‡þþHö\00?úÔ”ÿ\0.•äVŸþ*Á¶;¯…ðNVÚÝ¤šÛ_µT’fÇž¨ŽÙ>pXüã9Ðü®jº¾ŽòëZ;hw‚fA¹Žpè1µÃ!#ŸCÈ#èNô1ªí%ë/Í#\Zø9ÑW“‹ô”eø&Ù¶ð	æ\r‚8Èä~¼ýià`S|ÁIç®k¬å¾ð¯ý§ÿ\0cÍöšŠÅ5&šÕ ¸V¸šVY\"çzØ²’¹ê\Zî>1|S´øCà{­nîÖòùaÛVÖ±î’âFÎÕüª=Yˆ\0}óŸØ»ö–×hí?Ä7Zþ‹ƒu§Ý¨ŠÆ0[ì°¾ÿ\0-d“£JTlc‡\0O™Œ­…©Q`«êå­¼—_#jtêrº±Ùu=SáçÃ}áW…­ôO·ÓtûqòÇ\Zòç»1êÌ}O5³q.ØY¾_—ûÇñ4ùÓðÏZüøý¨üMñ/ÆS_É\'ˆµ-.ÎÖí£ÿ\0F_*$@çåŒw?Ã»Ÿ^qÎY–eK/§Ë{è’þ´4Ãá§]¾^šêp_´‡ü7ãÇ/‰¾\'ñbø˜Ç}wå­Ðo2âX÷	\Zà„\n ï{’WQûŸ-×u(ü=\räšcNáõ]™-bU*©$<¬Ç0£–9âŠùàéb?{\Zwêºþ(é”T+’üMoø*ï„n-¾3èú»LZÖ÷KHR6?u‘ßv=¾e\'Ï¸¯ý>j_¾,iúN›o$ÙÙSrÛÇÎ]»\09ä÷À¯²¿oY|VøáðÃÁqÙ¬š•õßÚ.\'\'Y†;ã=Â»tþÛ‘ï	~øWàÔ>Ò¢Óc¾§ƒ´#ýæ$àp\0¾N·Ë6â<Me4¨Âk›{·e\'úöó>Æ,SJ—+u%nÖM¤ß_Bÿ\0ÂïCð÷ÂpéÐª¨‰m½ûúðt™Å\"qI1Â×í˜z£J4©«F*Èüú¥INNrÝ‘jW«ca4Í¼¬1™bl“€$ûM|{ãÏø,„4’ËáŸkÞ\"ã)-Ü‰¦Ã\'¸$I TÚ¾–ð7ÆêÞ$¶Š¬ãðæ¯ýŒn.;É‚¦ï/æÏL6	+0Â¾vÑ¿b¯‚ÿ\0~øÏ_ð>w«ßjv÷ãN¿½k ‘ÎÑ—ŒÛ$c1‚Ë²DVàãyÁåx’¶mVœIVv“|Êí¨ÿ\0*³O]5]µ>Ï…)d”jÍñ\r\Z“IÁG‘Ú+›ùÝÓZj¬ï¹æºWü+â÷ÅmU¬¼ðïKº¹cµ¥Þ¦Ðç¦öBŠ\0þógŽÓþÖ_´—ÇO„~êZÖ¡„üM¬\r`jv–C$2*KoömêÞj‡;ðã\'<ð$ÿ\0‚(ë‚ëPø‰g»)%¾™vŸídÝ)ÿ\0Ù:ê?à³šFÿ\0†¾ÔÝ¶Õ§¶\'ÓÌ€¶?òé_Æ®gˆáJ¹Õ\\eGRKD­M^ÖIÞËËFÕÔ§‡Ê0ÜkG‡èà)Æ”efÝæåÍIÚüÍ«\'+ÚÏTÏý¯~1xÃÅ_¾øž÷Ä\Z´Zµö•u5ÍÃY—\'EYqP¯³ÊäôÔßþiÿ\0³gì½ð÷âF—âß7ÄoOm¨& oš6X¤¶iÝQ3’©˜Ã3[\'w\r´Qý«´±ìaû;\\wm2õüÂÿ\0ã^û4Á;<Iñ¾x»âGŠ!Õ<%—iq¥éQ]Mq3Ù˜Õâ¶rê«oÝ»Ö=ä€Fá÷‡õ\\f;2­†§MÔ«*T\\dåeM¸Bózïæ“wü}ï®`2ì§‹«UQ£\nÕÔ £wU*“å¦´ø{¦Ômø\\ý¶¿à ž$Ñ<)áÿ\0øfI´j\Z5÷ˆ®ísö›g$q”‡ÜX|À2Á$Ž/âìãñËöWøCmñ¾\"kkwo,OªiÐê·Sµ’ÈÁQå2;Gqó²««!\nNrÀ<ñçÿ\0„£þ\n)ÿ\0EÜ³|HÒ#ô¦¦#DÇLT_ ¯ÑïÛÞÞïöRøˆ·›|ƒ ]“»ûÂ2Wÿ\0½¬®~±øü]Y©Qæ;IÇ—•7ÍdÕÛ²½üü­óù–*\rfe˜:qÄ(Î·4TœÔš\\©´ì•ÚVòó¿†øÿ\0þ\n3yáoØŸÂ>/´‡O›ÆÞ,iéŒÛÛÜ@J\\Ü•)	œfT‘œù—tÏÚWÄßî¾0[|E¸[xm¦Ô Ò®dó\rí¼[‹°ƒg’¹\nÅW\0°ÇÝÈ®Gàÿ\0ìÃ¬~Ó¿°|“è*· ðOŠožÊÑÛoÛ –ÚÑæ…IàHX\\à»I²:ÏØÏöç±øUá©>üWÓæ±ÑíDºr]]BÈÖÉÖ×‘cÃ°\0v©†Ñ¼cÓŒÄáçœV*5(ÇÙÊ2q´i]É®·¾úmÑÉ°¸*V¯J¼ý¬%9ûÝ”#.–µÜuÞÚ£êÏÙãÍ·íû=.­ªiö±Ý4²éZ½¢|öædU$ 9!]’»±–Æã¡â­OGý‘¾	]6‘\rŒ’YG%ÊG¨êijú„ßzId•òYSµIÆÕU\0(·ÃŸè?<!k¥økLÓô›x,£	;†>ñn»ŽIë“^/ñGàßÃß‹´|2ÏáŸøM5kËh¬õ¹fßKÑmmüÇ`cM#:¢ÁÎA,À($þ·Nž&Žš«(Ê¿*‹–×}ZÑ½õ·ä~	˜ÖÃVÆUžœ›Œ[¿*¾‰¿%§ù’þÎŸðP	üfÒ¤þÖ¼Ó|;¨&Ù9nu$-\Z:I½±´º·˜à„e\'9ÉöWð¦ƒâË[{£c¦jò(–<´–7R8e<‚<UÇÂ\n7‡IÐ×J›;íVÆ5…²0IP1’8ÏZÞÓtø4­>[X£·¶·EŠ(£P©(ÀP\0\0\0»ð´k¨(âZ“ïkkù’Þ#­¬£³…b†8áŽ1…DPª£Ø(©¨®ÎS3æŸÙ–ø]Ÿ´Ç>\"L¬Ú~›/öŽOÝÂ<‹èJã‘ýóô¯¥—^Yûü9o†³îƒg/ü}^Åý¡sòí!æÃ`ýhü+Ô7c½|ï\na*QË¡<Gñ*^sÿ\0õ·ËEò=Lê´\'‹”iü÷cé?ÇÓ\'ZC(?ÅßÍÊÛÛ¼’:Æ‘‚ÌÌvªÔ’z\núKž]®|·ã/Ù»ÇÚ…Ï‹´-/MÒäÐî|G¯[Ï«íõhµSÀêŠò¤°K$’¬Œ0<¨ÂuÊz—ìÓû2Ú~ÏK«Oö/u­‹QufllÝáŒ©ŸÉÞÃÏ•™šG]¡°ƒh*Kh|\Zýª¼û@kÚ¶™á?[ê×š6\Zá\'ÌBv‰\". KxÞ™^WŸ˜g†ý¬ÿ\0oÝöQñž™ ]èº¦»¨ßZ‹é–ÖXã[X²K™Ø£áxáy#\"¾Gþptÿ\0µªUNvR½â®íeeò·ëv}—³Ï³\nßØÔ¨µRI7ÒIÞ\\ÏçÑk¦–G‚Á1t6økûe|Rð¯úµÓíîm•}EµðDÇüÿ\0#^§ÿ\0zÒPý–,î—îé~!´¸cè\Z9áþrŠì>~Ï¾Ô>8ê_<;­Ý^Úøÿ\0KI ²ò•\"‡Ì™°9,|¥Ê66ü’pþ\nIûMÚ|\nø[e£ÿ\0ch>#Õ<Y3Æš~µl.ìVÞ \ZId‡&Äª¤—Ý“·ç¿³a€álN5\ZoÚrÉ{Þì¥x=7½Õ–çÕlUÌ¸Ë	‹ÀSsª½—4_ºùá¦›{ZÎïcæ?Û.Õ­?aÙî]åG`ê[ošÞ6ñ\nÇß¾úýôgðçÀéò.Ù,|?aF[hÁ¯?øâ/þÞ¿²ö“qâ/\rè÷v±Ëö{Ý)“t67p|¿»èP!—.]§ °?-þÕ¿üY¢ÿ\0ÁIìômÅ$Ò¬eÕ´+í-59áµÈ-ƒ!‰X!B]²¤`î>µÏ\Zô2I¬ò/ÚÓÄF8¨èô¯¯MîžÇGÕñCMðì—±©…–\"¬ÜµNòO•[ª»Mí³êbÿ\0ÁJÿ\0gmcà·ÇkŸˆ\ZLs.â+´Ôö%Êé—ë´²¹è»|Å\'‚Y—øE7ã¿ü?ÅßµŸÃ»?‡úG„ÖÎû]h“P]>i.çÕ\nÞ\\1í4fPÍ’ÇhÁ8É?¥š®—kªé³ÚÞ[ÛÜÚÎ¥dŠxÃÆëÜ2¶AZüÜñßíª|KøôÞ\rýü?¡øFÖòv¶Žÿ\0AÓm¬îµ¢™/q$Ê€Gn6’;•‰%‚/•ÅY\ZÊkU©†ÄÊñr³¥óNMî¡®—»íkÛ]îpgmP£GƒJ¸Þ5§7B+g4“½¬­½í}5g£ø§þ	¡ð»àö‡ug¦I¥ø‚þêçÆ4m3ÛHò@JDèÀoŽr8`æŽ:Íÿ\0oÕ¼â¯„¾\rÕ,n´ÝKÄwšŠ2{\'Yåº±1HdÁL–ÌhqŒì1Õ«Ï¼cãÿ\0ˆß¾+èÿ\0~<K§øëÁ^#–ßÎ7X™#‰äýªÞà\"J’BÄ–œ7+V÷ÇÏü-ý€~%Ã£ü5ø§ë•w½Ôî\'ÔH2s™šw !BÁÜwm8â±Ðž[‰ÁÊ^Ï\rJn5ö”šKHÆ)©ó%ÍUÞÆ˜Lº¥,Û	Œ}¶*N¥U:M{*Ñm¶ç)4éò7Ë/uû¶[ØúçöDð>±àÙÁzˆ7\rWOÒ£Šæ\'å ÎJÂ}Ñ\n§ü»m/ÂÖ>\ZÐ Ó4»]?Oµa¶¶…cŠ1œüª É&¾AÐ¿oßŠ?¼O¢[ünð=¦‘ ø‰±§cŠKN™gÌ6Ü‚ÈJ8RH\r§íY–x•‘•Ñ”e9B\r~£Ãù–‡T0Ü×¤£§¥m.ž©]=™øÿ\0eÜ&%â1j-Vr’”$¥	kï(´ÚÑ»5ºÓMŠâY`_™wmì*Å¼,aŠíÈÎ(1o»Rt¯¡>l(¢Š\0†ÒÉlm–(þXãPŠð€0+çïÛ“ö¨¸ø/á–Ó|-­èv~0.^ÞôÆî¶Û\\åcb73\0}{WÐ¬0µð_üÏÃ²Ùx¾ÇÄZfšÒ=Á†&´ždºxbU#ÎË2ä*ŸÞçµ|¯ã1<ª¥\\.E}U“Òé­™ìä8ZxŒliÕÕk§wæq~#ÿ\0‚„øÚOŒx‹K…¼>ú¦—›5…ìæk&„V\0F~`A9\07$îãèO…?üeâ|FðÄíCC0M*ìÕ†âÚ;B	lä-û¨›;“$*œ7p3_hPøwÅZí”rÇsáý.Þ6]˜útf—;åU1™)\nBàðHRIé/Ø“ÃÚŽµñÕWZÑÖhôË¿²ÜÁi­¼:ˆÁdØ¤ä†žpzWäœ1Ä8ÚØõJ­YMT•·÷}åï^=·NÉ]?3îsl£‡£í¡žÚèô³ë³Mn´<öÔ5ƒ?>ü@i|?âv_	]m81™\"ƒïöØLÈãž<†8éž÷öïð{|_ý­þ,–To‡ÞƒQŒ)ù\\ÅöGdoo.êFãÊ;pq¼àY¼Iÿ\0Ñø…\r$wžñ‚j°ºýèJER7ü6sÿ\0ÏµzìGm{ûVx»ãç‰ïáHï¼U¡¦—´ª<Ðº\0=€‚?Ê¹òì\Z©ƒ¡‘4Ú­j«åN¢—þO¿™ú–m˜JŽ?Ä©¤ð÷¢Úó«JPõ½9I_Èï?àÛÄ¼Aá‰Œ“x^ùnm”ÿ\0\rµÖæ\n>“G1ÿ\0^ûwü@ð¯ÄïÚgâ@ñ§¨Cÿ\0žá˜,á2yº‚²É#?!DaÌ¨û˜0 P+7þ	1ãöðßíOebÍåÁâ\"æÕ”ÿ\0}\\©?E‰ù÷÷¯Ný‚?e¿\nþÓšß>%xÊÎMjI¼OwöK¤ÿ\0Bff³Éåù˜\0¬J`}ÓÖ»òìF+:ÈpYUW>i©s^Ü´Ö—¶º)Å¯4?5Â`¸‰sçårÂQä·75Yj•ôWpšo¢ló¿ø&í¯ü<øÓkà½?O‡VÑükv­sŸË{&Ž\'-s\'iÄkó¯VŒrv?ið’ÁYô`Çåÿ\0„‹ÃÙ8î>ÊGôüê?ÛÂIû#~ß>ñ†—kŸ¢êºÌK†-¤Ay\Z€\\±?øöÒñŠø/þ\nE{®^E1ƒÃúÞ¨Ixó$Šµ”…Ï*‡ÀÏ æ¼œEZØ«û/&Þ®‰E©4×“³zì{XZTs,ïûc–+QÙnæœc$õ³jéh•í©÷¿í«â{¯~Ê_5&hî£ÑgŠ7^±—¼º?…|iÿ\0pÑ-n¾:øªòEF¸Óô$Šº%w‘ÿ\0~Ô~5ëÿ\0ðR_†ÿ\0´ä·\r[Gñ]œ>9ô½–vŽ¹$b«)p70ä:ž2kå¯ÙëâŽµû\0þÔ7ƒÄšEÓÉcºN³e	I!r®²Â[\nÃrFêI”‘‘šúŽ$ÏpU3ÌoN¢ž›q“Wj2{7÷§ÿ\0né±ò\\)Ã¹…>Ì²*”<]EÆ/G(¦´_4×ý¼¯¹ôOü«F„ü>ð>¦¿-õ½õå¬ožBI\0vÿ\0Ç¡Œ×ˆþØ~ñÂÚCAø¤öks¦øŽM/_Ó\'—&¸†wkYN>V,Ý#%X\rÚ#ã&¯ÿ\0/øõáŸøSF¾´Òl·Ãs‘æÆ’²}¢òr¤¢\"¢($ð@%¤	_a|9øùáoŽŸ|mðgUð¼&Â XoÌw6úµ¼E#gòÊ»Y£Àù¸`ÙŠçÄap|AÅÕ£WÙÆs¤©NÎÒ©É»wVý“ßŒÆðÆY‚¡ˆ¡í\'Ng^ÕãJ¤â•û;Ùõê–«\'wÃø*Ã=M}¨Çƒ~º…îëo{†9\"1M€O”ÁÛÛÃEiZ|ZU”6¶ê#‚Þ5Š4T\0à\0¯ÍÏ|/OÙþ\nmááÜ“$7W¶R%šÊÒh.	6ÎIËF\"W“N©ÎTúR­´~úæÅ¼CÅÓŒqåÉRQÚ|«FŸ£Û§ÌüË²Úx(áV\n´§†«Rœe¼9Ÿ¼šÚ÷[­íÖ×$\'£i›8¬ù¼]¦¦¶Ú[j61êIÚÚÐÎ¾x„y›3»nA±Œ‚+ãÁNßZýµ&ðÝõÖŸ‚ïå’ÂÂå‚(V0î\'¹ùYÀÛ“€>P@æ½ÌË=Â`gNykR\\«É÷}’ýO‘Âåõ±\nN’øUÙ÷æ¿³ßíKáÚrÓ[¼ðÅÅö›¢Þ›¼uXã¹p2YûqÈfU3ƒ‚½*8Šu ªR’”^ÍlÎj”§	rMYž•^1ûxÞiúgìÓ¯É¨-ÓBÞTh–à–RãËRÄ«»‘Î­{Ÿí^ûMêVÖ_uÃqoÔ×¥µ”RÆ$V»‘Õ-Î‰YX}+ÏÏa\Z™ux6’p–¯ÐêÊäã‹¥$¯i/ÌøËö8ý•¿á¡æ¼Õ®ošÏBÓg0ÈR0ò\\JŸ,dà\0$óéŒœ¾ôOØøzxímã‹ìð%ª6>q\ZýÕ-Ôúýk7áïÃÍ#áW†þÁ¤ÙÛØÃ‘4þ_Ê²K±Q¤9éƒ8ÀïêiÚWÄÝW’ãÉÔìÚ+{¤³yècšVDp¨ÀÇ9Ï¾ðö$ÃF·µŸÄÛÝ«½/ØôsÌâ¾e]Í_’;.ËMýYÂü)ýü?ð·Â^?ÐVâ÷SÒ~!_Þ]Þ[ÎVÞ+„(Ð&Ñ÷B±\0œœcÓ™?dÏÙWIý’¼¨hún¡y«Iª_›ÙîîÑVFù0¼mUQõfcÆp=T÷éY<Ð%ñ‡ƒµ=.×U¾Ñn5w‚;û2>ÑhÌ0$MÀÃ¯ ×¹O*ÁQœ*Ò¤¹©¦£ä¤îÒõg5lóZJ5j·\Z®.KùœtMù¯øsã/‡±ßƒþ	~Ý:A‡âu›^Åuq¨Zøxé[f2J«j÷b¶»`²¡À¾«ýŸ¿gÏþÍ~ŸÃþûqÓ®/¦Ôír‰d&ÐT£åUUQ‘œ/$œšÂø#û x/àN©.©c\rö¯â–-6­ª\\›§cÔ‚~UôùGN+ÔVFæ¼Ü‡!Âà§\n1„œ¤Õ›væµõmïet¬´;s®)Ì³;GYÍ%ì’j7qºI]®ijîõzœÇÅ¯Þøç£[éþ.ÐtývÒÖ_:ºæñ‚Q¹pr)|kð;Á?µHo¼Gá\nø‚öòâ¸Ô´«{©b^¡CH„…ÉÎ:WLåœõ5âÚø[Nk«É6F¼(-!ôQÜ×¹RŽÞ©V»µÛK[mwÖÝ;41¸˜Æ0…I%Ù&ì¯kÛµì¯ß¨št\nÆ‰¥èú>š‘p‹kg!~›@Çá\\ÿ\0Å¯ÙÃÀ¿M»x³Ã:^µqh» ¸‘J\\D¹\'h•p¹9Ûœgµuv×qÜÛÇ\"·Ë\"†àŒŠx‘sÃ~UU0¸j´ýH)Aôi5÷=Ž;Fª¯J¤£5´“i¯šw9ß…?|%ðCI’ËÂ~Ót(g!¦6ñ~öäŽ†I^B;n\'å´\'ì¥üaø£Ž<?âmoÀ^0]¢mCLù¾Óµva¹X>ÀÀ2€\Z÷¡¹[;¿\n_5ÿ\0ëW.+)Àb0ëVšä‹M%¥šÙ«Y¦»«˜<û0Ââž6Wí$šmûÜÉî¥Íu$û;£È¾\0þÅþøâ‹ÏÏy«x»ÆÚ‘cs¯ë2	®†@R##@\\òÛ~]Û@Qì{‚ŠhHëHdW#\rÍoƒÂÐÂÓThEF;éÝîÝ÷o«z³—˜bqµ½¾*nR²W}Ù%²K¢VK±ðGü‡ãM÷‡¼k¤Ûø~ëC±¼ðï—t÷é³ûZ¢~TŒ¿Ëòðr§$8Æ3ñ«à={âýÄwÙ+\\j\r,ÖÖ:e¶ó!îHa_º¥ËüˆNàŒWß?µ·ü¾ãR×üAãM?V·k[™.õmI%…P ,dà\0Àà±9!}‰o”ÿ\0gÿ\0_ã&‰¦ÍçIcª\\%”ÑDû]báÙðíÉsž>Sžâ¿ž¸Êxåœ¸â âªKÜ×GªI¯–þ}ÏÓ8v8o¨óQi¸­tùÛõ=Oþ	yñ¯Uøñ\Z?‡çÂ­go®<×ZÕÕóKôE˜¿vÀÐkÄ¾wtPW¹ü/ý‹¼Má‰zž«á_5žŸ,vÿ\0j§‚ípV0èêP•Vrv`\0´úW\rÿ\0jápJ…XÏFíeZý5õ>C8ŽˆöÑ”uJÿ\0ÿ\0s>½{°÷qí\\ÄX#ñŸÅh¯¶Htù$ñ\rÊûÃˆíÁúË)aÿ\0\\«¨û[{Wðöÿ\0þˆ~2Ö\Z8î!Ñ`>‹l…¤Á÷–fÝkè3<Â3tðý\'%HûÏï²OÔò0´\\yª¯²¿§êßÈã?mýÅÒh:O‡,üF¶r1ŸP¼ÒÊn’1•0õÝÎàp1»ÈÎ>dÒ-¼7áy4ûÏÄ× µÔ?Ñn-/ã¥p\0T$‹·ví»	nÙ#ö÷Å»yµ†ºÅ¼Åm3Ú¿ïß [Œ|Î1ÎBîÇ¾:u¯ð_À_|&Ðá¼ñüÑµÆ¡y±H‘‹Fªœ7Éó\0²{\r‹Í~CÇN#7…XIr8ÞS›J4ÒvIvo½¯™÷;¡K\0éM>dôŒoyß[¾évì}s®ßYøKåµûV«œn¤e¿}8‹pŒn\nyo—<_,ÿ\0Á8?lícã—†¼Y§øËXûW‰#ÚÚl2˜ÑY4kˆ¬X\né\"odpyà`šú+Ât_k÷º]ä}§3,©$ewím…”÷þuOÄ\nðÿ\0†t«ëÍ;AÑl/.²¯qke2¾öËe€œ’yæ¿BÅæÞÚ‚Ça+©Bœd¥gtÝ­ÓªgÇG*söUafìöµ¿áËŸ|_æÅý›>[ÊMÐ·}£øOÓ·×óëšñ\\c¥y·Ã¶ëÓMÚ|GBHÿ\0]Á¼ÿ\0i¿*èálÒ¥L¾2¬ïº^‹DgŽÃ¨ÕiÌª?‹ù×“üJÕ¤ÕüUq9híßÈˆg„èæßç¥zC^°#þ5å3Êº‹\"oùøÔóÜG¶}Ž¼)ÓOâ—ü9\Z;žÄä* _–0~ãtðŸÎ±îõËkIgžÞ¾d¡7zã5Ÿ¯ø²;?\njZ…¤ÐMö[i$FV¡ÕIÇ¾8¯¢xÈF:ô9½Î¥nwr?OŽã°oÂ¼#áÇxƒâ]†•y-¬ö·Jåó£¦ÔwùJãû£®­{<7[Ùw§ŸjæÂæ´±4ý­+ÚöÔÒ¦ÁÚD~+ø‘ ø\rmŽ¹¬éº8¼r›Û……d#®8ÈçÜTïã\'ÒãþÖÓüÍlÓÔN¤Þ€¡‰Ÿ™pG##æ£?~Ó>Ô<yã-JÛâ·Œc°±ÓeZ£¤j6­óylªÍäŽÊòfe`U¶÷>ð‹ð?Æ:)ð‡á&µ³•Ú\ro]ñLi‡às¬q ¹æGÛAbO%†~Yquw^QTÒ„ZZ¶å¾¾ìSó¶ÝÐõ?²`©©)]¾ËO½ØûYÒ-|I£ÝXßAÝ•äMðÊ»’Ta‚î\rx/ÀÙÇÁ¾ý£¼q.•¢Çoÿ\0êØAc–g[v’1È\'ø¹QÏoRI¯r·¾[˜c•$Ic‘w«#V¸aÁõçn\ZoŠŸîŠœ~ÚÝxÉmšu±9þ?ç^ÆeNlN\Z¤â¤Ô›M¤Ý¹$ôùÙúœøZÕ)Ñ«É¤Ö©z¯ø\'¬-Ö#uæz·Å),®Ú’a\"Ÿ™=…¢´—RNÜðÿ\03›êO¹¹­köþÑî/®dŽ8íbyˆfp@XëÒ±~é²Xü-ÒZCþ“¨FÚ•Ö:™nÌÙÿ\0¾ñøW›üLñuçŒþ\"ÜˆcºÔ§[(–%*ùTtÉþÞÕ—ñ‹Qñv¡Éÿ\0™k¨ë‘ºZ@³]uŽ5\'$€Oð[$+ò\\GÅfÂÐ„lµÖòi½>V±õ4ò¦ðü·³oÿ\0Iÿ\0‡=ƒâà7š:vÖ?Ú$Nu\'\rÿ\0Žî?…yoÄk	¯õfžèyönû`·Ë2£<’ÃnNÛÎšËý”<?ñ+MÑ±ñKP-}jóJ°Ï\"?ÙŽ÷ÁY2vRE\07 ©é^‰âwÂðÜÙØ]j°¥ÕÄ±˜„Q<Á·¶ÀFÀsótÈ\'\0æ¾_=\\ÙÕÄ|\rÙ(É¥ð­ôÝ³³Q`å|[»«½úþÄøI¦¾«ã=ú?1®tÈ¥¶½ýéÉ•š79\\°Ý•Ãr^Onßã?t¿h6£T¿¶²7“„…$|IpÀ•ï1ç ¯ê3¶ƒo5­¬\Z“òd†P?~€rÌÜsÉöçõçßg¿\nø‡â-ŸŠ¦·¹þÐòØ$SÝ,ùU€ç æ½‰TyvSWÍ=9ÞÛÙ;owî¤öww±ÃR´qX¸Õ•Ôm§WßË«ý›áž³o$«º9â“S$‰]FU@fÃsÁæº‰uËTÎë«tUÎOšpMâøEïþÚaó¶#FŠf	ïÐô¬-SÆpëhÖ±ÛÎ’0.ÅÊí\n¼žþÕ¦MÅÂàcN)I¦û«--ø¶²÷R§7MZ—QŒZ´ÂE’5Rá•²§Ö¼×Bq\'‰´´oâ¹Wäwæþ•sÃž9Ñíüš\\7Ñh-´Ÿ¸(ÊÙmÌ@ÈÁÀÏCY^¹ûgŽ4þxC#:a\Z¾™¬Ml*®ìÚOfÚÓäp¬+¦§~†¿Å«ß7V·‹ê`Î=ØŸèaÛÜµ§ÁßJ?åêí`\rßþX¯õ5câ%è—Ä—wú°ª?ýI®Uø–Ðh~û\Z•šígfNÞÇ=~Õ×Sž*¬ßi%÷Xå…¥o#Kà_køÍýæ·´™‡Ôª¯Oø}²¿ÅµN\nø¶ûÆÖúW‹îô}BÂí\'\\Óg·º2Á,©O$ƒÜ¤H äG àÖƒ¼OâmW±ñ$>.¾¸}\"yt-_Y²’çMMÅ7 \rûëpTFÈ\0’àŒp|E%EG›]lÖ›nŸ—ŸÜvÏ\0ê¾dí ŸðS|A£üJY\rÐ¾‡Ä\05¥¼ðGp«ÜæË•äò_ q´WUûþÍþ$ÕõË­{ÆqØÞhzÖŸmr‘<adfš\".ÕP±íŠP¤/LíÈ\0ôÇ›¸u/†Ð´qÇv³jú4±ù_¼ójV¯¸r \rÙéŸzîEìqn]«ÂààÚº(ðþY”ñU$ÞÒKÖûï¡¤³J‹\Z0Š]/éo#;Â>Óþøat¯\nØÁ§Ùù†O&IœÇz•v	úsß\'šã~j:çˆ>(Mg$6²\'‹æ¶˜¹iVycµ¶RëÓbžÑŸºNyÅz,W«<ŠªÝHÍyì«.­ðÿ\0^Õ·“Zñ^¯xùÇé&0?G¯õÂÞ”!¢WÑ;+%m-êxÞÑòJûèz†4Y4o:[‰­åžà†o-6¨?ïOãEH/sýÕúÑ^å<)ÅBC–SmÝŸ:üTñ¿‚/|/kpÛ-ôÈdÔ¥ø™¬cêdãñ¯Dø+öýŽpÒyÍ±^iÎ÷_½ÿ\0q_~Ðßì~\"øÏíZ{³XÆÉem#õé12Ø3G¶3Ž•õìÓ«C£ü\"±»“+ºÉåSŽYËœöÆ3ä1RÇÎ­O†÷ù+¨æ˜9RÀBËÞz[Öïõ(üø{â‰¾+µm&ÞèGk K{Ûi@{{Ùmêß/—°IœwÀ>Ùðgáœ?<o¦ùËyuæ5ÅÄþP^GêUG\n¼\0\0ô¬Ÿ‡Á¦ðý«0dÊg~{¹ÝÔ\ní-®cb½Žß^œWêœ”áhW–iQ79®½/«²ï¶§Äf˜ª²¦°«HÅýý59ÿ\0E‹pª¬ÑŒ€W†=y¬oQ:¤1Ìß+\nF:Á£â×ÄßøÎFñ»¡èm6ç…uØ­Ì˜ùUØçÒ¾rñÏüËàÂÝ>HõoYÉ4lÌVÚÒâhútó„~Oæâ¾Š£‰ÄfU#…„œ\'­’{­ºoÿ\0ìËé^’“Þ:Ÿã	6•ùÍ¸ã×µrö_#]M×e³.}Ù•Góý+ä_‹ŸðpGìïáÙž8o¼U«:‚–¶¶†û·Ú|ÏÅcjðßÁÏ<1ðAá_j\r0U\rÚ.\09é\"Gíÿ\0×«Âð–mRŠTèJÿ\0qì}j„ciÊÇè¶{æøÎi·gËÈ-ôÿ\0³Wqð½üÿ\03Lp9ÙÂÿ\0Zü‡ðü]}ñ3P¸“áÏìçñÆ²¸)‹’íS$uû<ØëÞº˜ÿ\0à³?µ×†–kí/ö?Ô¼7o2cí^*†öÂ‚	’çìñŽÝZ¾-àüâªu*SQŒm¼£ÓÊçŸŒÆaêE¨Jíúÿ\0‘úcã¯‰µ­AS¯Ÿ\"ƒë‚@þUãÿ\0<m\'„õÖöo¨^M.\"‰w`í\0•ç§ùô¯Í¿Á\\¿ië¦›íÚ_ì×á/<’Mßô‰$Lú¬z”Ž§þ\rqÚ·üã÷Æ	¤°›Ç³ËL~F\Z[kw“þiöò·â\'×ŸV\\%™¾i¹A7ýí¾ëœ”ëP]þæ~ é>;þÚð.µ+(ã½µÓb›OšÕ„dd•@]Fbb¥†IRA`G9²±\'ÅbêKÉ-îlÖÎHÄŒ±Èd|ïuä3(Œí=FæçœWÀŸþ\'þÖž	Ôï?áÖ>ê\r¬Z)âÕl¼]wð·UòË+é•#Ò½ïösø›ûG|4–+_ü-ðN³á»‰ÃÍwà”Ö†§o“Éº¶ò§\0òù‘§q<Gâ©NHK‘>ªî÷ô¾š~þÓÜ”`ž¶èÏ¸>4ünµ»ð¤ZØÍk®³¦òfÊ¬0ÜEòcÝëØW¹_]i>¤–ê¢V ›ˆõç¯ZøßQ×,ünš[XÞCu	ÕcF1ç(èÛ™HXm9V\0Œ@¯ µ/\\x„Y¼­»&rŽ	8è;tõ5êå•&å9UÕÙ%t¼Ïî¤£æw^(ŠÀ¬.\ZU\r$,[(=A<Šçþø´OZÚÛi¶ö±³<‚XÄX.å‰\n£$’N9<Ö]Üaá}^ènTµ¶iŠçýaã=ªç‚/®ít+èâÄ7Vé+ò‘ž½º×mjMÖŒ•Ò·Oò1EÈ×SÑ4¿}¹ÂÉ\rÕ±ÇüµB3øÑY6:ìw§÷X“hÉUê(¯¡£Q(¥*‰úœ2½ôGå44\nºM¿™¹aˆ3“‚p?¡¯¹t_¶>ýôFòHÑ¯ËXÁ;Lª²¶þyÆžƒpõ¯ËÑâV‡XE/´&Õn£ëOñæóâ7Å[Ü]=×ÃO‡†çVÓjÑêwºººˆdnY\'ºšÚÄ`å’W#¡Çâx¯—O\'›?fÌ**±‹{\'¹3ë/ÁH<añ;V™| _jZ}³Þ{-4µ¬xã—e`¾¿;ãÒ¯xóö¶×¿±¤·ñ</ É\"àÅ&­öéyÿ\0¦>w>ÅA®“Â?ðOßiÿ\0	-µ¯‰Ú¶¯ãm{ìp±±›Rk?è“H{K;s)lÁrral.q^©­øŸàçìÛð¦ëTÒ/>øCIÜ¶‹i%•ª»–Toé$\nI çµú<4\ZVÑ_¿õ±òxŠØYµì©õ·åÕß¿d~süRø!âÓÏý‘cñÃÅPê.¾ðoöE•Æòqþ•y,jCŽÑc¾8Åx—‹àŽÞ,Ñ¯u‚éžr»Fÿ\0~.[Ü4äuÙm¡[G.9Ý\'Ë‘“Í}µû^Á|>ü=ÓµK_‡šv¥ãmaFÛ]Bä5†™ªa‡|Ê®YŠ*Ç¸.‹»pó´Ÿž,ý˜</ã‹ˆÚ_‰<mãBÓ]Õïuëk½SMð¶>JÇ¥´ª«€¨‘b‡‡iJá± ò3N*xJ|ñ„ªIF×I¾·¶©%®®×héÃáñ8¦£(´­{-öév–½.µè›?<>%ü*¾øOâ»Ïá‡ìóe®XÊaº~¿×’3´ckW—Jzƒ•Œ‘Å.\'í-ý½e¦ø	¼N·’D÷rZ|7ðÆ“ ÞÇ\nVd6+ ~g!Ad²ÕôW‡ôßˆÿ\0?i\rZ4oüB×<HJhvþK]7KžKXåß\r­íÁˆÊ¬ŠûXYÔBÀ«ù½cágÀé¾1üðî¹â-|?®jÚ|wÒØoó›Nwçb¾èx<¯­ÀfÕä“¯«Ùµ³vÖÞKºîqf/²[êÕÖ·µöºÝ=ŽÏGØøâ·‰¯õ‹;gâ\'ÆOŒž.ÓÙà‘´xƒ_ºûNç·\"lÄ¹IÉdb0Oê7ì³ÿ\0¸ýŒ¾(ü.µñ·…~ø>÷OÖtÑ}i.¥5þ³\'˜U[Ê“í3ºù!@<7*Ex£ðRO‡—íáÁ®jzF›«Ú6m&ÚòKXu+Rƒ÷& BJ›P`@1®0PcgPø•ã_ÙûáÖ¥yð¯_¸Ñu)>Ý•<iÓ5“\Zóm=¹ 7˜€¢º‘©W\\zñµ\'ZÊ/_%®×·cË£‡ƒæø_.št}o¹ôÿ\0í1û4|ý”¿aÿ\0Š<‡áoÃ=ü3àíJê‹ÃQïŸìíöx÷yE·¼Íc§.~ø;áŽ©ðÛÅ	Ô5M{Í6žÓKÌ±^[ƒ\ZÌKDáÆåW$+ëÐ××ßðQïø.Í¿ííû\n/Ã]ÀZ¿‚|W®ø‹O}f8µÔ´ûÍ>Ü½ÆØ$ÙÞcÝGiû¦ˆ€†öê~uð_‚¾+é¿³óYjÞÖ\"Ò4Û–¾±·,VõÃŒù\rUŒ¿ïxá™Ž:bpÔª`èZ¤•äìîõµ´kçø\rOëv‹²ZYi3õ“á·üá_ìy§j^\rø©x3^Ö|E¬èQxOÓæ#ÉƒQ™Eå­Äñ‚Ìö!Ù•Ë6Rkd;äŠzû‹áçÆ+xCK¾µ¸ilï,áuY~la\0`GL‚úŠþxtÏ„—žñ¦‡yâ]7Yðˆ4­FŠâhÅÌjÁr‰ouèn%Ù5³ˆÑŒ£ÎŒ˜ÆõÏë§üããF—ñóöCÒn´=RëTºð½ýæ©Ïqjöò}¦)L¸Úê¬u4\'qÉ üÁ³âfQP„jS|Ñê÷ß®šY›Î‚Œ“Õ¿Âß¡ï\Z¿gû?kÑø—Âþ]‹\"Q”-ðEá&AË¨^:`m,\0Ž¹¯|FOÞ\\XÝG&—¯i@}»L™’Ž~Y\"<íuÈ#ž„Ýøvúù<y§Â<É?u#¼0íýzÕÏ²÷ü-»5­&q¤xËIÝ%ìzBydaÀ`ÿ\0Ä„€ùê‡`êý¨íÛ¯ªÿ\0#’²…KF¦ýùœî©q5×Â*ÉËY°BÇ§ªxG\\¼³ðv›jÓ6Èí\"Rƒ¿Ê:óX\rüo\'Žü5âëpÃ øáWl–s’‘^¨82BØ³µ²¸6?\0¤«¥øWÁ[Â±}†ãT¸„fKC\0[ gëí^¬eÍiGk~§›Rœ ù%£6lûJ”VY#eÎÆÆ\\Q]$?®µ{uo2îÅ{¨;Èüõ4V2to³\Zæ? ø_kyL&°†KUxÙŽà¸n‡‘žÕÈü0ñ?ö?ƒ4i^GÚ<mâÅñVÛ¬ì—HÒ/LvQ69stoe*3ò¤9.Uvú7üNêëötý›F‡§ÛØ7>\'jxSC‚®<ÙÝRV`!òÁ8ÃLœ×Šü\\×´_	øÚ?\røoRZ²ð–Ÿcá{Smì·‹Oì›I#æ.Ñ¼îà-9=A¯—Éa]gÖöô[þ\'Ý}sž¬i­·;¿Š&øñ’	æñÄ«íjá¤2¦œÖÂ×G…¹\0,NaËã$î$“àÚî¶²Eqoqn¶wìÑÈ0»¢qÁÁ{sÜcÖ½\";Û¨`o;RÒáEŽe›ê>V<ýjó_ˆºŸ.¿}u5õÔ±Í]4–ä*„Š/Þ1Ê“òªäûcEyt}œ§y;Ø÷(ÑÄJQ£Jòi$·mô;Ÿ‡_¼\'ðgöf“ã7Ä]O-åÓÁ¢i’sl»%òƒ²7îäw‘X2Û’Jê~Ë_ðRßIâÛýBÆ;=ÛJ&FSºÖkR~R\01:à)1m\\y`†W¸þÐÿ\0ÌŸðG]k4[ë}\ZÆúÖ;›Éy-ÜrÆ¤ž_0)É²@É“|g«økâ¶›}¯iš…·‡ôÛÝšŒ	¡\n>ËˆÖ?õŒàà1Æ\r|¯äø>#ÃâñyŒ}£IÆ)·eðò+Ù6–ëVúÙ…ln\rR¡‡‡-9i)r¦œ“\\ÜÒ³Ñ]?$~Òx#öíƒãƒÞéó[Û]i—2^i:–ŸþlÄc™$(Räƒ?)äc\'Ìÿ\0à¡Ÿµuçƒ¼áü/ñ½„|U©Äºn‹¢ÿ\0Â×vÚ†Ç_Ý­öZ;mˆUJ42aNâTÕåÿ\0\Z ðŽµ øwMø+&¥¯xÊkÏ:ãFÐô™/Œ®Ë#„S´¨1†P6âÁTdW¼Á4>M{âEÔ¾ xwXÖ¼]6«5® ßZ¤Z\\q£$²J²mQ)ÌÊŠ|ÃŽìŸ€ÈpÑÆáiKVã;¹JM»$š»óÒöVÜðø²8ºüø;Rq\\ÍÇÝI[yYéëvµ¿SäOöd×uIåmÆqâ;]Z×ÄZ•†•{­ž‘p¿4¶—ò­Ì„E3ÔOÐ¾\røÉ¢øáF±ã?ˆ:º×ü3${ôÛ{ƒÓI4QA2	Ø]Ü¸c„ØÎ#îŸþÍ>Ö¼Uma¨iÖ\ZUÖ™«I¯Ã@Ö\Z”RÉmöi#iQñ5«¨Œ”ÉFxc$¶ÅóWþð/YøðNóXÑ¯5+Ø&†ÇAÕdÔu¹5n!ûB¼·¢‘[Á4Œ#R–ñFˆ›ˆàw+ã˜æ¨`k\'N£iY«Y¾›/Å_mõgçù~_ˆÁÉÔ”œ îßŸš·™áß±×ì	sãŽ÷Si>+³Xt±³X’çHYÁ¾6*³fIa)‚œ+J<WûÞx_áµÕ×…u/í­fÒ%»¶¶š4‚áÙ-2å2è*¶Ñ¸¨-Œ×À?ðNÚ¢ßEýžõmQöÚÝ.±,SõäÅJ¬sôÎ;dâ¾Œøÿ\0NE¾…Zý\'Š\"ŒÏ¯J÷s\nµ\'ˆtë§\'cëpñœi©àä¢ž¶èþýOý«þ ø«áÞ½á­[ÃÞÔ¬<A¢ß‰oaŠÆ[=jÕ—l‘²®<Í¡ÔÇ•?)Sº¾ôýŠÿ\0hb(|oâÏÛxL¶7÷+y\'ÄJbi\\ü²<â5ŽV\r˜®ç†ÜÅŠuß	ÿ\0à¥?þ:èÖº/ˆnô+èüØäŽÖú4ž  ‡	&B°=j“Äýþ\Z|,ñ4izÇ†ü#â³$\ZÍ¥ž¹<zTrL­\'Ú¡Šk†‚ÞçÌPÈÖÊ’0à0Më¤e…©ER—›OšÍíòôÜäÄTÄÕ¨ïM·+mªÓªõê}I„îb´SÄvC¤“™)ôQÔýZë</¡M¦Ä»Zb­ŒÜÝæ?²§ðý\'×µ~Qüaÿ\0‚›j¾:ø™ƒá_ŽZªxÅÉKoì½]W`\0\\jE\ZÈ<ÀÄ*ygyKÖ„¿àºš—ìßo$‘|HðWšþÑî®t¯x”¼¶³®6ÇêÍ$ÁÆQ‘Ôù|*’Zž„¡S’	¿Díùâ2jžÇÚJQOù[Wÿ\0+ù\\ýBý¨d»?ŽZjZ\\Í¦ø¿Mýõò7—$¬1FÊ¼’Ú V9#ùŸã×üòóö7ýŒ>&ëÞ0ðúß|Høs§ÿ\0 iîžL\ZÅËÏ´Lê»\nªI(’@¡IŽ)0€ÏÍ¿\r¿àí=X™WÄßô;8ÉÆû«ªúŸ-í7Ï>Õè?à¡ßnßí¹Ð&±Ö\'´6ít—ö\Z…ü\n˜e r¥K˜‰ÆAR½=ÙaÞª³Ž—Õwôìÿ\03Å¥V^Ê_\'Ûþøñ—þ¯ûKüqñ$ºžµñWÄªò¹aoe/ØmaÏhâ‡j(\0êIÉ%}ûgÿ\0Òý>øgTÖ¾1x?Zðï†m]^ÏÅš5æ±=ÂÉ T·¸··YÝ&p¯\Zle8FUyÊ÷cœe^8W/5ÿ\0CMòº–ò¹à_\r>5ø£ãŸío¥x£Æ\ZÅ÷‰\"ø/á›ÿ\0\ZIÔ¹Ž+Ù#H¬b5ûDöµ@ËFã©ãªÒ`ƒÀþ3ÜM<6é$Ï#œMpq¹±Œ³4‡€rr@¸?ÙÂ·Z‡ìiñ/ÆÒ¬k¨üKñTvi\'uŽžD¤¯ûîè€8ÏØÏ ®“H·¾ø‡¦\\YÚ,×\Z•«ÇtÉ\Zn*·ì6‚;‘Ô{ág8x9¬<4§\ZZ.ŸðO¤ÊkJ*XŸ´ö3|9û\\xwÃ~+¼Òõi-î¯‹As9€¹mÀäƒ·Ýr:žNq^½¤|v¿øaàývøgþË}kH›I¿\"9Ò­¤Ì¤#2ù@HÉuS†Û´üÿ\0{û!ßxËâ=–¥¨X[G½ÊÉ2Þ^ó#VÜPí8éÎäâµ<{ñsÀÿ\0\rõ_ì]STok¿l•†Ÿ¦Î·S)26ÕXâßÎÜ (žy5óu²:*¼e„¼ºÉn¿5o¼úÌ·‰§J2úÜW÷nìÓï³¹õgÄ/‰^9ý§¾ZøgÅš~ƒ¢kÞ:–Hå»ñ¼ÖI!Rl¬d²fŽ2~Ì ïn†˜çó»Å¿.>\r~Ñ×Sh~0ÕµðÝÑ¶’ü@ð¾¡$jÑÍ¹$cŒ–•InFæaÉÍ{‡ôßüBø‡¡ëžøs&‡q£^ÁyfºõÂ·ï\"‘$Gk(ÑäuÜŠYd\00O\0Ö×?a_ˆÚç‰ï¼Aâ†þ6ñæ«vÂêîþ=hhdrÇuíÃpÎyYAUÂ€+«‡ò\\6r§M{²¿¸¬Ò{7»éefìµùuñV¯ƒ¥Gkï$Öén›é}ÚY^ýÇì#ûT+­xÑ|ec¡ÛøÆu·Ö´;ŽË\nïop ó&HÙž\'Ø–db£a zoÁ/ø,<?h­7ÅZÕö—p„™¤mJ5Q#šËoBWkƒÕ¸p~!ñ\'ì«ªN¦ûÅg¯]FÞSXk^>·Õ.­â;	<«o´³@w;(¹6ü)ðOàå¬rjŸüiñQ„…x>xR¾…Hêá{¸­‡¦åÃ5êWájU½úò“³N6·ºÖªÏm;½þóæ©qg±èÑ§w»YN2Þé[{ô³¾ÚY/Ù¯ÁÅ_²ßÆ?M=Õ®µâ(ôÐŽÊÚb³Y»);£•º7(SÇá_~ßðU_ÙöÂð0ðž›gâoÚ¬žeåí—Úu;Ë¸ƒ£2?–!Î\\‚Ù=|×Â¿ü/{ký¡áïÙ“ö€ø‹<ÉÜÞxêçOðü\"Y.æ¾a…\0¼í^Šì<Gá?_xTèðüý—|£ÌÊgµñ‹5=nq´†_ÜX406«&ÓÐŒqZVÁàåQTª×2¶­Ã™[Ñ7ò>zœý›nŠÞúZMkê×äyÏÃÚÏö`ýžln4Ýxêhï$2:>Ÿgr¿O1Q¤Vœ¸îÈQÏ»¿…·ïˆ,¾!Úë	~üPñð_+ìs¶‹qkÊå°|˜¤Ý’AûëÓ5¡ðÿ\0IøàÉä‡Bøµð·ÀP´{^Ïá·ÁÝÞã>¿l¸„ÜƒÛ;»æ¹¿‹¾ µidñ—ÇŽž\'Šë+¦­âkÝ:Þ|ÿ\0—jè¬>ƒ¡íYÊ†Vë{G\'9>üÎÿ\0‚üÍ¾µŒö|–Q[t_æu¿µ¥ÿ\0íeñòoë7ÞðßÂ½1Vâ[í#_Òt?ZÛ¸}Ñ1›T¼žKûÜ¶ûhãP£åÙ—ç/øSÅ‘[Ïˆÿ\0µìï$v1¼ºv§ã9<tºp\'”ŽÎÚ+‹xóŽUGQÅeøßöxþÈ¶þÑðÇÃßÉ?&dÕ#mJùÉË	ÞÍ0|ú0VŽ$#Ö¿h|5Õ$³’oNp;}\nÎÄØ.\rõæ½¬\Z¥UZŠZz\'ú³Š¥:”þ&×ßoÐ÷M\0Þë-®XøãCñ¶¢¡cû\'„?f(õV\n1„ûCÛB¿ï÷æ½·Nøë¨&ÞßCýœµ-BTM¿mñ øv†{Eä\\¼`0p¿{<×ÁWŸðQ:E÷—\'Ž/î¢Û”E2:çÑÕ±ïW4ø*WŽ-ejñÃ¨BÎÖ¤ZÈs×~•¶#&¯RÒTá/›ýHÃæJšpsiv¶Ÿ‹gØž%ð·¼i¨A¨|(ý|;W	#>©`º³¢ç®@†=Ã¶+Ìÿ\0eÏ…þ ýštßXé¿¾Ç&µr—S?‡,„+q*«þ”\n¶ì¨‰Â[åæ¸_\n~ß>ñPYMÕ­õ%S‘s¨K ¤0Ç\0ÓµoÛÒÓIµòlgµ†8ŽUC´Ì?˜þµË9\'K‘%éÿ\0.¦µSžþÕŸ¾$|tÚº§‹µ¯Gæng×îäº‘€*k°Ìªy(¯6ñíÿ\0¨]Iû©¯æÿ\0®Q¨_üy‡ò¢½j43\ZpQ…’ôÿ\0€qÔ«‚”¯);ÿ\0^gÔl„>ý|ðøEâícX³Ò£´ÙegksÜ±’{†yã-›™g;ˆ* þš:ßügá¯ìÕow¦Áàï6­})’í.|I¦Ãq&Ñ˜ÑÅ¼W~Z…rB³.Icž@¯“üqðûÁ\ZM–«¡ß]jÃO¸ÂVîÍð3$lS·gƒÚ†4ðÏÄ{‹ÍÇèêZ–æ¶ñD–6ñÈd*“¹\0+¸É!\\e3“3ÊðÕ®½ø·®®ÿ\0uö&8ŠÔÒ¥~WÓ·ü9íÿ\0àªZ_Åß	ë>±øs Êuë)¬¶O}©j\nÝaO1~ðl0rTãßÙãO¾ü·ÒôoXø*Òêêk¥ŠØê:‚Hçk,ÓÝEœî!yÀl0\0ù.çÁÞ\"ýŸ¾!Çq%œ¬–7K5ä_5­ÞÆÈÛ Èù‘ƒÈ\rÈ¯sÐh\rÅ>*¸†Ök™~Õ\0y’h\nüàü àœàqž]ˆÏ&·­—Ó§<W.ýÿ\0;£\Z8‰Nw¬õZuÿ\03ÜüoûPxÊçFòuO‹¿õµi¤ø„hÖ“7p`µŒ*¡ö Zðßø»G×¼D·š—ôû»ååg×ïoõk²§©-q9FÏûHE;SñÖµ®C¶×I³°\\q3¿™!ÊÛ¹®CYÓuÝBS=Ü×M\ZXþ`=r@üëL.%iþ¢±¥gü«ðÿ\03ß<ûIxgá\\Þv…àÄŠ€£ÜéH²Î¹ÇXŠ)oPTŒŽz\rïüÄ‘i.›\ZipªíÙûbdèm»JààXÜ+ã}Bå,lü–’FŒÅe“æBqó/pHÀ#»ñY)¯\\xX´Ï\'îG›¡öîÆ3ý?Î3•L\rUóM_ÖâXéÇM¥<KûgxÃÇÓ¼‹¥¨näË/™ RßãXéñ;Æ\Z¬Ë%Ö¥§i‘nËkãýÁ‘ø+åÝwöŒñ6¨Ø7QÛŒmˆúÍrº§Žõsþ>u;éAêÇoåœWD2JqVQKås\'˜®­¿Àû²×ö™Óü4‘Ûê:åÕÓ1òÂ½è·„Ž‘)Çó©o¿nÓÃú¦—öæ½Óo‘ašÒ8ÙTÀŠ™Á\0õ¯ÏÈ.<›˜å?3FÁ¹ö9®²;å´¸gÿ\0Y€Ž¾ÄW.+%¡UîtÑÍg?vÊßyõU¯íÁ™h-ô=.[[Xx@\n _aÉ5çÿ\0l/x“O[{Ë=6êÕŸ+¤7\nÀƒØãÜ`Zò­?Äv¶ÉæH¬ÈÀ`ztëéVm’<Sy>d!˜D²`ç#ðÀ†.Š¬­\rÅfRz_$Qº•¼U¢\\MooåMjD­\nÎŠ¤…È–ÀÈÏ\'Ís§Eû	ßw¾VnBD7gêEzÆ±áTø{¡G¨*­®¤§Í·XÆÎ“¸|¤pz¦j¸ì~!è©¨éø°’`|Ø£`q÷”€yþ!‚AÉÉà{ñ”è®IÆÚžµ…oz/^Ç”O=ìq²Ãg4	ŒŒDsøñXó\\I+¶÷fçœšì5ý2çC,dó!Æpwþëzû}…dÉqª¸Íÿ\0l\r®?ñ®‡ˆ|·¶žG;•™†$?Þü6§¥¶\"üÞdr}Ç¯øj+HÍI]Ù÷\'ü\'°Ø°û,QÆËÒI>wü;ÀW;¯É§ø¢W–úÇO¼šCóÈöÑïlÿ\0´\0?­rÿ\0ÚÁÛælc ªzŠü†)ŠÍ¼Ý¯ž“á>ŠUZ•¼Wðÿ\0E}ÑXÉqbÌFø£2.=›üxö¬\ráßü\"Ú÷Û-u6Iò<& ¹RA;[<7¡éžÕé5Yu<ûõ¦‹æpe®è¹òÚç,¹ºGDš¤Jñ›‰£hØ£\"µXð?…\\]&Þô‰®®53û±Ý2/â±µ«Åûuç\";¸Ô0îÉToütÄ~¬jIõm‡ýc/ãYò>†Š§sZ?h°J$û*»)ÝºG27æÄþUçŸtøô_¶4–Öâ6h€ésô5Ó¶²	ûÊÍïY>*Ó¡ñV=œÒy~hÊ?÷t?OQéšÒ4$›3¯Ë(Ùnx¤Î^N>_Â¡’Î¤Õ¬¦Òïe·¸_.h˜¬ŠOê¯zv ßjÇýÎâaœePíJôœ“ÔòJ¥Ù—¿JÓÑµå´a¸RÐºÃ’žØî+RÃá>¡8ÿ\0HšÚ×ý’ÞcûçÖµì>ØDËö‹«©½£ÛþµG3XÂiÝ¥íî~e¸ˆ¯oœ)ü5×ü*ñ\rŽ›uåÎÍr°fDHÈ}H;zsßÞ¥´ð>‹§.c±ŠFå&OÐä~•Ûi7«¦Ù5¬*±µ\0QÉ‡Á(r®dÙÒéóFÒ0üGyãÛÙ$¼ŽâÞ]‡|f2ûŠÏã×Š’!±‚8aŽ8á@D*ŽÕ&«yö†ùÏÌ2=?È¬[¹äBõ®™UgÍSs›B•–ì¹¨ÛAª[<Sl‘_†V\rõþ½Gµr2øÖÃVŽFI¤·ÏÏn$ÚÍþãžãû¬A?Þ5¸/X¼¿©>ÖÓÆc++r:Õ(ÙXÒ¬c#kÃ^ð¾«§–1Ì¬pÍ+;<N;cò·Q‚_¥‹n&Ó®Öí+avnŒ*îä‚}˜v¢¼ú”j\'î7aF·*åQ_q©©kko6ý¾ç¢ÖoöõºÇ¸Ë^äžXøyñs\\øMñGñg‡5)4Ÿè‘ßé·‰s5¬èrŽEdlpÊGµt–ßµçŽ-.­ç7ÚMÍå¨Ú—Rè–~p]»vîƒ€¸\0€b½Mì¿¯ÀÖUWûb>Å[±ÇjDÔÖO›‘íÚ™ã‰Z·ÄKÈgÕd´w·R‘k{EU8àˆ‘wt¾ãïÉ¬Ø.¶Ç÷¿\n¾[-EíÔÇ~u/_C²Zy¨	ò¸ÿ\0¾±ÿ\0®bº‚?|eûIøªãDðF…7ˆµ«[&Ô$´†æ¤h„±@y®äi§‚$I’I&Y˜Âhšìzv§ÓfHl?ç¤mòºþ*HükCÀ_üQðV_iÞ×¯4yuÍ2\rj³Ù°I¯,\Zx&x„˜ß\ZÈöÐ’Ñ•fMÈII[.]\Zˆs;\\öûÏø\'‡ÆM}JßRð¢iw–a~Íos«Yÿ\0ÄØ‰\0¹û,¢SËg’[¶WÅœp¹œÅ‚E?`?ŽPêºnŸÿ\0\nÏÄ²j\Z®«e¡AkŠIÒþóí>E¬Ñ«–‚\\ÙÝ,‹(S[ºËå°\"™âø*ßÇŸëòjº×Ž¬uMä¹˜]_øWE¹šr\n\\¬O%™h’xH¶•#*²ÚG«†·Š8RÞ“ÿ\0ƒý¤|?rÓXüP»³¸‘ÒK‰àÐô¨ä¿u”Ld¹aj\rÄ*™$yw4­$¬åÌ²ÅS¯kÙ~!íÌh±§Å/¶›q¦ü7ñ¥&±‡%›Åd$y¢ÖZDÒŸ#•K—†EF8PË†*HWUý„þ1hÖös]ø6H,n_Ê’ýõ‹°iÒ}‡ûCË¼¹óü›)–n\n\\¼L\"ÈÀ«vÿ\0ðW¿Ú*ÄEö_‰×\Z{CV±½žƒ¥[<vð‹‘¨híAðý²äÇ\0\"8Ú]ÈªUJáüHÿ\0‚œütø¬—ñë^<’H5]*óD¿†ÓEÓl!Ô,®­­m¦†t··E”l­K‚ÑthÊ0,o—~Ÿˆsš\'ý~.xGÆºg‡õ/èÖZ¶­ý¦`†OèÛ4Å•µe]˜àŠÛÈe–VHÑà•o”gÝ~Ä_´ë6;ïßiQê¶ò^Áu©ÞZØY%¬vv—¯u-Ìò¤Û‹{û6ó¥tŒµÂFÉ”Çüßã…×Š4joZÍ©h7ZýåŒÏá½%¼™5×¹“VÊ›]®—-wpJ8*›Ç–#›s.?à¡ï¬,lo|]©¥é©{¾™©hzmöš‘^Ci\rÄ&Òkw¡aahâ&B‰4:*ÌZVµ\ZÝl/hÎ§Iÿ\0‚y|nÖ`Òïáýý¾“«i/¯Zêwwövšl–*<×k–e·UŽ9#wÝ (ŽŽ@V¸oˆþ×þ|F\ZŠ,WKÕ/4ÛkÏ²¸\'–nbY­üÑ·”ì…Ë“lŠ®¥”dg±ðüKã÷€naM\'âÖvË¢ÚøoìŸØšd–an“Çm[Ë¤wW*&+æí™r0šüqøóâŸš¾ˆþ(Ô­ï—ÂÚDZ‘¶›i§Ãac²Ì¤v±D˜O+n ·Ï×@^Î¤›Sµ¬>}\nw÷¯îHëüª„Òy’sŸZK}z=f-¬ËöÅ0òÓÜ{ûUyåaœnR¾ÔéÝ=w9ù­£Æ+gÁžÖ<{¬®¢i×ÚÅóG$ÞM¤fFXãå‘Î8THÑÝ™ˆQ‰ TtïM¤Úy+g¤Ì£?5ÆŸ²s“÷Øïëéè+kÂßµïëqê\Zâè·QÆT½„KjŽ>l@W+¸à¸;IÈÁÁ«•í ùû’ÎM:þk{Èå´šÝŠMècx˜pC+`©Œ4W7ãOOâ=BFšîâöY3ÜM3Jó\0s’ÅF8ÉôìÂÕšæ½‡§ÿÙ'),
(3,'Morbius','ÿØÿà\0JFIF\0\0`\0`\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿì\0Ducky\0\0\0\0\0<\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ð\0À\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ü#4è£órº2yè)¹Ïÿ\0®œÉõ9<õ¯PñÇÜ°‘~EÚ£žk×cß„\Z‡Å¯Š:ƒ¥ÇnÚÇ‰õK}#OûDž\\F{‰R(÷7ð®ç\\·aÎ\ryä…ä³uöôþµôWì—ãËÏ~=ðŒ4»M>óRð½ô\Z½¤7ñÈöÍq‰b.±º;p¯´0ÉPTyqÑ#²ðž–°Éûß>ÄÇ®}kØ>\ZüÖ>&x?ÅzÖ“méÞ±‹QÕ^G²)\'XF¸Ë¶YŸhÇîâ‘³ò`ù?„dócrÉ¹¾aÐŸ¯õÇåÒ¾ ý™þ,k\r|âhðhÓé¾6‡ÈÕÅši\"[[ËPˆÙýÞöI2¸mñÇólÞâTó: Õõ<çDðD·²m	„$äsŸëÓüô¯NÓÿ\0dÍrûàC|@éßðÙÞIg$ij7µä3’úÑ2	lÍ¥Uˆèôß†ë¥Ë‚ bm,€zczß@ô¯O´ñ®°ß›áÄ‹kÿ\0»êêÁZ7Þ—OöÞä>Ö*¶æ5;8K‰ú–Æ2îk£>j‹À­å¯îFÕˆ\\½¿¯ó®ÿ\0Vý›n¼+á\rø‚öm<Ùø²	olm’G7sËoæ>P\"æ[y\0Ëa2UAÝ¼ð	Óo$‡ËŽH×;\nÊsœÿ\0\\Óœtì|Aâ›¿ø7Â~º³³0øBÚ[;”{…”Á%Ä÷%$F”ÂO™q\'Ì‘#¨ƒ©dîm¦yPøi·¸ùv¦g•ç¯åÆ¶¾3þÈÚÇÂ‹½.=R;#Õ-~×öWrc$<oò‚²!à®8È yît­5gŠhú|»vŽÀcõÇOå]·ÅÏˆ\ZŸÅ*Â÷R³Òá\Ze¿‘VhêŽÃ;¤}îû™¹<mQ…ÂŽó\ZÊIÜ^Í§ª>[·øL³|«3I•Úà(SŒñÿ\0×éÇµU¼øN‰ >[I—/÷¹89Nr0O{šúRóÁQÛ\Z«l.»ˆÏÊ½:uê#ÁÎn½áEâ¤k\nd\\àw?‰#§<~uíyUÃÙÞGèŸ³ÅÎ±ám{V†;±xr\rædÙ óæG´ÏÌsìkâ¿ÚÃ±Ùk×^xÛî›@ÇË–8Ç»²¯¾?/Ô\rZ›Á~ñ6–šv—ycâKT‚çí¢PÐù2	c–3©†V¾`ÊqÊµ~rüsXõ\\\"K‹«†$Bª±€w<nüsèG»’ÅÔR›éo¿SàøÏ¨W¡A=eÌß¢±ãïû1x‚o€ºoÄ£.máÝS_»ðÝ…¡–_íÛ‹X­¥¸eAbníòÍ c¼íV\nÄ]ð¯Â˜´}µLÃ,Ù0Ä£–ç©ö÷\'é“Å{µ¯Ä«½ö`Ò¼©iö2h:N»yâ6ö(¯Rx.®£µŠd.o³È¬-!\0ËÈ™“k\0ìkZš]Iœ÷3Í†“ÈL%`¨9\'®FÎx\0¾Í,/%ÝOëüÏšÏ*j=^·mo«2hßƒ—ß<3à›É/¼3}Ä]õÝ.;+¹%žÚÌ\\ÍjÍ2˜ÑQ¾ÑmsošÞC÷v³x\rŽƒªx‹ÄÖ¶B’âîuµ·@@g‘ˆU@x^I°÷Å{ÆoMã\rxÂúxcð>ˆÞÓV(\Z9ZÖMJûRÌ›‰ÌŸhÔn0@Q³Ër¬Íæ“x´ézœk¦ï¶¸µuž;¾\ZXåFœ6F7œäpzâ¼üDeí¥ò>›/­N%\nmuoÑ]þg¢~Ð±>±û4xú‡þ4›E}a­¾Ñis¦Ý‹ËrÂY`p²\0Râˆ\\>xXÈQÛÉô?áµ·†y\"“P¸<œD‡#Žxfìâ½ƒãoí\'âoÛ[âûøÛÆ:6ŒÂ!lôˆ%¶´;çžæM‚Ye™..n&bÎBù„(TTEðåðž£â¨\'Ô\Z8e¾¥a#l1D€’ÀvPƒ¯@]9JŸ.»}ý}WO_#XòÊµZN§ºµKÏ]¿_‘ñÁxGR+ÙÜ)š,òSœ2Ÿu<W+_@|eÐ[Å>	Ž}6).n|æó&Ü)PXã°Èà·VrYÌÑÈ…]N®lM>Ih{™9âpéÏâZ>æñÈíNTÜÁJiQB¾Ñî?A]`J‘ï¸T_P\0õ¯ ü¦ý‡H¶óýZ¤ãÛù­xG…,¾ß¬Â½³šúŸÃ^’ïCŽÚ¯[¹ûÀŽOçÍpã%²aÊÛÐ]W³ÑoüëÉãµ·É!ëý3ÍzŸ‚?i?ørÒ9ácØ8‘—– q€x-Æ~b;“×ç¿ˆŸ5Éîn\ZÞÍ®’ó©üŒŽ§ž8žµæWq]x^}×ÉŠIå±ž{zàÿ\0Ÿ^u†„ã¸s5¡ú)àoÛgGŠòâIåhãcd¸ýÐàv$äžÙã<	ö~×ÞÖ!Vº¸Ž8ÚM«NwúœcÎzäz~B¯Äy-£òÖYcdoºÊ0ÇÝ\0{õã×\'6¬¾4êiŠ;ÍÄûIA;>@Üß.Þ@\'<N1‚Y|^ÂU&~ßhÿ\0Ø~:†Üh·^`˜+Ç³ï¹<)8êx#¦j}sá¼‘Ü´{C,!L­eaž§\0™ÏqÎF+ñßÀŸ¶¶±àxämçP±óç_1™Y²yÂ¸tÊ•Æ	èy>iÿ\09ñv©wk%åÌr4Uds´í‚Ý\nI>ø®yeó7Ž!Ç¡ú[ÿ\0÷öv³pÐ´{w*‡êy>ÿ\0Æ1ëŠ_jöqÚÇjÿ\04qB¥€l1û­Ó×ûÞÕñç¿à¥Ÿ5 ¿’ÊK€\"¤{£d•rQ‰ùW9»qwzgÃ/iñ†ý¤³vheP8l¨^2ÍÐätãîkÏ«…•-ÎÊx¥=Ï¢fÖ¤Ô-´›©6í™U\0®à6äúghàrHÀêN­ž€ºž¯n|ÅÊÆ#Ec0ƒÛž¸ñ#šñïÚâî™ð»áëý¢E·ZíÁ?!]˜ÁûÝ@ç$qÓµ|·®ÿ\0ÁJÇ‡uM>éµ+{§Ógc	X‰ÆS•Ï\nxT‘ëÈª8gQ™ÔÄr«ÄûSö†Ö4ÿ\0	øfæÞ	¡k»ÈŒ@¬ƒ÷E²ú©¿ Ž¤\nøóGÓdÕ¯u-RòI·›–¹‰£Œ€7ÎTãåàfi™5ÙþoÅq%®¥âKÛ‘m¸‚Ñ©+ì6A ‰üN;WÊ~.ñ#Ách×—WÍkpXyï¹ÚfÝµIØTÊ\0Ïs_L«GN4¢®Þ§ç,Ÿcñ8©IÂ1n	Ûegn—­Ïxø—ñâ9n?³ô›{[‰]ÂÄ±}¡à˜\09ÍŒ©\0¸ŒüGšó[µ›¤þÓ¿ŽêA ([ÉQÑw—Þ@à€áMð>“yâÖ´°KQöëV¹†öT‘ÍÌjUX±8*\0‘NÑÐsº[ŸÖu]RÃ\\¸±Ô!µ³’ò¤0¨PéÆHÆ1†RCßž\ZÙ…Zš³ô\\¯…ðYjö÷—Võwê½{å¶££ÁcšñEöˆ˜••q¹Ôðp3Àù°20È9^>/Áeâ&’ëæ·±Rf«àŒ(>çÛŸNjOéñÍâ!3nxcÙ¶9õÏ5¥â»«ÂÞZ«k†v?z(‘Ï@Xœžœzì¡YÔ‚•E·üæóœ,)ÒÃI¥-Ó{7½¾HÉðþ³5ßŠ÷Ü0’WrÆ4\0Gn½BëŒ~µGHÓáÔ5\rc\\¸òüé	vsºI9\"@sÜ)\'€\0ï{H¾±Ó\"»Ô·¬o°ulíþ8¯8ñ%Ì“<2]y3ÅÎÛ¹Ü{ŒþgõT•£vcÂºÕeûªÉ=5}l»\Zþ;ø»ªxÇP†6Þ×%!‰x/“ŒŸïêIúÕ_\r[øfò;­bC4ßëRÖ?™¥=¾€žçŒúgKÀ~»þÐ[éák«ÁÌVÀáS=7ŸáÃœtÇZê5¯‡rx{mõíÄwZµã‰&á{qì\0\0ÀJãä©YÝì}Åà2Êj…4½§nÞ¾~§›þ+GOîÑoÖÁéú×q‘Ó|,·óüMn¿Ã»\'ÜW×ÿ\0­×R¼L+4r`ŽÄõÇ@p;×Æþ¿þÍÖ#¶°úõ¯¯¾_¤þO–ê¬íüDàwê?žõæc“ÜÒÅcÕ|Sà;z4’ÄH³,\"9\nÇ¹€ã\r‘ÈúàuíÒ¼wãÂ-¼?q{s¥˜nvm2H›¤sè¹ù<uíÈûá&‚×ÖâVU™NÌ®íÅ±À„œ~¸ÏQñà-Ÿ|0Ûì£in“b©ÔrGbGnH± øÔqRR±ÝS¹n›àž_±¿ÂÏk\Z~³âÁ½g;/ú4À‰¿½I%ž\\ƒ‚êkö¨ý€|ð³ÂÇÃòh7š^µ§j¾‘âí.v’ÃÅ.GÙÓäGŽ;¤N$‰˜>àHùqœß\Z~ÏÞ-ø)âv‡Gšêa¹“Êoß,§¦J©ÏN1Ô\nÐðÇÆŠf—t|Aª-Ä7WsO›\"ü˜XÐä€Ê9Ï8ç$p¸úl6>š…¤®|þ+/JŠtæâÌÿ\0…_ðGÛ?:-ÇŠ4=OSð×ƒô»¯5Õ.¯¨LŸfL#4	3(R¥œn?*øÃölÖl>#Íáý.K}RO=¡µž»#œc$ç#=kïï\rø»â‹ôÈMö·©Éo$÷-uÚª•Y\n¨;GÊF\0n† GÞjõojwV¬oü-áxuY#ŽÖI“MˆJåH ¼Š>V\'¦1ò	Ísb1‰ÊôÕŽì.\Ztéþò\\ß¡ùgá¿Ù«ÆZ?‰íaÔ4=Jf1•x]7ãïuÇAúðkõkö5ý›að\'ƒtðªÏÐ\0®Üœäw9=»kãíëx¾×F’ê%‘¬mÝ¢bŠ².ï“Ëb]WË`ãŽÃ’}ëöNe¿Ñ´»Y¤]À\0@Ú}3ï×?‡ÔyXÊÒšIâÛÐùWþ\nðžMCÂ×‘Ú¼Š¶ñogî1\\Ÿ›‘Èç·qßŠüçø[ûxËö†—RÔ´øã³ÒleÛ5ÜåŠŒäŒÉÈþuû)ÿ\0³Ž/‡šÍµ¬m¹b<Ç÷PN22	ç¶­|‡ð\nÎKo…iñÍ5ªÝ¤h±£Y<ÜFû‚žr6õÏ¹¶Rø#»v9sGÕèÎ´¶ŠoîW>Aøóá›êðn§s\r½ŒuyæÌmÉŒˆãˆ–ÚÛrbwÆ.G|Õ¤¹ð5§†?³u­3Ã~+þÏ—ËÓ.lõds2DÁòÆùËe\0’¥%O“W;ûN]Þxÿ\0ãç‰u&†I †v²•\"‹ôÎ@Èôê	ÈÅ7á†»k=ßÏsqóo¹0qƒ¼•˜†8\\m~VÅvc0Î½m.µÓå¡ÝÁ9Äò¼º*¬c>hÞq•š¼Ÿ6ÝÓv> ø·û\\|7ø‰ð;ÃwÚ¥»j8ðn‰oáO\rxkKÒ®,¬´\0{›»›‹„\nÏxë1G0»ÃÎc_”d½ƒÇÞ Ô/õ8lìaU™<²ßºÚ£qùy!s×sé)Ô¡m>o³XXÙ‰$ffÊme\0¡&÷E—øG÷ˆó¯ˆ–k[TšÕcytkr;	\\*É´@Æ c¯ÝÆÕ0¾ÅsÏ[.ß™ÉŽÍÞ:µé¾G7¥ž‰o¢Z%§­Ë¾O·‡Ya,Ú¤ÄìŒ°fHÎ:.r8=Ôõ8îÕÅ¡\'ôk_±¬Ë\rœxòv°€Æsdn:V÷Â_ÿ\0nCŒZµÜÑ©YefgV\\FSƒÈ2G±Ðñ=èÐ´©ía‰Vwò•p$<m©ž½9®¬,}­?{OD~}œc>¯ŽJ7”ïy§£ÑwéµÏ;ð7‚\"ðæ‰Û‘U÷É¼Üý¸îy<zý+M~Û__Üj×I6Ÿopsæ;f^OÌFzéì={v>Ñ-t›x¯µ6iæ¿u\0=±Üûž•_Å!þßI\ZöC4@óŽxÏ×ƒõ¯KêÐQ´‘åÇ8Å¼K•	5}_’_©ÎÇ«Øhv³ÿ\0dù6ÚMŠ”i™rÒËÎvž®þ§·=kÉ<kñŠæåæ†Ê-òwÜJw?>€ð>¿Êªx‹âDÚ§‰Y”ùZ|-²GÝã~§Öªø»M$¶[ý=w*ŒJ£µyµªÞ6‹þ¼ºËrˆP¨§ŠWrêú?>íýÅ<ûþ”gßô£ðZ?ª=¢k³Ü+z\ZúKösñ²ÙOn®ØRB·éþkæ„®ïá‰›I½|Íªäçîö®|M>hŠö•ÏÕ/>\'G‚ßæ.Õ%·€Aû£žàuÏ^x¯£ü*-®aU‘Õ•°-Ÿ§lóÉ>Ü÷â¿>?f‹{§Ç	m¬€F‚0#¡Æ=:d~YxâšˆÞd©¹r>˜þ¨Áú’>µòÕhòÈöéÉJ\'£x¿Àºv·qºâI™T;zué×¶xÏ¯n¸:_ÃA²YÂÞFXÂ®™2sÜ@Æ¶,<E-õ¼QÂñßu•yËíŒýý!Ò<ûU³,XÞ²ùeÕHçƒž;tíŒ÷ÍÆ¥´9çEKTqº€h-RÞÎr\"Ï=©ÆrA?Xð‡„WG²Y$HüÅ|Êåà`ã$õÜ§o:ó]¥—„Äù¿¾Ã\rî¾c.Åä`œã±çÓë\'Çzºh±´&6·e`À}ÂÇ#œv9=*Óë\Z‡±÷lŽâ”§ïnßÌŒxÈ\0ü¹ïëô#·5ë_²F©ömFÅT¯úåw&8äqžùú‘Ÿñ&¹&±+eÿ\0wÎQ¿Ÿ”{ãŽ¿0ê_²o/Šl×çUiñ…R	ÀíŒãœ}j9¯#EMEXÍÿ\0‚Žx¥õ)õHpU¥•à|î%¾bsŸ˜Žy9ïšùsÂ\Z¼~ørf“÷MjÑÛ¸•#ÿ\0@<óýkè?ø(%²ŸêQÄ¿¹[¶uHãÚc$ìGäz-|{ûBø¥ü\'ð‰¬#|^jw\n tPÄ¿á¸ß&»røÉÖ´{ßî<.(Œ³¦¥ö’þÒýO+Ò4»\rQh£“Î™âyž<í,Ã–e g$ƒœñƒô\"Ÿ>[^Cç2ÜXÝÈ@†hn×#¦ô †íœœÜs•¯!øã›ÿ\0…¿!¸›ÍšÆgÝþ§~·!‡§_¥}ayow­XiúÔEåÓõ\0AòÛ`F#hÇ»Î>lqÏ?.+ê0²§ˆN´£ùžfÒÅe3¥]Nôê-þmíëësç\Zø+ÅºDª«eòÖ´F¥Xg!”Ø]Çåm§iÀä¨®Mðž<¦µˆH§\"`7Q“ý@=¿\Zú›âO ¸ðuóZÇº<kÊÆFÍÕsÑzcŽæpªhó\\jVæÎé”¼ˆ¹Ã7fÁõ#õô¸ñxi«¶¼ï¡ëd¼aþÉ&¢œ—D­\'µº½tcøáõå®©oc¦Ç»jƒ$…3öUnI\'Xä~8ÝNµ¡Ú&µ$6ÌÍo¤[y¥¤;žIˆÎX÷=9ãðÍjø/âøvÞö3w×JAdŒ#4¬6Œàcb‚N`vG98þ(Ôtïx=áY¾ÑqvM6s$ÌrKz“’Üûæ½<iÁ(Óõ~GÀfxÌ^+*•“»vVë}[}¬´Hò|M¼³ÓþÁ¡Úýªéœ‰fPO•Œä}zšòm[Çº„–’Ç5ã~ð`Fƒç¯½w—2Â+m¨ê-#[Ç:ì…àÄœ“Õ‰ÇS^G{¬©º‘í¡XwÛ˜îÏÖ¼üN\"Z­ämÆIAhÖ½[ë~ÖÛA¯bwy—MöxñÂž]½€ÿ\0\Zè¾_\\%ýäÿ\0«¹ˆ¡2±çøÉ<œÕè0^KUfûªX1ù¦=€úœêO 5b\rvã[gko›e1ýâÆ>yû¤õÇùé\\1”œ­\rÏ¬«Jš‡ïþíèUÞ(Þ(ËzÑ–õ¯HòÃrÖÎ8@>f­ÆùÍcdúÕ­.ëìÓz†©–ÄÊöÐúà_d³¾…w*¸uÁÏå_k|!ñÜzµ¼b&ýë®U|Â£¨éÎ?N½ðkó¯À\Z–Éceÿ\0YÏ8ô?çÞ¾¨øâß’8Ûc3.`±ôÇÐ’1“œôêðñ´lîŽÌK«3îÏø…0‘±²vî%±Ž9íþ<wãÑ¼9|ºŒqù&Ü(T\\o-»8\0m<ž:Šù£áßˆåpÆÇÌ…“!ò+\rÜ`t=Î9Äzï…üXdÓmÑ³&Í­ò“îxÀëíŒöé^<äÓ=HE¡s;iÐÇp€\\(¼Â¸b6•,prp[€Úì|CãˆWK™›Ì±¢¢åþVùïéž8^œ×_¨ø–âÓJYË‰eÜ¬$N\n³d?\0çàžqá?nä¸»µ±ŠÞ7,ÃŒ|ÞüÎ3×­*KšVaQ¨Æè½áíb=Bå¡švª‚§=Sœr>œæ¾ˆý“Ò=Æ6óyqÉ0‰ÆàƒÁèvç?N¹Áù·á[Zêwj­s1P\"8àcž;ñ Î0kè¯ƒZ,—z¦Ø|Ã+±€¤gðãÓ€ôÒôvˆCUvcþØÑÛø“T¼™!’O:v“ÌÈÚ§%†\0\'çxôüÙý¨|Qý¥ã¦³~Ñof’ÙÂNv‰HÚXûO™“þÁ5ú5û^ÝŸhs¶=Ñ1ÊÈÜ€<rËÉïgŽ\r~dø‹Ä\ZßuŠhÖÎÌ,vÌäæI¹;È•f±Ðakè²|+ön¼º»/Íÿ\0—Þ~{ÅÙÄV\":~÷*æ—ÏH¯]onš3ŸÕ>Oyán\'U’xU¤‘àºŽ¨r (=\0oS]oì«ña´MûÃ\Z¬?i‰$Ûº#0˜RNz`cižñ.Ÿ5Ô\"Ošã0grz\0}³ÓÏ|G¬É£ßC¨é2I¶Îå²ª6>Ì#:u`ppG­zU©ÂƒŽ&î·Iî|®Uó:Ur¼]¹dÓŒšÒ/£ùŸBøªõ¬u¹ºVdŸ& åšRI«79 œn÷ï^}«x’]\'Äl58ï-ã*í1]ª²\0+zª\0Gøu­ßxµëõ¯´[¶Ø‹Y»7›n@\r4ŠÜ–ÚHÚsóqÖ±>%iv¥¼¡ž4g˜ìùˆn@$q’r?xÎkzÍU§í)žQMàq/	‹Õ|;kä×U÷ëØ.u=F¶›R›ÉX-ÆBˆø<ô#wçÛ\0×>«sñ*þöo*;ky8‚R»V=[nž§Šåí´­KÇºÌ^[Hö¶\n9:ä±Î1ŒóÜôôÆÇ‰<qg¤ÀÑÈñG¦YuÓŽ“òŽÃ•{¾ò±éâpŠ5yh¾yÿ\0é+Ó»þºœ_í5¬~\Z·Óí$‘’¸»šsÏéý1^5§[[’÷—Hße·Âù¦O§RMvÿ\0|M‰<[-Õ¿›ujˆ©J»#<ãðü+ßkƒì­µAÂ†U?‘9¯?zÓné¹5€ÁAb¯]w»îdj^/“Q`¾LqÛÆr‘)ùW¶}øâ™e¯Éö˜Õ#˜à|Øë[\ZÂ««Éd3y–°F4Œ›€¯=*‹xZÞmR8íæ‘¡ÎÜrqÉéQ\Zu ¬V¦3ZM·w×±&?Î(ÇùÅ&Ú6×YÈ.?Î)TìºM7m( ³Àþ\"Nº‡{mpÙãŠúCàî¹‹¤ýähËÊ‚¹\rïŒŽƒ×=·ÉV“2¯Ëøƒ^ßðÄÞt6,Šwl~ï\'i<ä‘Èã·ÕÇŠ§xÜÎ/’GÝŸ\rõOµÛÆ¬¾d¾_–ÆAÃ`Œr[–çé:ãŸWð­ÁÕÌû:«•*ù^9 à`Œóïó§Â«YÂÒK´.%Né•8ãŸÇ#pGº|6×Vç*¬¬¥€ØWn¡%H0z_7ˆjK£Ò-´i.|¶’0@Ý´+Ž­œ”÷ì=¼söþ…¾|&Óõ\'Š{_í(¡œ‚h*àvŽ¹=[Zö­7ÄvzM²´qîTf–‘²8êOLFzzpŸü}á‰>Õ<?¯G¥¥ê8î!Ýò%psÆ>b„0999Ð•§{¥œlÙòÀOÛIð÷‹ÎòHçh¸ÝüÌ§§ËÔãÛ8çŽs_¡?³ŸÇ}\"úukkˆä†HHÉ—¯\0ã‘Ð{\0F3_—ÿ\0´ìaàÏé–÷ÔµM?UÝ#ÃÒTùjŒvžXŽüà…\'¶Oð{ö±ñ§ÃR?…š]jI–ÒÚ%Lý¦Vm¨8Ë1¦;ûcêª§½K~Çqœ—Œžˆûïþ\nÑûTÃâF¸‘chZc$Æà›sÉûÙã\'\'åQèæž©ñJÚÿ\0Ì³Ó&söK•¹O0‡ûÊ³ëéÒ»ïø)‡Åˆµßé:uÒ^Ú¥ºÛ¬ñŸ–eˆ¶$\\óóSë•9¯šôšÎhn—Ë™y¾b9SŒÿ\0rG¡Ç½Êõ\"°ðÚ?ž—>†òåŒ¡,×~z²”’}ì—Éhzˆþ&M¬i¶+Äm!E+*älÈo—ûØ;	QýÌS?‚|Sý¶óyÚ.dë³÷eÎÑÖþY“§u†<Öxá¶»†Þ¡peT,	ÆÂË–QßŽ„ð>\\rk[Âú‹[#nl×÷3”0FÉã’HÁÏQ·Œq\\²©>nf}2ÊèF,šù»ÿ\0]jøâ¹4½nM>%á¸csó7ÉDüÀvù[sŒ#Šë|_¦ÇªÇäY¬ò}¡€.r<Î ¹éòŽG=‡lW”x3Ä6óN·‘¬žm¬»[ns÷³ƒòîÆáŽ¼g§>»âoÁ xmeµU·VŒÉ$€ôžOÿ\0Y®ì¶Ð‹ƒØüïŠå5…HÇßjÏÕuÍ_ê6~Ò¦H¤HÕSb°#àç>¤œ’OÓŠðOˆ>/‹T4’¶v¨Ý¶8Æz“ýâk§Õo—Å·îÚ…Ñ³ÓíÆîYO|öüëšø¿á[}/Ã¶3ØþòÞà–2Š=?•gˆ¨çÉ²=ÞÁQÃb#íï)Éü»ïßÈâ½5£4sÉl6»#mßÿ\0Ö«ÞÕ‡$7V“¶Íß(ÏùÅbË	Šå$|ÀTÐÊ©¥Ùó\ZC´ãÛ¯áÆ>µçÓ¼6?CÄÆ5—¼´}nðÿ\0Ä=Åº7öV™$YË‚ ÿ\0úë?NÑ-4;3,1ùÌÌ\"åÞÌÄç\0žµã:œuÖßwšÍµ6žIé^g±Ò>Ä³¼v¬›‰ÃÉŸïU}‰>†½\Z8—SâZŸ%ŠÉá…v¥7Ë\'vŽ+u©sþsFÎiØ›¨ÝKŸóš3þs@\nø×Sðû^:f§Ö™†åCŒŽŸJåzšµ¦Ýy³·õ©”n¬Dãt}¹ð“ÅQÇ ÂÑ·a±{Œ€9‰ç9ë]7ˆk;?Ìšu„±I¨)ÚNâ¨?.Hç$©\'û‡?Âkæ¿|K–×ÁWRÆû®€X“.1‘ƒÔ`õ9äq^c­ø’oí9\ZœÃ·ÌìÜ>G¹çÓåýN2›s.5Ÿ-¢}Iâ¯ÚËTÕ/Týª\Z4«*®9”…Æ9äc\r…ãj­eßüok­/P°’ãÎhîVåyŒŒ’©g’RCsÀa»8Æ1€s_2ê^1¸¹s!oä|cž=\0\0uàÓ€EâÉ®7yÒæ+«{oÀ<»Æ:`bºc†‚ØÏÞê{\'‹>(Í©x—O¼ƒ6ö„F‘qþ[ËèQ›s·Í¹ƒ•÷~Ó´/øÛMº¾·’[íäÔî¯™UD\"\'+\nG´Ÿùlñ£)<Ÿ\0cç+Á+™˜ã!%Pä6\0ì»— Sœdšô}+Å’ø7á¦¥sjd}C\\˜E´³±+»CîïžÕÛ†Œ#.yíO+4…IQöt”ýÔû_¯ÜywÆï|J¾º£[{öH…UÞv¨÷pÃ>¼ž¦¹éôUÔnÕafhY`s\"£.ÂàoM¬2ØrTÆ<‚+¯¹ø?©xoÁ_Û:´“Ãkx‹0…ñ\"««m\"M¤}à:ç ’S]ç‚¾Ýj¾³Ô¬â_q}¨y.y:zL¶ÒåŠeÛ8fb8mÝTÔû)Ô“”÷zo3Âa¨Â$œcî\'}.—ßÿ\0Ò<#wªÙ‹{x&7ÞkŽ5;×ŽAç°RO¡à™£¿Šm»wZ¡eOÍÎ0}pJúSRðþû>YOâxÖîKmîIf,T]7™öh—# nÞŠH\0Ç `\nùSÁÚ±²¿i	XÖå¹\0`r{~?Ê³ÆQT9{õGVC˜ÿ\0iû^Hû‹Dû¾«Ñi÷$òh7÷°ÛÜnK’ªãƒÀÿ\0¾r¹ÿ\0zË¿‹Rkze­ÓÃ\ZÆ«ò®A—Ð··|w<ûW/®Í‹¡‘a’âxÂ¡eÁÁ ~=¹Ç¨¬m\'Áš·Šó¨GÄÁœ“`Ÿ|Ç\0ñ\\´«KòìVg•áeJ516RÑ¦úiøÜí®¾ßxíÚ6—ìðŒlÁ\0cÔŠôü!y¾gí‡ì6Pád\'k1Ç\'ô®7Âÿ\0jø{\nùÒKæ\\0ùÝ2_\'¢ƒØt¯Lºñ¤ž!Óî´™–o²ïU\'\rœgæ¯g\Zn.ûŸ—æøÌr«MQiÓ‹ºkÊ×~gËž1ž8æ[Xqej9+÷Ÿ×šÎšÁf±¶Üßg{yÆyÉ¯\\ÿ\0…}¥¬ó[™$»••J¦õç8þUÂø§ÀË¥jó4Î$µUÞJØcü\"¸\'B[³ô<¿6£S÷q{uîú—|á›;k®#•Mó)IÎÕC÷Ÿ§^ß‰®‡Â¾´ÖoÞÍbÖÆÕHÎAf—ž§ŒWáÝJéôÝ@,f`U1ü*:óïŸÒˆõÄšÙ£c4LÇ®rÖº(ò¨­|VRs´õï£¶ÆNÒŒ7¥Ië†ÒŒ7¥\0oJU%O§µ&ÁFÐ( ð¿ˆæ°‚hò¤#º7#ŒõZ8j:§Ù£}¸b½ppN;g®=N+*9$:ŽksÁq+ßyŒÁB÷»žqô¬äº™ò¥©Þè³„—ëÒÎ^9P•Sò“Ï|gú~µ.©û1Ì–>u¼²#‘œ~\0äŽO¯BøaãMúsYÈþ_˜8,`y$gßŽ¼qÜó[ÚÏÄ˜tlÇt­\"J»•€ë×œ±ÎsÆ:œžƒ‘À±¹YÕO‘k-Ñÿ\0eOjWS,q,k÷—zŒàá±ž¸\'œt=Ä?\Zí.<	ðçÃÑÜn[É®ÞæˆÁŒFUFGÕOÔ×ÐžñÖŸ¯io¤ÞNf¼‹¹£F%NÖÀþ·0ç¾iý´<U·ñ¾óL´ek\rÂšdL°fAºSžù•ŸŸa]ª¥èJOº_¯èqâ)æ¨RÕ$äýŸ›üûåñ»Çph³¸+Roïlî¬ß\0ï/Rƒ¾61ø¶k.ßÇö±hž\rÑ™Wìþ-Ô­®âU?{e¼ª¹Ï}×1žõó¿Ž¾.ÞxËáÏ†¼?\"4pèq°•³ÿ\0’±œ±}Z›àï\Zj\Z·ü..n…umžHbAp“Óï1äöÇ¥tTÇóT¼{%þgÎàxESÂòWz©Mü­hþJ_3èïÛZHtï…–:M¾Å¾Ôî¢šP½D1¬ä©õÌžQöÚ+åØìYþÃ4—\n=sÀ¯cø™ñOñŸÆj’N%Ò ™líÞM¼*8Ès ÿ\0®º>øK¡¯Š|eknXíáy¤Ç]ª§ñbsã¤ëWÓg¢=îŒ2¬­©½b¹Ÿ«WùÛEò:‰4m?Ã³¸¿UÔuKˆÀ¶·d&-Ý2Þ£mç±ëŽ·Á¶÷ú„\ZuÆµtÞjÝZ(Ø°Žq„`¯>¼âŸ‰´»Æ½³û\Z¬—Z„©hr<¥‡^ý…hÝ_ÇðÞ\'Üï¬kªíŸÝÂGAç¦0\0É=ñšÎ…œßh¿ëÔùüæSxxFêU*.o4ŸE}\"—W»gUâmoW·p:Î?”Ë÷`Çñ`gÛžk†Ð#Ñþ$®¡g7öò3îšs+y—íŽƒÑzŽüÖwˆ¾&ë,[Ø¤|3FÈY‡¦ãœì:w­ë7šÑ·µŽÕq‰§O”(Ç {žz|Ñ©+-Ÿ£€¯… å\'iif¥¤uü}ñ_dÑì!Ðô‹åÁò$mÌ=óúòk–ñ_tÙôèlã²o.à˜Và7 \0–ýGæ+®ŽûJ:MÄRH¾|A±\Zÿ\0ú÷ÍxÞ¹¯]kºÄ6ò[Ço\r³lŽ5XÁ>¿ç½cˆ¬Ò´v=ü›N«k•®][¾íõóüŽÛXðºx;ÀÚ„ÃËšY¢Ž0±öÏ8÷8 ×—Í®°l{O©íZ¾3ñ3=Ô6öò:Á À?{hÆO¿_Î°.Š\\HdFäòAë\\U+=¢}^[ƒ” åYÝÉßô7?£ñZ1íúÑoÖº€?£ñZ1íúÑoÖ€ÅhüV€=¿Z?\n\0økKF»kfù[ksŽÆ³r?É§Fä8ôÅ&®L•Ñê^ñ\'ï£V“ïŒ:“ìO¶xéôê=Å>\r“ÄÚ|s3I#Æ§jìûïÇcÎ8Çã¶ƒø{TkiƒckŒ“íÍ{÷ÂˆpÏ¼¬†=Á6	,IïÔñÏéœœm<Õ)JüÑ0•Ei~¼†¾\n›U¹\\^Kp×\0?(¿BÛIÇ_zù¿[†mgÅ\Z”¬L²Iœä““ùæ¾Œý¡u‹{Ÿ\r+CòÀÒÊŽ›<ìçÓî ôûÝºW€Þ²Ó¾Ø‹¹®™¤‘Šô\\œ\n×²ÌàÈêsJxµ\'Ë÷6ÿ\0ÌÀYBWoÍÓ4ý}~Æ8Õ™šå…“ó‚«Êÿ\0?Ö»?ƒ~ºŸYXŽä†ÍÈXÙö<­µ¿Õö,¸ÈÏÀïšä„y¥cé±cF”ª?Ç¹êÿ\0|5e}#.¥yk§Çg\0¸ž)ãÜ.ö*†„‡\'“ØUØËÁöºÿ\0‰.¼ìùwHQ›eA–À÷%@üë+Å^9{Ÿ\njÞÊÍ\rµÂ:Êñ69£s¸Ø|òtù®k­ø\r©Ü|4Ò¬o-­Ö[‰7¼ˆæ(Ü‘ÛW©F1u£ÙžgSÄG/¯»Nm$º+kŸžÖãŽ6ãxôÙ\Zkv…÷0…›tcÂãœŽ=zÖ5¨‘o-÷4j	óŠIÈí62Oé]ŸŠ<\rwãÿ\0ˆ+z²á˜yäHøÂœ–Ü@ÀŽx>ÙƒUÒtû¤T[Ù1É`Ç}Áï·<…÷§OÔ¥-•Î	ç1«B•-æ¢“òÿ\0ƒÙe¿‡ÿ\0¶µ=¸Ý¸ò@ùTUox¤éö+¢èùxá$ÎèpŒÞ¤ûV·ˆ|A•¶ËHÚÞà±ûÍøyÇ‰|Už¶¶òfKx”yÄYŽ	ÿ\0zUë(G–\'©–áçˆ¨¥%uRôêüük[xu®&•ceRUÁûç§ä+ÄwÖ÷:&è|¹.€ÁdlŸóíPø‹ÅM¯éÍ~]¾~XWøx÷5Îéú˜µÊ²	œpMpÔ©m¨Âàg­Iï}¿B«FÏózžôè,ä–4MÎçj€2Iô>¡¨‹‰Ç•ˆc\0jþšB‰¤aþ2•ˆcýH=\\ûãøÖQŠnÇ±*’Œo×±6}ÿ\0J3ïúQø-÷Íwžxgßô£>ÿ\0¥[m0[C¾c†<íEVr¥¾UõæŸ+[“\'°Þ}iUA<¶ßëQK9ˆãC4­ÑTfˆÒFOÞ­Ü(éQÌ9]®HeV}ªÛ:ÚVü*;}%¯oV8s½Ž8í]&“áÕŽä¤“Æ¬ ½¶–5¥8ÊOcEhS[êSÓ-dÝ•Ï+¬ÐµIìæŽ8•¤›\01\0uþY\'ÿ\0¯ÍZ‡Ã–²êp¤7PeÞçvàƒñœÖ·<¥YÜërZÚþöâ5ÜKáXžGNØÁ8íŽrEtJº-ÏœÅfqs³Ñ_c#ö‚×ãµð†›£§™q,jVaÆNO±lu#­yv¹}­éöˆÁEº©cj¯õ\'Üæ½»Äÿ\0ÛÅRë—$¾G‡ô™?,gÏŸk0Eõç¯¦Eqþøgu«ü<³Ô%\rkæ£„×–Î|É>‹€;d†ô5ÇVYOUÓò7Ês-,yZmKVûË_Ë¶ËÐátïG-§ï™·Ÿ—¿µ{àÙ-t½6Ú+ì±i§5éûTfxd”çå	ü9è[)óLðÃË=ã&µ¦êÊÓhúJÈ¨d\\µÂÈLqcý±œätaô4ÿ\0øþO^ÚèpE$ú[ÍÓÃî?Ýf@@Ï8ëÎÔðñ§)o·ÜcŽÌ*âªÆ•cnfú$Öž_ðä\Zÿ\0‰ ø£ñ7›Íoµ9g,\0’ììI(›ŽÀ`v¯Gø“ñoKðO„l×ÃÛFò\"0ëæ7–8öµyÿ\0Â¿ƒw7Ô¤Ô..\"³±†LnÜ—o@Èáyçžp;Ó¾#xMµÖ!k8âÑìÆØZeÏ˜Tr@þ#žç¹®ì;T¢çSyv<,n\r‰ÆCæ©î“÷oÙ¾­þŒ£¯üBÖµ6kKPh[cØçøGõ®vˆ2i¶k%ÅêÜ}¡Š²nÌ‘¨ï´tö‡¯ëW>.»ó&Ù\nnÜG_sT¡‹O‚M²«K606Ÿº}Ï§°üëBGÍ\'nßðÇÓarº§Ë8¯D–žW:ûr6ðõòÇ	šˆ·+Ëü9#ðàW\'‡¦O2H—ÎV]ÒJppì	ÿ\0øU÷ŽëP²û.|ËfFýîÝ¨yÀÂÿ\0œÖí†ý™áøíÚE†|ÇiÎœz{sù×›8¶ô_3xTŽ-AêßõóÐó»I[N†á‰hÜ°ìqU`´’âM©3uö¯Dñ„6>ð>—öxc›íòƒøã?¥r\r«›‡ÖÛs·©ãµc*KšÍžæ*°sŒt»ßÉ‹agŠ<ÆUšñ¾âuX¿Ú4ä÷­#6éüÌGZjË\ZpyêIäÓ„¨ßÄ¦º#…)IêÇo¡¹ýi2Þ´f´37§Óÿ\0á&ÒZêÝ³=ºþþ.øþð¬x´ûRQ¼mópH ¦ÚÊc“‡h÷q¸jif›î‹†eÆ\0ÝZs§º0ŒeODý/Ð·ÏÃëÕûEœ¶ó–Uù›ÛŸZ¥},7R4Ñ¯“$ŒIˆrŠ=BÖ­.¥å¨ÜÑÄõúÑok½Úe›@9UúžŸ•G:Ùlk\Zm»Ë¯õ©{G2AÉß-³åá‡z¼ÖÑÚÆZêa½ñÐ’ç>§ ¬û\rAš}ž[y&	€¹î?Ï5fßMY\'Äì¦™‚O¶JÖ2ÒÈç©zìß‚KÄ·„éñ3ùØR±NO©ôçŠî¼/â&Ò.blGÕŸÍ$Û¬Ê1ýâFÜñïŽ;×™ø{U–ëS{é”ÃiÀXaÑG×üë¢ðœ’-êIoäí¸ }šW£#œ1ãð<ÖTê^WG“šåßºýí¯oÏ»ôò;ÿ\0VPëÒ]Éq<KÅ$,£s’¥~›O§Œb°õ‰Ò\\øK·‘möÙÝ–¢!K7Ý0Ë1\' cŸ\\V?Ä­Mëq6Ž#·RPËÎ1Ž¤v÷èkE²¸´ÙÚ|à	E#ïƒúÖµ1ºŒ096TaR1w¿“µ“]=NâGÄ]CÄ>:›Z±¸’	$\n‘2„UäL‚j\0\\ÚÛ³Ë2ÜÇ]Ëñ)o¼}¸ãóªºG†ï¥µû<vŒC÷Ž;à×A†GFŽfI$\\*„ÇÌ{~\0gðõ•\Zu*Õ·Vÿ\0v×TiPú´U’VÞË¹=ß/£±kK9>ËkŸ-vdù~êÿ\0²sê}k—ø‰t·[ÇÆèöŒ&GîÀîÇéÎ9äÕO5ƒLñ•ûDQ°çÌn¸¾:žÜ\nå¥ðÕÆ¹&Ø~vÇ^ÃÔ“]xŠòþ¢ëÕùú>žFù~•6ª&£ßÍù”tû©\r×“–bÕâºM:Î×H˜5ÙW™FJz{}jªiPøRšE¸Ô1ò`|°žæ²ÚáÉ&o›qå½k¿d½íeù›=\Z–­ðh¿?C¤Õ<y4á£µŽ;xÇÓ\"¹}_W¾¼r·3Hã’\0<\ZÝÒ|<×°‰®ÉƒÜõ«1¦’g¬fc»hûÕ…hÊªÕ˜P©J„­ßúîQ²½›\\ðTzÙæ’kGo-ÿ\0Qˆ8õÏÛ¿€—†¸›k0ÉÎ*þ¡âƒ¥H¶¡-â-µ\0àŸZÅ²3	VK‰¤ÚXî\0òÜgÈ•“ÔÒÖÒp´UÛ¶ìÕ‹Âš,4’Lû0Ú¥Š=Í‹$.äŒ±Å%¶£gk¦ía$òHË½@Ú Çôª×÷¶7Lí\rŒ‘w_Þž>µ·,VÆ	T“´œ­êQL]ÃƒÇ=¨–&ŠB­ÛÛ­4\Z’išáWpù•vçÖ„¬vuùþU%­´—“,q\rÎÇ€;Tf6)»oÊ¼dV¾¨\r\"ÙæÛH¿tKÒªMÙ™Ô“Q¼w\rWEBÑùÉF¸¹º9+Ç@Vö¬ív–ÏMY.„®Ú†Aì9ü³Ðu¨ï\Z÷ÄÓ³\\È|¸WäŒt€Þçú×OðïÂºDÞñuåÄßñ:°³K­7nÿ\0‘Uñ)ã“¹W\ržøÁæ¹q9_4S¶Þgfí\"éJ¤bìß¼í¥t¯Õ·¢]Úõ8¹.î.äkv‘ß{qê\rt§Cm>Æ;Y]šWÁ”½Û=‡ozë~Ãàvð•ö£nÑëÖº’™pÒ²½±hA$.Ä§ n;ýUk¤Ð´oß¿ˆmÖÒKÍY¥”éin×9CÇºÝIfÏ›[w?¿ÎHQŒ©â¹SrŒŸM¿#ÖžOu<M(\'ozV¶´ýÛ&’Õ_VÒWgo¢>§moh©j¥P\"MÇõéÅaø–þKãŽe‚áWŽ¿ãÇë^¥‡ô?…žšÛÇR­¾µ¨Fe¶Ždm©‡B„FFß™–L·$ÂWî¹®“¡x&{½ûCuÚ¾•ÿ\0&uÅÙxÛyÚÃh»§#vÇ$ŠøžI8rJëËËÔáÊr	ccRÄÒåÚ¼íeÍÊï§ÏKûºœ-¶±qu¡Ü.æ^²sœ\0Aùš‚ÖAiá	o×jÝ¸R3Ó(Èåú}¯Kðõç€ô{\r\r.ä†mBK;‡¿·—ËÛ%Np]w™|paüFÓt#á‡î-|•¼ÔL¦â›ä(_i!¸äm¿Z!ˆr¾çóÿ\0/È+`ž)S©sJ/Ýo´[Ñ¥üÖùJûô\rv~ÌHì°\\00;vr1ƒêúÂ´´ÿ\0ZÞÜ¿ö…ë[Û.àò ˜zž3ÏÒ©Þi¾2ø€éÒ[H[Q‰´¹ÜîKí¼&ìÁv‚dðØ9äØñ…ß„ÂxŠÞÊâÍ¦ó¬N˜TÝíD+\'Ú‚nc¸ƒås/^ª·f6’Kš/¢ÛÓ¯Mÿ\0tf|;R¼ÛŽ&”]ìõ÷y¶÷w|¶O¯4{»3_ŽÏ\\¾Hì“ÉÒlÀHÌç÷‡Ž[€=?3ÔÕ+ÛKXômº|›Hê‹Æáëžÿ\0JÞñÏÃûV×¢ÓæaYÓÃÉs½f&à…^Çm—2dýâk?áTž‹E¹þÔ¸ÿ\0‰¬—1‹U0ªÄ\nïÜGËóocÈ\'÷<Ýóh³Ój\rj–Ýÿ\0Ë¯cÊÄp¤¨J4¡‰§$”Ôî½ËÞîËYZñ²Öèä×Â­$û¤O,0þ#ÈÏëP¶m£%Ä‚f?r>™¯\\ñ%ÏÃûäÖU\nÄdŠÕ´²³O»%Oœ\'œ‘ÃïéÁÍWñ,_l¤Ó‘v*Ük€0’kŸùo%›®FxQüXõæ±úÔy\\¹%Ó§’¯Þ™¼r:žÖ4^*—½}T•¥(ïËÖÜËO…§¥ôñ_U›U“ç;Qx§\nS³·e¼ÊóŒv…NF+Ð¼A èöÞ¾š(ôåÔŽ¨ßfhâ@Ö¥@\0;UCd‚Û³ƒ´(ÝÆXê-Ê°´Vê3¹ÊÇèÂªöš´×©ž\'õkBŒ´¿ºî–ú=/}6±GQ/orê£|qüƒœôëÏÖ™Ò´|îS×w¢5hã*Í»$š\Z=ÙþëŽµVfzlÆý§{p¬}ñSF­&v¯l‘žÕ>…iæ¡3ÈcYc\rÙdû\n]_MŸBÔn,æ^h˜ã†Áíüê•ìD¦œ¹äÚ?†¯µÔ‘í¡fŽ!—‘ˆU‰©­ü¨ÝAq\'—åÇh¾c³ýzzÿ\0lað]ÖŸkœ—\0	‰7En™ÁÚ:3vÜs×>†³~èW\Z‹NÓI5½¼…KÉ\'ú½£\'hùÎGW|ppsPN÷_#Â–iYRiEE\'¢{µÿ\0¦‡¢è\Z¥Ùš;;Y¯¼ÄÚÉm\'ãÍZÕt¶ð½ªÁ43C{ŒºÈ›2{`ôãù×µê¾?ðÏÂí>I4lï5Wç20`™îéÁãâŸþ _øï[kÝRt’h×b¡v¨Î\0zš¬F–?åå²ù÷[˜bqÕy.Z}Þ’oÓ·™ì³WÁ\r/ãG€.&·Ò$mKNÔ­4ëûÆ¼‘Wý4È¶ìŸ0E;á`Á—6w.ß›Îdð3øROiênúÐ>æ)SkÄÍ(6àr¼ƒÏ5õüCö—ð¯Àÿ\0‡Ÿôho©MñQ Ó4›â“EžÂÖòçí¬>ïïÔ†*Ñ¯Kc‰ÿ\0‚ŽøÏDø—ñïÅ:ðn™5¾Ÿãk‹+¦‰QCÍ<ÖO»ldà³K*’~ô‘Jx;£‹’“„eÍ¯U÷ÿ\0_1FXùfhN›T½×]Yü7]Ö¼Ézv<_àŸÂýKã7Æ-À¾’ÞÚ}JG7w³6!Ó-a¦¹ºçˆ ‚)fr9Ûc\'½[ãÎ¡à_\ríÛCµ×?á.×“í:C\\]8\ZvžÍÜ\\äm’âH0»#ÚªÒLH\"/ìß°…4?ÙövñW|m¢K{«ü@úLÌ²ˆæ±Ò±^][EÈýõÍ¼J_Ò«2	IfQÀþÓ~4ð¯ÆÏø(Âÿ\0Zx~/Àú¼^¸‡Ã×3‹¡³­¾lÝÂ¨Ý®Æ`£;ºv¬]œ}×ïvì¿¯Ìë­N­|Sö”Û¥¾–“ímÚwItÑ÷8íSö*_†>\r±ñ—Æ^húÖ¹½í¾ƒe\0’òÖ)I—³>RhŠºÅs8,‚\'ùj_\rü	µñæ×¼¬Cª[ØHF¡c,€ß$c%ä‰—`P70(™pÈÁÕ*ÿ\0ÁW?i¿øjŸÚ·Zñ6#Ûø{UŠßT·ÓÖëÎ‚ÖYáU°¡È=[jîmíµK0ªßðJ‹ZwÀÿ\0ÛWÂ^ ñ4-qà{6¸ŸÄPi#–Õ r¬UA,Ro)”\0I _˜¨©R¥í¹#ðíÔŠÔs•:Òv«Ëf­mýšÛÑ;ï®Ú¼-ðCø‘ãk=\n5#5ÜwRÛÛX²‹™\"ˆÈ™Ô¼#œdtèw®ÿ\0d£ã»­kHð¬ÚÆ±¬xiîDÖÓÌ—¶Ùdy:$Md,˜]åUü³\"1Øø?ñV?ƒðSýWXÑmôØ4Ÿ\nkºæ§£Y]ôdòà¹{KyH¶)1!ÏL÷¯T?´?ØSPø±â-ë\Zçˆ>\"Xj:LS,J––sÞ>Þ6Y¼èQså…G‹DÉæiÐzÉõw·o/VqÊ¦iJÔ¨.kÅ8ß¬›wæÓD£n½ýŽ~Ùi>*ñ½¦«6¥kó¤Jöh§a$\r¸`G#èqž2G´iÿ\0±&ŸâŸˆð‡è×ú²øÁ­!¾ŽÒæxåŒ,±	Q\\ˆcÚ»YwH¶\'kb<á¯‹.¢ñ^o\'•$r_À®ì£ræEÍ~„ë?´§ÃVýª|iâíÂ×_<Eá]2ãDŽkÃ.Ÿaz}¹¹³†¤še…0vgßå¢+7ï<©É^Rê¾ã£3úý9òá¡uÊík5{¤¯}mfÛëd|-ðçÁ>>øÏ¦øwT{Ëõ+Ô°\rß2,G¨úzg-øËà}áÞ±¡Åhºè]KLƒTº‚úHüÛu”œDQ`¹+Œ°ëƒ™þØÜx{ö“ðý¶£q7ø†ßÏš7Gƒ:“\"°á©Ü¤pTƒÐ×£ÁI¾2Xü~ý¢—ÆVZ\\Z,:æ…k²Á0ÂÌÅ$Öì™\0sû­Ý?½Uâã{ë¦Ÿ×Ëï:y±ÅÂ\n7§Êîú)&¬»»¦Ýúrù˜~x{àïÃ?ëÚ\\šô—šåìöpË˜eƒýÞÎYdaB{°¨7ú§-Ž?ö|ýœtÿ\0ŽßõÍzèø‚æëNšxf{;¸cH<»›°î³«y)—úã§£þÙ¿|)ñöøG¢iv\roâ_õiÎ6ê«Y‰£aß÷bÇË ÿ\0tø\ZðJŸº_Â\røöÇZÑWZÓüX°xyó1û-¯Q ª\0;Ùjm8ÎÎxªµ7Q&ôïò¿æqÊ¦:8	Õ?Þ©4–—qU,ŸÎ\Z£Áÿ\0e_0üoñEÓj××Z?†t{w»Ô.-â\\`,Qy„F¬K)i$!\"Œ;åV7¯ñ³Á>Ð`žo^j’[”…£ºÕàÕU`Ùe’+h•*£`wðx5©ûþÕ~Ì>2[»­×Ä:¤ŸgÔ´ë–Äw6î»eQFYF9# ðÙßµÀ¥úø§á]õÅ×…u¨®/á°š²ižPye´c½›Í‚\r®Å¶Ç*+ÉÚ\Z(ñr*ÖÏúØôã\Zë(É>K.V¶¾·Oª}º5¶©ž\nOŠRØÿ\0õÒþsTv1PüÃ¾µ³âË»j_l¶cæI{„ÚBÆÀ\rÄg±íXßìóÏZ»c¨\'Ø&·‘B¬€\0ê:ƒÏ×T‡¼ª-×äÅðÏŒ¤ð>½\rí¼0ÜÍXå]Ñ•#XwÈ$Uÿ\0jþ ×l¤º‹P4»É›H§vKs×ËaÐãß­qÚt³]\\ïáQ5·¤êóiwEVáaŽa‰##+ Þ¾ž•4ë9G•·bëacûHÅ9ù«éú›¤:Ù<ÍpÇŽvðÓ?ZÏû4qH„«Ë,žNk¤¸Õ-|FÚÊÎîYSï(\\¨>»²?Z›AðrÃª¤——–v»NUL™	îX?*RKEK£)YÎ¯º¼ôüµûQø¤M\ZøfÚEŽØ”ñ<‡ž…´hcBO÷ƒ7æ{T_Z?+[Ý.óR·´¸Š±I~ÌÍk%Á’6i7&%¸vI%ÎQu\ràŠ+¤ø}ã_ü?ð$7;¡Ö¼Eo=Á·”ÎVÖÒ\'òK»(ÃîcÂ\\€P¸K+§™è¿¿°µÝÚ>bXâx¼òvµÎå*OPvüÙÁá±È#ŠÂ	ÔUdýÛ?wÍ¯ÓesÙ­[…xdß<eço³•®»êß.öµìÏ\\øõñ¢Oø¦ßAŽúKËOÔöI+mÌÿ\0e¹’YÌ@|…›vØø+*(+ûDø‚óÃŸ<$Ö7[Ýé>ðóÃ\"=¼Ë§ÛÉÇpË\'â\nÔß|ymðËÆÐkš¾–Ú¦—oçÅujÒ4/:MÂû\\r$!*Ç 0RCƒÖjÚ…þ3|`ñV¾ú·‘¦Øè©qáÈ®/­¬dÔåŽKxcž_ÝïKwiÌZ\"£šç«Nq¯\ZqZ[;»Üê§[\rS-©‰æJ|úCû­+[ÒÖ{Ü†þ/ü_·ó®Óþ»å>mÅ£ÎÖÖ¶r^O\"áb”m‘Ù¤í³…•ôÿ\0\r>.|=ø)mu\'‡ty5­_’[ËƒqÞ[	\"- Ž±G*$Ë\ZÆ$2Åweü_ð+á¬¾&‡OO‰¶¿ðÛævÔÞKxÌ±\rVÞÞG…¼ñ/Ød{Ñnfÿ\0Tª^)\0çì¾x,ìÖ_‰šnŸ¨7Ùm.ˆ¹‚x!»—ìK6Ñ	µ­»\\\\ŸwÎ-ÛÊY\0.ut#	[™Øò–&ui|æÚ÷võ·ü:<ûáöª¶ßfÕµmJÖÞ[È¯%–{´}­,Ñ°–5c‚Ïœ\0xÍuÞø·­­kš.µt’xoPÔ§Ôí®DE±™÷ï`¼7“*³,‘ðàØÞˆÉ¶¿	~M47mã¨N˜Ëe$’ù¶²]ùsÇ|e?gÞ®\Z)`³Ó–è¿@+•_	xWUø\'s­Â\\¶ž*ŠÍn¡ÐZÜbáìÐ4Ç>hˆ[Î\0¬)Ü\n\"»•(6õ.Ž\"¼#ìÕÓ½ß_#•´Ñ4½â¾š¶Zœ7Z<w°L.BÉû¸Ã+2¶P6åÁwæ#8æ½Ùµo†7>6ƒÄZ§‹.×X³³Ku¶Y-âÒ’(ÌI<cÊß<Ê˜e Y&Q±³õ¿Ù÷án—­%¾ñvÞòÞâ(˜_ºE62M¨Ik\"1ó%jašcï$¬ÙÜ¦=Ü—‹¾x;\nÝYø©õ=C[š®Ù`†ëL³d·o5â ¾A’UÝ‚Ša*FXV?W¾Ó†§U<SƒiÐMIÝjôÓ§‘Èj¾-·ñ/ÆvÖ­×û7O“PG¶Iüz[FBÄ¬r~äh£«:±äÝøõ¦ê~$°}/R´Ô­c´t\r	Ýº¸—cnE$âQÎí“Šë­¾|:Ôô3<¬a½¡Åµì‰oý‰§³K+2þÿ\0Ê77@Ç\0ÞâÔíç+V§ø%ðžán&·øŒík\rÝ˜2M<1³ZÍy“ŒbFhííì£U.­{’¸Œ©Þ1\\êiì¬s{KQ•E]»ßªòG9¥üDðŸŠ¼	¥é:ýô6i\r¥Ä¶×&4»Š Â	3µ„rÄP««,Ì¥Õa×x_ÄðÒí¼3®®Š¶\ZÍ¦µw.¥4—m~ð8òÐº@ƒ\n²JÊ©Œÿ\0¬.|³Ÿülø{áo=„žñ2øŠÞîëPÙ¦…¦Hà¸òà•£‹p&Œ†]Í¹¶±Ú«´·´T¼/6ªM\ZÓÌaNÊ¥(É÷×úþ¶:¯„çGÓ¼Iqk®I§µ„–ndœHÖìÁ—kf<8\\Û—æÈ§Ù5|6øIðfúÇCñ¾#Ô®\"»òl’áæâêÒk0Í!·ƒlVñ\\ÎáY	–FqC£üåž(\0\nu0®SRæví¡4s(ÂŒ©{4Û½ž·Wwùù	‚;QƒAU&¢»$‘Š¼wqõÍGÈíŠç­zq@ðç…µMJÕ½œ‰K4®¤(¿ý~•­‡môu/$s]\\cø—jœuÁ#æü+[Á§ðýÌÒ\\\\^œ®\Z¯—´60¢Dïž@À=Ek|Cñ„´[;ui,´½>w™Yãe’FtDd]ÒÈvÈâ±6ô×ÌÖ¾1SŸ¹;¿Ñ~Fƒ¡ëÚ¥ÿ\0ÙáÓnc^@ZÉöxGv+‚	§?JÓo‡–º\r¼Óêj¼q–£Ü1èrsîúõémû]C8hüï:&·”´Ó1•B’ÄÝœ˜ÏLqX·Ÿôÿ\0E4-o«\rË´4„²†\0ãvfäsß<€pONÚqŠVŠ¹óUñ˜Ê“rª¹W®¯ü¾GžkºÅ¾«a\ršZÛ®•\ndÈÞ­Ý ==ª‘tÓåS4Ú6ùŸ*}¼ñì@«ž2¸µÑˆ·±m³H	™—øè ÿ\0:Ëÿ\0„fKeO¶¬–ìãrÚ\'Ëq7»÷D÷<ž0;…RRæîÏG¢é§²óÝ‹\nMãIÖ(cU[•	¹¤Ç€=þµ»­éð®4Ø&Ÿý+R¼\\&áòÀðažƒ¯á]‡‚¼\'& ¶©ªý–ÌùAìS8*§»/aŽ™ç¹Íq>ñ´#Ô£g„¼q¸Â“ƒ³ Ÿ¡ ¦k¦T#JŸ´ŸÆö<ú8Éâq>Â’ýÔw·~×üþã–’ökËÆšiäl’Hþ•±ðÇ^µðÇÄ]T½’eµÓ/á»”Â›¤\"7€29%qÉÎ{RË¯h{íšçÇÙÃ^I›Såà÷†ÿ\0›\rØêj{oÂó\\n‡Bº†?6V ^>JÌkËm_”œ’zõâ¼©.uÊúŸM‡ÄJ…XU„u‹MvÑßº=#Á_<+á‰¼)æZê’G£iï§Þ-˜’Ík3ÆFÒ®.ˆ$Ÿ˜#q»†>?è^ÿ\0„VòHu+‹Ï´³¼‰\Zùª·×%º™$¯Ë´ðz×š®­á×Ô§è÷Iláp-Û~ì˜äwOÈÀñÒpN_u­xvXá0èwÈ\'Y$íÙZ ùdvA*q¸ú‡&¼ßìª¿^½ïþgÙ¯³EkF\ZZÞêÓ—’Ýzr-î·{¶ÏE±øí hV>\rÓíþM?Ãw’…žØ7Úm\\Ý+(ÈŽen-ÉýÚ“Åx3Çÿ\0ÙZ/‹žóP¾]C^·ˆÖ!$wnåÌ)$À3È#2–<¢æ¥–¿á¸â…n<=4’\0†VKé1\0îÀÜx\'ø\'\"½Þ«¡OXô{‹p¯	Ü·LÒ2‚þ`Ë¿0+‚¿PÝòÚQ‹ZëküÏ;ÆúÕ!9¥î&’JÉ^\nò¥÷ks[ã¯,~$xýµM?í^C@±ætÚÄ‡r71áYAÉÆAÚvªñÇšëü)â/éó\\.¯á½WQ†m‚6]DÇ-¸Ä¡Ê•Â–ùã*\\0.UemåñÏÂÉ5+YÛÀºªCÏ-Í¬Z¤Â+…d`\"Ò—E¶2¶Y›!”§]\Zjœ8ìžÌ³*Ø¼Tñ5`ù¤îì’_-¦yåGâµ%Ù®¦òCy&Fò÷\r§nN22qÇlŸ©¨ñíúÖ§8~+Gâ´cÛõ£öüh\0Áö£îµ×øWðžƒoÚ¤\Z…ýä±ÉðK§Çqk\\hÏÚ#mÛT¸Ð\Z½©ë¾ÔôŸ³­Ž£a6ñþ“m¦åÕ8<½až£æÏ9ðäù¹lýzÝÆxç(o˜ç¥vŸ>)Eà2KWŽé¶Îg†Hönäc<ÌŽØÆsWâ/,üe\"ÞÖhåYZi%‘ùrUWh\\‘€qøýh4ùùytîÿÙ'),
(4,'King regreso a casa','ÿØÿà\0JFIF\0\0`\0`\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ð\0¨\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üŠ”Âäâ/,oÀäÛñ­KšK­Ò„7Ê9ÆÕ†p=ªä†6‘¬ŠwlRCÉþ|VÖ—y\rÛ7•¸’NTc ð=SZÃ—¹×X¼•ao&ŒÌÛXñÁ$œþtŸ|=?Š¼s¢Øn‘WP½Š—¶÷úÖ”šÍükå´pÆ6 eù¾¿Ry¯|ý‘¼oÿ\0.ÏY¸[†Ó|:$¹¸òÓ|’Jb‘a!C\n·$mTcÉÀ88§%HÝ¦Ï_ý²ôÕ2’æÚ¶lÈÈ?rp1ø‘ô¯ðŽ™ªG¬ÛÇáÇ¼‡Wˆ™Òæ1I0åFsèkí|Òþ,xƒMñf ×ø{]±ƒTuÝ¤‰]afv?›AÎ’ò¿ŽÞ#Ô>	Y]YIc§¶‹«]Ñã#’&ÙÌ;Ôn(F\\àoZõ(òªœˆËÙ\'\ràšÞøsã\rOÁïªkž4ñv½\"Ê\"ûÒÈ\'aåLïÚrIÂ€W© VíCð›ÆŸ\ZüImãm7Ã¾!Ðî´]+ìÒÙêrE4ÒÄÏ0’\0®X6B±RÀÏåÿ\0cÚâþ?Ô¬|3}ceá{ukýbÉ¡†Ò4;b3<’p¤nP\n‚IÚ0kë\rÀ:Õ¾–Ó[xÈêpø’É!\ZÅ×ˆÌ€HÖ{ YY|¦eò¿c0¯z¨âpîœ¯÷ë~›Ÿ#Z8Œ6)T§k­´Ù=Õ–›|Ït3ÜÃ${›®Ì:6@?Ïšêâá“‰”4qc1ïßž™öîksâÃ«€Þ?ŸÃ÷ZŠêVŠ¢âÆé¢Ž).#*	ÞŠí±Õ‰FLç .v?ƒ×¿Ùþ:µÝ•p÷K!Šê8¤Že‰Ä¥H¥T±@¹˜ŽC~7S—Üê·>ç\'ÏmcÂ>)Õü9ñÄrXÞÈË>§tDkh“qç¸DˆÃîÈÆ=«Ütßˆþ&½Ñ%³‚oi¾c«4‚æ+8ä‹\r¹“å³s·#iO­x¯„~?\\xzÖKë]M¸’v\r4¢Ú/xá(1b`79&»ø©øÑ,ÍþŸfÒy¡w¸‰$ÃsrÌK1c¢ö¼>7‡¦ù£Í\'ýÔÿ\0·à}\\kc«F4=¤¹WNgo»cÒtai¿å¢ÊÛŸj¾<Éàçß{Á¾9Ótº.­ Éº9î’Á$m2	c‘žAêGçPðÎŸ£k6ÿ\0mŽËTHÖêÖ[g€Ý\\‰¿˜I˜¼!E9À\n“c\'­g\nÓLñM­¾‹sÍÄÃ÷1²ù3#+	Ff;ÛnìêH5áf™Üñä„,®Ÿž›z®\0—Æú[ÊÏó>Žý˜4çÑïµ›fÚš{],™Ÿï@³ÜÂåBä²2‘ÆzŽk°ñÆ”ÒüGÔïn·Ï¨€_,Ÿ_½óëÖ¸/…Z¨ðäRE\nË	Óôå²yŒíéžTž$*´aüÙflíäàµé~/·º‚h?´.>Ù¨ZI%´óÂ(ùÛ\n£<®CöÞÇ¾_6ÅIáU(í~ÿ\0ò=Œ¯Ëˆö’êŽ“Á–_l¹S·”þ¿žkÜ~hjþ_Ë÷¸úÿ\0œ×‹ü7y°œ½þïÿ\0æ]ÑñØÿ\0Jó2Õõ;ó)4¬Rðg…VD_”ztë]­¿„¢r¿¥eøUhWûÕÜÀê±WØá¨Å£áq˜™©hp>%ðzåÇ§WMâO!¾ïz)T£—F´œu?‡VžÞìÎ…O?‰íZ\Z³\\Ü¬žjÃôlôæ¹Û5mËþÖ1]—d\\žÝ+ëe¦ˆøÈ¶ÎïÃzt/™tázçÍë^©á_ØøÖ­VkØôŸi÷ºœV‰\'•÷H Ó2Ï÷‰»…T2È|5’H”®íÎ ãŠû;à‚lu¿‹ZÆ©$ÑÛøGÃ3\\i³­ÅÏú4ò‰v,.¶ðá§vÇÎoIì¦Ÿ½Í\"ëJÉEH|!°¸ðWì…ðî×VŒC}§ø~yb?z‹µc>Œ*‘Ù«”ý¥¿g)>3þÍw\ZŸÛO¼±Ÿíöò:–VTY+ã *Ääd‚:k¯¼¸“Æ:6“¤ÃqöµŸQ¸_1[~ô%$9?W9Ï¥v´Í¾“ð_ûUn¢6Ž@à‡[ð5µj‰leNZ;Á(~\"þÏ¿³ß‡µ‹ÚÁK®^kž\"Òoô«Ã¤é´«+xî¦•×\nß,—	i±œ3G;²ò•õ¯Ã/ÚGöeðÏÃoëš–ƒc«\\j¶ðjzÖy¢½¬v×Þ\Z’ÆH¤œŸ™®5V‚Q*ÛÙ—ü+ñþßMñÑÿ\0gü·ZBíkîý1Ç×5•ðWÁ-âm&çQÔ9$†P-á+º(ÀÉ9Ry\'\'ëÐW‹‰ÇK{¶(xªê’Ò>ãøýûA~Ç´>‰«hº¦“g§Çâý\rßP¿ð]ÅÆ§u¢Dš@¿M>t•>Å)h54ÛÎ2’ ùÏ„øÏöŒýšþ\n)àßˆðÄ~\ZøW‡§OxwSð‘µƒC×<‹ûH$ŸLŠwYàó¤Ófxa·fNw•õÕïü_áo‹><Y¶¿ðçÄkq=›Zi\ZMœy§j]Çi»Lâi£u‰Ýî’8D\\óì·ÿ\0ðoÁßÙ¯Ç~ø•ð¢MKÅº†µ®êÉ;Û[Èm$¹Ñ¿²íáIY”»Ã#J7\0äón‹–ž-Õ—72\'¡Ù[-ö0Ö‹¶Í­o½–Æö«ûK~Æ>#ø jèún™¥xÚI5í*ÛÁ3/Ø]iv6\\Ã™ZÇo{öëè-ä,ëò¨UfºþÓ¿²\\ß5¦Ó´ß	évºn¯­iþþÒð»ê–ñÛ®…¦ÚiÓËL¯26¥åÛÇ¸87ó.I\ZÚ¿üóàÞµâXæ¾ø?w­x~ëDÔ¼/=„Ö:=«i67’i\"}.Áíeí-íì¯¼‹™HœÍw6¡&´¼_ÿ\0HøsñÁ~>Ðäøo¨Xø‡â\r“¼hú%Œ°Y´Þ°Ó€G7•WÐ\\\\©ò¥ýÛ£INFò”wºûŒaFr²å—o‰wyûDþÅR7ˆ>ÃáÖÒ–ûÇºàžoyÃN²TÓ–M3Î™+‹;k×0,m\Z›¶ñºl=ßhÙSMø÷«ë0øV=/Ã>\"ðõ·†m¡±ðÛ+À.®îÎ¥qqø ‰c³6qÅ,,ó²HäÆÎ6S­à­\n|AñÖo…×ÚNžt­cM¶vÑt›¹ k‹ë9 ¸gYÐùF+vŒF~äŽÀHåÙSä­×|G4¾]´IÌ—s]B…ä“hšMÞ_,«m`>nåXŽV!E§?‘ê`p²j§4Wø–÷ÿ\0$}Aãÿ\0ø_‚_`ðž¥¯‰,m–]E-ôé­á»ÛFff•b–g–äHëÞ7qòžç\\ðüº$v¶òM0[øRáÄ‚\\.Õ|äðªƒvsÆ	&¼+À¾+Ñît	m6ùcK[ÿ\0hÆ#–ä¯—æ24 (G**¡;ebFÔÚ=ÃÁ÷›MjkY…ËaVØ‰ÖÂâHÁ–6E‘Ð¨(›¹ÛÌ¿;˜Tö®Zt>·-¤¨Å$Û³¾»êk|?Ôö2a¹È\"½Óáþ¼±´{qÒ¾iðÍÙÑîÞÝÛ2[ÈccŽ»NÜþ8¯Tð?Š‚…ùð:äþóø\ZÎ2±íc(óÆèú«Á¾,òÑ[wËí]µ·ŒÐÆïÖ¾nðç< §¶3]:üAÛÞ}MrHù<F_ÌÏRñ\'ŒÕ¡m­ž´WŠëß7DÙ“ðTO®U<¾ÊÈþ@ôäË+JÞÒÞ}ë&À\rŸOjØÓ—‘_¡o#óJhë¼-¨Ã¤]Css¸[Ú¸–BNÅ`N¯ôgÁO‰—1|%Ó/-<ëYõZïR•îàÜ¤Ë²¨aœ+2«gÍþí|Û IÒ½³á þÓlaiÙÍ)9!cód2qìw7ëí’Z-¼>*Xzê¬RmwØûàwŒ¡‡ÂQ®™åÛGqpòYR6BÒ4\'²ÃˆS#=N+Sö™ñC$:v’·ö6VÚL-qsyy8Š4’FùT“Õ¶œ…\0Ÿ”úWœ|>ñ}¦—âÍ\'JQk¤Ú»¨B¿2§\'\'žNrkÏ¼Wñe|oñZ“RízLQ$ÞS¨bd|¹\"s€r¤ƒÇ*¤ý›ö[žŽ[\Z1Šx­\"ÛnÚ%{Û£²O²ØÍñü:}µäÆúÞK¯1Öæ… ]¿+0<·$Æ1ß<6ÿ\0ãß\nüi©ÙGÑ}¡íî¡ÏÈÀpG£\0Ï<ž„s¼R­ ¬Ñ¤Ý^|á™ZU‰FM£Ge8ôPp¢¹ýbY5€:4’i	Î\0ÜOÌOõ¬)ÁÎ%evÖ¦˜¬D)bÜ°oÝOGÿ\0ßþëµoÚæMvöÚI£¸XíðÑ„Âí ‘…f<°Ïn8`UÏþÓwšÿ\0ÅÔ—Kù¯ KmVcýÞ«8ÉóZ20$dØ‚Ï\\–ãgðÎâOyg%óézV¶W·IKs#¤mûÒK®âß6ÜR»u¯|)‹üu±ÓÚc¥ýš\rF+ÅKÕñ)pL;\\+}årÛÁèpÓÂÓ¥.h]…LUlU>YÉ5uëòë§S®ðÅí¦£ñBMCO‰–Ë£.œ,ŒK$p²3\"í–$:©ï|Ê0zõOö+èæK­TÒm³|öÓ¬pÂ%0 –!1Ä!ÐB’HäŸ›Z··36›¥ÛÂÍ%ŸÚæK)¿vÛ.&`ÃÏE%H‚€3FrEK‹lµßMgþúÍÄ¹0˜H;ÑæÚûß8eÈ*œ\nR—W¹·+‚åÝwï·å¡è>M3GÑ\Zo¶ÙÛÜ\\Êó½º=ªyÉ\Z™’&+‚ˆÂ48Ø‚]?¼+²ÐµUÑ¼1x­%æƒox’ŽV{‰¯såËòX¦ß(HÇÌÒ³p ×‹ø?_ŽmmÙc±ó.íÒg+!36ñù\\mÆ@\\îÍzEŸŒZÅï.¬§k[—_²½ª§ú5±™@;s”_0Aœ(Tª×ŸRü·=< ß7nŸÕ¾ëžÝà/,¾9Ííô÷³Gr×‚H­ånnvcÅ¾ÇU?vÝWr\0Mz÷ƒüE3è÷Z]…Æ›XÃ\r’ÚAv	#Lr€™	P È»C›|u`£Á~êö³ÜhfÞæK++ÌA(YV9/n~Xö.vímÄ0è\n)$s]®‚·^Õ–ÆâHîáhÞmí	1acù—\"=ÅIÀO¼IÀP+Í¬¬ì{4mninÿ\0C×üuåE«Ùêvÿ\0»·ÕÚä2e¾Ia˜£rÊ¹%\Z\'<–9·ámwÉ+óvõ®[R¿]sáÕóyÿ\0¾Ó.~Ðb*ß»pëªäà.ÙaG\0$µ›áÿ\0áFæ¯™ÆSöU¶=Ì5E8r³Ý´oERÞÙÏJÕo„\\?yŸâfTûÞ\rX¸ñsmûÞÝ5‰V	`Ógq­øñ‚·Ï·èh¯(Ö¼[•?>}…„±oCHáà•™üèÙ6Þç¯ëZú_úÁþ}*´z°iÿ\0if…bÝ°âEÝŸ÷sŸÇ5£ùðØ×îPÜüÌê4F…Ï®	<×¦|<ñÚôsCµ³òº?Ü‘}ãùW–è%§;Ú?º	}+±ÑžEEhÎÖªjk¡¤bÜ¥ô™|;y.Ÿ©[êWPxƒRŠXÆ4$ÆQÀ,Ælm\'r€9ÉÉÈÅë:s[øŠkMÞ^éU§-ÁP \0?_Ö°í¯þÓ¨ék\'Xl#ëÕ<ñ{^Ò§Ž{y#–xT\"Kua\rÄŠL<ˆÍ8ÎrµrÑÂëx³²WŒt<KãV•y}â»[;¥“N?t\'&3c 3dg$ò:SæÖ×DÐ4Ø*¬pÉug-’ÜG‘ÔñÏBqÎ+Ý¼s¡é&¾ñˆ¾Ñu«Øió4R¬Á#`‘ÈÊ¦06XçhRsÉí_%Úx¢ãSñÕö¡\ZÝ4ˆÈ#á÷\0?*¿/q‘‘’hö3Õ3>dš¹ëŸ\nR­oG·‚k–°¨ïµíî&ºØe®?w\"Ã¸ Ú…Hl¤|ËÚé>Ðî~¶µ¨ipè÷×ˆV­-³:s„:u•#c\'TüÛFkÄ¼ãvÐVØ[ÛÏ¾a²ïªåw1õ\\1È;³µ{|µì¿tKXY}Ž÷K7WÍæÉ÷¢ÞêfÎÿ\0ž,*m«€¼³ž\Z¹jQ”“=Œ\rXÎjœUï¥½{yô:þ8øƒ5ä3·ÓR	š;ÈdhU¶ðõRW$ÉÁ*2k#ÃµËmZµ³›ìw–Ó™Zü:å[f2Wcå†9Údñ_^|4ÿ\0‚}xûNÓü/y¥ø/ÅÜjÖ2O{$z}Ôv×\nðâ=ÒàBM¤@ ’µä¿´ìéâ¯ƒZˆ5¿h¾!ðÎ—±¦ØA-Ì&Çí‘Ëlà˜„˜Ý¸Â@Ê•ÝHÚ­\\±Œ_õó=\nÖ§/CÂdµ}>æú;ˆî#ŽêrÉ4Ü«*°„,çw? `S\0ß/£Ab¶šTƒì³Z¯Øí¥²”<LncyƒGæÙbTÚ˜ÊÜ\Zó»Wû1ŽêãTÓn.¬cŽAn²DÐ¤äaˆÈŒ/)ÏrC»¾»ø…cwáë[÷\\MgÂ·‚<ÖÛµ%ËŒÆIÜ]Wqmß|ñ·’tôz_Cjsäi¶“ýwýã’ëD-©E\rõ›9”‰gyàìƒËÃ ~r¼«2“òç\'Ñ<Vmlã¸·±µ··˜]Én-¾ÆÈÍ	pãr¡ÉùßŽ\0X±€ƒÀ~ÏZ|zW€4«ß!—P¿7V±ùe¾ÍåyÈxbAÝ¹³ÔaW#¨¬OˆÞ9¹¾×ï¡ŠO&å\n>\\ãûÇ«rO^+Æ–*<îŠßþ	ëA¾_j¶=/Ã¾)ÔõÙn´]6òÞÖÙ ò®’°ó”È\0ç®æÏ9®‡á÷†dñŒ±ÞÛÇ°òNãÓŠò„×7Qk3]Â¤Á\r¼‘ÊÃœn^\0ž¸íøŠõo„zÿ\0üKn~W®í§¯²šð³ÉÉ¶z¸jç /Ãù­ÓþBV¥ºqÀ?©¬_i²h–~cÝ‰ƒ¤D:uêN0=ñW ñ‹–i—äXóø%sŸþ ÙÛxzêÖi™®\"(ùàò u¥yP¤Îÿ\0®5¡—6¡¦ÜO$wwÒZð6æ.{Œ/<{\n+Ê¿á*¸‹X£šKwWÈds\0x?0äeIçÐÑ]UhÍÖ¹øõ Gn·×j’Ñp|¡fwùFî2s‚:R¬PG¬´vònØ.›:ã#Ü^­W·³òã*Ï1“‚ ãwÕAÍMl°Äá£V~r|½+ö¤~#$í©Öh–Û¢U]½1ƒÆMtš¤ 0nT{W3áû‰®fÿ\0Sòç–éüëµÑ óÝÌ¾µGØÖš×S©ðó4~\'r‹l©œ	ÎqùW³øI]Yß½Œ´ûW•x4Ì|I$?3G\ZÆ@aˆçùWÓŸ4&Ôãˆ~óqÀr§ùÖQ©(ÄìöjNÇ1ã\0Á£ü4ñ6¤Ëq$°iW.ZDu	û¦ÀéŽýN~µòG…ôØ¦‹Ìš1q~î\r~“~Ö~ÿ\0„?öø‘©JÒ:Á¥Á™¹Úg¼··?öÛùáàY#ºÓV?-„œdˆË`}ö¯C%©í¤ùí¡Å˜ÇÙ4—cÂ>µ“PAgo†îÇÔ~UúGÿ\0rý‰ôŸÚ_ã½Æµ¶—áÈ¦¿–	F¡éÃ6ß¯5ð_Ão	My­A[Ë\nÜ|‰æ.ÍÃ<í\\’zuí_¹ðBO…_ð‰ü?ñv³å¶éä†ÂG Géûºô3©ST•%Ô¬•Ô§RUÛÖ+O^ñü¿|3áèî Qäªýž@Êãnz~•ùùÿ\06ü>ûÇ©YÄªÆ\Z?žBôEƒPAÿ\0ÌµúA Ú5š³6â¬:öã­|ßÿ\0™ø1qñßþ	±ñ;EÓìäÔ5K{85K(#Mï,¶×1MµGrÊ®¼sóWÏÂœ~\'Óü‚¶*r«¾ŸðÇó+á«@·‹¿ƒÞ½sÁ^]‘É wÊ|Ì=‡Qø×eàø\'§ÅÛíB!ð\\¶¦HÂ¥Î±gkq*`ž#iÃä‘ŒÏN*¿…¤åŽÝ#û<’œ0gnàcýX\\ƒÇ.yï\\²•)ÁòI;v=jÉ¥%cÞ.¼?.‡eðÊÖ-äÑÚó\'øŒ—7dã»~ŸZó_ˆR­·Š5%^?ýE}\rñWÃ~EßÃ ¾d…|7§€±¦Å\\ÂÎrONY»×€üPÒ%‡Æº Æ¬·1Ù=2Oç_Fx†ý3ë—»†I÷_‘KÁzåì1\\}–ëìâNdR¡‡Ðú‘]ç|_}§AäÛµˆõ3JÃ®#À¦ÇLšáo¾ÒÛ€ÙåëÎs‘ô®ÃÁ:Ž‘g»íS][õÛ¶\'þÊjqÓÜèÂÍ¥s¢—ÅZœŸ¼këX™¸MäèsÛ®åý+Tñ©Ô—Kw×\"/-ZyÌûœà/–9ôæ®j~!ðªƒ»Z–?®˜Çÿ\0dçú×	âwÂ³<Ãþ	£Ü[n,¥ÛÎ{mÀú~ËO™Ñ*Í¿øc_ñgö¾£%ÔóÉHÁÛ\ZÆ3Œìã§®3EpÚçŒ-„òe¤¼*ìýØ˜dòÁë€«× ¢»ÖÛCâ#ˆüó°Ðr1œç­í#Ãª÷7ÌAâªéúŠíR}ë¤ÑõˆÑ—øzþUú¥%±ù„V—54_Èÿ\0^æ»x@ÜÜÆ\n±g`ehZÍ¾ß™½3]ç€<Mb5›0ÛŸ3 àôù…qÖ©>†ôùofu>ø_<þ+¾ÚßtÄ¼ŽŸ)¯¯¿fÏ‚:¥ÛÅµ£‘G$¯›ü\'ñ#IÓ<K¨.Õ\r$¤ob>] úœrxÏóé_Q~Íü3¥\Z^Œó¶ä¹		fsz`Ÿl×J•¹=ÕsÓ£\Z|Ú³ ÿ\0‚µü?¿ø{ÿ\0»ñ´“.ÕÔµ\r\ZÈ\0>÷üM-¦ÇþA\'ð¯ËOÙªÖÏ[ø iú²/Ø¯o¡ŽåÂ¼±–Eä°ùA‚Ù¯¼ÿ\0à¼ÿ\0´_ü%¿³OÃ¿é÷š•®£â«ËÛåÙor!·U_9AÜJ´Àª‘·æbFv×çg‚.?á’ìÚ{›r²Dê\\09RŠyÈ#½{|;N§Õ›–·ù6sZ?XVÕ+wü1ý />\Z|Cò¡þÉÑá¸m¶Ú[_ U…BªyHð•Œ«„|“ókî„ÿ\0ðUx#ö}’ËFðï‡t;»9„³êövIko4d {¥„þäI„UuÝ…œþìçàÚàdZö‰á¿øvöÒûÃ>$·¶™õU™IYRHð¨6ŽA\"PX4l6ã»9þ5éÚˆdµÖdû=½ÍƒéÖÖíi!¸6k£ÍtOõrJò2&FíããqÕ4©7Íª©ôØySZËáµÑôÂÚãW‰ÿ\0iµ—Rñc‹P¶Kâmî ™bŒHŒM£€Œ7ÌŒOÐ?¾<|Xý¡¿gŸ\rÙÇ«Iq”·—-£=Õå°åÊÑ†Q4†[W”mjùKá½©?Å\r.òÍVÑìn@‚I\"K«xvÇ#Åaå¨]çià|«‚¼×Ñ?\nþ9èþ(øƒ7ÃUµñœžyâÓüBÐÛCg<ö×\'&æóbTlDå£¶×¯™RÄÎéIÛª¾ÿ\0‰ÙìèÅ§Ê¯ÐòÏt/_A6Ÿy¯-ÂÉåÏ}¨éÐ2ÌÙA”ä*¶GÌHNkãŸ‹~2ÑüEû@ø»Tðõº6—©ë×÷cM–¾×ÜHÉ\"#²‘¹H`¡N7Œç?q~Òº7„ÿ\0à˜O‰ÿ\0Ø1XßøÊê[=BÑ$0i¢f´ò¶¢Åí8x˜•ÈPIf?™þ×Vé\",¶÷\n¥ŽÜ1õÚcú5}.W…q„ê¥dô^g*´e(Æû°šìùÿ\0»àwÃoi>]å¬ú%º‹‰	LˆÕ£ûœß/ ¨ ‚ |ÙñÃöRÖí<m©Ì¶sL1aåÛ’¤}kíÿ\0Ø?âŽ›ûü9ŽúâHî®-&Ú—l^Oõòñ¹‰-Ž€–b@’I\'™øÕûAèš~±w—ed¶¨µùÖ\"µ\\>-Æ‡½új}~—µÃ\'Q[Ìø~júiù¬g‹ŽKDx¨n¼	ufŸ>åã#ïÞ/øã£ê2ÉåÌ\\sÕÀÍyï‰þ#é·Ø&î½ëÒXŠÓø¢(ÂZ3Æ|S£ŽÖ=\\vÍyw‹­|©æQ¹~•ì^=ñÍ£¯Ê«Ô`žü×ŽxÃÅ–ó_K»a^z÷=‡ã^–M»ØâÄÔ‰Åê´Š«¬x‚vâ5çW§ÊÏ2U;\nYj¬dUY=«gLÕ$Þ¹-øw®kO—dPy\"·ôÈÍ]§œþ÷²…†„Ž¢Òþo/vï®zì¾ÜÈ|I§¤È¬—M”ùÇ#<‘ƒ×ŽAíž•ÃÙÀÛpÌ>oJî>	¤oñKÝ\Z“½ÎIô‰Íg(¦®o)$ÕRðlz]æ¯33K4Ë;Q¢!#lòÔ1ß¥{ÇÃ{N‘ýªòö ÀŸÝÃ ïƒÉã­|Ã£x½,µ‰|ÕVóÝ‚ç²Çb?Ï5éß\n¥Ô<gs\nÂÍim\n–k™OîÆ~`7òOLŽß\Z”lébcÍf‘‡ÿ\0CñnŸ}ñ+ÀúV“u5ÍŽŒ÷.f$‘,³2Œ‰}+Æô=BHV=±YÈÄ\r Âç?ù¶?m·[oŽÖ6ëp·_gÒ-Á‘@Ú³’$z‚Aìq\\ž“©I\0åÑp~hºcž¹îetyiÙžc7í[?F?àŒÚõÏþ4iÿ\0?³ìÕ~!Áqh²ÃýŸ{rÉir£U”£cwÉ+t äZ&§ÿ\0	ˆüEiâÒóìnî\'¡-chüÈdŽC/JœTŽkØà²[èßµ5÷Ä\rbeFø7ákïÜ,‰ÅÔÄ-¤áˆ!å¹Rü„Qá^.øÙÄŸjvþ$k½>Öâîe¼´*\\ˆ‰Uy÷ˆ§o™µÃ©Û´5|ïRƒÅ._‰­CÙÉêËÙ{Û#ßþ|uÓþxOÒþ]b9-í¢’FI7ùP‰XµX3Ê‚p¹àý]áOéŸõ/G Íe 6¬·z¼—QiooÄ·/u¾êPk ¤´jŒÄ\"Ç€\0U#à_…^)°øi«xfãþ/…m§ø’ðÀusM—TºÒâbÌo\ZœFé’¸IDj®B³0$¯Ûø›ào‡Z„6~½‡Ä¾ š8š]NÞôÍeuï1Vâò;yŽ!k™€;+äñÙL¨Óöíé×Ì÷¨fÒ^Í+¾žGÆŸðU¯ÚcPñçÆ½\'Áqk\r/‡þØ&žl€f·‹Rfg»%rß:Xw\" \Zñ\0ë›¥çhÁ8Wþµûfè÷þøûs«]G *Q2î83ïd™O£nÈ ÞƒŽj·Âƒ&¯ªÛÙEóMy\"B€K1Ú\0ú’+é0Š2ÂFPÚÇ“Zrgosö‡áï‡%Ñ?fƒ6û¤v‘²|„É$ÒŽŸÅ_*~ÒÚÜÚOÄír=ÎŠ—NWÞ§ðê+ô/Ç>Ó´Á¾Gû=Öƒ§[Ù©ìá\"*C)ë’5ùïû`[ÅÄ­y\Z1‹7%sÂö¯Ëòº±©›îßþ”~‹Œ£*x(\'£Óò<nóÇ’Fûd“w¸$\nÊ¾ø„clÌ?à]+•ñUÓYÈJ±Ãx=+•Õ|CöUÌÛ·v^çÜúóôû„OT|ÓÆ8«gˆ¼{%Ì[Œ­·#?{šóýÅm5ÔŸ3.ãÈ&±µï1só|ÀtsWZô“M»={fµŽE˜ýe½Ù±}¯³Ìûš+‘¿Ôþv¢µtbc*§Ï:knuþëqô®’ÆEP¾¸ÍrvÏåÉõ5µ¥]{ëþ5ö<½OægYm©¨\\*“Ç~ÕÙ|»‘¼{g!;DqÊØÇªÿ\0Ù«Ïl§>U_Zïþ^ ñ}ÌÛw4:|òzc5”• Í©ÉÎ¢F¯ÁíOñOˆc†òñ`fuòÐîÌ¤sžzOn˜¯zþÓµøqáÏô{–¶`žrF–£å,Å2¤“ÁÂäñœÔ_2xKÂ:Æ±m[Ø\\Ì¸R>]ƒð-Ò½OÁß|]{©ÛÝ-®¡%Ý¹WŠw¸B`#AÝÆ?Zõ°êš†­Tq\\”¥IÑroª<¯öƒ×®¼Kñ‡Í¼,÷ke˜üÇˆÉÏSŸ^þ˜ª¶Z\\“Iæ“åžxãjçí\r?Úÿ\0h=wÍ]²FÑ¬ŠYIä¡nGË÷‰éÅdé–³ÝîXaVRe#¯á]Muó>w.YrßcïÏØ¦òOÁ:þ9ëm˜ãñ7ˆ4G•%§X\"¿»™AäáwZ±ÈëŒ\'Ñ|%§ø¶ñ]iqÙÉ&By¥7\02Nç\0œ~øâ½›Å\ZWü(Oø#¯Âù%XáÕ<yãO^–6RYíÖÖÚUˆÈ\\Ä‰*îíŸûÕÎü	ñ­¯†u+È´ág%ÄrK,öw\råJ¨	òÈa½HÇUc€3Ž•ùþq9TÇÔšò_rGØeÔÔ0‹õ:/‚^Ö<!¨é·Zo€õ­:ÞàOåþ˜·Mo³¬ŒØÜÇ,ª	Îx>µöŸÃ\0¦©5Ö»âI×U¾Ž/.Ûì×&ÞÖå„KvüÇTŽ¤Ç5òÖ—ñîxÄ^“MµºP«$—P¶÷uÄÆY³¼`•<•îXà§ý³5ßŠzuž¨VÓÖÝ#’Ò”³È;”6$8^9î{W‡™T¯R’z#ÕÂÓ¦¥u¹â?ðWØÙ^x?\\Ó­c±ÿ\0L¹°”§Ì²¹‘³ ò§®þÀÚ\"kß´ï€á¸¡:ÌXy‹	óˆÉð+Ð?à¥>+›Å?\nüs3YëéâP¶øä/Rsìyë\\gìáÏ·~ÒþkÏ2ÎÒÂù5{©­býé‚Ð©0de‹hÊ2Ü9¯{)ºÉõéÍúžf**8ÿ\0»ô?Vþ$þÐ«®|OÑ>Ñ&Ù™~ú]ÝG¥|£ûWë°ëž9Õ•˜îY–ëóá@ÿ\0Ï5Ú|V¶·×¼S¦ü@ðmÍÕ×†,uEÒõ]>í¢\ZŽƒ+îdŽ7mÖò6BIÆÖÂ8©ŸüOñ:m+âïˆf˜/Ø¯Êã¬-öG!‡º{ÁÅ|V_–û:±pþ_ÔûŒÃ4l<¿ÅoÀò_ßI \\²ÝbKÃ’¨½!¯þ×û=»õÅy¦½¯ÈììÒo.I$Ÿšµ|yâT¸Vò¤Vóqü_çšó}oP™%m²3sùWÝRÃé©ð²«vM¨kBLá±øVkê\rž»CxÅgÜêC;™ù<àvª3êÌX¼\Z©Ã¢/ÚX½{©\"HÊÎ£žªrÒŠÅºÔw®GÊØÇê=h¥ìL%Y·¡ä¢M£“úb®Y^ìç=;Vi\0¼(Š\\IÅ}g†uö·‚AüëÐ~	êÍ§ßk7¨ß—3+v•Ãƒù§åšò:ù£e½v^×.,šE†âkq8Ê¶ùŠx*Øê1ëD¢çPodÔÏ\\ðÏÇ?@±É\néñ\0\0.4øÎï¡ šô?~Õ8‚5Xf‰#Sü6ÁwûqýkÇ4)K°Vàd‘ýk{Ä7“YxVtk©4¸\\ –æ½Ê&…Q»a?2œcf»:.³íäsÑÎ151ÃÆv»Þö8_j·ž2ø‰¯x‚áá¼ŸV¿–áž+Ämå˜ò0­Û¦3Æ+sá÷ƒo¼_¬Xéö~MÅÎ©s¥¨XðLò6Ôz®ÞI\0gœrkÑÿ\0e\07ÄMFxìg™­VÝ 2Ýª´“#eŠˆË$m…ÉÀÚAl€;ü\rµðgÅhõ+;ë)´u½Ô’8$xc–âÖÞ[ˆ•ÚfŽ%eÚ\rÃ#¨áÁçÔÕV›Ñz¿#ÒÇpî!Sx…4ÒW~›îz7í…ñ\"oþÌzžÖò\rÁþ(ŸEÒ¦û+$qÀl-R%Ž-¹$»¡äf¼á‹n¬.>É5ù“OV1ºïä29ížO>†½«ãþËý…¦ÿ\0Ã¨Oã8•Ÿì¡ãT’ÂVnAÚ¤˜1‚2Bp@Ÿ™þxPñÏÅðÿ\0ÚþÁº9®eº™L‘Â±ÄÌã³6Äã»LWŸ˜ác}JIkuø¤V_Œöø*u›Ñ§ø;©«ëSxw_š	f“÷ÿ\0,íŒ÷Jç“Éçd×mà¯7‡,´ÉmQäk†vÙHIueRÁq$€SÉ$WÏµûÍ3ÄŸØúœrYêš\\Æ;”|oþ^3ÿ\0ÈÇ7Úxôhº±ó•næhì•3–Á[Œ`©ÉàçÓ¥y8¼- ù‘èáë6Õ™¿ûqü@—Íðž˜¢ÞH­%¼¿òmF/²àÇ½ºmr0ÄI¹ïÙ»â„Í­Ø^$ÓÁy¢²²³È¥Ü|¸Á‚Ëó1lÜ#¸sŽoãG‹æñGÆ‹6–	 µÓÒµšéü«€ÒM BáƒÅ€Âº‘Ÿ¼9Åí?À×žÕ¯î%ÓWM™®”ýœË\"›4ÂHŒŒÍ\"<a•	fÈg àvÁÐöz§>Ýúëýu81õª¬_=6û=:}Ï_¹Ÿ}þËÞ-}Äþ ¾’ÕuM7PÓšCK95vXüÈ”WwÈIWUeÎÐ+å¯Úp\\xã7‰ôO¶-êÛÝ³]…òÅä\ZIê¹8+c\'ˆìkÑe_‹ÑÇ­YÜnòï$>ZHUÄU]KmoLcŽ žkˆÿ\0‚“xjîÓãE­ý½¼i—Ú\\k!C\Z4qîR€úÇ•R¹$|¹ê+ÈÊéòâyíb*MÑ¿™óþµ¬4w\">g<°èkV¸Y\"å·3vè*}CUQoåù{võ>¦¹ÛëìusÏBkéçhyª¢±Ì‘‚Ýj§qsÎwx4é.¼ß˜gž:ÕYz}Ò;õry®6[4üÄqÜ\Z*8ùG¦yíEXl‹“ÖœW\'õ¥Ž&Ã¸Ô©nÎÃ\0óí]ÊìódÉ,G=OËÈÇjêü-s*ÞE³Íá¹8Çv=«IÓšITm%»\0:×yáý\ríQw.åÞÖæçÐç¸ëÛŸjê£Ï?^1Zž‡ð×AW¹ŽO:ÞKµ‘Q!a¸£7\nH#õ=xëëþ6øO\rßÁ}]c‡Sfû]µ¡Œð—JeŽßrÆSså \0xIB«²ò_³×Á]kÇ\ZŠýŽ;¿9¶G\Z\"bIX¸] d`—e^ìwÃÕ¼à½7âWJmCNºðoƒ^ãÍÔ-na‹ûFéÄ9ó|À1.Ö¹2`”êg8È`ræ¤½éè¿Ìðxo,Ó8#÷)ûÒ}4Ù}ÿ\0‘Ò~Ä~	šÓÀz–¡qugcn\'\Z–ã÷*d;#VfW2‚cFÉ\\©#¤zgÃÿ\0Gã;ÿ\05á\ZÕôšÅ¶–ö3)ŠÚGž,Í1ûÎÍ¢âáÉ$¨ñ‰</à”µ±ðæ¡{¬ÞJÀYØÙ¨[t€å88ª	ÎÐ+€1~|n½øEñËÂºäž#k+MCRÓt[H´¼C.˜n][ÊAÂFÈÒ;P6©˜adÖ&ŽÍ?¸ý«4‡>¦j-y+«t;oÛáv­áø\'ž½pÖ¶öqÁâ­QœÇ*·š‰m¨AÈFÇ\\®9U\'‚2|þ	oðþ‡þ$èú|ÊÚÅ×ƒd{Ei¢•¨YK1W”„P¶é333‘Z¾¤ÿ\0‚ øšÇÀ¿±V¯á­Vm6ëºŽ™©K [L#¸Ò´¨ãšTk Ïs<Ñ˜í›tÏ Pœ§æ÷ìç¯¶Ÿ¨kÞ3h6>#Ó®tw¼ta_i·™G<|ªÀ1ç¨^§ú<×¥˜KK[8üÚ±ð&Ã*Ž\Z®—RõIßþú7þ\n{û=Züøq£Éâ-SÃš‡Ž¯5[k=nÛRÔ­ôão;9”Û4‰eÚÕQ]·œªTn>G©ý–oêmo1aª†C÷ ÆÞ^9®àÖªÖ_4ýcT²Ô®ÖÛÍ–Ñn›8ùÑ¤b9üòƒ–Tš<\râ}JKÖ¸V6ïµ\\	£l-°’üÁxöãÏšbªVnU›×EcÑÊðôèAS„›K»»(é~!‡Uøû}o$±F¡–dó<°¸x.>ï#ŽÌkÛ>Üé¶×ú·„õ9£Ò|;â«_±¦¢ÀýŽÆí\\Éo3\"*;ùl±Y^f%\næÛóŸÆÿ\0ÂñƒPº‡÷Ör^´&LÝNK¡Ùò÷Ü¤d2q×ÉðÇâ¼?ð†¶Š×‘ÿ\0gß¶%¶hÑ‘ÉêH “ž>¸ÕÏ*’£ªiÃÑ§N¥[ÍÙ§÷ù>ñçˆ¾\r|HÕ4]CnŸªZÌ`ž×Ì›ÆÃŽ\Z6]¬®§¬¬ög‡?hþÒß\nu/‡^:»’×MØ·0<q)¸Ò®#VÒs`£cÆ@¡dÝ’Œ¿6üAð—„|sàJhVþ?øoLkí8Äæqs¾kV¬k›\"²œFa#dm¼Ÿ„>>ižÖÞò†IÍí™ D¹ICG(nœ‘°™ê‹ÈÏn\"Œª¥RÔ—ætsªMÓ©±Wöýœ5ÿ\0ÙÃÅÃOÖ#[Í>û2é:Í²‘k«AÁß<«€ÊZ&ù“pÎAVo/¾Ó7v9Ç§¿ëõ¯u½ý£mü_à»]R…µ-6dUäËy‘Ê%†hð\0M»çŒgvð+»ð~—}lÓÙË¸ãq†Aµ»÷?á_M¥V­z¿_ó>ˆ…*¼©èyd¶\rü¤`ŽIÀ¨~Ë¾Cè§æ`Bíõÿ\0>ÕÙjþ\Z’ùKÀÀùF8é×¯øæ±^Åí\\€›Æwpzþ?•¦âU<B’Ñ™7¶ÈlþÈÿ\0<þTUË‹7¸fÜ§ËíéùÑQÊÍ}¢8[_\r°fùOâ}êõ·…Ù†Ý¬Ý°^•èúÎ¯2ù0…Û\r•\0	û¾à`ó^µðïölÓ.ç_í‰&2\rˆ\"™Uºg§•àã9ÈÏ5õôr‰Ïm†Æq:;îx—€~j>&»XìíZV$í\'Ë\'Û$u¯¬ÿ\0gÙWMãÔ5é ·[XMÇÚ%o’Žpªª¡˜– b»Ÿü\"ðÿ\0‚´Äs\r¬ÒZ²´#Ç$ó‚q¸ \'\'ŽG®GÍŸµí3§øûÄ0ø6ßVÕ4¿Û´3ÜÉdbhïdRJ‰QŠT!\0Ädîê«]Øªt²Ü?¶·4ºzú¦#:Å,:|°Ý¿/ó>“øïñsBÔ¾øímì\\¼z–°tÏ&a*ª#‚V—Ì”mvòPc€XÇÆ¬f_Z´vl±Û±Ì±[¶ò1RXÁÀWV\nH\0‚O,y¯‡i¦ÛøZ9Ç‹ä‹ƒnúÜ(ÂnÏš%¶0õÈÈªzÔþÔäòçñŽ©qc6öi­´¡gæ‘»%“ä\nI ãqÆH¿3ÆfqU]Z÷oü2·ËCõÌ·/Âåô,*Iz«·Ý»êÌxÃû[Äe°±¾¿¾Ê¹X%’yc%‚‡Ç?ÅÔð¸Î=*Ý×Ã/\\è?ÚZµÖ‹á[	ìÅ§¸i&Ø÷P,È`H<ã8^ÕŸâ¿Šk£ÜM¦xÍl´xfb,Ò]7Ê79áØ‘·$‘Ó<gÎ§Å+ÍkC·Óî!…¼¶pÓ q!øOÌqÇãú×e<*ª\\±QO¾¯þâcS4£M´›—¦ˆí?j?ß/í!â-KTÖõohž\'Ô`ñ¾Ôm•.§vQN®QKm–%¸6PvŽOKøÛkâOƒð‰Ùi÷1ê©C<w1Æ\"Žcbù<’d\'jqÆÉè+ê¯Á(¿h¯ÛOö}Ñ|]ðçàÞ½âOÈZÒËS:…šÞÄlÑ‹»˜¤’51ì*ùpí8ùoÆÿ\0|Eû0|eÕ¼ãM\'þÿ\0ønuƒSÒ§š)%´¢8bgBvºŸ•ˆçê+Ô†SKÚE6›Vzw<iæµeFRåj÷Z’xŠ¿é°jry’\\Éè\ZVoÝ‰HÃ) Œ®sŽÆ¸;OŒ—žÓä·In×íQ²9Xão›æ;¹ëÎÎ=ãïZÆ³¥ë?¡Y£ó%Ž0®Äd±œœJð_ØÙ‡\rK\Zî8ÀÅzY¶[ÔãÖÇ™’f’’•9­˜ïüF_j:¤ÉbÞ^¥4H\'˜ÈÛ¢“9ÀÃÄžN3€jï‚|}cá«å–}\nÞçÁ‘ä“¹ÏÊ\\/9Ç ôã9ãÖñmÓ¶sÛñ?ãRØ$šžZÞ®9È0ÄÒ~ b¼9`)¸òÈú8â§{Äúsá_üfóàþ§¤^h~·†ûG¹Žâ\"Ž?ºwmÌKœžrçs`õ8à~±òôØ¡fÜb@ ý\0+.ÖK“Fñ³tWR¬G~çüò+RÁÛOÕ°«ŒàgãÎÒž-£FþÉZâ­Œœß¾jÙß¶–ýc§·¥øâeuV“å\'’yÇLÖ‹+lteaÕ·/ }*’[fŽ?2?ÞFSp$p×§=ë¾-Ž\n•!-$z\r†¯\rô\n¥þaÔõŒVf¯¤opß(Vù‡¡ïù×1c®IbT€-¼GN?1ùš±â§‰”\\(9Ûœœg‘Ààdäšêq„£ª<îYÂ~ãÐ´ÚN–Ufã uÿ\0õQU¬<G¥VI<¦ï–àçõÇ½ã†ƒEKY3²±ÕÓB‡ky6òd/—\"$l»qÉ g9lcuæ®EûC¯†­Ûµ¼/\Zå¤ö36G#ÓðôäšñÏøÆK–Üíòÿ\0Ë61íPs¸’x$Ÿ|Ö´×ò3Í;‰nÜz?çÒ½š™´£îÓ<zy9ûÕOTñçí9¬x¾Å´Øn#XK|å~]‹Ó§#ÐvÜ×™ÿ\0Â:ogf¸_µ¾KHçžqÜŸ~ÿ\0^µbÆ/²îòö‘´o;>\\×üóùÕ÷°‘íŒª«µ€9RWqOSô÷¯>­j•ß5WsÒÃáéa—-cœ»Ò#´2m·hûNƒ·=½W·ºXU¶á¹9\01íïïúúÖ•Ú,ÞcÏ™’\08?— ö÷¬YíÞ+†ÚyàŒÓÅ$¢ôG£9+6OŸðgäf/ø%^®Ý\ZOˆº©\'`RÑ¬“ü_w¯Ðvòçìÿ\0¼ý³à§?¾+ü`Ñï,~\rhß¼DÚ.œëå¯ŽfMbìü¼†•Ü\0&-±.>™ÿ\0ƒ;ìæ·ÿ\0‚SëÏ#3GqñU’žB‹M=Oþ<­ù×ÑŸ?àº<\rÿ\0ðoì×o¯\rsÅÞ$Ô¥Ðµ=JÊ@Úo†õM¸·°žNq4ß¸Ùc¬«&Ö$/‰RµUVjžìôcN.R>tÿ\0‚úÿ\0ÁntßØSáÝïÀß‚÷ö6Ÿ®lÒòîÁ[øÉ¢XP¼-ãFSÊˆÝFÂS·÷K\'‹|cý¨¿eÿ\0Á/4Í;övñókÒx+í\"O†Z€šÏVh?ä4ú÷‘ä:	‡Úd»ûIi£Ý¸6öŽ¼ÇþøýføgñwÃ´‡‡möé^;0øoÅaG0j@EÉäñ5¬&#À\0ÙÇÔÉ_}°š÷þ\rW…|Çwÿ\0†o‰‰ÏP4 Hü†+njq¥MÂ÷¾®ý|Ì¹fç%=º¹ãø\"wì·ñoàV¡á¸þ\nü?ð¬¾!Ò¼zÎ‰¢Ágªé2<ceÅ½À]ë*6$ø!Ã+2ŸÍø\"‡ü«áþ¹ñãö™øcûLü<°ñ—‰>ë\Z5¾‘t××v¶÷WQÞH—py&c¸Hã˜±R\n2²Òø*?íá¨Á9¿b\nüY±±þÒÓô¿hÚÆœ‘,’ßi·\"¹Š\"Äm˜#n·´°?FüñÇ„þ6xFø…á;WÒ|i¥Z^XëÑ\0ú…‘V–Ü3`>Õó¥!”i$µrK^4ÝÛ³ÛÈÖ4ió]%só·þ	‰ÿ\0ò|\rø1ñâgÄŸ|=ÐüOy¬øç\\‡Áº»ju\r7Âº¾£qof‚âi¥HÖo:PÌ¨Ð„ÚC<žÇñÛþéûþÅ5O‡:ïÅ\r+J×¼3pöZ– h·ÖúeÂ’Ò„HŒ\n¼a‹#Vì+Ä¾.Ñ§¸Ò/­î•e¸³Y¢pËÄ2<!=š9£taŽ=+ðþ\r¢¼ýžô­+â÷ÂßÚSKøMsñ’Oˆë§Yéž<Ò¬îukû¹‚Ú½µ¸ºžI\rÜN­\ZrÆUw¨Þ¥å;éÐÛk$pðsüûà_üáïÁÝàç‹î¼U7†uCPÕšmöÀ[+Áq(7Æ_qó8LýÞqÅ~T[Î¥/ÌQ‚©—“É9\' ~¯éßþÅûüøgÿ\0„øá®x_àßÂŸkšVÍ–£¤xJÂÆîÕÅõ¶Z9b‰]IS‚2	ƒ_ËÞ•pÒÛüƒrŒ†9>ƒ¦OÓœu¯SR2…£}T]îÍE¹YnÓk4RÌ\0|î$ûžØãñ÷«–\ZÈI6ËäºÃl‹»Í$ž¤óÓðúvÈ6m$lY˜/Rwq÷GåÇ¨8ô¨¤‚h¤\nß/PÙ$«`ãÓéù×|\\‘Ç(¦µ;K8-u9|ÙC;F¥ÄQ¾G8<¼ó“è£ŒdQñ>Ž\"·i¼Å*p¹*žKŒÅpãnFFGµb[êRéío½·¦íÌ= =1ß>Õ»©x‹í1y^\\{èËˆÎÐj‚½2NÑ’}ðFk²2„¢ÓG$”ã$âîŽEüÍ;>Z¤[Hä¯\n¡Ç^GéEnH!½Y$>XUuÈ#rå=úžÇOL÷+›Ø¾ŒëU—Td]È.¤ù¡mªv®Í«‘÷†xÁÎj¥ÍÅ¾ö-k!<ç/Æ[¯oAúTPZ\\Ü…TgÁë·iÎzsœûU›M:h†$Ž-¹\0‚œ¦zG®	ç·¥\Z¶-4t+vBÞRÌß1#\'‚ÀÓž¥«ëµù•¡WÝŸ-³»<ôý	úœ“Ò›Çs ùš92ÐÊ½²éžçrÛOŽí‡Ù÷~ä\0GNr28ÉÀ\'sž:ãª*ñåG$¥gÌÌAk5ÄI\"¬|xÀÏÝ$~$ôÈÎqPêZ{ßÇæ2ÆÃŸºÄð;õö?Lºh4àUe…‘c“jÈÎªNFî„çœrOZ÷ÿ\0ØöQðßí)ñÇ^0†ö}?Âþ¹ñ)k¬G¤¡¸†êÝÍrñJ°ÄVWÜì‡gÞ9ÍÍ±t²üñ¸‹òÅ]Û}ÒòîvåôgŒÄÃFÜÒÚÿ\0yöçüéÿ\0Þøÿ\0ÈýŠu_‡_—Ç+®_xÎ÷\\…´­!o-áµšÚÎ5ÜæUmÛá— )#ñ¯ÊÏÚûã6Ÿñ£öÇø¡ñ#Ã-¬izw‹¼o«ø›F\rå¤W:„×PnÚÌTY#\'kpO¿B4ø$7Â‹ß\Z|OÓ×Cø±©Â¨ištvj¸†d’âÔI8\r:i&IVIVÜ+ó´o<mŸüãÀ7_>êö¾\Zø‰®ÜøšÓÃš–³âˆµ{{m&ÇûKQ‚Ú[(âxó,±‘LÈŒbg6ÑðTxë)u/=\\V©%ïEInû5æÛ²¹ö2áLÃ—W{¾—¢ï»[³ß²—ÆŸÿ\0ÁÁÿ\0ðE{ÆÚ¦—e®x£H\rø°FWÌÐµëb­êFYG2-½äjdT-÷€üÁñWüâŸ„ŸðNý{ö@×¾	ØÙëÞðMÇÂ­SZoV ¶m>YÖ(íJ>\n±&*N0äryÁþ¯Çøwì?!ÄÞ!Ö4¦hµˆµ{›[;‡gkh‹mt·\"›f.ÁD¤Ÿ”‘Âßø%§ÃoøÛÅZ<>ø¢º––ÖQiú\\·WÖÇ%¡žI%¾›H@’¼,sE!S÷ŒaCŽ²Ž^g¸Û›áZ\'.^ýÓòIj^#„óù#(^ío»QæíØúþCÿ\0Åøûvÿ\0Á7áVx\nïÅ·(þÐÑ®Êßè­ko\ZZ°ys#¿$ mÎIÈ9<üÛþðüöpÖþ|VÒüoâXêOªxFM\nÎÞæK¸f{»I·C>fM»¾k‰·òçÄüMÿ\0ïð—û\ZMâØìüpu»o‡Ö¾3(7ˆtËù0JEUÿ\0Zl\01#!ŽOÊsÿ\0dø&†‹ûIþÌ³x‹P¶ñž(ñDú­§…Þý-à‘¬íÈBÐ¸i.^,‘U9ÀÉ¯Z\\]’¬ëÏ™B59Ö·zÝkµ®ßTº?öfñ‘¢¹y¥m–NÖzoweÑ÷±õŸüGþrð\'ÁOÚâ÷†þ%E®iŸ> xçZñ—…uÙ­$¹Ô<)öë—¸{[»X¥ ‘‰p`ÞÑK$™ÞŽ\Z/»¼Uÿ\0Kÿ\0‚oÚ|C·øÙ¨xãàmç,Ñ>%‡Ãÿ\0lñ4yŒF»|»f¼Ü#mŸwr®W€?¿àžÿ\0±G‚ÿ\0iï…_¼_â?xïÆ÷^ŸO·Ó¼/àé#‡R¼[§ÃL€îÚ9À* E!ù»uÁ\'<;\'ì)}ã?ìÿ\0Yxõ|=yãâšúºl7ÿ\0,mg°Hò\0òC÷¨ää\nçÌ¸“+Ãâå†›’”g=4nK™u½’ÝÚÚÙ\\ïÀdxÜF\Z5áfœ\\–½·k^ý/ëcïŸø+¿ü§û6þ×¿°WÅ¯„~‡â&©¯x¿NM?M¿ŸBKM:G0É¼´“	UB¡<Åž1šü°—ìÍµeù›Ç¢Œ‘ŽM~“xÃþÓðþïãgÃ7CÑþ#i¾\nÖ¯ï\\Õµ{émµ¬íl\rÄ„Ù\\Ù@ö¿½?72FC)ù*Ÿ“à ÿ\0²e‡ì§ñŸAÓô;mRÏÃ~*ðÕ‡ˆ´øïîÓP’ÜÊ\'‡íŽ]“C ƒYB	êÈx£-Å×†\ru)EÊÍ-,ÚiêìônÛ®¶1Î8…£,EkrÅ¥§šO¶Ú­O’ç`;e“’AÞÃ?]Àð3ÛŒ`ÒZ\\ì‘Öe‹Ëf	Äƒvâ3Íž¸$Æ1Ó6mtðÆ­q8SÊŒõÀÏ^zwÏBÆµ‘áØfiTdŠN:ÛŸ›ƒÆÇÝ{7ÔùÔ]	âe±›Ì%UJæ/öN@ãòíéŠp½ûU²Ãûµ‘£ÀŸ6wß)8\0ŽFzU³BUY–Nye‘A§<Žy?‡ÓïýŸlÌí#H “¸ƒ¸÷]Ý8Î2,UGE©;½\n“_ùrH•XÇnFpIãóõã¸*…óï¸a$®Y@ÁÝ“Žüó§=è®WSS®1Ðé4}&+¥’f”´÷.ÔùÁ\0dýàGo”tÈè\Z²[ÛÙ’ÐXÝ>>rÄd•#¯<uÛÐƒ¦jvž­ymæÊ”e@G%{ÁÀëßµhjVðÉáëkèo‹Ë›ˆ¥‰±¸Û€ç&SŒžŽ¼×¡\ZiDòjU”¥©Â\\Ü\\<ŠÊÞ\\ˆØùTðFÑŒðZÓÑå‹bÉ#,e˜¹€õÀìx8T×\ZUÄ¬Qùïpá\"D@ß3ž<ž0NOÒ½ãáì³>•áù›R‘ÒéÏÚ\'S ÜLÖÊaåÌ¶!d§=PqÏÍŠçæäz‘^Ò6<I.ï&µòíî$’8D€HÛsŽ1’Ý>oA\r-ÿ\0Š.íôS\r½Ô‰\rÄ)ã†P\Zt9,¬I©ãåÀíÚ¾—²ø§ÜM˜·×h]|˜$æˆ§Ø™¼À3¤¨*Çp~Ïú¶Š­&¡ÑÉÑ[&å±Ê«,nÍC3 m ¥âä)ÉU1’åk@†Q•Ó>u›ân¼×›Xñî@-ì©€3ŒÜã=Lž™ªPxËR])4õÔõXl!”\\-¢ÝÊ°Ç\'H¨]ùÉ\r×99ï_N¿ìá¡¢ÍtÑ¤hÒ.’‚ØHÌF65‘måX\'vKðKdU\'ø-¡ê\"O³§ÚÜÛ´lSGÈíì$K)\\Œ	ïœ+Wìè¿°¾äz¼_iýìùº/êÖìÅuf62yÀ-Ü˜iJ\\ò~bH\'®k¶ð_Å›í1ê(ñ¤sÞˆòÊ×è†$Ç\n0Û¸lŽ˜¯\\±ý›t]*Ú\ZßÄÎÔì|ÛE-Ì²È²]Ëg¸l¸e|¶äš¹Á\r?Rk¥òäŽâ¼ø£]+ÊY@v\r•ûÊ\Z$vÚ@_‘²1ŒTiÑß‘}ÈšžÒKâ{<æßâ‹wc—6±¯.ž’¬¾Aš¸\\G·eAÛØ‘Žàë7]&{s¦ê××QZ£v!í¾Ã¿ï‚Ÿ”¶[,1ž§’kÛüðÃÚ-íìqË¬Oh×*c76K39#d€bX|Ç\0a@ ç<U˜þèz§œ¹¾Pb—Ã§˜à0Ê3a¼6Ò 2´«Æ	êæ…¬Òï²êqý^W¿Ësåû\ZÝé\r6™wu¥]H…Öwr[9S÷”²°,:qÜŽk™—Åš‡Ú•ÿ\0´¯‘–ÜÚ+‹¹?ç–wp‡ŸqÒ¾¶ºø\'¥És5ÍÄ	öeÍfƒJ†4•NöÝfO—Ø.Ð¤Œ‚2Æ”~ÌúMÕÌÚ{Cqi„YHIH®-Ë¢Žf[3ƒ—ÈÂÃ)É!ˆæ«\Zs—3Šû‘ÙCž1äMØùBçâ.­«J­u­k2È‘5²Ôgˆ›nèòÌ~S•Òœu»Fbi¤’;ü¸¢’c …F\0D…8^+é¯þÌú%¶“\r¬nµòæ™/ìôîv}¿vÐÁO àå\\Œñº[‚\Z)òã¹TS\"…x´häÎÆVEùlH\nÍ.ÒpAçÄS8?u%èiSžkÞoñ>zÓ&…ìZ3ºM§%Ší,ä{ñ•üýTž6GS#à¾ÞXŽüñôäûv¯¥î¿f\r+Ä—šúTÒ.Ÿ [t´Ñš(îdlŽ¿e9\nñ.UÇÝ,99CãÀ}wÂ÷—:KL·V7rË4sØ´pÜ,i8ÙŠÑ0Ø‰˜«0^	89è*É¤Ž‡kT|á}sqµ•ÝU³ûÀ\\3üŒgúñ“To%wk)i·\"†Ç\'\0ã®:*ú+ö;ÿ\0‚h|cÿ\0‚…øƒÅšoÃoé÷_ð„ì\ZÑÔutøl¤•æò¡o4îóÛÌ0ª˜þf]ËŸ8øåû,üBý™5xl¼}áMSÃ77z•·Ú’6[¹´û¦³»XÞ6e•#¸FBÈJ	RÊA<?Ú8i×xHÔ^ÑoëµöôÔÞ8z‘¦ª¸»wèyPt»dM¾g£psÏ\\ÞŠÖ\n7Ã½Q¾e/Y†qÉ8ô¢¶öe{GÐê¥ñûHaR¬vˆKeNç8\'ƒÛ=zU‹ÚÇ6“æž·šmœÏ$öbWƒÎ2´ˆ7r#Q8ÁôÁægxNWÌ,~V%AöÇAÇ5TL¨Ñáöú¢°ÀïžO…v{FpÆŒw:kÍoK{}.)4»¯µ@ì/ð#¿S&@D1f\'Ë»sò7m€ë¯iM¨Ü<:^¥ö&æyõ?6X9ÌË\n†ä0‹Œ/\'©çÅö¶´a¹ÚåŽ}x#ß’qDSy›\\[Æª~àê}	>œgŠžb¹lwø­ÿ\0Î…§ØYèðµõ­É–öâ_³Ü­älyEY-™¢áPg{\0UˆUÜEiEûDx‚ÖvhÛìÖá‰‚b²ˆC’7_³UŠ‚8\0Ø$×Ï*¤{Y¡ÞÊKí=	ç?¦sP½Â«G\"Íä±p3óg#©É®~•.)ô/š]Êçã©ss?žÖ·2+;Ú,ÐÛk,‘ˆÙ|œí—içš½oûCk\Z]Ô[6Â§ä»Šk%žÛOÙv®:ò¬HÈÏ¯œ¾v*µÓR9V\0}9öÏó©±ÌÒíÚISæ‚zýsÇ_|Tò®ÅsK¹èš·í!âí#S·2HÞs+ZIäÚfvùrnÛl»‘Ç—Žå«v/Úâ[(áŒør	#Q$ó/Æ%(U·cÊt<:žkÇìû‡ïFs¸üÛ³œq×ÓŽzS…ºÌ>V…UpAc×__ñ£’#ç’ê{ý«Úá®¼Í\nÔI4&\"ìmqŒ}Óç?†2jÍ÷íÚœ—ÓIá]5^üoR·r~é„F5`›q‘…8éòòI¯º–9]›Î±‚«¿!sÓŒÇ¾OÓš‰%/&ì±UÉ-7ñÏ8ç$t£–=ƒ÷=J÷ö¯×®<3¥Û¢yz¥”ï%Íêý˜ÇxŒ².Á\0·_ÊÄgqÏ\\jü4¿ˆ­ïahYm#†Píp[1ØNÂZ–\0ÜAäž1|î2#+2*¨ãƒÓòÇñ¦‹¥Ü¬Ì¥”à<.x<œÿ\0:9PsK¹èr~Ò>)I#wkI²(y¶ýìÆÔ¹äƒùTº_í%¯Z™šçË¸ŽHü´Ž;kX|¼¸’C‘	Ý¹²yÆÒx8¼â)#.w–=^QÇøÓåuk4‘«}ìnû¼=xôü¨åAÍ.çiâßŽ\Zßt‹\rMšâ¹6ãtqFËqû´RãGa“œsX:n¥§E¨Û\\^iW—VqÄë$¨´O&Ö@û	Uˆ\nr#qaª1·É‘F1’½ù÷ýiñÞYwGµ—‘ž£Ÿ|Ý2~´i±.÷=ãö?ý¼¼ûêWÚ·Â¹¿áñ6±4ÐêZ„®o-u2‘ýžÝ­%ýÉh%ódIñ¼™JýÍë\'œüKøÓâŒZÒj^.ñ.¹â‹è^éÄÚ„Æá¡k›©o.É|Ë›‰å`:¼ŒÙäcŒþÐÛ¶DF{|ÙÝŸcÓõúñNMCÌ‹r´q²ç,N1Ütÿ\0ë×-<åŠ5í%kÊÊîÉ¥¯£kÐÒUªºj›“å]?¯CBÊkYJîuè{u9p;qEQ]MBùrL÷\n¤ýà œžÝÌŒ9OÿÙ'),
(5,'Sonic 2','ÿØÿà\0JFIF\0\0`\0`\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ð\0±\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ù¢ø£OºÝg­jå€DŠá—# ã ¤´ƒRÕu›íJiÚâ4Î]ÉiCÍ{oÆO„ÚuŠùÚ-•ô7r9k•™FÅ÷R\r/Â…šw4»mRáá½ŽP¨1òmëÏ\'òüóG`¨{g§çÿ\0þ¬­‘Ò½’>gñ\'†¿»Ê–8n˜ÙÁPÃØw¯Gøõà;#ö%ø\r~°.Iµå,:±‹ÔWÑ³~ËþÕ®,íå’ûPÁTô$ú×¿|Jý›ôOöNøo¥Í¤Ã·MºÔâ0\\K†R×0Ú®ÜˆöU\'N-¤¯ø¥Ôù,÷ ÂË…Ri>ýµŸ–\r¾\Z_xÎ;Ï%Dmnžco=ºñùW«|2ý—µMkÁm¬«Gó]¹;€ŸLç­}­àÏØ·ÃzŒvööºZéî³„–4Ÿ1=˜×²é²·ƒü-g5²ý²#nw|wà~uÒ¸ê­] ¬ûbîîÏ~þÍÚ‡‰l5Y\'·2ÅÌ*¥7.î8Èú×Ià_ƒ‘Ùx‚µirC¿ê¤­}‚ÿ\04ÿ\0‡\r%…³,s4™dÎpXõ\'¥e]xM9#·†+Ÿ0ƒ´šô°üU‰R³ëò#“Z;ŸðóãÂ¿~Ë^Ô&¶ÐõÏi·vÑÞÍå.£!Ë$bçßò®rØ`3´ãðcÆž¼ñgÄ[Ã¾ÔïµY®ZÞ->Þ’`ÙÆÒ£§=Ié_¦Ÿ´—Â-+ã·Ã­KÃúæ\'š² ŠS3F–3FÁ:2üÞdfG r§w àWåçŽÿ\0à©Ÿ\Zþë>&ðn¹â«³¨Z¥Î‡¨Û¦“k²\"«E²I‚–JrGFšúì¿íæ±–­$×õ¿©á`x’yÖ)BŸ7;¼[z&¿áÌOÛkàýÏì« h¾ºÕ´ýW[¾—ûOZ\ZeÈ¸‡LÆÊ–’È„«J‡\0’9õ¯Sÿ\0‚PüÖ¾+è~ ñf¬÷–Æ=O{‰73#ªn<(iàw&¾ø‡ûBø»öìñ‡ƒtE°Ó¡þÍ4J²€ÃRÈUçfgáù‰ÆO×õãö&ý‘.¿fÙÓÃ>Õ¾Ëý¡™=ð‰÷fi³(=Ü…ÿ\0€Ö|e˜¬6Z°ø¦×­¿­x3ÚâóW™bµå»¿Kµe÷]¿‘ðÏü/ö5ñ_‡¼IcñCáó4z¦ƒlS[\\™¤D9Y08|/=¹ŸØÃþ\nqð³á·Äë\rsÇ_t?x‚õÆ§4\ZzÈ0™{XãeÚ’T)Æ8¯Ô¯xD‡ÄëÕÕ¼—±–¸Ûîí?ùïûQÿ\0Á´Ïx®óWð©o¢Þ^]4²ÙßLËk´ç„`…”þ…pðßájPX<ÒÞî‘m_ä÷=N$Èñ®¼ñ¹$¤EïÆ.×óV·Üyü—öæðíe®ØÜh1húM•Œ_è^ðÕ›G¤ÙÈÇ÷“Y\"f•€QÄg\0c=«áœC<¿,a[\0ÎOçïï_gxÇþ	ñ&ÚãÌ¼Ô<0¥@@ßn  À‡>§5—ü*OèìÚ÷‰áŽm­º\r>Ü²1ÉÆÙ“Û?(Å}ºÏòœ=?v²~šŸž®Î±U/ì%óÓñgÉ¶vrO*+7Ìì8Ðî’{ßØ×Õ¿±ïÁ½cB²Öõ‹ëi,d¿·[k;y{¤eƒ;0í’‹ïÅmøoö/ðÿ\0†¬¾Ùko7Ÿ{’idÜÙœöì{WªØØËáë?³Ã1ÿ\0T»÷nÿ\0†+å3Ž2§^>Ã	³Ý³ï8o€ê`«,^5ûÑÕ%·Ìòé±\'ˆ’[ŽN1Õ±ŸJÅÕ¥ÒaÔûXhíô­&q5Ég,Ò¸\\ù[~˜öí]7ÄXu¨æÁF¾\\ò	Éþ ×Î¾?ñ<wWþ^¥Mo´òDi›æ$©úóÍueµ¥Š£mŸ‘¾}Š†»þ;§ˆi/|kñ“â+ýIü3y ‚Ò	æ2ÛÙž|£ƒÂí$~Ÿâ­BãGÔc³ŸcIjžVW?£qØŽ\ZƒIñf“âËä³µÒ[KÒo\0…¢WÞPÿ\0	ºj¿Š­&Ó|O,‹*\"*±ä\0Q“ïŒ×ÕdÕçNn¹tÛõõ?2â**­ây¹õµÖ›ôôì7ûzãû£þù¢™›AúQ_Gíæ|¿*óûÏÞíRÆßÆÖqÃ¨YµºÆ TyA{\08æ¨AðOG°…–ÕfŠF;·¶H®öËáM×ŠfZ9ÁÈ,»·Â»‹‚7Öð«5”Ìª8ÈÝšÿ\08½¥h­$íØþÃ–g‡§îÝ}çÏgÂÚÅ×ˆ¡’Ö9¡ŽÝ†&Qø=ÈþuõG¼)¥Û|\rð,77Q^M]<sYC³‚sÏPxÉ®N_Ï§¨E‰ãÙ÷±ÏáøWoã-.êçàçƒ…¼dÈ¯yÉ\\mýçôÙNa[ØÕNÖåýQòõj5«áù]½íþLóŒ_íco\0i¾\'ñ©k>ºÔ#²ºžÎ#<š`tr“6ÅfØ]U=‘kÎ|%ÿ\0YÒ~-øÏVðüš~²ÓTÿ\0ÄÇQ¾mò˜ÒD	;H^OQØÖ7Æÿ\0ØÆß¼OyªxgâGŠ<-ôÞtÿ\0cºQØ¤€¨@À\0YÕ°?¸+\'á÷üÇâ…‡Ã=Kºøá¯Ûjº5æ¥{w~¦i%Õã¹¡’0Ê~çøï_ªd•8r4\"ñ5S¨÷~ò·ÊÍ_¡ùþcÉÖ•HCE²Ñßñù‘jðPèšzÆ¹á=BkX­£–ñìïÒøÚ<“$$I¹£HÛÌ3“p)÷ªŽ“ÿ\0)ðç‰>k^)Òü¬_Çá«+{ÛË+ÍTC4Ë#•Ú>Ea³®yë]\'Âÿ\0ø&G´/ØÙø“âf­©[XÙGc<	4Ñ‰™n„æí› ™YG“ƒÆÃ×µXñ×üÇÇþ;ø¡=åßÄkË¯Íâ[½xi±<±ÌÜG³ì»×øcÀ*3Œç¥}„srQ§Q|ÛkCÏ‡öÂø¯o’é¡Û~Î´Ÿí/«êKká[½=6ÒÂåà¹•n•ÅÄf@*\n6:Éa‚8¯ý¸¿àŒ>ý´¾<ÿ\0ÂU{uªxFâ!¾:e²mÔ¶ŸõòŸÞÀÉëŽrNky?àœ¿ô‰–šæñƒ_´:]åµòÅs<Ïëo$» tÉ]¦‰\\˜óƒšûŠóÅVÓÛmšÒO;pw\"rÑøsŸá¬q™¶]UËê¦ž–WÓþÏÙâªEÃýzê?ðF†ðM‰Z=÷†mu\\^[y‘ë\ZÔé#Û1+\Z¢ª/^»w^kÖ4)ídÓ¬á“É“–8C»õ>¦½öõý²þøªÆÇá¤~4ðÜ>5Ò¢ÄÖ×wB¥q¸+6#‘œâ¼Óà…¬u)ôõ]kC¿i³$W(Ë“’^«äóÙâªfS“nqv³wÛ²ôz§ð¼è¬–k’Q½ìµ~oN¨_x«L²Ög†)‘ßh<¡$àý=ë‰—O“Ä÷­´´Ûs„P7ƒíŸJõMwáK[Û_ÜMº›Y¶Ü;U>nF}‡zá¾*þÔŸ?f¸ïu\rsâþ‡ÿ\0.–‹»§b7y~RU¸?{58L\"¬ùWàzòÍ0Ôi§\r_àbYüUšóÌòÔäïR§>Æ¹?Š?ô´Ó]c°†uXÎ[nJ±î;Šóÿ\0ðU†ø÷ð¾òÇösø_ñYÕã`—zÃiO:iÝ[î§˜2TgæÇô¯¼ÿ\0-ø±¡µÄ> Õ4ÍIüâ“&¥}¼“à€vŒqÇ­{ï†1•)¹Gs–ŸaãQF¤¾G´ø¦Ámõ«»³íƒç\0\r¤×ŸkM›\ZM0Y\Z±p$>Çéü©ÞøÝª|Wñ}¼Òxvkk¤’5žÒéZ¿ï3H0(ÈÀÉ9À­_‹:3xjÕd5Á„íƒÍˆ£3Ë?uqÀÎ	ÇN•æGðóä©kýç½,R­xlxï‹êWR«Cþ±IØ½¹éý+ÊuŸƒzö‘¯j;Ö=CJƒÏ··eßöÜ¾<GË¸çÚº­{ÅYë3~ñd™æÃàŒšáüM«Èž&@fx£˜ç;»ã¡=9¯¼É¡Vš½6~}ŸK\rR-U^^¡“àý>Ìø›GMµš;D”MvÓ1’( áŠè> hi¨x©Þš6+·åÜ7¶„`×Yá	Æö÷Ú|³i¿a¾˜ÜH!;’(ò6¦p:dôâ‹ß‹íVi­öIdE`*\0£ùW×å³u+9öÐüë>¥ìðÊ”wm?¸óïøGÏ÷düè®÷þ+òôW»ó>FÓìK–\Ze­‡ú¸×¯?…uZ$Ò\\á†#fçgZä¯îþÁ>áó`äýj±ñ~¥qqû•e_l×ùÿ\0\Z:è~åZœê«§‰5[-”ù´ØÈùzšo‰õf·ð.‚Å#ódið¡x_ž¸¹õ 2LÍ)äîþjèõI%ðO†¤’)71¸`£?ßéa#Ó¨×oÕN.Œ£*jýF[Ó&YYÕzsÆ2kZh-gòØCûÄ#Ò¼öƒý©ü\'û,|(Õ¼]âËÈá†Æ–ÖÐ²^ºº¼vÇzø—öwÿ\0‚xóö™øsão¾(×€>øwPm?Ãzœ‘FúÛD…äyç‘ZVP\n)”êq‚+ÜÈø¥<Bj0Žííw²IjÛ1­G´„)¦Ü—Ÿ’î~žÃbºˆhü¥e¼[åSÛ’içE†Á™™ìáŽ5ß$†uòã_V œWòßûTÁ^¾:~Ò¾8ÕµK¿ˆž.ÐôûéYm4R{->ÚÜ7È†8ÈÜq˜œšýýþk³GüžÇ^ñ¤Ú¿Ž<SñÁ­˜µmE‹Å(D%Žu>¸¯Ñ«ð<²ìÖëÔ»ÓÝK«é{ô<jXªõqQÂÁîí{þ\'Ó¿ÿ\0k†žÖîlï¼MkÑe$’8wÆ1øóßµkxb;_ˆ¾XðÞ©¥júTÀ2cÉìJýáùWóýÿ\0døÅm\'Ä-<è6¶ú\rÄ°»Ü‹+’,©@PˆÈ%IÈ\\æ¾_øIûx|Zøâ]WÂ>>ñ.qk(‘RÆ118tl«©î¤kÐÁð=\\n8ˆTå¿KÁg³›b°ØûÌäº»5éÒÇíüçþ	gñ‡í_|3£µö³¦ þÛ²7l©†n\'ˆy`Ë‘ÎÌw¯“ï¿f;ÿ\0ÙáWÁß?|a¬X]k×\Z•‡ˆ[Å\r¾ËL¼…€[qaÞ5uYpÌ[!Tägúÿ\0Ÿÿ\0‚³h?µì¡}¬|hš\r[W“G`Ó¤Ûª.Ô)t©ŒnÝ¸¼/×Ìÿ\0¾i:oÄøš÷Zð~¹{öÄµ¼»–(oY-æÁ¼)*ÜËœ\0;WÒà©cpTýŽ2¬UÕ–¿ŸF­ó7Ê0µ³HÚ—îdµRiÙÇf¯Õ¯È÷Ø‹þ\n¦þÛ5¥½±k]oI†(|C¯ï-‹¹(’ÂÌT…“n@9#¹¯ÏßÛcá÷Ã…Ÿ.|Gáý\næßX’íÞîæîðÍîÈrcÛÃrzp9Àé^ëû1ø+Oø=ã¿]ßÝIáëkè!Š]%R;[’o2¢ åzs“\\Ÿí+ðËDñï‹&¹±ºPƒwÝ¹Q˜	08\'žyä^*–\'Šö´©NÞëôm£å9LiÑ•*òR’µ›Zm¿és»ýŒÿ\0à p~Ç6w–¾ðÏ†<eá}Fö­Nöæk9^åó\0\n•µzžõó÷íðûöÚø‰\'Š¯!·±Ñ´øD\ZM‹«ÛéèÒ<Œ<Ãr0Üä€CSÚ½göuý›]MŸ¡µ•¥Â–s{à-Àà6FãŽ¾Â¾‡ðïÃ\ráÌPÿ\0ÂAqcö¤ÿ\0V“ºÆÏ@+ñ&\"—5<:åO­µù±b¸W-•UˆÄGš§«·Ü|ïû>þÇÞø9¥G~ÆæHá€¬þI\'\'û¡[ß¸®?ö´ñVšöû\"È YˆÁñ>Ÿ­}ñçã„¼#áf’ÇÆšKI 8‚ÎEÜŸ]§ùõ¯€ÿ\0hvÞ(‘ídÕVñ‰èŸ4Î{p9õ®<&‰ÄsÊí8ªÔ¨Pw÷QáÚíÛÍâIšCóG\' úþÏx§S†oÛ½ä¾]¬rÒž•»}}£Î‘dŽIØ°EýãMØänÕ•}áßøJnbKxÕy¸î!I¯Õ²ØFšçåRêž®÷±±Ägž×ìúhe·b<Ã Ãê=¿Æ½;áž—ý©¦,Í…vÀïÒ¼ÖÛÁMÒÁ\rÅª‰l‡r±Èçƒé‘×½zÏÂfÓÂ:S<­ö¦R;ár3œËšõ£ˆ¥J”·>n¾^¯=geø#þEôýhªð²$ÿ\0žßº*½½^ÌÃê”¿˜þ›Â[äÜË¸gÒ«j6e}°B¨1É\'ó¯Iºðì–ð6Tv®gPÐ\'1TÉëø·0Ë§Eê~‡‡Çªš6q{>Yžµµ¬í‡Â2¯3ŒqóŠ’ë@ºBÛc¹5ñïísÿ\0\0½Òÿ\0iÏ\rüð»Ekci©Mâ+é#ÜË‹9.RŽqól!Ž3Æ3šêáü®¶2u)ÅÙrÞïÊÏï5­ûÙÁRW³×ÉZ×6~jÿ\0Áfÿ\0k[ÏÚâî¡áÍ}yoãi¶–âBVWÞUGl¶8úV/üƒÄS|ýž~üÓÚâÎ×ÃžŠ÷TŒ8Ä—·E§™N	9Vr§>•Âüoý½~]]´~\\ž7ÓÞbÃƒ›´<‚zW©ÁsþÝX~ÕÚ–¡å·Ùî.n<–0Áœlb¿vËèPÂað¸;i)9z´´üÿ\0ÓÅP«<miCOcM(¯Wfþëýçç]”\n5Û\\)…§ˆÞûíÿ\0–ý§t\nxAÐU^ßMÑ´õµ†Æ51¬ÁBØzc8þ™¯ÁjÉQ™z4dàç§9¯£>>~Ú^<ý»¾ø?AÔ´í6KáýœzOÛ­K+_Úª•XŸÞ	,0zWÓg˜5‰sZ0•ÝúÝ[ðgÊpå\Z‹2’¥MÎ|®Éjî¼½ý¦¾)Ü|HñÛ>íñC\ZÅl¨N#NNÃÓXç=M}û0~ÇÞÓ¼¤ëZƒ}»]¼ˆO‹Ë6x cü8]ÙÇ®3^7àÙ²sp—Z£aƒgºW°AáÄò•cicÚ6ÊÀz×›šgþÆ¡€­»²wûÏÚx\'Â¼f.¬³LÚ<²vqŒµ·©ôe¯‡|C©*ÛZj\Z~¢!à%ç’QG@a¢‚hÖ¼\'¯hVj×Ðjvò™Vttb=@=G¸â¼Ã¼MáÍ/!»±ln¶¹ˆ2¶:e—\rù5{çìíûoèºv‰6‡ã=.Ö->âPÎ»^[ì3óy¨ÃÙ˜Jñ¥Æ¥zQHùi/»o¸û¼wcptï)¨»é¿š[y5Õà—w7¨&J¡®øêæÚÞE’âGUÎàzWÙa{?‰¾“Æn-î¬ã³ûmÎ—q/ï¸´uÛÎ1Ðšøâ\'†.l.$ÝÆ­žTóøƒ_O’q†Ò~òÞ/t×F˜…*Äýƒ~ëi­šOºò#ŸÓÿ\0h|7º{ï\nø“TÐoÄitcIý4L…qìs^oñÇ&øÙãßíÿ\0x³VÕþÔŠ†ß&%Ï@)Ø<žGZ±·-qoÌ¬2tÛ“ŸPkŽÔ¤þÊÓÑ™¥³š9N8pO~+é%=y^Q\\Ýí®«ÐùœËÍ}µ¥î»§ožÎîÛà¶¯â¤’ÇMÖ„6Qó¬orëÐÒG¹±ž»¸sú7‚ ðSMs{c%Ì{•.nãvšcÇÊˆA Žy8x{ZS®¬z‘¼Ì™¶šÆå£!†>øÏÝüÿ\0­Xñ€³A5Ô—–šE+»I\'^xŽØæ¼ˆáêÂV{>¨ø\\âœhM­_.×üÎ\'Äº°›Ä$“ì6ûÊE_1Øcï7ÔäóëœTqjq­ÉòÕ¾Îx8,ÌHü2µk®öíiäh£Ý+nRãqŒ(øïž•gQðž—¦	.äó³Ýž~sÐñë^í\Z0·¼|/¶¨ÝãÜÅ\Z›[…–K Éÿ\0,s~ïŽF?šõŸßµ¤s$kŸœ,’åUÉ<²àeÏéÛ5GáÇÂˆoõXÛTŽ4fE¸·´gÊã¨yXtÇ(ç5õoÀ¿íÞx¤ŽB©³z®ÔÊ;ï^>;6¥J~Ê†¯¿EýzŸ§ä<QÐúþnù#º‚Ýúöô8/øfy½©ß•ÿ\0â¨¯pþÀ¶þíÇýü¢¸þ¹_þ~~«ÿ\0?ô¾ó÷ß[³**p¥rzÃÜ^ž•éZÍŠËïÎ+™½ÐmYòÑ·íWç<Q*u¶?Àc#oxóOê—\Z^‘¨ê	o¼iö’Ü÷‘	Qr+ðóá‹fñü’ÇÄ\"-q6¿}c$’½-Õ¬öñ€Oý4•@ü+÷¿â…áºøcâ(­Sl×VD™n¤¡WàWí1àKïêMn~Ï©iw^|r¨ÃG\"6åo¨ \Zñ2L:ÁÕ´Ò÷“üt?Pá\ZK…Ä¸|JÖû›üÏœ¿hÿ\0ÞxGÇ7—v;¬5->äÏo2®JJ”~zFyô¯±h¢ý¹àž_\rþ!xæñ„Ún²ðmÜ.­IçÇGtT“³ŽØ®‹ö’ð7…l/Û_—Eµ¼¸ñU¬z­ŒÒÆ²C2ç*Ã<îÿ\0\Z»ÿ\0þñN‹e®xûá®­}ggkã;µm\ZŠÇ·±+E*F§Ì•ZuòëÕÄbªTÁ}Y\'íi>hú­×Î7>¦¾œjÓÎaðKÝ’þì´»é£?¾%øU´Jq±—GÒ´ÿ\0fiçÅ·Vq?–·Š9Æzw¯Ký­<7ƒ|y®Y\\Cå5­ã=ëÓ­yÿ\0ìÙ£Ý\\øõ$KmÝÓÛ‘_yO±g<º¤y_,\'PT™íÙÜúûÂR[Z©‡ÌšM™bG_Ê±c—{>n‡»W¥h—ñµ›,ËåÍ·ƒŸëšòÍ_L¹Ò|[qÞÞb\\ŒýÒNs¥|l4\\yâ^SÄJ\rFKB9`Ûä²•èqÒ­x|´¨½~lüØªÚ¼ê¶AVçšo‡õ/±C´òS8ÁîkÏ³p¹´ªAO”ú#ölý©üUû=ÞÙ¶‘©LÚ}¼ÂYtù[to“ÎÂyF?ì=A¯»>\'~Éý¸~	OãOÙÅmâ§‡í“E`FËüŸ1ôYäŒœñ_“öþ${F„\\+°Óó÷õ¯¸?à–ÿ\0´t¿³ÿ\0ÄMkë©’ËP;.ï‘ƒ”‘ÓŒþY¯0Ëq4¿Ûè7GWo´ºß½º›ñ¶@ªCûK+-zzé¢º;osãßÚàN©ð¯]–ÚúÂI™îÉÇ&¾Ö­ØhNÍ¶O0ƒo1VÝÏÝ¯ÜOø-§€t_ŠþÐüm¡Á\r¸9²¹•Ž~uÎ?¼3¡¯ÆŸ‰žû1K{¨sÉòÌ9Ø7:ý#„¸c¨)Þú¥§[yMûE˜`#Šåå“MJ=¥{Zÿ\0ç¡æÿ\0k6Þ\"aû¨à$ß#7ØuãÒ½‹ö~ðF£ñ·Ã77\0Bº–žâ;‘€­\"œí`:pÃîû×’êzt‹u¨5ÇúE®Í¡×S<ëõ5èß²w#ø;ñ3K–k¯´h—‘Ém|ª0Û}ð-}®&´éÛšÚ~gÈæ*ÄiY;+´ºêÒÛªóG©øWà}…ÌËq\n´Ñr³1ÄgÐmõÿ\0\nÓ¼ø7asÛrH\0•ž5\nªÙ__sšèü_ªùZ¤ÌaýÔ| €}	õ®ëâ4Úþ­ -m™†—iù‡§Ò¾?ë¸¬Bj/ÔïÊr,.1ÄW‚oì«~,ï|ð×ÄyÐ‹¥†9>h™?Ö£ž¤|×¿xáçö°¥¿— EüóŠò¿üA“K±û-ºÍ$Ìªª`ýã)Èì;×³|:ñ…Äz|-2Íö†n¤Ê?Ú¯=JpwŸÈõs¬ulWî\"ô[¾‹ÈÚÿ\0„\rÿ\0½ä(­Oí‹ïîûîŠ¿¬LùoìÅüÈý¹ÔÝ|£Ú¹½JUß€Ãò­½U÷ÀÁyoJämVâK¦†t,É†fúç§å^¿ÉIŸ„á=ØÝœoÇIám\nÝm™|üï+Œƒõù[ÿ\0ød°^êÑìû=ã³®Þšý$ý¦ì\ZKéfÞÛmá!@ìy¯Š~7ü8Óü{b°ê-tbµ%‘c}¡³Ø÷#ñ¯ÍªÇÚURƒøYû¿‡¸XÓ¥Î¾Ò³ó¿ù(ø\'OñÅß‚Ji?´µ/‡–3jÀì#k,Þkr€8Ü®ýH¼\'ã7ˆ®<)áïøËEiàÕ4›á{¥]ªÿ\0ª•pÊäNàþUõõï†¢ð·o¨i›mn¬y±¹BŸ•¯ue$<H5â?|*<kÖ—?º±’w¸h-ÔEg9#î®s…5íó\':u¢½å»ïÿ\0ý\"—×œjP§gJjñOGþ%×Fõ^lùoã…÷Š?l/]xˆÛØéñëOçËHK1ÈP\n’	Ž1[¾\rÇðæã–<s’zšô£á«[ªÃ\nF#]¨¡pG¥S¼¼W`	ON½Ez1ÒöjÑŠÙcÃ¼„ÀÕŽ.¦µl®Ûì­¡w?^~•ªØý¡ÛlŽ­ÓŠÞ¿Yw\"<pqò×?©^´•eç?z¼Èâ\"ô‹?KŒb×1­øsNÓ‘~Ñ{,o\'*3»¹À>‚à}¢Öeš/ºñ¼Ô ÒšþäH¼–?74ý1†‰†=ó<Î«åŽrìp }I¥5ÌíÎ\Z•!Nò¨­×ñ5Ü,s[¬f\'ÊØ®ÃÃÿ\0æ¶’$B­6Ùúq_ _¿à”_|ð.ãÅäÕµïØèñjóè[|:ÝdÝ¶Ý™Fæ‘JÁ\\vàWüAÔ¾ëº÷ˆ,|?ðOMÿ\0„?JQ•¬–¸¶›[›Égu·*Êÿ\0}0	-Çµ~–po™C÷MmÔþÏ>‘5—â	BsŠvºµ´ºMêŽ³öIñ­÷í•û9x»áî±u»P·KIÊà¦Ñ½	÷À˜~\"¿7þ/éÓèž.¸µ`Z;2ÁÃ.H ‘úb¿H¿cx:Úö|!ƒÄÐÃgâòçíbÝ“Fv mu çïŽ˜çá¿ÛìZøöñ´v»\ZËöš8Ïð,˜ql7ùî[‘cò. ¯”báËt¦»k½™ŸñYšÊ¶;*“ö÷¶³Mhî¯ÕØù¾ëÃÏkjó[æH¯f£aü9<åTÕ\"ŠîëR²’?ÜÆªÈTõùqùÖ‡‰5ß±	§ÓäI\"²Sº,¹=1úšä£Õ>ÞÑ¬ý–c™.SqävÈÏùÍ~£‡–——ô»?—SŸˆ¥Nj1ù[¾×‹õmµä}[6­6¯à½ñ”3jQ;c %søæµ¼9ðýo´ýÎ¾[mÎáÕO­Uø\0¯âo‚ž»š2MŠxÝ´,Î£ôß\\ê?`µh¡vŒæ¾3RTå*T´w>›ƒ£Z?[¯¬9U»œß‚´ø~êë¨6¡5Åà8…^{š÷o…þ&:®›%íÅÂÃÁ8lrÍôô¯²ÓN¥¨©“÷¿¸Èüö®óÃq\\i/½ŒÊ?„tOOjê–R<ß½Üüß6ÍhBo‡… í{ëÝ¾§¶ÂKgþ×ýòÆŠóøM.ÿ\0ç³ßŠÇû7ûÇƒý«äþ¾óú›[amÇv;\nÉ\Z¬:Æa‘dxî?úÕÌÝëSÙ[ÎUaƒ€­¢ë±Ãbd•þ^€ìÆ=«Ç–n±JÓ?1–	Ó÷\rý¢|FÇUÔ£º¬£ð8Í|ÍãÉîÂ•$î¯¡?hv[SVuÇÉ*ç¥|¿ñZh-¦UëÈn{WÊÆV“·s÷Î\rÃþâ\n±âß5ØáŸo÷søšòmsSPºe_Ç<×WñJé¯OÊÛ™s\\¯…|,Ú½ìqÊJùîþñ5íF´!IÍ½Ý0tãJ<º~ø[¢ø;ÂíãO2>šÉ›M=“wšOÝcýâz„é‚	Åqš÷íÛ¤hGÉÓ¼eöU8!ÊÅ¸Ÿ*‚+¶ý ¼âoŒ?ìüá}>çTû\ršy61S!Û»væ p§{W†|^ý‘|oð¥íÿ\0á(ðõÞŠ×Ò4Vï#¤ˆHää¡l~8¯\'/Ãa±©WÇÊî[+Ù%äºŸŠÅ,E[U¨¹Þª7¶4óüOAðoíðÿ\0ãÎ¢Ú~££Åá=rbÒDÉ•ÏæÉéÃ\ná~,x&=_¼Óäm¦€ì–>RØâE?Ý<=s\\5ŸÂË?TŽ5[¦žY7Çk#|Ý¶0kî­Á	<keŸŽ-|I¦øÂßÃÖºÆ¯we2,š}¼ÎÆ©)AtfƒŒãµì¦*ð«‡mSw½îík|íë±ÝâïìÅV¼ã7g«[yùÛ×càm7À:×‹5»}\'F°ºÕ5k×ò­mmâ/$ÒuÚ\0úg=\0«_´Ï‹?eVÇÃúäòxwRÑ,­ä–Ùc§¶–VyU‰RC›®r1ŽØ¯Òø\'ÿ\0ì]\'ìëñÄ_5KÍ?ÄÞÒtñ¨Ù;&Á3~òIc*Y]\"R]Ùó8=Çÿ\0#ÿ\0‚^x¯þ\nñ;Ã>\ZÇk«[Ïbl5=.âçìì±Äò5½Ê³ ;Y]ÁV×·ì¾ÒP¶\"”¢Üì“•œmu½&~#ãgˆT3LBË0×ú¼3”o¹4ôék_gÔù·àßüãÄO\0É¦ë^8»Ö´Ùâ¸YQ@¸ŠEÚÀ7÷±ž9=«¨ñ÷Æ_ÝøKÃúOöÌ—–º}Ô7°Ë0B\'vVŽL9Ú¡ñëœ×ì×âOÙö[í\'YÒ~Í&™0Žù„$œÁçœ×5â2ÎÃÅpÄÖ·JÍ1’Ñ7¸9Éükû\'.Àá¡B§Ñ»lô?€3Ê¬ñ‹“i7kîgø»ö”ñ‡Àáqqá[Tðë_:gì3·™@p7q‘ó19þ÷µr¾0ÿ\0‚‹øãÅÖèá“X„CÞ¤tKi/¯äÜ³ÌSs6Ý«’ONµÛøçáï‹§û\"¤cû>=Ò»,A±ŒzçŽµß|ÿ\0‚:ëßüyà/Üê\ZO„!g×š)¼é%µ„‰\nªÄgžzŠùÞ2ËeìV&”aîµ¬’o—­›ëd}oçÑu\n“’æ[E´¯Òöè|MñÃV³¹ø®]é~OÙäÔ§¸“Èù#|¹+…Ï\0t¯3Õ“í\'Î÷wó\0Ç€:\nôÏŽ^á÷Å¿éVèËo£ëWv›;a%e@3Ïnõæ÷P5þ»moh¯q-åÄp`r]‚ñÇl×ó?:•Y5Ýÿ\0Ã|ì©Ö¶\Z–Ê*ÿ\0rÕuõ?Aÿ\0eÏÝÙ·ÁóH¢šÍæÁÏ\nò»®w[Ò%ŠG_ÝÇób¾¸ðÇì©qàÿ\0†¾Ðüµó4}*ÚÁØîhâTcøMaÙ\"ñmšøÙ³X4þA‘œ}ünÛŽ½9ÏJð%§í]õØÚ·ba©öµÏ›´¯‡3yÑ²ª¿¸;¸®÷Ã>¼ÓQ[Ég¹5ô\'‚ÿ\0fx-6ù–2l³Ÿ¦GZé—à…­´Ñ¤pÉ_n°íŸñ®™MÍZÇÇûuÝÉ3çŸìËùñ·ÿ\0¾úÔWÑðÎíÿ\0>¿ùQ\\ü¯±ÑõÈyy.«*DÏ$¤*‚Nz\n¯ÿ\0	ºÝÆ¶ñÝÆ»Fìåù®I\Z`Ëö¿Œç‚9‘¹ø-¼C¥ÁÓÃ\"Ã&ù¦3¸™‡$*2¼à’ b¿žpÙâpåæ³öRçÔîuÏ\nh~1Ô.¦™–I%}³~ô¸pF3Ú¸þÇþÖôÅa+Ám…gÁ8àõ&¤ð]Åö™¥ÜÛ…Tîl¦Ivüý+Ð®¯ox~E!–C3|Çù»Ö´sÔŒ“{‡Ö1˜)ÁQ¨Ö¶òÙ³åþÀú=ìÌßg¾Çû3Çý¹{ÿ\0ØŠxd³µÔÝ£:ü»À#§AÍ}uwÊ¹UVe…XÐîNŸÌpIþèn>™¨§S[J£³ó>–<ašS§¤Ü¼®|¡¤ü×~jrøš÷Åx$\\¸Xf½)°.@1Ç@ÅQñÇÄËà+ÅÖ¼fÚµ×™2}=aŠæ3ÆÖŒ®ÆçœãÖ¾„øñâOøSE¸ºÕtxüA¯_DM¾œ–Ë4²g8lzA_K\r¾§¬Iy}¤­Œ6%šXdP£$ð›GƒÛµ|¿c¥R¤iNÉCáqø—Ï£}lzY^eÍŒÄ¶¤­µ’~]Ú]Û=cÀ?¶„ô\nÃ\rü—º]–•˜m²m’4’%bTŸÝ°îz`\0@¯|ñš×âßí§«x¾AšÇÇ^f…&žPî†%€¥»;wÌ©t\0Úº¿ëÏâmYÿ\0y™gÙ{~WŸ©¯ž>+x\\ÒµÕ¬Õ„0Ÿ5$·l0\0ç·Oòkè¸n³|ð¯-f­«¾ûoÔöje8|<¾³J:öùÝþ[ŸtþÍ<eá¿ÙßÆÉà+VÖ<I¦Ieq—§,×CÍòÛ÷l¬@mÌ\0ÉFkWÂ-ý¢>%x+ã§ÙôCE¾m\nÂÿ\0Ne·–+‹MB2VhÕIÝƒc´|«Œ€3\\üSQÕ¼yû@A\rž±¶â¼ûÅ9V’ßr1îÀã¯¯Ö¾œÿ\0‚þÞþ	ûñ¦×QÓÙ®-õŠëQÓãDPmòÐ™YÏRF\0ú’\0¯Ý¼$ÅbÕ9e0¤¥ìää¤úìì‘ø‡Šô°Ë1–\'™¯i½:7¡â÷?²ÞŸ§ÿ\0Á\"4ÿ\0Žx›Ä^$ñ\ZèßÚž!7W&ö;é‘<rÉO$ ®Ò6e³_¾\'ñež«ñGfñ2ˆoYÖ6Û¸òÉC¸çu¯×)?ioüvøyý“àý‘ø/Æpdm6¿³Þ9²dûD3–`Ãi;²\Z¾qøµû\Z|=ÿ\0†ð]×ü#Ú~§§Íðëš»Ï­¼InÉn\Z-ùb¯³o89¯Ö8{Æ`§S	RÑ¶”ž©¯²~_›øSSbðÜ©µÑo}Ÿ©Î~Áß³Ç‡l«/]jZõÆ±áål¥ûÑ.§Ø·M\r„V^ŽO9éPü2—[ýŒÿ\0dï‰šŸ†æ×/´ÝCâ$Ú›©5ÛM&—£Áqr²;gïÆÎ¥Æ0TE}Aû:ü#ðOÂŸ	®ƒáÛí6\r´¯s$:z‹[y	;1LÀ\'°¯ý£oo†¾|løeàÔµ“Ã–~¾´ÓgÓc`÷vp<òÈ»p\0g;C½·=ë·.ãª¹õ|ED¤â¢¾Ê³ÛüÂ·PÉ¨á°ò´dåg¦²¿Vÿ\0#ò3ãOÄûˆ?üI®]IºOj—:ƒžû¥‘œç¾y¯±¿àß_Øûþ§í9¨xçZÑÛPðÏ€ìšHZxÃÙÏ¨HB¤G<6#29¡\n}+äßÙKöYñ_íñÏIð?†ìå¹šòE’òëiòtË`G™<­Ù@üI ’+ú:ýœg?þÊ´Ÿø>Ïû?GÒÓ/´2æfååsÕ˜žä“€jüÓ4Í¨à£Í6¹å­¿Sö|}G;a(í•û%ÓçùÕ¿Â¨.£H¡‹r@QTäø%o&íÖ³:Œ°U?.{qúV­Æ—d¾oÚ\'V^r$fÇ¹…ex¦Yüioâ.Ú_“liåž88tù«åeÄ”-{êy‹[žÝ=ç?¾$žšo²j‘]Y§î\r‘,ÏÏÇ½|·¬|qñgÃÍ}£iµFP†6MF‘xþï Å}‰kàýKEuç™Upå¦öÉ~¸÷ëQêæØÃ¥{¥Ky>Q…bi°’?­qaó…\nÎ´&ß‘ïFœ=°œ¼öhùþ\ZßÄßóáqÿ\0‚ïþÆŠúËìwÿ\0Ý_ûàQ^§úÍýÓ‹û\"Ÿ™Êê#²U\ræ*ÿ\0vZ•>=¥¤Ï\"ÍäÜ6ÄqàÇŸð¯*ðgƒ¾#ÝEöË[5[)bâB‘ÉÐpàã>ØÇzõ†~ñ¥ö„ßh¸ÒãòçýÕ»[F	Èä©\\(à\0þuù>£²Oï>ß,5-ù~÷þCgý m!“s,»Tç\"<cõ¯BñÅˆ¿áFøORòåòngº;{‡>þÕÆøËÃÐè>#·Ô$þË¹K‹c6Ý{—8]¿Þ÷æ»?ˆzmµÇìËáïo-¬,í®¤˜È°.ÙƒÚƒŒI#’3]Ô8r”bù/ªïæ|Þgša½®\ZñµççÙ®Ç%áßŠúnšó5ºÝEç°-žwõ\'Ö¶.>5é÷VûfûK*°!BÏç\\Ä_ô]gAiíá¾…¡b#ºÞ6MÆCÇp\0Æ\rsÚ6ƒgâE¦À÷Y…^F“9ß½”¨Æ1Ó8>µÓ–œ_+{yž×.\Z²rI¥æz~ñKA‹Å:„–ð]ÜMy.Ö‘¢Î@çŽ\0V_íÁðÓGŸà0Ö.Ú×Eš9Ö[É[å@Ÿs€@­Ò½Â|3ðKá¼Þ-×¤Eº·W–î˜m@>ë‘ßšøgâÇ½Oö¯ø›7†5X¤“ÂÞ\"gÓn- \'-Ÿ–fÿ\0mH\rì`šó+å8zÏØF7]ú®ºyœÙ^®\"£ÄeíÆe\'³¶é.§‹êZ6Ÿâ½Fî}-§ºµ±xÁiFß1]¤Š½v²A=½+TÖc¶Óš6þíJ(wgîý\r}}uûÝ­ç†|M¡éëk4:køOÄ—#‚x-Ÿe¥ÚçIÁR@ÁÎkªñ‡ìá?€?	o¼O“¦ø·T·Œºýªçæ±Ÿ–-Ø$tÁ=+\\wÎ–)G	%*\\ªI·ªÓTí»O±èà8ò”è5‰¦ÕE\'%¿g­¬™ç?ðDO†w>¼ø‡ãMJÜ[1†M<¯G]™‡Ð(üëÃÿ\0àâ}.òâÿ\0ÂšÕ„r]Xë6é¢jH€É$Ž’I5ºí÷2ËÈþï8ÀÏéššo…¿e½7\\Ò#µ±‹PÓòå`€CÎÁs AŒ	ã Å|?ñÛã–‹ðËû[âwŽ,å×¼?á8¢·Òôï0ÆšÖ«)fŽ üàG³9Á^FyýkÃ¼V\'˜Ó£‡‚œ§tÖÉ¦·¿KiÓ¡ùgB–i‡¯®Ý8Å«y[Kyß_¼Ãÿ\0‚wÁ9¯>þÏúÖ¥}ñ^Ò|kuµåÞƒiRéºs\\(6ÑNw´ŒKuv2z×Mñ+öjø¨>Á,Òø\nI<åI§š;”(IpEb^™¯•?aßø(gŽ¾\'~Ó^&Õ<A©Z}‹âeØ¿»´¦+)#fX#ü,#Pzóœ×èÌ>-—]´\rw2ž¥A<sŸJôüWÀË‰¡9¤ÝDå{uººôF^ã¥WV0nÐ|¶oeÒÝŒ?à©_±GÅKØöëÄZ_ÄD×,ôY’}wG°°615³|«$l™_\0Œ€C{WÀ±Ÿ†îµï‡Þ(Òt‰fþÖñ“¦…¤Xt]Fgùe.Ç”òÖE9àzþƒ¾ø£I¸Òu+DÚÝØIe2Ê³\0ÊCÃÁ\0àŒ×ÆÞø%ð»ö5ø-k¯Y\r/Rñ¹!’+É­W	æ~L¢íq’¤9É#ìð¦:YG±£M\'&âšVÝ__;a‘Ð¯™ýoQ¾K>WÖÏOK;‡ÿ\0÷ø9ð÷öøSý£ÙÝ\\ø¯X†â-X•o·N€œG’6Ä¤8É\0gšú?ÚOM³Þ]çÉÁ%ÿ\0À«Ån<#açørky¦×&0ÆÒ*ím¶òNIÆÕí<îÍqÿ\0µ¿ÅOþÏ¬|Mo¤}²ÒkµµžÝîX¨áƒ2žÿ\06Î¹ÀÔcá±œ=†Æb’©)Jrìÿ\0­ª¥ˆT©:‰.U««>œoÚSK¸“f$mËœl^ŸgZþÐþŽïtÜ¬Û\nå#jç>¸ë_iŸµo…|HlÚæöE†ÚS¬,\r*‹€ÃÊŽ8Ç÷×~zýÑQø“ö„±·ÒV}\'P[ëITIIx ’u=7\'	ô\"»#á®;>dýO&<OAÝÂÇÝß´Þ‹ªL—žcó4kó|\ZÉºý¢¼?8fhf•Tà,¿Nsé_	èÿ\0­µÚÚ„«1b¢äH¹þ÷ûö­[Ç­-Ä–zÃJ°®ù;Ðóœ¨éõ=kÐ‡‡XH+§/½ÿ\0‘ây}…í/ø]Züû]Ÿøð÷ü,8ÿ\0è%­ß?ý§úƒ…ï/¼¿õ¢¯ò¯¹©¶\'·Ò¯áæ/³«;\\F)[¥G\\ŠãüZ.!¼“P±‘f¶g0±ÊuÈÀõÀé^=â/Œ¶ú·©L×æ›‡¶d#óã?¥wß|Ke¬h“5ÃO%¼ƒj:ÎrkÁŽ({O#l=m¿½¼¡ñ6m/Å_õarñY}žÕïã»tÈ¶Ân|‘Ï ô¯-øIñ÷]ñÏ†ü;ámBK&ð£=ÃéÓùá¼é“pÀ\\dd“Œô¯ý¯¾*IáŒ×qêÒÍáU&ÂâÒE!™á\\`teuç¦GZÃý™|mŒÏ‡|7ö[x­õÜþîEØ&ÜÇæ-÷±ó}WÅæSÄBJt–‘wëªësôL·-Ãâ0Üõ÷µÖ›>ëÌûëÁš½®‡á«Ë)·4Í\nG\n?yNphøh4ßê:×‰¼C4Vö®àD¬?ÖmPO^Š	Æ}«ÏþxžÕ5«ìÍ6|ÈŠ¬£ÛpI!¸<×É?ðROÛŽãÅ(›ÂZÃ[éöq¯\n(•€\"<ûƒ–>ãÁ¢¦1×Š…iK~¶FyOb1˜—„‹÷zÉvíëò6¿l/Ûòëã·Ä­;O¿¸ÿ\0„vòÑÂ\\2žýÑØ{Yß²ýâ¿ÄËÈü«øêu‘\Zm³Mq²æFz\0‘ÉyªßðN¿ø%7Ž?lKí?ÄzÇüSË\\j&@n¯‚äôÜÝ³Å~­ü:ð§Â_ø\'Ï€åÒ|)cŸnÎ%œ,¾|ò7BìI\'òâ½¼UGG›.Tþ÷uÛÌ÷¸§Š²Œ«ý‡•SöÕ-i%¤b×y/´·ÓcÅ~\Z|8ñ·ˆV;¨|%âHtyÑz¤KÍ£s¹Yˆäû¤ã¤ÕïŠ?ümá?†$°³ðN©¯mÂÁíìnm]É ¹,ª¹À äuérþÝšOˆ—4$¢Bµ ã¯¨Íy¯ÆoÚ¾÷CðÕÆ©£Üü±³9ýäddŸ”õÆ3èkÊÌ±Ø¿\rí!Í4¶]mþLü¦ö–6ºƒ§ß×üÏ0Ò¿hMcÃß±F¡kñ3Ãº·5/JÖO¬£3Úì)r…”©!²œcÜWÃ_ðRok?bŸ„óxO@Ö5ÔÔ¯µ=iäÒ¬f¹[xÌ©\nÈìŠp¥b8Ïjú`þÒzí­ñÂñt3kÚ>»tÉuj?p×\rO*&áÑÑFzãwJúrëâ~Öm|mªør%‰4>=öºTlŒÈyvÇ-ÏSÒ¾‹Ãž\"ž¼óªÔ­kÂ0òi^Mêï½Ž2ÈêO¦NÒ“ö’’Û}—Ï{ŸÏgÀí\'Pøk®jº”2¾Èo7#`«Å†*¤çxÆ=«õ—Á¬|AàÍ/VµºómuTÉÀ\\ã=žÕò?íŸðS[ð§íËñ3A¼Ñ Ó|?ãí.ûÅÚ]úÜ”µ¶{—ŽŒÒ«©SŒœb¼á÷í®ü%Ð?±&Œj\Z43o·‡!^Û$’»‚NN}+õœó\'ÄñNK\nÔííiN\\ªûÆVvþ»“fØÎ%B£ýÕhE·½§ÝÏÐoÚcö¨‡à7ìýâ­r9Œ—3Ûh\"ˆn2ï`¬GÐkÆ~üH‹ãìÃðjúK‹pžž]\'V’IHŒ;<½äð£É1‘ž	Èõ¯0ø!ûZ^üRñC]kV:|š~“Ç\r°RÈZlFÎùô~Uô?ü³ö^ðOƒ.¼QðÖææ÷Æ>.Ô’øgýÍ¨ò[|gÆ+K–\0à|¼b«	‚¥ä‘Àb×ï—¿¦º¶×ÝoÄí©RYÆf³L4ŸÕ›p}¢“m\'ÖïD÷±ë#ý¨¼á¯ÎÓkÚLñhV‹äˆ®Ñ”Éöf„ydgk·~;×Çß¶7Æ«Ú{Äz~“£ëZN“á«2²>ê-Ñ0Îç`>lã\0žkÍ?h_ê_¾8x§ÁºÔ-£áÛ© —#;“\'d€ô!—`¼ŠùçÆt¿}£í¥¦’OõQÂ2íõ\'ü«“-•\Z2öÔàœ­£õ?SÍ¸/W	\nÓÆµFmëem5_¦‡è—†¾$|-XèãRð\\zM¥¼S¼º„ÆÒ¨ÆÕ9çóÛ>õîVÿ\0³Ã[?‡Rjž ðí­Ü†u,à˜DêÌ\0mû¤9¥~ÞxÎûÇšÄk3ýžÖ)DË\0`nÉîk÷ÿ\0âbÝk´†ŠFÛ&“hm£P\n€Ð ,}ù?…tÖ”¤Ô#\';Ÿ›âj`¨sUPöŠÖWI+úv_‰æ¿\0¿c¿‡:Á˜|U­Ã©^Ã{-ÒÜÇu,Q­º&ÿ\0/`88éžû«Ï¾x‹Ã¾=¸ñ‚9­ô˜ü\\ú\r´ÛÝâ–ž0r¸bç×œv¯£5¯I þÍ«à¨fXCYF.›Ìù\\°ô3_5þÏßçÒ|K¬[«FÖÖ¾#V•’(‘³cÅuÓ£í#)º}5èx³Í)R©N•*KTï¦ïþwþ·âý}ÿ\0qQ^ÓöG×ÿ\0!ÿ\0õè®{OùÎ¯­¯ùöŽOâÅü’ë+$m$Ÿj¹I›oŽ§ß­z¯ñÎãà—ÀËýrÆ¸’Õ‘\"‚@e,G·ÔÖ/ÄOÇ¥xVÉd¾×FVYAÎ|‹ßqíúW—ürø‰oâmÂ¾\rÑíîæºòžêúÚaåK‰¿h*Ü¨*Ääãv\\WÏÖÈgR\n0ô&†oNu’sÎ~-xÛ\\ý¢<G&½uccmx×g\\ù~|’O’6bÌp\0ã \0v¯©~ü4·Õ/á¸Òn&š8®bÕVˆ‹üûÁq¸ô3öÅ|©ðãK·–Ñu	®¶¼w1ÈÐ/Ì¢,‚XÓ<Œt¯²eÓö¯Çgkr“}¡nm|µÏÎY;íÎ?Jø~&Êe†¤ù>ÍÙúæMS¡ÚËOÂç‘Á@?løVÖpø?ÁwpÜ:4w—6û|Èp¹#øÎ[û¼úŠµÿ\0¿ÿ\0‚tøöð6©ñ+âö¼ÓZÚÎf³ÑF¦µäiËÏpùÝ°¶Wøz\Zø§ãÆœÞñî¥cq¹¥‚öD”¹ÉfrIîk…¼ñ•6Ò]£u\0Ü:d{s^IN:~Ò:Ýo¦ýÏØªpüªek	¯ìdÚ¼ÒÕ®«¥¯ÞçìÆ¯ø(7,l›Á¿|¦i_ôå6Z•†£V‘F¿(\n¸<×Ïz‰<Ma¥Üx³VñU®¥åÍäMqa,“,y6íp—wªž¸é_þÍŸ|Oû]|Y²ðGƒíMÎ¡p<ë‰ÜŸ#L·<­ÑQS€2M}çûyx\n×à7Â|;ð•Ô:·†tØckí6yŒ2Ër‹µîRNN_”\0^:Õæ_5\'Zµ_}í~½Þ¯ü‘ðØÜ¿•béàpv©&ï6–©w“ÖîOüÏ·ÿ\0‚ƒ\\Zø•´˜ÖO*6ØóNÍÊŸLðj‡ÿ\0iÝSY7‘½ÁMÉ¾9Ë€@ÎÒGU8ús^OàÍWÃ^)ñ<ÞÕ K9/CÇc%É24w¤â4.¹ {ƒŽ•Âkzµâ¥Ö–º”7öö²YNvÊXÈÇø”ñ³Ž˜¯ðü+µßK=]Óóþ‘éâ°«	iÉ%Ì®EÓþ;]x{âg†u]3R6Mý¥ý®–[`òlÓåf~Èø§ZðoÁ/…º<ÑÍb¿ÚvqßHÒc|Ï$hï<®y$–êO ì+ùæñ†¯\'šŠò5Ä°4(m»®†WSêp~•Ýë··|}á\rF×µ-Bæ}Ñlmõ¾kwŠ4ÈEu^åÉ\' WÜ`2ÕGèÓï‘ùîuEã±ªÝ’V·¯è~—ÿ\0ÁA><èñþÊÞ,¾ÓîtMMÔ´¯³X_.ÇkY¥fŠh£nH»s‚3žr+ñS[·›P&Y[42H¤ÿ\0¬Àû ÷ã5ô/Çˆ\Z­—ì“àÛ+Ë±q\'‹o.µéš#´²m¬ƒŽ\r±l÷-ž¹®_öPø0ß¾)ÙØÆ–»fËÎI-ã}ä=Ï=+õoí\'Ã¼?EÆZÔ|Í¾Çäø|–Þ}ˆ…EîÑ¼W›]?¸öiÖ4ÛßxòÄ]}–êûHG°,Nãr—~ïÜì.qþÍ~©~Å£T×ÿ\0d\rÇVƒImbVÝŒx!·•¡“ìûŽU¼¸ü×pã!8Å~Géž¸ø;ñ2ú;Ux¤·˜ËFØ\n2Ã¨ì}½kè-#þ\nSâ¯‡¿ï.&ÓÚé!‡ìÄ—í«ó±ß¡wFpà¸ÈQ]^ SŸµ£Q­jA&öÖú}÷;8#š¾U[xÒ«Î½Z’û¥?à¸ž,øoã?Ù\rü]áÿ\0i·¾?Ðu;[X%¶!î„S[¼¼™\0`I%Dxæ¿5X®5Kç’îòk«†æY$}Ì}9¯UøõûLx»ã¦©ÿ\0Í[^¾ÐíeóltëÍBK¸­œŒeKžO\'œw¯4[W;w`!Üç¦Oa^œ¨RP“»î{u°Ó”}›“å¾‘m«wkÔOZ‰.Ÿ*®$,@¿ _jƒÅ?üxÑÉþ™á]2ã9þ#kµø%áû[ˆˆÊ‰‘N÷æÈ=±ø~µûû7üt†ûövðW†F’ßAµ¶MªÇËòâ	·Ž1ŒV²nSÐâÎ0n–k¯o×©ôWÄÁksà›‡]¾bÃ†ç#¥yÁŸ¬Mq3	\ZiC6JýâOÿ\0«šÏÐþ+ÛêöwÆ²\\\\:¼`;Jõÿ\0gq]€õå¶ðü1Íuce,jÛžWýÙ\\òzíœcŠ×Þ„\ZgÊÆŸ5E?#sÉÔ»úÑY¿ð˜ÿ\0²Ÿ÷öŠxèæ©Øë¿jëÅ:5„\'µÓôÝ.O6ò{d5Ã•û‹¼tÆìpG¿¥|î¿›Á~\'H</¢\\IjcgŽV2íAdfe<“‘@k²ñ§üÌøžYù-íïÕ\ZÞi¡Ðî­\ZA{»/8Ï`O$V^›ÿ\0 ¶Ó¼Mn±ø.äY\nÚë$¡wBƒË·\'°Ëdúb¼èq<©AòÓ•»h¿6¿#é0¼-R\rSVºóýmoÄÇøyðP¶ZZÛ­®‹,òÁ~›ØáW.T`ƒ×“œ\núËà§ÃË?‡?ô¨íü›I\'Yå1)&}î­¸’p:v<×Ëzçí÷©]j(ÐèºŒWWof²ÈæK„``W‚8à^á?ÛGâe•½½ÅÒøBÉXm/$HÕ;X!°\'rM|žmŸS¯N¬d¹“éÈû\n95S¼m¶ö>7ÿ\0‚µx&?†ßµˆíí[ýK¹e\\{¹ëúWÈšÎ¿ui™-·8÷¯²¿à²÷7zÇÅ\r/W’	þÙ®i‰ªI‰Ž\ZF$€:…¯„&º¾Õí–;x\'’@ÿ\08HKQ×#µy<-œðmwüÏÕ)g‘¥„Œ*OÞå[5ºGÒŸðL_ø(L±Ÿíq«j¬šŠ,?²õ\'X÷4Y\\:òÞU®ž	¯Qý¬?kÈuÝbk½Jõ™nåit\"E•3œ #<uÇZüørÉ+|ª¯Í×Twº³Þ@ÒnùaåÏ÷_è*ú,fCO8¹ßM>]œXÚT+Ë\ZÚæ•¯çoëSë/Ø»Â´í—à]?M¶¸¸ÓÎ»\rõöÓ‰ ´Yw=¸È®ÿ\0þ\n±û+_|+ý õOhÞ\\Þ\rñö¡%í…Ã¾UÄŽÂXÓlÇ¦Zúþ¯û(jß²_À¿||ñÇ—¥ÝxËÃÓéžÓ.åX$º†N|ýÌ~PÅi psœ\Z­ãÚEý«þ\0xGà-£_ÜI{5¤öå~Ëmv¾{ÛÂÏƒ†VØ\0dkæsj˜œeJhóB	ª‰o®¿;%øØó1YãÌëKßî×,WmÚÓù¬½Ìj7Úžµö4‘..&¹VXÝ€dg9=:g¥g_YKuxÖû[LS²¢Bs€{õ™ª9Ðµ¯øšãJ×´‹í>â\'%-å„ÆYA vú=M}Eÿ\0Ÿý­ÿ\0h‰vú×,u}?áþ<“Ýß\'û(’$.ùÄadÞPíÎJJûú8UQF4ºÚÖóëè|ž\'¨Ju+»$úmêr?´Î©]|SðÃ½Ñ5Æ¡éš2)V)®Ú%\rþì·	Ïjö/\r|gð¯ìEà¨|#ª-çÄîln&Š<Ã¦)Èr…Ý°Ay¯œ>=øòãâ×íQâÍj)|ë‹íV{•6çQXãg°P0jÂ¹Ô\"†FK·XÍ¢mØçl’JÄ\0=qÉïÓëÙã¬™âq8l,õ§I\'nŽÍoÝ]ly¾ãp40˜¬v-ûõ$ìºÚÏüÏ@ý¡5˜ÇÆXâ·’HäžÆ\'’W_šY]˜–#8œq\\oïZÏáwˆlØâénü¶Ôõ©?iM~k¯Š¶7œÓ¦ŸoæHÉ´ÈA$q—ŒUøýàÏxwÃRkW×¬ü9âUKË-V{9ÎòF\ZP’´í‘Áã¥}‡aÕzyÓkÜ’ÓÊÇÉp>a5lVz*ªëäÞ—ùžAýÅ¬\n¬ŠÑÄýóK³rREeüì{1ª±ÝM„:¯ñÞ¤]N4VûD*UNßþªøÎV}¬1i)?½~½ƒIÒ^?ÞC*íˆyûXýöì?*ývýœ~ë^?ý¼uoÊéíd&F5Ü‚FŽm§’\n¦ò	ãå¯È	mõ¸£[³³8b\Z@£qúõÇ ¯Õ/¿µ¯ˆ¿fOÙƒÂúw>%xW]Ót]e°˜[ÿ\0hìwi%eRw2Í…8ã9®UJ´¬ã«íoÔèÇFzQ£»ïuÿ\0wßþëÍãoiöºtzm®žZ„Ó9Xå˜)à(+»‡&½Bø7uàÿ\0\rÏq¬ZÙê2\\FbF3&åøÃ6:Õó<ðXÿ\0‰þÕ-[RÐü?-½äÅ9È†Q¤ò”†\rÈÀèÜàpkª¸ÿ\0‚ÓÚÁh!Ö>è7Ö±ÈYä³¾ŽÒå¹æ@²,Ýöž•Êñ˜º­\'\r>_æy1ËiÑ»“RôÔ÷O·êóÒÇÿ\0›üh¯!ÿ\0‡Ã|%ÿ\0¡Ä_ø/ÿ\0Eiíjöe}]!òŒ6Öúlqùš¼>—ic4×\"luØv€HçîžF~•ÅüF½ðÝ„wºÕËxƒK¸xþË²Y·–+›‚Ä…uPí\'‚ÀŽsŽ#@ø‘câ_X-½âx§ÅWÖiÛ4R[¨—hùY¾TUE	%€õ­ßZ]C¬i·Þ,Ö-|7w¥»½®i\\«£€»šL°êÆ8ãƒœŽ¯«ª)Ê^}ÿ\0¯™œ³ˆåŒ.ínÖþ¼_°Öü?¤|2Ðltû_ÝÛ\"ÇMj,í.–<-6ýˆÍÉ;I998$Šä¾*~ÐÞ\"Ó|5&—¢ø\'RÑµ(¡Û£e¨¼»¤WW±`]6ôÃç°®7â—Æü\nñ¾Š5é~*°ÕTOpn.nûNýãnmdæ#rŸÄW¨ÞüuÐôÝ.Î;\rCõ ŒZ4·WO,s(ÈfØ¼¨8 ×ïq^m\\5JuTýš’–·‘éQÌ#V—²WEZËKØù[â‡íñSâuü$ñ6µ¨cÅæMä‰#!Šdnä»œàW\"þ9×$¿·šmZþIc}Î†_›op¤ãÓô¯°>8ü)ðÞ¹á+{ÝCJÐ4k5€yM¦å[/nåíÁfÆ+äïøoJšù›Nû:´kH¥¶¹q“žkÞÂÊ3¡Xùú‘•7g+üÙ®úôž xtû—3N\"ŠZBùä®ÓÇ\\ð2Iãô¯ì1ÿ\0ŸñÇ?i_/ÄŸø›Nøÿ\0Ÿâ)uHÿ\0³\nÙ¨É$d`¤•œœfºßø /Â=ÿ\0j­[âwŒ¡ŽMáŽ—s¨ië#\"­Ö¢«€Œ¬Ç8W,;d_KþÒ?ðRm\'Yø]¨i¾[íOß‹íZòbd7åŠò6.q€yy®l°_»¤¯7÷UÂœ-â*Ü‘÷hÆÊR¾©>«úf—üÃöÖøGá¸ôo\0ø\'TÔ´ßø.Çû:ÆÒ(¦X\"DRü}9nþ¦¿%ï¾7ë7úÕÎ¡¢Þêñ„0Ý4†6ÕÃ,»ÀE_ý¬>3\\xëâì“J_lbùq…Çøæ¼ßÀ±]_éWØ…ÉPœ{Ôå9RäxªÊó–®ÿ\0y\\Q<>[ŠYnW…;­{£êÏ„¿í|_ðg\\¶ñºÜkÞ2Ó58Ær\0’æê;„upYöâ(Ýcl“Ánƒ$×é·ìÉñsKýˆÿ\0`Oè>*ñ¶5§–ãX¿°°Gû0Šå·A·¨6À$®ã×Â+àø&÷ìU¤ßêZÄŠSjVÞ\rÝ%í¬\ZnÖšþ;V‰¤C»\n	i!$pÍÏ÷Çíÿ\0”ð…Â^x_Møon¿?²ÖÚ4ycþÒ8Pª]v˜ð08[§­gŽ£†ÁUå§eRVvì—–ËS5Ïè©áéJ¥:mÝè—7«ÞÉìÎŸÛÛö‘½ø±â½[SÐ|3áÝ	™<ºB¤ûbc-* cŽ95óÕlïÒ«¨Õï—÷’yŸ*³uü}ø®óâåÔ?ôë={Á÷2Ígã¶Ûê6²DZ+8ˆ*PÈ%X‘é‘ƒ‘^OkÆÙvIÌ2…†žO&¾†8yE)UwnÍ?\'¯ô•©^’“¥²ì×f´?Díáãÿ\0ôh©àÿ\0éÖ_ñ)¾µyí`¸ŠX”V,	<¶VRA·g¥{O¼V¿´—ü{â\'‡µMoÄšõë[¥í´Öš\\×–ÒÚâ_$>a#.ÝÊ\n¦yé_Á?|eñÖâ-Zêk]æMN[¥l2£ªFÊ>Sœ°ˆr¼}r>áŸþ\nGâÀ6–~Ò´&Ð<$•¬$–¾mÖŸ:¾XUu@ÌO95óØü»\Z«N-¤Ô–ÿ\0?Së2üJ*S´šÕ]E.Úôw?¯ôžF„²‰+»îDÓ$þUN{	,Ò\"•Wƒ³8Os+í¿Ú#þ	ùc~­â/†‰®XÞkmöøG5UŒÉöyÃ2Ô’BÈAÆâG?x¯Ãº—„üRluË{‹[¤B­\ZbN}Ž+é©òÊ*kUýoØùœe<N\n¿Õ«®I®—¿ÜÖnU®w330NÜsëí]G„n^7Dû÷îÁ|ÃmÊ“Çâk\"\ru‰ñ\r¼“?ûlÿ\0<T¶^Õm¦Ya[˜ÛïŒH?Ÿÿ\0Z¯•IZG´œ_4^§¯|0øÅö‡´ÓßÄzbÚË¸%ÁV„œcxß#ojú\"ÛÅ~ñ´Z]ïŒ¾+|HÖ4Ý-„Ù’éÖì—Qÿ\01H.3\ZÌ0NGWÅºœ7ºÎ³Ú¬7W*‘ª;!E` ö ùƒ]‡¤ÛxŸRûƒ¬ÐÆƒí‚iÉ!ä\\íQÜ×¥rOü¯ò:#ŠSV©{ù[Âiû3ÿ\0ÐÅßøÿ\0¢¾bÿ\0…	âoùñ‡þþGÿ\0Ç(£Øùš{H÷yÖéÿ\0ôs¡\\i:N³¦Í4vþ[í¾`¸-‡Êå›æ sžµ\'5Ë6 Ôî®¬ôùFë¸Ý#Qg‚<µSéƒŸjâ-|?ªBÿ\0gŽãJŽß,!ót¸#ê¹ÃzžžõKðzÛÌÆÿ\0^³¶äÇo¦Å¸!éÈlgŠ9acÇI»_¡×\\x†þúêHt=²Nbþ×Ô¯f’Ù~U`&fBŽÛµ>ø+IÓ5ÛÛ=Fû[µ·Åo6©ÌLªÄ”%c|\"ôÈ\"½Sö`ý‚u/Ú;Ã~Ô&ñ…¿„tÏ\Z^êñC©Þh²-½¾\nÊ÷2Ï»åÛÐdàlëY?¿eØ?gÏÚ;Á	<Kñ\nK¿ø,WW‰tf›@šécdE!³1ùñ‘è*¥…ªã¹,}(Ïá¿ªþ¿#•Õþh±µ»Zø­î¦T->£öˆcŒ“ŽL­´’HÁèÝ»×ñöeÖ5«ú^ŸáËy˜=¬šª>ÕÀ.˜#©ÏËŒŒZú•ÿ\0à•«ñOÄŸ´‡¿¿¶5ï…w6º>­o-„:<z–©q?•ºÏ$Šî»g’\n “]Ô¿ðH½;áÏ‚<@¿þ\'iº-ç‡ïÅ ì¬e{‹¥³‚âwWšdóV&œDv–Ë)8É¢ž\n¤ï™¥Lâ¹RôGæÅÏ„|Iá$Ó<ë)$Y\'^*®r8(¸\rƒŽNzTSéš“ÙµÄ>0‘xx·äRH `q×Ö¾òÒÿ\0àˆ-¬|ðµïj:3|B×­´	¬cÓüÆÐ~Ò»í&tÞ¼àÑƒ„³Wþÿ\0Á¼9ûN|Bñ\'‡üñ^ãVµðþ­‡Zÿ\0þËxÒêø¬Ï*Œ¾â‘¬9-ŒÃ\0×_°RW’_qÏO6©F_»“^£òÿ\0Æ–\Z”Z›Is7Û\Za•‘ÿ\00w=ë7Gñ\rî‡+vTÜ~mèo¾+ô¢ø\"Æ“ð¯áÿ\0ˆ|OâÒhñéú®¥ie“csjÙ¸‰\"šX¤lÉ½6¢·(zñ^YûbÁ7í¿c_‡^\ZñL¾&¸ñ¤~&ž;@ßÙrV‘Ô–ò®0%\\Ù&ÉCòcšÞ1åV0ž7ž|Í»÷0/?à¬:×‚¿g\rü;øá¨tÛ}!ÍÍõæ¬£S[«–TñÃ 1ª6Á˜ÙYF\0Tìÿ\0à¥6ß¾Gá_ˆÞ±ºšê÷ÏmcJ³·ÒdÓFîŽ+x•Xãïo\0pkèíþWã)´?†7¾ ×´¯?®Å¾¡jU¿â™·6²Ý,Ó<AGÛãþžkSÇ_ðC\rÃ:¼‰®üb³‡ÁpÛÞê0ø¢ÒÁ/¡Ô,mªyÑ…~æºò¶qþ¡Žj—/3” ôztÊ½¨Ð¯8ÛUfÖ¿yòÆ=sÀžýŸ5Ã_®ü[zu#sgZ3Ú¬‘1@ÂF`xf‘‚Iï_2ÚßÝY\ZE^‡“Í}yãŸÙrÏö~ý¨-¾ÜüP±°Ðï¼;ÿ\0	-ž¿˜#0µ±¸‚	â91Êã	°dŒŒg5½ãÿ\0ØÃwZÝ­­¯Çê×W·M—WM\Ziâ vïFVgß·æÑTí#vHLEIT²I%d»#:5¡	9ÊNR–­ù³ÆdŸÚþßöq¼º¼4ºÕÆ Â©ÞuM¶Ü‘£™,>bêÀ€0¯~ý¥þ/|1øG¤\\k_u¨ÖóÆÖÖÚˆ³Ó&ÍÆ“;*´ðLê8U%”ÙÂ÷Íxíû\Z\'À+:ÇÅÞñÄ]¥¬Z]ÛIy;ºå[ËPW1»#Œ‘Ÿd¶ÿ\0‚(xËJøðÃz—ˆ›M¹øg=Þ¥þŒWþÓBâXŠ¶<ÇXY	é†%{W+ˆ)`©*8©$š•¯®‰]ÚÝ•ÙP§YbhÍ©_[>êß·ÅËÛ²_ëphåLm¦E1[9#=UãèàŽ»²MpÞ?øŠß<JÚ£ÚÅ¦ÜI´™‚m$$óõÇé_n|3ÿ\0‚ ÃñkâOŠ´½?â­­æ•áÓew6–+5Ë\\Ü¦õŠh÷m_-UËìf#aã5ð“þ§þhþ,×¾(Zèº>«¯¨ˆtæ•¥Œ‘Cæ(m¬KÏ(M¤„Œ×‡ Ë’pçµ­uiuW];#º¦)N~Òwlø–]~4“rC&[©:úž1MoÝ¹d™œoö;q^×û~À ý¶>!x“KÓõK}Ið¥“ßêZâˆÐ(l$@¶Jã%UÙAÚy¯9ý©>]~Ì_´/‹<y¨GªÜxZý¬žå\"hÖm¸çoLBF\rzê½\'SØ§ï%{y\rÖRvG-yã{ÆQüµP\"Gmþü“ƒTçñEõÁf’?-@®HFNsTÙrÇN§üÿ\0ž)¯33îã§<ŸJèŒQ2-ÂE¨Ïå×ýõEQóþz5\\¨ƒ±_j—}WOd_˜¯Ï~¹‘x³P‚OÝÍlì£ SòúŽIÏjÆ}O\'æºMÍÔé¿g6é„šf‘FBˆ¿AÅDi®‡;—©í^ý¼~,øÁ6>Ò<Q\r®…g§\\i°Y}•\nEopÒ4è	çç29\'9ù¸ÆdxÛöÇøñ;ö†¶ø©®ë‚ÿ\0ÇÖ—×jÆÞ=ë%°Qm_“jàc×ÜÃuå–‘XtpÚGáOÓ`š@qŒCÊ©ÿ\0Â¯^æ~Î=ôƒn\rkÂÖlÞ$ñeæ©¨ø–ÜË[[Gý«cì\n¹“›*¾Õè\ZüWãÎ“£jzeÇÄ;£¥ëwÝ\\Áw§YM,’M‚ìÊlg¾1ÐWÇöžqÜ30ä§µjEá»gŠ6š1$œnÁÛü©sy”°é½ª¼Qÿ\0’øÇã}--Ä\rRHÞößTÝÁoŸ·Cµc™!\0m¥Wp9®{àwíÉñcö}Ò,cøoñÿ\0G“H×fñó-ã“ÒÂðË/(I%†GÍÀÍ|ù­®“ûËx—ÌõÉcúÕ­/â©á]r×PÓn-â¼³‘f…®\"Ôç,¯ò·8ê57›vCtiÅ^GÔPÁM¿h-wáÎ¡à»ŸÙ¿‡uYnZâÚãM‹½Ô¯4øsõ,îXíaÉã‡ñ¿þ\n£ñ³âŽ³§ÅâÍ^ÇZ¸ðÛÂtæ}#lví²* U\'<’Wœšñ_ˆ?¶¯ÄO‰ZšFµ£Khóù¬mô‹Ky¹ådŽ5`9è*–‡ûMøßÃúx†ßVicó|Ök´Y1÷˜d¯û==sZr½¤`â“¼UeñWü£ö‚ño‡õ\rkÄ÷W6º…Ä×i-‚ªÍ$Ð¼zeKE$‰ÁçãšÏø%ÿ\0PøÝû>èú~—à¿M£Úi–O§YZµ„sE«ÌÓ:~ù_ƒ)Ý““žüb¼gÄ¿´Š¼I}Õæ³$ÍËØ<§\nÁ””ÆÖù€<ŽÂ«ø³ö…ñO‹4K6òúÖkk”¸[£m»·mª\nŒóŠ¿S>]l‘§ñ›ãO‰>?üMÕ|kã-RmCÄ\Z¤‹5ÝÁD˜\0«…U\n\0\0Šõþ\nƒñ“Àº$Z-‡ˆKµ³œÝyhvÛ’G1Ÿ.…¾fç9à_<i¾:—F½µ¹‚ËM[«YTy\"2e”äV%[žÄ`ÖçÅ¯þ\'øó¨ZÞxšêÒúöÍJ-ÊÚÇòŒ	$Pð\0q8T;õ:#RkCÑ<mûtüFøƒñßIø‘¨x‚|e¢Æ±ZÞ%„„v3 ŒýãÎÜô®Çÿ\0ðSïŽ_ÓË×<yyvñ.¡\Z·‘\n2å)u†TÈÞ¤Ž:vÅ|Ü·lp]ÇÜóR%Ê²ímÄõÎz\nÂ¥IóJ)µ³±Ù\ZpÚÇ±|+ý·~(|ðæ—¥øgÅWš]Ž—ª.¯n©nÂéD32’ß,®0Ä›¥và¬>ÜYË xêkCce.\n=…´±¤LgtÚÈG2ÙÅ|ã-È1¨ã\nx;¿¥!“Ÿïzb¢XzRø¢ŸÈ¯cO±ï\n¿à¥ÿ\0\Z>|cñ_<-ãÒüMãC»Y¸[wŽóŒÄÈPc\' kÇ~&|GÖ¾0|AÖüUâ;æÔõï^ItÊÏ4„³6\0\0rOX»²ØqÇZŠYpG×“šÑE\'t8Ó„]Ò\Zÿ\00lõã¥5[§µ.å\'ÓgÖ‡Œ(úšÚÖÝÐÝƒû´T{Ûý¯ÎŠ?ÿÙ');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snacks`
--

DROP TABLE IF EXISTS `snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snacks` (
  `idsnack` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`idsnack`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snacks`
--

LOCK TABLES `snacks` WRITE;
/*!40000 ALTER TABLE `snacks` DISABLE KEYS */;
INSERT INTO `snacks` VALUES
(1,'Hot dogs','10000'),
(2,'Sandwich','5000'),
(3,'Nachos','7000'),
(4,'Crispetas','20000'),
(5,'Chocolatina','3000'),
(6,'Gaseosa','5000');
/*!40000 ALTER TABLE `snacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snacks_multiplex`
--

DROP TABLE IF EXISTS `snacks_multiplex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snacks_multiplex` (
  `snacks_idsnack` int(11) NOT NULL,
  `multiplex_idmultiplex` int(11) NOT NULL,
  `disponibles` int(11) NOT NULL,
  PRIMARY KEY (`snacks_idsnack`,`multiplex_idmultiplex`),
  KEY `fk_snacks_has_multiplex_multiplex1_idx` (`multiplex_idmultiplex`),
  KEY `fk_snacks_has_multiplex_snacks1_idx` (`snacks_idsnack`),
  CONSTRAINT `fk_snacks_has_multiplex_multiplex1` FOREIGN KEY (`multiplex_idmultiplex`) REFERENCES `multiplex` (`idmultiplex`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_snacks_has_multiplex_snacks1` FOREIGN KEY (`snacks_idsnack`) REFERENCES `snacks` (`idsnack`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snacks_multiplex`
--

LOCK TABLES `snacks_multiplex` WRITE;
/*!40000 ALTER TABLE `snacks_multiplex` DISABLE KEYS */;
INSERT INTO `snacks_multiplex` VALUES
(1,1,8),
(1,2,19),
(1,3,9),
(1,4,8),
(1,5,15),
(1,6,2),
(2,1,15),
(2,2,16),
(2,3,11),
(2,4,7),
(2,5,19),
(2,6,14),
(3,1,10),
(3,2,20),
(3,3,13),
(3,4,12),
(3,5,3),
(3,6,4),
(4,1,10),
(4,2,18),
(4,3,5),
(4,4,4),
(4,5,13),
(4,6,9),
(5,1,10),
(5,2,3),
(5,3,6),
(5,4,2),
(5,5,5),
(5,6,14),
(6,1,10),
(6,2,16),
(6,3,15),
(6,4,12),
(6,5,18),
(6,6,6);
/*!40000 ALTER TABLE `snacks_multiplex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `idticket` int(11) NOT NULL AUTO_INCREMENT,
  `asiento_idasiento` int(11) NOT NULL,
  `funcion_idfuncion` int(11) NOT NULL,
  `cliente_documento` int(11) NOT NULL,
  PRIMARY KEY (`idticket`,`asiento_idasiento`,`funcion_idfuncion`,`cliente_documento`),
  KEY `fk_funcion_asiento1_idx` (`asiento_idasiento`),
  KEY `fk_disponibilidad_funcion1_idx` (`funcion_idfuncion`),
  KEY `fk_disponibilidad_cliente1_idx` (`cliente_documento`),
  CONSTRAINT `fk_disponibilidad_cliente1` FOREIGN KEY (`cliente_documento`) REFERENCES `cliente` (`documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disponibilidad_funcion1` FOREIGN KEY (`funcion_idfuncion`) REFERENCES `funcion` (`idfuncion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcion_asiento1` FOREIGN KEY (`asiento_idasiento`) REFERENCES `asiento` (`idasiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES
(1,1,2,1),
(2,41,2,1),
(3,9,1,3),
(4,19,1,3),
(5,29,1,3),
(6,39,1,3),
(7,40,1,3),
(8,20,1,3),
(9,30,1,3),
(10,10,1,2),
(11,35,3,1),
(12,36,3,1),
(13,47,3,1),
(14,35,5,1),
(15,4,8,3),
(16,5,8,3);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 14:15:22
