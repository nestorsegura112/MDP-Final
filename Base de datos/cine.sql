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
  `contraseña` varchar(45) NOT NULL,
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
(1,'The Batman','����\0JFIF\0\0`\0`\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�C��d��j��N�?�SM��_���e4���S�T���N�T��|iL���h|��{{R�OaK\r5���6i�j�UC�i��W1����ր���!�A����0(\r���DX�(��(lRn�T/��(�n┎)7dQނC�.y�F�4�(\Z\r#4�\0U7�� �-y���j����w4����ԊtJ���\"7/iq�����������zi�(͜}��3W\"�m�N��֗�c���Ž��!�m䟟�׭f�?i�f�t�kszŘq��*AoJp����S�s��\rV�;#�~��ҫ����^���l\n�v���>6�5�k\\��e�-�`�\"G�(\\w�5m�718��;V��z��;2��=�B�C$qܡ�&e��Cܧ�ܬ3�\rT�2s޺�Y��٨��Yی�Է�5��w��r;S�M.N#%>H���z^�>���$�5Ĥ�*\"�9�$�HMM=�*��li^^��Ro�κx�(�O���a=�����i�2����I��W��9V�cP!5`B\\Ԃэi�q�ޥu\\\n�!/���Lw�Gˏʳr:�Ѷ�V�����5rH���EC:JFuh�B��h	�qRE`q�޴��\'�f������\'>����˜U]$b���Mhf]ʵ���l�T��O�_��V�3U��r�)��Y�Ɲ�p+9F�������еe\\�/�9��,9��z/�Y�0bUZ�S�=*8x�Veqov�^����\">^�ڷ&�G��z�k-��b��[h�\"G��N�Ep�`Z�*Z������O�;�o!���Ӵ�X�\Z)WX\"P�@m�:��z���(xkB�~�oguu���uA��¹߃�_F��X^���q���ż�����q���:7č7U����d2)V�GT07tr�a�y���c��&ɸӵ��N����o8��$����I�w�Sk��}�vj׽�ѣ��|8���y!��	�B����5���ĺ~���=[K���G�!�x��[;P�NF�t���|k��ڼ�¶L��H�}��?,����:�s��0)�ӆ�z׿�ԭ])վ��O��V��>\"�.p|��V�Z7��it�(�S=)��V,�V�S��5\'�7�o����zU5���<-ऌ�S�j>�ޮKV���*��$ֱ��J/�B&���\Zk&�\nj���TL�f��T�\"g��[\06�é����\\Ê{���4|���3�P�\\�\"e�����\0ZԳ�x��j+\rݿuB�:�gm变rFkέQ]���+Q�OK�P2?���v�h_Ŕ��=j�ٶp6���c%cJ�%�tE�(#�O���g��*��i�N8�i%��\0t��5}Ϥ���O��aVE�s�R�vK�n۶�bA=��qS�X���F*�V���F1�s��h{P�\\қ^gc;Gj�3/8=li�\0�4�\\H�]\\L�$�<�?^��se$4#j�;Ic�=y��#У�Mk�Դ��ǒ�0~�G�ӫ��f|\\q��]\\+jP[�+y����3U�l��R�#3<���MbOp����>h���=�*\"��W�N� ���v6�\"m�m�s����ur�N���QgiaPxR�f��F,s߷��i-0�q^N\"�U�Ѳ�僃k[#��������zے��@��L6)}�}j�ek�����̳(4����61���	�P?2v�Q\ZɓS-�I�*Hw>�dps��l6����F�s��ڶ�dq����$���q�w�����U-nvǍ�0�Wm�]T�K�}��X��ݤ�߰���V�ެ �\Z�Ԗ�olzs\\�����qr]Yj��B{�*���آ�s�U��q��^eJ��i���٤V��(�����	��Xu��_N�lY&]�n!~��\\�lp�;�)���r_�چ�^m�3�wj�����\'9<`��W��1�YTmc���7��_k��*�K���2<-�k��\0�����5���ᦗ ��|���k��oS��+���:�ʲkk>���8���7~]R2���d�%9GM�i\'gk_G�G������9s��\\}?Ȫ8ݏn��x��mk+�e�� ���c���I-#Ҵ�̿�nCϯ��k��R�h�̲z�k�VQWr��[�wv:DvV6��$J	?O�Nkc2�����.�M�6�I�J��~~�S��E_�ɝ���\0�|�Z��G�?p�a)��ӫAi(��,�\rA6��1���~|�ݭK���F�q�UU{t��;�\'��jsI�*!����֘���0����z}�x��4xt�B@v~5���~�fx�7�����tm����m�R��J��b|����ُ7�Y��l\0T�\\9�wN7>C��I�t�w� ^��֥�q���U��^�;qֵ��O)����+ͭE�C�2�Λ��7�c��c�(�=S��8��t�[�oe���PJ��d��:QI�}�\Z������.��\\3Ib�W���>������%����s��Yۦ�-]#ab3���pwd񓌌U�ŚL6�Cunm՘�Y�-��	2��Az�~#�����W�HG���a�_�Y?5��h���㑁�T��SV�����qq��Ʀ��Z�5�f��O��7f�ӏ�k��58�\r�[�+yw8m���r?���;�s�M�?���h�L���!$d�������,�ܒC:D���k�G.�Ly�d����_<�qs�5�:���^�:T��Q�����b�8ʕ0�n2����t��\0\"ֹ��su#�og�������ϭr�������=\0�7P��\0qڣ�ݹ���ׯF1����2�U��|�]޷7�#�k��$kla���L�����㧽o�����y����7��#��f�T��y��@�?S�:{T2�ֳJ-�rN\0\n>c��\\,*ɹC^��e��\'/�\nTq�m�����c�>��c��y#�H8+��}}��\\�,��n��+���%�&�xu<�!p�{����7�$m�}��G����>_�W�,\rzz��~?�}�,�qV�6������vk�~���䵟���Ɵ%�����W4������$r���\0��j��bJ�Z,z�k��IA��Y��G�*)�����6�>������N_/*�H�ַ����S��=3ڣ��i�n�:�w���w�c�y<y5��c�c���D����W��95$`��s׃_cʮ6ƴ�R.�t@�Ү���=�k![u��q^q��MZ筂�ϝ+�6��9M�kkL2\\�۝�d���C�?Q]N�VV78�[Qn��\\?\n��}�:�.�+xQ��Si��q�ҭi֖1�qcl���}����F����f���ܯ(�:V�-kf�j��\n屃�\0��|�F��N���	N����h.��<�*O�E��K�2G�11G�!�~5�����w\ZE�ķ�V�$��G&���t�]�G2܅��S��)����8���<?�I���XeY\ZH�	�*��~oA���9�]|]x^NwIh����^q��^&T�SèJs����V��o��\0�5�ɦ�~g���U�����,�}�\0*����٦��ᅡ�CI��+�p���� ��+������\r���0���c.<����\Z��H#i�[\'�Q��}3�r����~+�p*�b%\Z/�fޟ������\0�!c�M��v4��E�;�g��;H�GN��������k�?{w���~��V��ca����F��g����O�	]l��\r�#�\r�걽̛�������\Z���F�;y�T`<��,1�Q�{�4Z����}W�c�M&]V_1�V#��\0>���isޞ���\0�������4�z�������C�ݤ��[�0$*����@�;�ƽ��W��\r�^o��ɇQه�<g�䚆��6[�6�O5�)�}1�Oj�~jl\Z��q]�\\�����Z3�N�����Üt0������+[[)-W]�_3����na�;Չ���\"�?Ş�v�_>L3.�R*��������W�<D�fP���{7:k��|ćȏ�����UO�$R�>���{G�:���M�d;ٻ��a�1q�kh��Tnc��X�O�C��*E�S�;\r:(����k��eXB�?�r��\"�Z��#uo¾{�r?d�sjtl���muk��OZ�ww�{�\Z�t���>��oE{����+Q喇��fm�4�rh�	4ْh݊��N��l�\0Zu��{J:���X�ut�2*��>E�`K`���8\"�����l���-�]�*gUc�\nǚڌ)�&��<����ia�J	7�j՛]�e�4xn�k�R��Q��!��ϒ5�`\0���s��D[�R���dE1�y<�D ��l�x�֪��|�n>\\�j�֟r�mڿ7C]JR��)|�}ǇR4iSN�~���ܯv��b��D�s�	��~ʜ�����mGe����j����}�Z�)�M�|~+/��x/�=�qiq�d0c��Z��u$�9�D�ש��3O������j�X<n��9��|\\e��)ץzr�O��)��P�o�z�E�fU�~#i�d����R�=��Tv���f�F�d��v��\Z�ew&���t�2C*�	�4�Iէ*o�h�\r�1�1����I�����K�;��U�O8���|��O\0֌��������;Tv�`�߻���}��������~j{3�;�9[r櫖⤀�¿a�l�t�;ٓ(b�+R��(�jόs���M��ݮj���������ݰ��k)Vϵ`����A�¼��}�ʕ���j�;~���=?S˕��k�K��������_J�aS>�/�%���UX!lc=*��&�7u�sY����ʷ�kZr���\\�Ȭ}v1�&J]Cj�LS&�����\"n+�ڤӦV\0z����B}\ry��R��z8zs��o��o�y��^~�SP�|���unZ���(�E�#2����k�H橕Q�w8-N�W�p;zUim�H�U�y��Y�5E-rIۻ�^�:����7/�ghe��	�*�v��7C��O�I1h�v�A��m�w<�\0�SH��<y��\0���o!cc�W�?��2}���a�\'ex��fq������6��{����y�3���e:�V�WT��\0|vz�j�M�#J\0�~�����`�8��Q��Ƴ�-���Xu5�������hC&zU�$���:��h���p˸W-H��0���sA%�֯��jɷ�2j�/��ڸ�D�\\mnk�ȣ�{95�ex3�����!u��.SnZ��>�\'ǵ+f�)�|��s�k�U��a\\�.|��+v	@�b �d~�������n)��q�M<6�*Xm�?�k�����RZ:����KqȬٴ�dp=k���>p��^�!���{Z��[C��|��#�X�^[�*V-$j���k�º��q\'�3���J��++�ew��X���\rL��ަ���Yp�w}l~U�VP=�#�5u��Y*��1���x>�l�Ij��7���!�����U~U�fNչ����	�ϗ{\'-a&�OU���br��񠜃Cu���L*9Z�9�N\r��FV,$�9j�1��V|Gk~�j��}�D���{�9�Z�AYO�c��v�?/j��08�li�q��Z6W�SVW��ҬC}��\\u)��L;�[�e���S�ֶ��ԯz��/�U��ji�[���u�b0�s��;��A{�m�б�̊=Ms�\\+��3�ki�c�޼���?B�񒜕��VP٦���,p>���\\�P���7��h<���n��K�	��$d\\�`sX��������s�֕�0�.����:��=�L��n��HD��P�\0�?�U����$դ׮�{VI�?)�ף��eS��p�y�y?l�cmѫxg�W�xvF���ߩٰ���Wi�RG�p:Nu(��?�����j;P��:W�\'��+t�4t�rq@SR�.�[|�<R�|��oD�3d8&�J�OL��m^,�rW�BTg#vq���\r>J���ٳ�8k�s�������9�u�c����]��ʟ�5ry�ֺ�3��?������;����̊p�	��=��Q��x��_�n�KmJ��K2���%U*����kf�Xԅ)KY٭:=�S-�L����G�xyJ5/$�\\rV�ݓ�ty�L>���9�;x�P��nݐG��[y�h�Q��R/��/�Q��7���WQ�۾(�e�A#<�=���9[�:�Ϧ��I6��G\"���UI\r��P�	�׋����2�N=��T���~�J�%[B���R�����tJ�S�<o�����\Zs�L&{�vc*��*1����N=EQ��,:�=�����\rF��ׇ�+yqo3L��\r�q�ˑ�C.q�|p:���g_\0�2�T�T����˖�T6�9 ���Y�3��J5f��--�Sѧ�����`��4p�q��%x������ޗ8+�(�\0<WE�L�n:���>�D�%𕮤/�.��3Tb���Ԗ�����iM\"�#Pۂ� �a���j��)AKX�}FW��8jtkդ�k[��2���w��q�%�,빾��KC�E��H��A*0�#�sQۖK�A�������\0,~u�kǚ\'�J�*ɩ_o��\0\"��+l78�ɧH�\n�V)ە�r��hA>!m��5il�r���H��l�4k8#ح���_w�ǵҖ���U��\0dWy�UY4�!n�ɸ}�\0\\\Z������I࠱]��z��\0������s�g�p�a񐲲wO��\0�Ĭ~c��f�9?�{W�G��t�ۭ��@���)��,e��Q�W������_ﮯ�kx\"���3e��!F^����_����>$Gn����km8��^�w��7�?�	��b��LK�$9I�Bc=1��N�s_%�J��O��ܚ۵�\03�+��9��s,/7֗\'5��ɢi-�{���������Λ�[E�Sp��aQIڬ=~��V׌<cy�jqO}%����yk��c�n����{�)��\0��Z�(�ȸ���V��m(̗[��	�����돢A$\Z2��24�!�t��a!S��#{drEi�Mƥ+7�k]o��z��,,*�3h�*�ٿg���\'d���Z���k�� �7�w��J���m��3��\0g��\r��s��r�Y��`�d�p��@c�$\n��(|]Ծh�BtѪh�7�!�7��]���pCev��\0��.I�SD���?�\rsF��_Z�J�8Gm�q��{�?�k}oխ)�i�wwZ��������{&�S���	E��t҅��u&֪W����^��o�w�o�//��y�/`�\0�7R�X��\\NK�Kr{g��;O��R��y�j_e7Wp���Uh��p�=�~v��Xi��*[�h���ݵ�H��JB|�FT0��g\'�[>���\0�=SI��m�ln��C\"K��a�;�=��9hΚ��(Z릭���\0�ǃ<Q�G/���Tu%���r�v��i�.i�>XS�o�����7�o�w�����h䍢ID�Z,���c��ܐ1�)��6]Z�0�2}��ASP7\0X޹=�5�kv�.<��������Ld}:�����-.�P-�-%�Xa�x�c�$��3��z^*�+��K�;�ing�c���EC)IQ�yS�c&�a{龟���5�t�\0A�\\Z\\$��D��*1�v�2W��a��/��r5Ue�?69�O��O�>��[��`��۵E�\\��ۡ�N��+�K���Dm�]�p8��\0^��j�iƔj{*Rm$��4~������y�>�a9J)�7�����OKZ����|�֯���Iv���5�Z�n�y�i��g#��Eu4���r��:kR\'�\0g�Z:I6��,9V;O�X�d��^NkB�	��^=Zn������juM3㓖�}��h��l?�������$v�<��~�\\|LN[�=f��+�-|3{a�F�\\o%��Ғ�<>\\8�X���`}�|���^x[Q�U��ť�d2bQ���W@�|T�m�\0��\\�Avx��Ͳ|F&��Ji\'W{�{��x�VQ�e��Y�\n��:��.)s%ʓ��W���\ZF��\0�߉u&]�d�D���XmQ���X��5Ο��wG���W�2�PaD8�0{��_:��U�,��HumV;[�!�1tv��g���\'>�5�~(��h�=[R�c�`ҭ��Q!\0�w?�p�ኯ\rR�&���g��.����u���0ҕ\nQ��S|�Ru������i>��C�_�W��j6H/��][$�K ��6�^�^+�4�k����xmc�p��YV<�����2j���ž_پ\"����p�wM�_6g���G\'ڪh�?ִ-�K�յ]7Pm�V����*T��T��Pk��e���U��Sqk}���Y�\0d�Y��)a�M�Z3i�MͧM�tJ֓���W�֭w���\0����~�X[r�]\n7�?��y����ğ�I��]j����D���r:���\0�l��Ҿ\"kz7�n�]Z�\rPm�6+\'�\'n9e�~��U�������ǳ�5{�9%Y�_ll������*���G`+l�Z�9i5u�����Y��\0��p>q��x���Bu��sN6���+q��+Y������>7�v����6��-为����Q,`��c;�w9����V���H�;�[����h\'���׽|��x�W�\rέ�\\��7���g<~<�O����ͯ^3�۔�88+��H�����D�ҋ�抒o]o�G����aq�����4�ԥ:q���T�m=RNM\'���J���~���5������P���T\'�+��������nsW���e_����w���f\0�ʓ�9q\\����Z��Rj�?����.	�<�A����Y�|]}�;�澸k�#M��\0��{ܚ�9ti�M%�d�����y�ƶ2�����<�8�Ni�]����kZ�f��~�w:ط8e��ֹ�+�8;��gN����\0�W&\"���2|t]�tV\r�\"Ã�kb�M���?g*���֭���+|��^5jnL�+/�F�S���S�Es�$��\'��\0⎢���\0;v�Rc&�hB���L(CWY�?���@|W���u�ּAp-�Չ�gm���P�v�p�\0�\n������\"ź����+r�>����\n�<K4J����e��>F�����g�e�O�<;7�\r��i3%ō���l.#�����|���������1��r�.{ۭ��JR���C/����~?���͟��\0�,��;�I�v��dg���b�P��e����\n�	e ^k/x=+량ߵ��O���E�-c�_���$\Z�2X\\j�7\Z&���Y�a2;X��(˱\rm�P��U�����E��-/���~����c���G`l�����h�FY����9֌9�%���f�Ք��3�嫶��f�ᓽ[�\\��ʼڑ>���6m��Z��kb���j�\\.F+�tϨ��l�:+�޶�یo�\\���\0�i[k�%��^u|;���eY�)�͝�Z�g��֥}Ch$� �#s����_����ws��	`d����~\'�/u���'),
(2,'Los tipos malos','����\0JFIF\0\0`\0`\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0Ducky\0\0\0\0\0\0\0���http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\r\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \">\r\n	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\r\n		<rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:079f6ed2-e7de-45d7-a305-8b6524bef768\" xmpMM:DocumentID=\"xmp.did:22DA57465D0B11ECB1B296D44BAD343C\" xmpMM:InstanceID=\"xmp.iid:22DA57455D0B11ECB1B296D44BAD343C\" xmp:CreatorTool=\"Adobe Photoshop 22.4 (Macintosh)\">\r\n			<xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:a3ef0747-b05e-4698-9a2e-c7e5f8805402\" stRef:documentID=\"adobe:docid:photoshop:d4bd8c76-d4a7-2143-a73a-0012bfaefd5f\"/>\r\n		</rdf:Description>\r\n	</rdf:RDF>\r\n</x:xmpmeta>\r\n<?xpacket end=\'w\'?>��XICC_PROFILE\0\0\0HLino\0\0mntrRGB XYZ �\0\0	\0\01\0\0acspMSFT\0\0\0\0IEC sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-HP  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0cprt\0\0P\0\0\03desc\0\0�\0\0\0lwtpt\0\0�\0\0\0bkpt\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0,\0\0\0bXYZ\0\0@\0\0\0dmnd\0\0T\0\0\0pdmdd\0\0�\0\0\0�vued\0\0L\0\0\0�view\0\0�\0\0\0$lumi\0\0�\0\0\0meas\0\0\0\0\0$tech\0\00\0\0\0rTRC\0\0<\0\0gTRC\0\0<\0\0bTRC\0\0<\0\0text\0\0\0\0Copyright (c) 1998 Hewlett-Packard Company\0\0desc\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0�Q\0\0\0\0�XYZ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��desc\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0view\0\0\0\0\0��\0_.\0�\0��\0\0\\�\0\0\0XYZ \0\0\0\0\0L	V\0P\0\0\0W�meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0sig \0\0\0\0CRT curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\r%+28>ELRY`gnu|����������������&/8AKT]gqz������������\0!-8COZfr~���������� -;HUcq~���������\r+:IXgw��������\'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�\n\n\'\n=\nT\nj\n�\n�\n�\n�\n�\n�\"9Qi������*C\\u�����\r\r\r&\r@\rZ\rt\r�\r�\r�\r�\r�.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����\'Ij����4Vx���&Il����Ae����@e���� Ek���\Z\Z*\ZQ\Zw\Z�\Z�\Z�;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�\"\'\"U\"�\"�\"�#\n#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&\'&W&�&�&�\'\'I\'z\'�\'�(\r(?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�3\r3F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<\'<e<�<�=\"=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F\"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O\0OIO�O�P\'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\\V�V�WDW�W�X/X}X�Y\ZYiY�ZZVZ�Z�[E[�[�\\5\\�\\�]\']x]�^\Z^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���\n�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���\n�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8���\Z�����n��R�ĩ7�������u��\\�ЭD���-������\0�u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������\n�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s����\r����2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m����\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�?����k��\0���e\rō�qY�m�Bpc|�Պ��Hk��Kh5�x�eq	% \"I-�d���@�����s>&����W������R��$�c-�d�z{TZω�΍ool�{y.�[�,\nJ�r��#�A��<dg��*��ߢ~3�,-\nt�*q�#��\'�|o�R�M��C��d��G�i\03)l��a³gx���4���5?�4C�\ZƟ7�c}7M�O�D% v*��\0{{�~�7Z?���WP��e�K.��F9�=����v����\0��ZF�j�G��tq�aK{k�IX`�D��?1,C��S^�MUa�����	Z��[omuz�q�Xu&���_�����}��Z����n�g���T���*�\n�Sʰ�=�j�\r�$����,���b~�*�|����\0\0��uO���@��ĭñ��V�W�<�F�5{���B�����A�_��*έT��&�����囊��d�?�����L�/<m�M+�6� խ�1���\0�/��a��uyX#���c�>�I�\0���_��>Ծ��E�g�?����uy��J�&��i�[k��)�\0��K�@��X�\n�P��T�\0��Y�\0�h�\'�-�?�/���k���!Ѯt��w�Zk:��E�Nk�y�;5�b$��o.^�3�K����~���7�>���?k�Ŝ��v:�sI{\"c+Ń�ڶ�B�v�!�����\0�S�\0g]g�������$����p5�%[q��!.x\\�\0e�q��JN\0���{��f{�\0��8�����Z��4_i�x^#�#���SV��xI�m\"(��亓K!2������\'�����-��o���>�ν��MW�r��-�=[XЭ�{(���n�-�+��>�j�r�.Ys(��\0����\r��j���\0g���s?��[!	l�D�<f�������	�.x_��Ý\'�����x_^��\Z~��\\�ŭ�d�*�H8`�GUe �A����፥ׅu�k����\0i�&�s�Y|�y�K��{�]�v4���Yh�w$��gt�7)/��/������K����6�J�t�x�P��/�o�<Asokk�Ow6,n�}i\"B��ex�Fc@�sE~M��q�\0�<9��wR���\Z^�uo��\0	e嶋��5i[G�������K�-��IS�̊��o��x�O\Zx#G�%ӵ\rMZ�ǰ��˺�2F�a��Dݵ�f�5�����@����Ğ$�[\r2�yc�J��ƃ�3v�p+�=k���\n�w�|c��7����@�H���j�_L���5��r�c\06|����wY���ҕ79Yg��\0]ּE��M��\'���e�?i����7vJ��?�9Z���	��mR��x��դ�&���Y�]��q&-��\'d�_��v��߅��w�O�7⧅|qp��>��_[�7G��2�5c�N���6���\'��>��\r�m;E��R�L�m����	�Q�TQ�x\0rrMx<?\Z؊�Y��ҿ�i[�.Ti�^e�@~����$Ӭ�k��kz´�Z]�)��$Ǚ.\Z�\r̀I\0d�+�k�J3�uj$�6g\Z3��Q��\0��ُ�^�ֿ�\Z�M���܉	��a��	 o�9��8�X6�\'�V�x�z�\0�+��)_�.tO�6��]H�sy�%�QwU�&�(��$��W͚��^3�����\'�ƿ�3�.xX_�v�s�\\�����iuԛ�\Z=֑$�P��z��N�̣�<dc�����m��\0_��T�����i3Z5��o�b}�Wku(ۀq��5��~�Z>��k\\]cMK��CP�qȻ�h�j���\\���ךg�-t�F{�xV).\0�W��,s���}�	�M|LifjZ.�˪�4�\0�>K<�!	�ݮ�zh:-���Z�ڠ���1h:(Q�*���u����!��d|#m����Y�\\�㑞��8m�r���2?A�S�dW/�?X������2�T��R���9�U�4��\r� ,���wd�\055*rE���+�ӏ<�SZ�v_yєQ�z��c�\0��^G��O���au���q�v{o�yRʹ�\'*�����~�ǩ�K��ڪ���Ζ��nex�u�>�#	I*�_h-\n�e�<�Ev?�t�o�?�_�wfU�����H�\00?����\0.��V��*��;���NV�ݤ��_�T�fǞ���>pX��9���j�����Z;hw�fA��p�1��!#�C�#�N�1���%�/�#\Z�9�W����e�&ٶ�	�\r�8��~��i�`S|�I�k�������\0c�����5&�ՠ�V��VY\"�zز���\Z�>1|S��C�{�n����a�Vֱ��F����=Y�\0}�ػ���h�?�7Z���u�ݨ��0[찾�\0-d��JTlc�\0O�����Q`��孼�_#jt�r���u=S���}�W���O��t�q��\Z��1��}O5�q.�Y�_����4����Z�����M�/�S_�\'��-.����\0F_*$@��w?û�^q�Y�eK/��{���4��]�^��p_���7��/��\'�b���}w��o2�X�	\Z���\n��{�WQ���-�u(�=\r�cN���]�-bU*�$<��0��9����b?{\Zw��(�T+��Mo�*�n-�3���LZ��KHR6?u��v=�e\'ϸ���>j_�,i�N�o$ِ�Sr���]�\09������oY|V�����q٬�����.\'\'Y�;�=»t�ۑ�	~�W����>Ң�c�������#��$�p\0�N��6�<Me4��k�{�e\'���>Ə,SJ�+u%n�M��_B�\0��C���p�Ъ���m����t��\"qI1���z�J4��F*����INNrݑjW�ca4ͼ�1�bl��$�M|{���,��4���k�\"�)-܉��\'�$I Tھ��7���$��������n.;ɂ��/��L6	+�0¾vѿb���\0~��_�>�w��jv��N��k���ї��$�c1�˲DV��y��x��mV�IVv�|���\0*�O]5]�>υ)d�j��\r\Z�I�G��+����Zj���W�+���mU����K��c���ަ���B�\0��g����_���O�~�Z֡��M�\r`jv�C$2*Ko�m��j�;��\'<�$�\0�(��P��g�)%��v��d�)�\0�:�?೚F�\0���ݶէ�\'�̀�?��_�Ʈg��J��\\eGRKD�M^�I���FՏԧ��0�kG���)Ɣef����I��ͫ\'+��T����~1x��_�����\Z�Z���u5͝�Y��\'EYqP���������i�\0�g����F���7�oOm�&�o�6X��i�Q3����3[\'w\r�Q�����a�;\\wm2����\0�^��4�;<I�x��G�!�<%�iq��Q]Mq3٘��r�oݻ�=�F�����\\f;2���Mԫ*T\\d�eM�B�z��w�}�`2���UQ�\n�Ԡ�wU*�妴�{��m�\\���ࠞ$�<)��\0�fI�j\Z5�����s��g�$�q����X|�2�$�/������W�Cm��\"kkwo,O�i��S����Q�2;Gq󲫫!\nNr�<���\0���\n)�\0Eܳ|H�#���#D�LT_���������R����|��]����2W�\0���~���]Y�Q�;IǗ�7�d�۲�������*�\rfe�:q�(η4T�Ԛ\\����V����\0�\n3y�o؟�>/��O���,i�����@J\\��)	�fT�����t��W���0[|E�[xm�ԠҮd�\r�[���g��\n�W\0���ȮG��\0�ì~ӿ�|��*� �O�o����o۠����I�HX\\��I�:������U�>�W����D�r]]B��ɝ�ב�cð\0v��Ѽc�����V�*5(���2q��i]ɮ���mѝɰ�*V�J���%9�ݔ#.���u�ڣ����ͷ��=.��i���4��Z��|��dU$�9!]�������OG���	]6�\r��YG%�G��ij���zId��Y�S�I��U\0(�ß�?<!k��kL����x,�	;�>�n��I�^/�G���ߋ�|2���M5k�h���f��K�mm��`cM#:���A,�($��N�&���(ʿ*���}Zѽ���~	���V�U����[�*���%����Ο�P	�fҤ�ּ�|;�&�9nu$-\Z:I��������e\'9��W���[{�c�j�(�<��7R8e<�<U��\n7�I��J�;�V�5��0IP1�8�Z��t�4�>[X����E�(�P�(�P\0\0\0��k�(�Z��kk���#�����b�8�1�DP���(����S3�ٖ�]��Ǐ>\"L��~�/��O��<��J��������^Y��9o���g/�}^���s��!��`�h�+�7c�|�\na*Qˡ<G�*^s�\0���E�=L�\'��i��c�?��\'ZC(?�����ۼ�:Ƒ���v��Ԓz\n�K�]�|��/ٻ�څϋ�-/M����|G�[����h�S���K$���0<��u�z����2�~�K�O�/u��Qu�fll�ጩ����ϕ��G]���h*Kh|\Z����@kڶ��?[�ך6\Z�\'��Bv�\".�Kxޙ^W��g����\0o��Q񞙠]躦���Z���X�[X�K�أ�x�y#\"�G�pt�\0��UNvR���ee��v}��ϳ\n��Ԩ�RI7�I�\\���k��G��1t6�k�e|R������m�}E��D���\0#^��\0z�P��,���~!��c�\Z9��r��>~Ͼ�>8�_<;��^���\0KI ��\"����9,|��66��p�\nI�M�|\n�[e��\0ch>#�<Y3ƚ~�l.�V� \ZId��&Ī���ݓ�翳a��lN5\Zo�r�{��x=7�Ֆ��lU̸�	��Ss���4_�����{Z��c�?�.խ?a��]��G`�[o��6�\n�������g�����.�,|?a�F[h��?��/�޿���q�/\r��v���{�)�t67p|���P!�.]� �?-�տ�Y��\0�I��m�$Ҭeմ+�-59��-�!�X!B]��`�>��\Z�2I��/���F�8��􍯯M���G��CM�엱���\"�ܵN�O�[��M��b�\0�J�\0gmc��k��\ZLs.��+���%��봲�軝|�\'�Y��E7��?�ߵ�û?��G����]h�P]>i.��\n��\\1�4fP͒�h�8�?����k����[���Υd�x����2�AZ������|K���\r���?��F��v���\0A�m��/q$ʀGn6�;��%�/��Y\Z�kU�����r���NM���k�]�pgmP�G��J��5�7B+g4������}5g�����	�����ug�I�������4m3�H�@JD��o�r8`��:��\0oռ⯄�\r�,n��K�w���2{\'Y庱1Hd�L���hq���1իϼc��\0���+��\0~<K����^#���7X�#������\"J�BĖ�7+V����-��~%ã�5����w���\'�H2s���w !B��wm8�О[���^�\rJn5���KH�)��%�U��ƘL��,�	��}�*N�U:M{*�m��)4��7�/u��[����D�>��ُ�z�7\rWOң��\'��J�}�\n���m/��>\ZР�4�]?O�a���c�1�����&�Aпoߊ?�O�[�n�=�������c�KN�g�̐6܂�J8RH\r���Y�x���єe9B\r~�����T0�פ���m.���]=���\0e�&%�1j-Vr��$�	k�(��ѻ5��M��Y`_�wm�*ż�,a����(�1o�Rt��>l(��\0���lm�(�X�P���0+��ۓ����/��|-��v~0.^�����\\�cb73\0}{WЬ0��_��ò�x���Zf��=��&��d�xbU#��2�*���|��1<��\\.�E}U��魙��8Zx�li��k�w�q~#�\0����O�x�K��>����5���k&�V\0F~`A9\07$���O�?�e�|F���CC0M*�Ն��;�B	l�-���;�$*�7p3_hP�w�Z�r�s��.�6]��tf�;�U1�)\nB��HRI�/ؓ�ڎ���WZ��h�˿���i���:��dؤ���pzW�1�8���J�YMT���}��^=�N�]?3�sl����������Mn�<��5�?>�@i|?�v_	]m81�\"����L��<�8�����{|_���,�To���Q�)�\\��Gdoo.�F��;pq��Y�I�\0���\r$w��j����JER7�6s�\0ϵz�Gm{�Vx�����H�U�����<к\0=��?ʹ��\Z����4ڭj��N���O����m�J�?ĩ������JP��9I_��?�����A����x^�nm��\0\r���\n>�G1�\0��^�w�@����g�@���C�\0����,�2y����#?!Dą��0 P+7�	1�����Oeb����\"�Ք�\0}\\�?E�����N��?e�\n�Ӛߍ>%x��MjI�Ow�K��\0Bff�����\0�J`}�ֻ��F+:�pYUW>i�s^ܴ֗��)ů4�?5�`��s��r�Q�75Yj��Wp�o�l��&���<��k�?O�V��kv�s��{&�\'-s\'i�k�V�rv?i��Y�`���\0����8�>�G���?��I�#~�>�k�����K�-�Ay\Z��\\�?�����/�\nE{�^E1���ޏ�Ix�$�����*��Ϡ漜EZ���/&���E�4ד�z�{XZTs,��c�+Q�n�c$��j�h������{�~�_5&h��g�7^����?�|i�\0p�-n�:���EF���$���%�w��\0~�~5��\0�R_��\0��\r[G�]�>9����v��$b�)p70�:�2k���⎵�\0��7�ĚE��c�N�e	I!r���[\n�rF�I������$�pU3�oN���q�Wj2{7���\0n��\\)ù�>̲*��<]E�/G(��_4������O��F��>�>��-����o�BI\0v�\0ǡ�׈��~���CA���ks���M/_�\'�&��wkYN>V,��#%X\r�#�&��\0/����SF���l��s��ƒ�}��r��\"�($�@%�	_a|9���o��|m�gU�&� Xo�w6���E#g�ʍ�Y����`����ap|A��գW��s��N�ҩɻwV�������Y�����\'N�g^���J���;��Ꝗ�\'w��*�=M}���~����o{�9\"1M�O�����EiZ|ZU�6��#��5�4T\0�\0���|/Oُ�\nm��ܓ$7W�R%���h.	6�I�F\"W�N��T�R��~��żC�ӌq��RQ�|�F��ۧ��ˍ��x(�V\n����R�e�9�����[����$\'�i�8���]����[j61�I���ξx�y�3�nA���+��N�Z��&���֟�����偂(V0�\'���Y�ۓ�>P@���=�`gN�ykR\\���}��O�����\nN��U��濳��K��r�[��������ޛ�uX�p2Y��q�fU3���*8�u��R��^�l�j��	rMY��^1�x�i�g�ӯɨ-�B�Th���R��R������{��^�M�V�_u�qo�����R�$V���-��YX}+��a\Z�ux6�p������㋥$�i/����8�����ծo��B�g0�R0�\\J�,d�\0$�錜���O��zx�m���%�6>q\Z��-���k7����#�W�������Ñ4�_ʲK�Q�9鐃8���i�W��W������+{��y�c�VDp����9����$�F�����ݫ�/��s��e]�_�;.�M�Y��)���?��^?�V��S�~!_�]�[�V�+�(�&��B�\0��cә?d��WI����h�n�y�I�_�����VF�0�mUQ�fc�p=T��Y<�%񇃵=.�U��n5w�;�2>�h�0$M��ï ׹O*�Q�*Ҥ��������g5l�Z�J5j�\Z�.K��tM���s�/��߃�	~�:A��u�^�uq�Z�x�[f2J�j�b���`��������g���~����qӮ/���r�d&�T��UUQ��/$����#� x/�N�.�c\r����-6��\\��cԂ~U��GN+�VF�܇!���\n1���՛v��m�et��;s�)̳;GY�%�j7q�I]�ij��z��ů����[��.�t�v��_:����Q��pr)|k�;�?�Ho�G�\n�����Դ�{�b^�CH����:WL��5����[Nk��6F�(-!�Q�׹R�ީV���K[mw��;41���0�I%�&�k۵�ߨ��t\nƉ���>��p�kg!~�@��\\�\0ů����M�x��:^�qh� ��J\\D�\'h�p�9ۜg�uv�q���\"��\"����x�s�~UU0�j���H)A�i5�=�;F��J��5��i��w9߅?|%�CI���~�t(g!�6�~�䎆I^B;n\'��\'���a���<?�mo�^0]�mCL��ӵva�X>���2�\Z���[;�\n_5��\0�W.+)�b0�V��M%��٫Y����<�0��6�W�$�m�����u$�;�Ⱦ\0�������y�x��ڑcs��2	��@R##@\\��~]�@Q�{��h�H�HdW#\r�o�����ThEF;�����o�z���bq���*nR�W}�%�K�VK��G���M���k���~�C����t���Z�~T������r�$8�3���={���w�+\\j\r,��:e��!�Ha_�����N��W�?�����R��A�M?V�k[�.�mI%�P�,d�\0��9!}�o��\0g�\0�_�&����Ic�\\%��D�]b������s�>S�⿞��x圸��K��G�I���}��8v8o��Qi��t���=O�	y�U��\Z?��­go�<�Z���K�E��v��kľwtPW��/���MᏉz���_5��,v�\0j����pV0��P�Vrv`\0��W\r�\0j�pJ�X�F�eZ�5�>C8���єuJ�\0�\0s>�{��q�\\�X#��h��Ht�$�\r��È����)a�\0\\���[{W���\0��~2�\Z8�!�`>�l�����f�k�3<�3t��\'%H���O��0�\\y���������?m���h:O�,�F�r1�P���n�1�0����p1����>d�-�7�y4���� ��?�n-/㍥p\0T$��v�	n�#��Ży����ż�m3ڿ�� [�|�1�B�Ǿ:u��_�_|&����ѵơy�H��F��7��\0�{\r��~C�N#7�XIr8�S�J4�vIvo����;��K\0�M>d�oy�[��v�}s��Y�K��V��n�e�}8�p�n\nyo��<�_,�\0�8?l�c㗆�Y���X�W�#��l2��Y4k��X\n�\"odpy�`���+�t_k��]��}�3,�$ew�m����uO�\n��\0�t���;A�l/.��qke2���e���y�B���ڂ�a+�B�d�gtݭӪg�G*s�Uaf�����˟|_����>[�Mз}��Oӷ����\\c�y�����M�|GBH�\0]���\0i�*��lҥL�2��^�Dg�è�i̪?��ד�Jդ��Uq9h��Ȉg�����zC^�#�5�3ʺ��\"o�����G�}��)�O���9�\Z;�ď�*�_�0~�t�α���kIg�����d�7z�5����;?\njZ���M�[i$FV��IǾ8��x�F:�9��Υnwr?O��o¼#��x��]��y-���J�����w�J�����{<7[�w��j��洱4��+���Ҧ��D~+����\rm����8�r��ۅ�d#�8���T��\'�������l��N�ހ�����pG##��?~�>�<y�-J�ⷌc���eZ��j6��yl�����fe`U��>���?�:)���&����\ro]�Li��s�q ��G�AbO%�~Yquw^QT҄ZZ�徾�S����?�`��)]��O���Y�-|I��X�Aݕ�M�ʻ�Ta��\rx/��������q.���o�\0��Ac�g[v�1�\'��Q�oRI�r��[�c�$Ic�w�#V�a���n\Zo���~��x�m�u�9�?�^�eN�lN\Z��ԛM�ݹ$������Z�)ѫɤ֩z��\'�-�#u�z��),���a\"��=����RN܏��\03��O���k����/�d�8�by�fp@X��ұ~�X�-�ZC���Fڕ�:�n���\0���W��L�u��\"܈c�ԧ[(�%*�Tt���՗�Q�v����\0�k�둺Z@�]u�5\'$�O�[$+�\\G�f��Єl���i�>V��4�����o�\0I�\0�=���7�:v�?�$Nu\'\r�\0��?�yo�k	��f��y�n�`��2��<��nN������<?�+Mѱ�KP-}j�J��\"?َ��Y2vRE\07 ��^��w�����]j���ı��Q<����F�s�t�\'\0�_=�\\���|\r�(ɥ��ݳ�Q`�|[�������I����=�?1�tȥ����ɍ��79\\�ݕ�r^On��?�t�h6�T���7���$|Ip���1���3��o5��\Z��d�P?~�r��s������g�\n���-���������$S��,�U��潉TyvSW�=9���;ow��ww��R�qX�Օ�m�W�˫��ឳo$��9�S�$�]FU@f�s�溉u�T��tU�O�pM��E���a�#F�f	����-S�p�hֱ�Β0.���\n���զM���cN)I���--����R�7MZ�Q�Z��E�5Rᕲ�ּ�Bq\'���o�W�w���sÞ9����\\7�h-���(��m�@����CY^��g�4�xC#:a\Z����Ml*����Of���p�+��~��ū�7V���`�=؟�a�ܵ���J?���`\r��X��5c�%�ėw���?�I�U���h~�\Z���gfN��=~��S�*��i%�X��o#K�_k���淴��Ԫ�O�}��ŵN\n������W���}B��\'\\�g��2�,�O$�ܤH��G ����O�mW��$>.��}\"yt-_Y���MM�7�\r��pTF�\0���p|E%EG�]l֛n����v�\0�d��S|A��JY\rо��\05���Gp���˕��_ q�WU����$��˭{�q��hz֟mr�<adf�\".�P��P�/L��\0�Ǜ�u/�дq�v�j�4��_��jV��r�\r�遟z�E�qn]����ں(��Y��U$��K���J�\Z0�]/�o#;�>���at�\n������O&I��z�v	�s�\'��~j:�>(Mg$6�\'�涘�iVyc��R��b�џ�Ny�z,W�<���H�y쏫.���\0^շ�Z�^�x���&0?�G���ޔ!�W�;+%m-�x���J��z�4Y4o:[�����o-6�?�O�EH/s����^�<)�BC�Smݟ:�T񝿂/|/kp�-��dԥ���c�d��D�+����p�yͱ^i��_��\0�q_~���~\"���Z{�X��em#��12�3G�3�����ӫC��\"���+���S�Y˜��3�1R�έO���+��9R�B��z[���(��{���+�m&��Gk K{�i@{{��m��/���I�w�>��g�?<o���yu�5���P�^G�UG\n�\0\0���������0d�g~{�ݏ�\n�-�cb���^�W���hW�iQ79��/��ﶧ�f������H���59�\0E�p��ь�W�=y�oQ:�1��+\nF:��������F����m6�uح̘�U��Ҿr��������>H�oY�4l�V���h�t�~O������fU#���\'��{��o�\0���^���:��	6���͸�׵r�_#]M�e�.}ٕG��+�_���pG���ٞ8o�U�:��������|��cj����<1�A�_j\r0U\r�.\09�\"G��\0׫��mR�T�J�\0q�}j�ci��趍{���i�gˍ�-��\0�Wq���\03Lp9���\0Z����]}�3P�������Ʋ�)���S$u�<��޺��\0�?�׆�k�/�?Լ7o2c�^*����	�����Z��-����u*SQ�m����矌�a�E�J���\0��c����AS��\"��@�U��\0<m\'����o�^M.\"�w`�\0�����Ϳ�\\�i릛��_���/<�Mߏ�$L��z����\rqڷ����	������L~F\Z[kw��i���\'��V\\%��i�A7��뜔�P]��~��>;����.�+(㽵�b�O�Մ�dd�@]Fbb��IRA`G9��\'�b�K�-�l��HČ��d|�u�3(��=F��W���\'�֞	��?��>�\r�Z)��l�]w�U��+�#ҽ��s���G|4�+_�-�N�ỉ��w��ֆ�o��ɺ��\0����q<G�NHK�>������~��ܔ`���ϸ>4�n�����Z��k����fʬ0�E�c���W�_]i>���V ����Z��Q�,�n�[X�Cu	�cF1�(�ۙHXm9V\0�@���/\\x�Y����&r�	8�;t�5��&�9U��%t���w^(���.\ZU�\r$,[(=A<������OZ��i����<�X�X.�\n�$�N9<�]܏a�}^�nT��i���a�=��/��t+���7V�+򑞽��mjM֌�ҷO�1�E��S�4�}���\rձ���B3��Y6:�w��X�h�U�(���Q(�*���2��G�44\n�M���a�3��p?���t_��>���F�Hѯ�X�;L����y���p�����V�XE/�&�n��O����7�[�]=��O���V�j��w����dnY\'����`�W#���x��O\'�?f�**��{\'�3�/�H<a�;V�|�_jZ}��{-4��x�e`��;�үx���׿�����</��\"��&���y�\0�>w>�A���?�O�i�\0	-���ڶ��m{�p���Rk?�H{K;s)l�rral.q^����������T�/>�CIܶ�i%����To��$\nI ���<4\ZV�_����x��Y������߿d~s�R�!������c���P�.��o�E���q��y,jC��c�8�x�����,ѝ�u��r�F�\0~.[�4�u�m�[G.9�\'ˑ��}��^�|>�=ӵK_��v��maF�]B�5���a�|ʮY�*Ǹ.��p�����,��</���_�<m�B�]��u�k�SM�>J��������b��iJ� �3N*xJ|�IF�I����%���h����8��(��{-��v��.��?<>%�*��O⻍����e�X�a�~�ג3�ckW�Jz�����.�\'�-��e��	�N��D�rZ|7�Ɠ���\nVd6+ �~g!Ad���W��߈�\0?i\rZ4o�B�<HJhv�K]7K�KX��\r����ʬ��XY�B����c�g��1����-|?�j�|w��o�Nw�b��x<���f�䓯�ٵ�v��K��qf/�[��ַ����=��G��ⷉ���;g�\'�O��.������x�_��N緝\"l��I�db0O�7��\0����(�.��~�>�O�t�}i.�5��\'�U[ʓ�3��!@<7*Ex��RO������jzF���6m&��KXu+R��& BJ�P`@1�0PcgP���_���֥y�_��u�)>��<i�5�\Z�m=� 7������W\\z�\'Z��/_%�׷cˣ����_.�t}o���\0�1�4|���a�\0�<��o�=�3��J���Q����x�yE���c�.~�;Ꭹ���	�5M{��6��K̱^[�\Z�KD���W$+������Q��.Ϳ���\n/�]�Z��|W���O}f8�Դ��>ܽ��$��c�Gi��������~u�_��+鿳�Yj��\"�4ۖ���,V�Ì�\rU���xᙎ:bpԪ`�Z��������k��\rO�v��ZYi3�����_�y�j^\r��x3^�|E��QxO��#ɃQ�E�����!ٕ�6Rkd;�z�����+xCK���il�,�uY~la\0`GL����xtτ���y�]7Y��4�F��h��j�r�ou�n%�5��ь�Ό��������F����C�n�=R�T���恩�qj��}�)L���u4\'q� ����fQP�jS|���߮�Y�΂��տ�ߡ�\Z�g�?k�����]��\"Q�-�E�&A˨^:`m,\0���|FO�\\X�G&��i@}�L����~Y\"<�u�#����v��<y��<�?u#�0��z�Ϗ���-�5�&q�x�I�%��zByda�`�\0Ą��ꍇ`����ۯ��\0#���KF�����q5��*��Y�Bǧ�xG\\���v�j�6��\"R���:�X\r�o\'��5��pà��Wl�s��^�82B�����6?\0����W��[±}��T��f�KC\0[ g��^�e�iGk~��R���%�6l�J�VY#e���\\Q]$?��{uo2��{�;����4V2to�\Z�? �_kyL&��KUxَ�n������0�?�?�4i^G�<m���V۬�H�/LvQ69stoe*3�9.Uv�7�N���t��F����7�>\'jxSC��<��RV`!��8�L�׊�\\״_	��?\r�oR�Z��c�{Sm췋O��I#�.Ѽ��-9=A���a]g���[�\'�}s��i��;��&���	��ī�j�2�����G��\0,Na��$�$���Eqoqn�w���0��q��{s�cֽ\";ۨ`o;R��E�e��>V<�j�_���.�}u5�Ա�]4��*��/�1ʓ���cEyt}��y;��(��JQ�J�i$�m�;��_�\'�g�f��7�]O-����i�sl�%�7��w�X�2ےJ�~�_�R�I���B�;=�J&�FS��kR~R\01:�)1m\\y`�W����\0̟�G]k4[�}\Z���;���y-�rƤ�_0)��@��|g��k⶛}�i������ݚ�	�\n>ˈ�?����1�\r|���>#���y�}��I�)�e��+�6��V��مln\rR���-9i)r���\\�ҳ�]?$~�x#������[�]i�2^i:���l�c�$(R�?)�c\'��\0࡟�u烼��/񽏄|U�ĺn���\0��vچ�_ݭ�Z;m�UJ42aN�T���\0\Z �����wM�+&��x�k�:�F���/���#�S��1�P6��TdW��4>M{�EԾ xwXּ]6�5����Z�Z\\q�$�J�mQ)����|Î���p���iKV�;�JM�$�����V����8���;Rq\\���I[yY��v��S�O�d�uI�mƍq�;]Z��Z���{���p�4���̄E3�Oо\r�ɢ��F��?�:���3${��{���I4QA2	�]ܸc���#���>ּUma�i�\ZU֙�I��@�\Z�R�m�i#iQ�5�����Fxc$���W��/Y��N�Xѯ5+�&��A�d�u�5n!�B����[�4�#R��F�����w+���`k\'N�iY�Y��/�_m�g��~_���Ԕ���ߟ����߱��	s���Si>+�Xt��X��HY��6*�fIa)��+��J<W��x_��ׅu/�f�%����4���-2�2�*�Ѹ�-���?�N�ڢ�E���mQ���.�,S���J�s��;d⾌��\0N�E��Z�\'�\"�ϯJ�s\n�\'�t�\'c�p�i��䢞����O��� ���޽�[��Ԭ<A�߉oa��[=j՗l���<͡�Ǖ?)S������\0h�b(|o���xL�7�+y\'�Jbi\\��<�5�V\r����Ŋu�	�\0�?�:�ֺ/�n�+������4�  �	&B�=j�����\Z|,�4izǆ�#�$\Zͥ��<zTrL�\'ڡ�k�����P��ʒ0�0M�e��ER���O��������T�ը�M�+m�Ӫ��}I��b�S�vC����)�Q��Z�</�M�ĻZb�����?����\'׵~Q�a�\0��j�:����_�Z�x��Ko�]W`\0\\jE\Z�<��*ygy�K���ບ���o$�|H�W�����t�x�����6���$��Q���|*�Z���S�	�D���2j���JQO�[W�\0+�\\�B��d�?�ZjZ\\ͦ��M����7�$�1��Fʼ�ڠ�V9#��������7��>&��0���|H�s��\0�i�L\Z����L�\n�I(�@�I�)0��Ϳ\r���=X�W���;8�������-�7�>��?��n���&��\'�6�t��\Z���\n�e r�K���AR�=�a������w���\03ťV^�_\'��������K�q�$����WĪ�aoe/�ma�h�j(\0�I�%}�g�\0���>�gT־1x?Z��m]^�Ś5�=��� T����Y�&p�\Zle8FUy��c�e�^8W/5�\0CM���_\r>5����o�x��\Z���\"�/��\0\ZIԹ�+�#H�b�5�D��@�F���`����3�M<6�$�#�Mpq����4��rr@�?�·Z��i�/�Ҭk��K�Tvi\'u��D�����8��Ϡ��H�����\\Y�,�\Z���t�\Zn*��6�;��{�g8x9�<4�\ZZ.��O��kJ*X���3|9�\\xw�~+���i-As9��m�䃷��r:�Nq^��|v��a��v�g��}kH�I�\"9�����#2�@H�uS�۴��\0{�!�x��=���X[G���2�^�#V�P�8����<{�s��\0\r�_�]STok�l����ηS)26�X�����(�y5�u�:*�e����n�5o��̷��J2��W�n��ﳹ�g�/�^9���Z�gŚ~��k�:�H����I!Rl�d�f�2~̠�n����ſ.>\r~��Sh~0յ��Ѷ��@�$j�͹$c���InF�a��{����B�����s&�q�^�yf��·�\"�$Gk(��u܊Yd\00O\0�׏?a_����A���6��v����=hhdr�u��p�yYAU+���\\6r�M{�����{7��ef��u�V���Gk�$��n��}�Y^���#�T�+�x�|ec����u�ִ;��\n�op���&Hٞ\'��db�a zo�/�,<?h�7�Z���p���mJ5Q�#��oBWk�ոp~!�\'쫪N���g�]F�SXk^>��.��;	<�o��@w;(�6�)�O���rj��i�Q��x>xR��H��{������5�W�jU���N6��֪�m;����qg���ѧw�YN2��[{����Y/ٯ��_���?M=ծ��(�Ў��b�Y�);���7(S��_~��U_ُ���0�g�oڬ�e���u;˸��2?�!�\\��=|�¿�/{k����ٓ����<���x��O��\"Y.�a�\0��^��<G�?_xT�����|���g���5=nq��_�X406�&�ЌqZV���QT��2��Ù[�7�>z���n���ZMk���y�����`��ln4�x�h�$2:>�gr�O1Q�V�����Q������,�!��	~�P��_+�s��qk��|��ݒA���5���\0I�����B����P�{^������>�l��܃�;�湿�� �id����\'��+���k�:�|�\0�j�>���YʆV�{G\'9>���\0��;���|�Q[t_�u����\0�e��o�7���½1V�[�#_�t?Z۸}�1�T��K��ܶ�h�P��ٗ�/�Ső[ψ�\0���$v1��v��9<t�p\'����+�x�UGQ�e���x�ȶ�������?&d�#mJ���	��0|�0V�$#ֿh�|5�$��oNp;}\n�ā؏.\r�潬\Z�UZ�Zz\'����:��&��o��M\0��-�X��C񶢡c�\'�?f(�V\n1��C�B���潷N��&��C���-BTM�m����v�{E�\\�`0p�{<��W��Q�:E��\'�/�۔E2:��ձ�W4�*W�-ej�èB�֤Z�s�~��#&�R�T�/��H��J�psiv���g؞%𷍼i�A�|(��|;W	#>�`����@�=ö+��\0eυ� ��t�X���&�r�S?�,�+q*����\n�쨉�[��_\n~�>�PYMխ�%S�s�K �0�\0ӵo���I��lg��8�UC��?����9\'K�%��\0�.��S��Ս���$|tں����G�ng��云�*k�̪y��(�6���\0�]I�����\0�Q�_�y��j43\ZpQ����\0�qԫ���);�\0^g�l�>��|��E��cX�ң��egksܱ�{��y�-��g;�*���:��g���ow����6�})��.|I��q&ј�żW~Z�rB�.Ic�@���q���\ZM����]j�O���V���3$lS�g���4���{�����Z���D�6��d*��\0+���!\\e3�3����������\0u�&8��ҥ~Wӷ�9��\0�Z_��	�>��s��u�)��O}�j\n��aO1~�l0rT����O������oX�*���k����:�H�k,��E��!y�l0\0�.���\"���!�q%���7K5��_5����� ������\rȯs�h\r�>*���k�~�\0y�h\n�������q�]��&���ӧ<W.��\0;�\Z8�Nw��Zu�\03��o�Px��F�uO����i���h֓7p`��*�� �Z����G׼D���������g��o�k���-q9F��HE;S�ֵ�C��I��\\q3��!��۹�CY�u�BS=��M\ZX�`=r@��L.%i����g����\03�<�Ixg�\\�v��Ċ����H�ι�X�)oPT���z\r��đi�.�\Zip����bd�m�J��X�+�}B�,l���F���e��Bq�/pH�#��Y)�\\xX���\'�G�����3�?�3�L�\rU�M_��X��M��<K�gx��Ӽ���n��/� R��X��;�\Z��%֥�i�n�k�����+��w���6��7Qیm���r�����s�>u;�A��o�WD2JqVQK�s\'������������4���:���1�½跄��)��o�n���������o�a��8�T����\0����.<���?3F���9��;崸g�\0Y����W.+%�U�t��g?v��y�U����h-�=.[[Xx@\n�_a�5��\0l/x�O[{�=6�՟+�7\n�����`�Z�?�v���H����`zt��Vm�<Sy>d!�D�`�#���.���\r�fR�z_$Q���U�\\Moo�MjD�\nΊ�������\'�s�E�	�w�VnBD7g�EzƱ�T�{�G�*����ͷX����|�pz�j��~!詨����`|أ`q����y�!�A���{��I�ڞ��oz/^ǔO=�q��g4	��Ds��X�\\I+��f眚�5�2�C,d�!�pw���z�}�d�q�����\0l\r�?񮇈|���G;����$?���6����\"��dr}���j+H�I]��\'�\'�ذ�,Q���I>w�;�W;�ɧ��W���O��C�����l�\0�\0?�r�\0����lc��z����)�͏�ݯ���>�UZ��W��\0E}�X�qb�F��2.=��x��\r���\"���-u6�I�<& �RA;[<7����5Yu<�����pe�����,��GD���J񛉣hأ\"�X�?�\\]&�􉮮53���2/������u��\";��0��To�t�~�jI�m��c/�Y�>���sZ?h�J$�*�)ݺG27���U�t��_�4���6h���s�5Ӷ�	����Y>*ӡ�V�=��y~h�?�t?OQ�ҏ4$�3��(�nx��^N>_¡�Τլ���e��_.h���O��zv���j����a�eP��J�����J�ٗ�J�ѵ崍a�RЏ�Ò���+R��>�8�\0H������c��ֵ�>�D�����������G3X�i����~e���o�)��5��*�\r��u���r�fDH�}H;zs�ޥ��>��.c��F�&O��~��i7���5�*��\0Q���(r�d����F�0�Gy���$����]�|f2����׊�!��8a�8�@D*��&�y�����2=?Ȭ[��B���U�g�Ss�B��침�A�[<Sl�_�V\r���G�r2���V�FI����n$�������A?�5�/X�����>���c�++r:�(�XҬc#k�^𾫧��1̬p�+;<N;c�Q�_��n&Ӯ��+avn��*���}�v����j\'�7aF�*�Q_q��kko6����o���Ǹ�^�X�y�s\\�M�G�g�5)4����鷉s5��r�Edlp�G�t�ߵ�-.��7�M��ڗR�~p]�v����\0�b�M쿯��UW�b>�[��jD��O���ڙ��Z��K�g�d�w�R�k{EU8���wt���ɬ�.����\n�[-E���~u/_C��Z�y�	��\0���\0�b��?|e�I���D�F�7���[&�$����h��@y���i��$�I�I&�Y��h��zv��fHl�?�m��*H�kC�_�Q�V_i�ׯ4yu�2\rj�ٰI�,\Zx&x���\Z��ВѕfM�II[.]\Z�s;\\����\'��M}J�R�iw�a~�os�Y�\0�؉\0��,�S�g�[�WŜp��łE?`?�P�n��\0\n�Ĳj\Z��e�Ak�I����>E�ѫ��\\��,�(S[���\"���*�ǟ��j�׎�u�M乘]_�WE��r\n\\�O%�h�xH��#*��G����8Rޓ�\0���|?r�X�P�����K������u�Ld�aj\rď*�$yw4�$��̲�S�k�~!��h���/��q��7��&��%��d$y��ZDҟ#�K��EF8Pˆ*HWU���1h��s]�6H,n_ʒ����i�}��C˼����)�n\n\\�L\"���v�\0�W��*�E�_��\Z{CV�����[<v����h�A�����\0\"8�]ȪUJ��H�\0���t�����^<�H5]*�D���E�l!�,���m��t��E�l�K��th�0,o�~��s�\'��~.xGƺg��/��Z����`�O��4ŕ�e�]����ȝe�VH���o��g�~�_��6;��iQ��^�u��Z�Y%�vv��u-��ۋ{�6�t���Fɔ����׊4�joZͩh7Z����%��5׹�Vʛ]��-wpJ8*�ǖ#�s.?��,lo|]���{���hzm���^Ci\r�&�kw��aah�&B�4:*�ZV�\Z�l/hΧI�\0�y|n�`��������i/�Z�ww�v�l�*<�k�e�U�9#w� (��@V�o����|F\Z�,WK�/4�kϲ�\'�nbY������˓l����dg���K���naM\'��vˢ��o�ؚd��an��m[ˤwW*&+�홁r0��q��⟍����(ԭ���DZ���i��ac�̐�v�D�O+n ���@^Τ�S��>}\nw���H�����y�s�ZK}z=f-����0���{�Uy�a�nR����=w9����+g���<{����i����G$�M�fFX���8TH�ݙ�Q� Tt�M��y+g�̣?5Ɵ�s�������+k�����q�\Z��Q�T��Kj�>l@W+��;I����������M:�k{�崚݊M�cx�pC+`��4W7�OO�=BF����Y3�M3J�\0s��F8����՚潇���'),
(3,'Morbius','����\0JFIF\0\0`\0`\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0Ducky\0\0\0\0\0<\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�#4��r�2y�)���\0����9<��P��ܰ�~Eڣ�k�c߄\Z�ů�:���n�ǉ�K}#O�D�\\F{�R(�7��\\�a�\ry���u�����W���ρ~=��4�M>�R��\Z��7����q�b.��;p��0�PT�yq�#�𞖰���>�Ǯ}k�>\Z��>&x?�z֓m����Q�^G�)\'XF�˶Y�h��⑳�`�?�d�crɹ�aП����Ҿ����,k\r|�h�h��6���Ő�i\"[[�P�����I2�m���lޏ�T�: ��<�D�D��m	��$�s������N��\0d�r��C|@������Ig$ij7����3���2	l͝�U���߆��� b�m,�zcz�@��O�����ċk�\0����Z7ޗO���>�*��5;8K����2�k�>j�����F��\\�����\0V��n�+�\r���m<���	olm�G7s�o�>P\"�[y\0�a2UAݼ�	�o$�ˎH�;\n�s��\0\\���t�|A⛿�7�~���0�B�[;�{���%��%$F��O�q\'̑#�����d�m�yP�i���v�g���ƶ�3�����.=R;#�-~��Wrc$<o�!�8� �y�t�5g�h�|�v���c��O�]��ψ\Z�ō*��R���\Ze��Vh��;�}����<mQ��\Z�I�^ͧ�>[��L�|�3I���(S���\0��ǵU��N� >[I�/��89Nr0O{��R��Qۍ�\Z�l.���ʽ:u�#��n��E�k\nd\\�w?�#�<~u�yU���G�蟳�α�m{V�;�xr\r�d� ��G���s�k��ñ�k�^x��@�˖8ǻ���?/�\rZ��~�6��v�yc�KT���P��2	c�3��V�`�qʵ~r�sX��\\\"K���$B���w<n�s�G����R��o�S����W�A=e�ߢ����1x�o��oģ.�m��S_��݅��_�ۋX���eA�b�n��� c��V\n�]��}�L�,�0ģ����\'��{��ī��`Ҽ�i�2h:N�y�6�(�Rx.����d.o�Ȭ-!\0�ș�k\0��kZ��]I��3͆�ȐL%`�9\'�F�x\0��,/%�O�����*j=^�mo�2h߃��<3���/�3}�]��.;+�%���\\�j�2��Q��mso��C�v�x\r���x��ֶB���u��@@g��U@x^I���{��oM�\rx��xc�>���V(\Z9Z�MJ�R̛�̟h�n0@Q��r���x��z�k�ﶸ�u�;�\ZX�F�6F7��pz��De���>�/�N�%\nmuo�]�g�~��>��4x���4�E}a���is�݋�r�Y`p�\0R��\\>xX��Q���?����y\"�P��<�D�#�xf�⽃�o�\'�o�[�����:6��!l�%��;��M�Ye��..n&b�B��(TTE����\'�\Z8e���a#l1D���vP��@]9J�.�}�}WO_#X�ʵZN���K�]�_����xGR+���)�,�S�2�u<W+_@|e�[�>	�}6).n|��&�)PX���VrY��ȅ]N�lM>Ih{�9�p���Z>����NT��JiQB���?A]`J��T_P\0�������H���Z������xG�,�߬½�����^��C�گ[����O��p�%�a���]W��o���㵷�!��3�z��?i?�r�9�c�8��� q�x-�~b;��翈�5��n\Z�ͮ��������8���Wq]x^}���I属{z��\0�^u���s5��)�o�gG���I�h�cd����v$���<	��~���!V���8�M�Nw��c�z�z~B��y-���Ycdo��0��\0{���\'6��4�i�;���IA;>@��.�@\'<N1�Y|^�U&~�h�\0�~:��h�^`�+ǳ�<)8�x#�j}sἑܴ{C,!L�ea��\0��q�F+��������x�m�P���_1�Y�y��tʕ�	�y>�i�\09�v�wk%��r4Uds���\nI>��ye�7�!ǡ�[�\0��v�pд{w*��y>�\0��1�_j�q��j�\04qB��l1���������灿य़5����K�\"�{�d�rQ��W9�qwzg�/�i����vheP8l�^2���t��kϫ��-��x�=Ϣf֤�-���6�U\0��6��gh�rH��N������n|���#Ec�0�۞��#�����������E�Z��?!]����@�$qӵ|���\0�JǇuM>�+{��gc	X��S��\nxT��Ȫ8gQ���r���S���4�\0	�f��	�k�Ȍ@���E����� ��\n��G�dկu-R�I���������7�T���f��i�5��o�q%���Kۑm��ѩ+�6A ��N;W�~.�#�chחW�kpXy��fݵI�T�\0�s_L�GN4��ާ�,��c�8�I�1n	�egn����x����9n?���{[�]�ı}���\09͌�\0�����G��[�����ӿ��A� ([�Q�w��@���M�>�y�ִ�KQ��V���T���jUX�8*\0�N��s��[��u]R�\\���!����0�P��H�1�RCߞ\ZمZ���\\���Yj���V�w�{�嶣��c��E�����q���p3���20�9^>/�e�&��深Rf���(>�۟NjO����!3nxc��9��5�����Z�k�v?z(��@X���z�YԂ�E����,)��I�-�{7��H����5ߊ��0�Wr�4\0Gn�B��~�GH���5\rc\\����	vs�I9\"@s�)\'�\0�{H���\"�Է��o�ul��8�8�%̓<2]y�3��۹�{��g�T��vc�º�e���=5}l�\Z�;���x�P�6��%!�x/�����I��_\r[�f�;�bC4��R�?��=�����gK�~���[��k���V��S=7��Üt�Z�5��rx{m���wZ��&�{q�\0\0�J��Y��}��2�j�4��n޾~���+GO�яoց����q��|,���Mn�û\'�W��\0��R�L+4r`����@p;�������#��������_��O����D�w�?���c��ҏ�c�|S�;�z4��H�,\"9\nǹ��\r����u�Ҽw��-�?q{s��nvm2H��s��<u����&����V�U�N̮�ű���~��Q��-��|0��in�b��rGbGnH� ��qRR��S�n����_����k\Z~����g;/�4����I%��\\���k����|�����h7�^��j����.v���.G���G�;�N$��>�H�q��\Z~��-�)�v�G��a����o��,��J��N1�\n���Ə�f�t|A�-�7WsO�\"��X���9�8�$p��l6>����|�+/�J�t����\0�_�G�?�:-Ǌ4=OS�׃����5�.��L�fL#4	3(R���n?*���l�l>#���.K}RO=����#�c$�#=k��\r������M����o$�-uڪ�Y\n�;G�F\0n� G�j�ojwV�o�-�xuY#��I�M�J�H ��>V\'�1�	�sb1���Վ�.\Zt���\\ߡ�g�٫�Z?��a�4=Jf1�x]7��u�A��k�k�5��a�\'�t���\0�ܜ�w9=�k���x��F��%��mݢb��.��b]W�`�Ò}��Ne�Ѵ�Y�]�\0@�}3��?��yX�ҚI�����W�\n�MC�בڼ���og��1\\�����qߊ���[�x����RԴ���le�5�劌����u�)�\0��/��͵�m�b<��PN22	��|��\n�Ko�i��5�ݤh��Y<�F���r6����R�#�v9sG��δ��o�W>A�����n�s\r���uy��mɌ�㈖��rbw�.G|դ��5��?�u�3�~+�ϗ��.l�ds2D������e\0��%O�W;�N]�x�\0��u&�I��v��\"���@���	��7ᆻk=��sq�o�0q�����8\\m~V�vc0νm.�����9��*�c>h�q����6��v>����\\|7���;�wڥ�j8�n�o�O\rxkKҮ,��\0{�����\n�x�1G0���c_�d���� �/�8l�a�U�<�ߺ�ڣq�y!s�s�)ԡm>o�XX��$ff�me\0�&�E��G����k[T��cytkr;	\\*ɴ@� c����0��s�[.ߙɎ��:��G7���o�Z%��˾O��Ya,ڤ�쌰fH�:.r8=��8��š\'��k_���\r�x�v���sdn:V��_�\0nC�Z��ѩYefgV\\�FS��2G���=�д��a�Vw�p$<m���9��,}�?{OD~}�c>��J7��y���w��;�7�\"��ۑU�ɼ����y<z�+M~�__�j�I6�ops�;f^O�Fz��={v>�-t�x��6i捿u\0=�����_�!��I\Z�C4@�x�׃��K��Q����8żK�	5}_�_��ǫ�hv��\0d�6�M��i�r���v�����=k�<k�����-�w�Jw?>��>�ʪx��Dڧ�Y��Z|-�Gݍ�~�֪��M$�[�=w*�J��y���6������r�P���Wr��?>���<���g����Z?�=�k���+z\Z�K�s��On��RB���k������I��|ͪ�����|M>h�����/�>\'G���.�%��A����u�^x���*-�aU�Օ�-��l��>���>?f��{��	m��F��0#��=:d~Yx����d��r>������>���h�����J\'�x���v�q��I�T;zu�׶xϯn�:_ÍA�Y��F�X®��2s�@ƶ,<E-��Q���u�y�����!�<�U�,X޲�e�H烞;t���ƥ�9�EKTq��h-R��r\"��=��rA?�X���WG�Y$H��|���`�$�ܧo:�]��������\r�c.��`������\'�z�h��&6�e`�}��#�v9=*��\Z���l�����n�̌x�\0�����#�5�_�F��mF�T���w&8�q������&�&�+e�\0w�Q����{���0�_�o/�l��Ui�R	���}j9�#EMEX��\0��x��)�HpU���|�%��bs���y9��s�\Z�~�rf��Mj�۸�#�\0@<��k�?�(%���QĿ�[�uH��c$�G�z-|{�B���\'���#|^jw\n�tPĿ��&�r��ִ{��<.(����������O+�4�\rQh��Ι�y�<�,Öe g$����\"��>[^C�2�X��@�hn�#�� �휜�s��!���\0��!��͚�g���~�!��_�}ayow�Xi��E���\0A��`F#h���>lq�?.+�0���N����f��e3�]N��-�m���s�\Z�+źD��e���F�Xg!���]��m�i�䨮M��<���H�\"`7Q��@=�\Z���O����u�Z��<k��F��s�zc����p�h�\\jV��锼���7f��#�����xi�����d�a��&���D�\'���tc���宩oc�ǻj�$�3�UnI\'X�~8�N���&�$6��o�[y��;�I��X�=9���j�/��v��3w�JAd�#4�6��cb�N`v�G98�(�t�x=�Y��qvM6s$�rKz�����<i�(��~G�fx�^+*���vV�}[}��H�|M���������霉fPO���}z��m[Ǻ����5�~�`F�篽w�2�+m��-#[�:��Ĝ��Չ�S^G{�����Xwۘ��ּ�N\"Z��m�IAhֽ[�~��A�bwy�M�x�]���\0\Z�_\\%���\0����2����<���0^�KUf��X1��=����O�5b\rv�[gko�e1���>y������\\1���\rϬ�J������U�(�(�zі��H��r�΁8@>f����cd�խ.���z���������_�d���w*�u���_k|!��z��b&��U|£���?N��k��\Z��ce�\0Y�8�?�޾���ߒ8�c3.`���В1������l��K�3����0�����v�%��9��<w�Ѽ9|��q��&�(T\\o-�8\0m<�:����߈�p��̅�!�+\r�`t=��9�z��Xd�mѳ&ͭ��x�����^<��=HE�s;i��p�\\(�¸b6�,prp[���|C��WK��������V���8^��_�����JYˉeܬ$N\n�d?\0���q�?n主����7,���|���3׭*K�VaQ�����b=B塚v���=S�r>�澈���=�6�yq�0������v�?N�����[Z�wj�s1P\"8�c�;��0k诃Z,�z��|�+���g�������v�CUvc������T��!�O:v���ڧ%�\0\'�x�����|Q��㦳�~�of���Nv�H�X�O����5�5�^ݟh�s�=�1����܀<r���g�\r~d���\Zߍu�h���,v���I�;��f��ak�|+�n���/��\0��~{���V\":~�*��H�]on�3��>Oy�n\'U�xU��ຎ�r�(=\0oS]o��a�M��\Z�?i�$��#0�RNz`c�i��.�5�\"O��0grz\0}���|G�ɣ�C��2I��岪6>�#:u`ppG�zU��&��I�|�U�:Ur�]�dӌ��/���B����u��Vd�& �RI�79 �n��^}�x�]\'�l58�-�*�1]��\0+z�\0G�u��x������[�؋Y�7�n@\r4�ܖ�H�s�qֱ>%iv����4g����n@$q�r?x�kz�U��)�QM�q/	��|;k��U���.u=F��R��X-�B��<�#w��\0�>�s�*��o*;ky8�R�V=[�n�����KǺ�^[H��\n9:��1������ǉ<qg�����G�Yuӎ����{����p�5yh�y�\0�+ӻ���_�5�~\Z���$������s���1^5�[[���H�e�����O�RMv�\0|M�<[-տ�uj��J��#<���+�k�쭵AU?�9�?z�n�5��Ab�]w��dj^/�Q`�Lq��r�)�W�}��e�����#��|��[\Z«��d3y��F4����=*�xZ�mR8�摡��rq��Q\Zu ��V�3ZM�wױ&?�(���&�6�Y�.?�)T��M7m(����\"�N��{mp���C����h�ʂ�\r��=��V�2����^����t6�,�wl~�\'i<����Ǌ�x��/�Gݟ\r�O��Ƭ�d�_��A�`�r[���:�W�����:��*�^9 �`������Y��K�.%N�8��#pG�|6�V�*�����Wn�%H�0z_7���j�K��-�i.|��0@ݴ+�������=�s����|&��\'�{_�(���h*�v���=[Z��7�vzM���q�Tf���8�OL�Fzzp��}Ꮙ>�<?�G���8�!��%ps�>b�0999Е�{��l���O�I�����H�h���̧�����8�s_�?���}\"�ukk��HHɗ�\0��{\0F3_��\0��a����ԵM?U�#��T�j�v�X����\'�O�{���ÍR?��]jI���%L��Vm�8�1�;�cꪧ�K~�q��������\n��T��F��chZc�$���s��ِ�\'\'�Q�枩�J��\0̳�&s�K��O0������һ��)�ň���:u��^ڥ�۬�e��$\\��S�9�����hn�˙y�b9S��\0rG�����\"���?��>��匡,�~z���}��hz���&M�i�+�m!E+*�l�o���;	Q�̏S?�|S���y��.d��e����Y��u�<�xᶻ���peT,	��˖Qߎ��>\\rk[���[#n�l��3�0F��H��Q��q\\��>nf}2��F�,����\0]�j��4�nM>%�cs�7�D��v�[s�#��|_�Ǫ��Y��}��.r<Π���G=�lW�x3�6�N����m��[ns������Ꮌg�>��o��xme�U�V��$���O�\0Y��Ћ�����5��H��j��u��_�6~ҦH�H�Sb�#��>���Oӊ�O�>/�T4��v�ݶ8�z���k��o�ŷ�څѳ����YO|������[}/ö3������2�=?�g���ɲ=��Q�b#��)��������5�4s�l6�#m��\0֫�Տ�$7V����(���b�	��$|�T�ʩ����\ZC��ۯ��>��Ӽ6?C��5���}�n��\0�=ź7�V�$Y˂ �\0��?N�-4;3,1���\"������\0���:�u��w�͵6�I�^�g��>ĳ��v����ɟ�U}�>��\Z8�S�Z�%���v�7�\'v�+u�s�sF�i؛��K��3�s@\n����S��^:f�����C���J�z����y�����n�D�t}���QǠ�ѷa��{��9��9�]7�k;?̚u��I�)�N�?.H�$�\'��?�k�|K���WR����X�.1���`�9�q^c���o�9\Z�÷���>G�����N2�s.5�-�}I���T�/T��\Z4�*�9���9�c\r��j�e��ok�/P����h�V�y����g�RCs�a�8�1�s_2�^1���s!o��|c��=\0\0u�ӀE�ɮ7y��+�{o�<��:`b�c������{\'�>(ͩx�O��6��F�q��[��Q�s�͹���~Ӵ/��M����[���UD\"\'+\nG���l�)<�\0c�+�+���!�%P�6\0컗 S�d��}+Œ�7ᦥsjd}C\\�E���+�C���ۆ�#.y�O+4�IQ�t����_��yw��|J����[{�H�U�v��p�>������U�n�afhY`s\"�.��oM�2�rT�<�+���?�xo�_�:����kx�0��\"��m\"M�}�:� �S]炾�j��Ԭ�_q}��y.y:zL���e�8fb8m�T��)ԓ��z�o3�a��$�c�\'}.���\0��<#w�ً{x&7�k�5;���A�RO������m�wZ�eO��0}pJ�SR����>YO�x��Km�If,T]7��h�# nފH\0�� `\n�S�ڱ��i	X��\0`r{~?ʳ�QT9{�GVC��\0i�^H��D����i��$�h7����nK������\0�r��\0z˿�Rkze����\Zƫ�A�з�|w<�W/�����a��x¡e�� ~=�Ǩ�m\'�����G����`�|��\0�\\��K���Vg��eJ516RѦ�i����x��6����l�\0cԊ��!y�g��6P�d\'k1�\'��7��\0j�{\n��K�\\0��2_\'���t�L��!��o��U\'\r�g�g\Zn.������r�MQiӋ�k��~g˞1�8�[Xqej9+��ךΚ�f����g�{y�yɯ\\�\0�}����[�$���J���8�U����˥j�4�$�U�J��c�\"�\'B[��<�6�S�q{u���|�;k�#�M�)�I��C���^߉��¾��o��b���H�Af����W��J���@,f`U1��*:��҈�Ě٣c4LǮrֺ(�|VRs���NҌ7�I�Ҍ7�\0oJU%O��&�F�(��氂h��#�7#��Z8j:�٣}�b�ppN;g�=N+*9$:�ks�q+�y��B���q��亙���������^9P�S��|g�~�.��1̖>u��#��~\0�O��B�a�M�sY��_�8,`y$gߎ�q��[��Ętl�t�\"J����ל��s�:�������Y�O�k-���\0eOjWS,q,�k��z��ᱞ�\'�t=�?\Z�.<	�����n[ɮ�����FUFG�O��О�֟�io��Nf�����F%N����0��i��<U���L�ek\rdL�fA�S�����a]���JO�_��q�)��R�$���������ph��+Ro�l��\0�/R��61��k.����h�\rљW��-ԭ��U?{e����}�1��󿎾.�x��φ�?\"4p�q����\0����}Z���\Zj\Z���..n�um�H�bAp���1��ǥtT��T�{%�g��xES��Wz�M��h�J_3���ZHt:M�ž�P�D1���̞Q��+���Y��4�\n=s��c���O��j�N%� �l��M�*8�s �\0���>�K���|eknX��y��]���bs��W�g�=��2����b���W��E�:�4m?����U�uK����d&-�2ޣm�뎷�����\ZuƵt�j��Z(ذ�q�`�>�⟉��ƽ��\Z��Z��hr<��^��h�_���\'��k����GA�0\0�=�΅��h������SxxF�U*.o4�E}\"�W�gU�moW�p:�?���`��`g۞k��#��$��g7��3�s+y�펃�z���w��&�,[ؤ|3F�Y����:w��7���ѷ���q��O�(� {�z|ѩ+-��������\'iif��u�}�_�d��!�����$m�=���k��_�t���l�o.��V�7 \0��G�+���J:M�RH�|A�\Z�\0���x޹�]k��6�[�o\r�l�5X�>��c��Ҵv=��N�k��][�������X�x;�ڄ�˚Y��0���8�8 חͮ�l{O��Z�3�3=�6��:� �?{h�O�_ΰ.�\\HdF��A�\\U+=�}^[�� �Y����7?��Z1��яoֺ�?��Z1��яoր�h�V�=�Z?\n\0�kKF�kf�[ks�Ƴr?ɧF�8��&�L���^�\'�V�:��O�x���=�>\r���|s3I#Ƨj����c�8����{Tki�ck����{���p����=�6�	,I����霜m<�)J��0�Ei~���\n�U�\\^Kp�\0?(�B�I�_z��[�mg�\Z��L�I�䓓�澌��u�{�\r+C������<������ݺW���Ӿ؋�������\\�\n�������sJx��\'��6�\0��YBWo��4�}~�8ՙ���������\0?ֻ?�~��Y�X����X��<�����,������y�c�cF��?ǹ��\0|5e}#.�yk��g\0��)��.�*���\'��U������\0�.���wHQ�eA���%@��+�^9{�\nj���\r��:��69�s��|�t���k��\r��|4Ҭo-��[�7���(ܑ�W�F1u���gS�G/��Nm$�+k���㎝6��x��\Zkv��0��tc�㜁�=z�5��o-�4j	���I��62O�]��<\rw��\0�+z��y�H���@��x>كU�t��T�[�1�`�}��<���Oԥ-��	�1�B�-梓��\0��e���\0��=�ݸ�@�TUox���+���x�$��p�ޤ�V��|A���H�������yǉ|U����fKx�y��Y�	�\0zU�(G�\'���爨�%uR�����k[xu�&�ceRU����+�w��:&�|�.��dl���P���M���~]��~XW�x�5�����ʲ	�pMpԩm���g�I�}�B�F��z���,䝖4M��j�2I�>����Ǖ�c\0j��B��a��2��c�H=\\����Q�nǱ*��oױ6}�\0J3��Q�-��w�xg���>�\0�[m0[C�c�<�EVr��U��+[�\'��}iUA<���QK9��C4��Tf��FO���(�Q̍9]�HeV}�ۍ:�V�*;}%�oV8s��8�]&��Վ䤓Ƭ����5�8�OcEhS[�S�-dݕ�+�еI��8���\01\0u�Y\'�\0��Z�Ö��p�7Pe��v���ַ<�Y��rZ����5�K�X�GN��8�rEtJ�-Ϝ�fqs��_c#����������q,jVa�NO�lu#�yv�}�����E���cj��\'�潻��\0��R뗍$�G���?,gϟk0E�篦Eq��gu��<��%\rk��ז�|�>��;d��5�V�YOU��7�s-,yZmKV��_˶���t�G-�����{���-t�6�+��i�5��Tfxd���	�9�[)�L���=�&�����h�JȨd\\���Lqc����ta�4�\0��O^��pE$�[�����?�f@@�8�����)o��c��*�ƕcnf�$֞_��\Z�\0�����7��o�9g,\0����I(���`v�G���oK�O�l�Ð�F�\"0��7�8��y�\0¿�w7Ԥ�..\"���Ln��o@��y�p;Ӿ#x�M��!k8�����ZeϘTr@�#�繮�;T��Syv<,n\r��C���oپ������Bֵ6k�KPh[c����G��v�2i�k%���}���n̑��t����W>.��&�\nn�G_sT��O�M��K606��}ϧ���B�G�\'n����ar���8�D��W:��r6����	���+��9#��W\'��O2H��V]�Jpp�	�\0�U���P��.|�fF��ݨy���\0��톏������E�|�i��z{s�כ8��_3xT�-A�������I[N��hܰ�qU`���M�3u��D�6>�>��xc�����?�r\r�����s���c*K�͞�*�s�t��ɋag�<�U���uX��4���#6���GZj�\Zpy�I�ӄ��Ħ�#�)I��o���i2޴f�37���\0�&�Z�ݳ=���.���x���RQ�m�pH����c��h�q�jif�e�\0�Zs��0�eOD�/з������E����U��۟Z�},7R4ѯ�$�I�r�=�B֭.���э����ok��e�@9U����G:�lk\Zm�˯��{G2A��-���z�����Z�a��В�>����\rA�}�[y&	���?�5f�MY\'����O�J�2���z�߂Kķ���3��R��NO����/�&�.blG՟�$�۬�1��F���;י�{U��S{��i�X�a�G����-�Io�� }�W�#�1��<�T�^WG���ߺ��oϻ��;�\0�VP��]�q<�K�$,�s��~�O��b����\\�K��m��ݖ���!K7�0�1\' c�\\V?ĭM�q6�#�RP��1��v��k�E�����|�	E#��ֵ1���096TaR1w����]=N��G�]C�>:�Z���	$\n�2�U�L�j\0\\�۳�2��]��)o�}���G�掠�<v�C��;��A�GF�fI$\\*���{~\0g���\Zu*շV�\0v�TiP��U��V�˹=ߏ/��kK9>�k�-vd�~��\0�s�}k���t�[�����&G������9�ՏO5�L��DQ���n��:��\n���ƹ&�~v�^�ԓ]x��������>�F�~�6�&�����t��\rד�b��M:��H�5�W�FJz{}j�iP�R�E��1�`|������&o�q�k�d��e��=\Z���h�?C��<y4ᣵ�;x��\"�}_W��r�3H�\0<\Z��|<װ��Ƀ���1��g�fc�h�Յhʪ՘P�J�����Q���\\�Tz��kGo-�\0�Q�8���������k0��*�����H��-�-�\0��ZŲ3	VK���X�\0���gȕ�����p�U۶�Ջ,4�L�0ڥ�=͋$.����%��gk��a$�H˽@ڠ������7L�\r��w_ޞ>��,V�	T�����QL]Ã�=��&�B��ۭ4\Z�i��Wp��v�ք�vu��U%����,q\r�ǀ;Tf6)�oʼdV���\r\"���H�tKҪMٙԓQ�w\rWEB���F���9+�@V���v��MY.��چA�9���u��\Z��ӳ\\�|�W�t�����O��ºD��u����:��K�7n�\0�U�)���W\r����q9_4S��gf�\"�J�b�߼��t�շ�]��8�.�.�kv��{q�\rt�Cm>�;Y]�W�����=�oz�~��v���n��ֺ��pҲ��hA$.ħ n;�Uk�дo߿�m��K�Y���in�9CǺ�If��[w?��HQ���Sr��M�#֞Ou<M(\'ozV�����&��_V�Wgo�>�moh�j�P\"�M����a���K�e��W�����^���?�����R����Fe��dm��B�FFߙ�L�$�W����x&{��Cuھ��\0&u��x�y��h��#v�$���I8rJ������r	ccR���ڼ�e����K���-��qu��.�^�s�\0A����Ai�	o�j��R3�(���}�K����{\r\r.�mBK;������%Np]w�|pa�F�t�#���-|���L����(_i!��m�Z!�r�����\0/�+`�)S�sJ/�o�[ѥ���J��\rv~�H�\\00;vr1���´��\0Z�ܿ���[�.�� �z�3�ҩ�i�2����[H[Q�����K�&��v�d��9���߄�x����ͦ�N�T��D+\'ڂnc���s/^��f6�K�/��ӯM�\0tf|;R�ێ&�]����y��w|�O�4{�3_��\\�H���l�H�����[�=?3��+�KX�m�|�H�����\0J�����Vע��aY���s�f&��^�m�2d��k?�T��E��Ը�\0���1�U0��\n��G��oc�\'�<��h��j\rj���\0˯c��p��J4���$��������YZ�����­$��O,0�#���P��m�%Ăf?r>��\\�%�����U\n�d�մ��O�%O�\'�������W�,_l�ӑv*�k�0�k��o%��FxQ�X����y\\�%ӧ��ޙ�r:��4^*��}T���(�����O�����_U�U��;Qx�\nS��e�����v�NF+мA������(��Ԏ��fh�@֥@\0;UCd�۝���(��X�-ʰ�V�3�ʍ��ª���ש�\'�kB������=/}6�GQ/or�|q������֙Ҵ|�S�w�5h�*ͻ$�\Z=��뎵Vfzl���{p�}�SF�&v�l���>�i�3�cY�c\r�d�\n]_M�B�n,�^h�������D�����?���ԑ�f�!���U������Aq\'���h�c��z�z�\0�la�]֟k���\0	�7En���:3v�s�>��~�W\Z�N�I5���K�\'���\'h��GW|ppsPN�_#iYR�iEE\'�{��\0����\Z�ٚ;;Y�����m\'��Z�t���43C{��ț2{`���׵�?����>I4l�5W�20`������� _��[k�Rt�h�b��v��\0z��F�?����[�bq�y�.Z}ޒoӷ���W�\r/�G�.&��$mKNԭ4��Ƽ�W�4ȶ�0E;�`��6w.ߛ�d�3�ROi�n��>�)Sk��(6�r���5��C�����\0���ho�M�Q �4���E�������>��Ԇ*ѯKc��\0����D�����:�n�5���k�+��QC�<�O�ld�K*�~��Jx;������eͯU��\0_1FX�fhN�T��]Y�7]ּ�zv<_����K�7�-�����}JG7w�6!�-a�����爠�)fr9�c\'�[�Ρ�_�\r��C��?�.ד�:C\\]8\Zv����\\�m��H0�#ڪ�LH\"/�߰�4?��v�W�|m�K{��@�L̲����^][E���ͼJ_��2	IfQ���~4����(��\0Zx~/���^����3�����l�¨ݮ�`�;�v�]�}��v쿯��N�|S��ۥ����m�wIt��8�S�*_�>\r���^h�ֹ��e\0���)�I��>Rh���s8,�\'�j_\r�	���׼�C�[�HF�c,��$c%䉗`P70(�p���*�\0�W?i��j�ڷZ�6�#��{U��T����΂�Y፝U���=[j�m�K0���J�Zw��\0�W�^ �4-q�{6���Pi#�� r�UA,Ro)�\0I� _���R��#��Ԋ�s�:�v��f�m����;���-�C���k=\n5#5�wR��X���\"�ȁ�ԁ�#�dt�w��\0d�㻭kH��Ʊ�xi�D��̗��dy:$Md,��]�U��\"1��?�V?��S�WX�m��4�\nk�槣Y]�d��{KyH�)1!�L��T?�?�SP���-�\Z�>\"Xj:LS,J��s�>�6Y���Qs�G�D��i�z��w�o/VqʦiJԨ.k�8߬�w��D�n���~�i>*񍽦�6�k�J�h�a$\r�`G#��q�2G�i�\0�&�⟈���������!����x�,�	Q\\�cڻYwH�\'kb<ᯋ.��^�o\'�$r_���r�E�~��?���V��|i����_<E�]2�D�k�.�az}�������e��0vg��+7�<��^R��3��9��u��k5{��}mf��d|-���>>�Ϧ�wT{��+԰\r�2,G���zg-���}�ޱ��h��]KL�T���H��u��DQ`�+��냙���x{������q7���Ϛ7G�:�\"�ᐩܤpT��ף�I�2X�~����VZ\\Z,:�k��0���$��\0s���?��U��{릟���:y���\n7����)&������r��~x{���?��\\�������p˘e����YdaB{��7��-�?�|��t�\0����z�����N�xf{;�cH<������y)��㧣�ٿ|)���G�iv\ro�_�i�6��Y��a��b�� �\0t�\Z�J���_�\r���Z�WZ��X�xy�1��-�Q��\0;�jm8��x��7Q&����qʦ:8	Ս?ީ4��qU,��\Z���\0e_�0�o�E�j��Z?�t{w��.-�\\`,Qy�F�K)i$!\"�;��V7���>�`�o^j�[�������U`�e�+h�*�`w�x5����~�>2[����:��gԴ��w6�eQ�FYF9# ��ߵ�������]��ׅu��/ᰚ�i�Pye�c��͂\r�Ŷ�*+��\Z(�r�*������\Z�(�>K.V���O�}�5���\nO�R��\0���sTv1P������˻j_l�c�I{��B��\r�g��X����Z�c�\'�&��B��\0�:���T���-����ό��>�\r�0��X�]ѕ#Xw�$U�\0j� �l���P�4���H�vKs��a��߭q�t�]\\��Q5����iwEV�a�a�##+ ޾��4�9G��b�ac�H�9������:�<�pǎv��?Z��4qH���,���Nk���-|F����YS�(\\�>��?Z�A�rê����v�NUL�	�X?*RKEK�)Yί�������Q��M\Z�f�E�ؔ�<����hcBO��7�{T_Z?+[�.�R�����I~��k%��6i7&%�vI%�Qu\r��+��}�_�?�$7;�ּEo=����V��\'�K�(��c�\\�P�K+��������>bX�x��v���*OPv�����#�	�Ud��?wͯ�es٭[�xd�<e�o������.����\\���O���A��K�O��I+m��\0e��Y�@|��v��+*(+�D���ß<$�7[��>���\"=�˧���p�\'�\n��|ym����k���ڦ�o��uj�4/:M��\\r$!*� 0RC��j���3|`�V�������q�Ȯ/��d��Kxc��_��Kwi�Z\"���Nq�\ZqZ[;���[\rS-���J|�C��+[��{܆�/�_������>mţ��ֶr^O\"�b�m�٤������\0\r>.|=�)mu\'�ty5�_�[˃q�[	\"- ��G*$�\Z�$2�we�_�+ᬾ&�OO�������v��Kx̱\rV��G���/�d{�nf�\0T�^)\0��x,��_��n��7�m.���x!���K6�	����\\\\�w�-��Y\0.ut#	[���&ui|���v���:<������fյmJ��[ȯ%�{�}�,Ѱ�5c�Ϝ\0x�u�����k�.�t�xoPԧ��DE����`�7�*�,����ވɶ�	~M47m�N��e$����]�s�|e?gޮ\Z)`��Ӗ�@+�_	xWU�\'s��\\��*��n��Z�b���4�>h�[�\0��)�\n\"��(6�.�\"�#��ӽ�_#���4�⾚�Z�7Z<w�L.B����+2�P6��w�#8�ٵo�7>6��Z��.�X��Ku�Y-�Ғ(�I<c��<ʘe�Y&Q�������n��%���v����(�_�E62M�Ik\"1�%ja�c�$��ܦ=ܗ��x;\n�Y���=C[���`��L�d�o5� �A�U݂�a*FXV?W����U<S�i�MI�j�ӧ��j�-��/�v֭��7O�PG�I��z[FBĬr~�h��:�������~$�}/R�ԭc�t\r	����cnE$�Q�퓊뭾|:��3<�a���ŵ�o�����K+2��\0�77@�\0�����+V��%��n&����k\rݘ2M<1�Z�y��bFh��읣U.�{�����1\\�i�s{KQ�E]�ߪ�G9��D🊼	��:���6i\r�Ķ�&4�� �	3��r�P��,̥�a�x_����3����\Zͦ�w.�4�m~�8�к@�\n�Jʩ��\0�.|���l�{�o=���2�����P�٦��H������p�&��]͹��ګ���T�/6�M\Z��aNʥ(������:���GӼIqk�I�����nd�H����kf<8\\�ۗ�����5|6�I�f��C��#Ԯ\"��l������k0�!��lV�\\��Y	�FqC���(\0\nu0�SR�v�4s(�{4۽��Ww��	�;Q�AU&���$���wq��G���zq@�煵MJՍ���K4��(��~���m�u/$s]\\c��j�u�#��+[������\\\\^��\Z���60�D�@�=Ek|C��[;ui,��>w�Y�e�FtDd]��v��ⱍ6���־1S��;��~F���ڥ�\0���nc^@Z��xGv+�	�?J�o���\r���j�q����1�rs����m�]C8h��:&����1�B������LqX����\0E4-o�\r˴4���\0�vf�s�<�pON�q�V���U�ʓr��W����G�k�ž�a\r���Zۮ�\nd�ޭݏ�==��t��S4�6��*}���@��2��ш��m�H	�����\0:��\0�fKeO�����r�\'�q7��D�<�0;�RR���G�駲�݋\nM�I�(cU�[�	��ǀ=������4�&��+R�\\&�����a����]���\'&���������A�S8*��/a����q>�#ԣg��q��� �� �k�T#J�����<�8��q>��w�~���㖒�k�ƚi�l�H�����^����]T��e��/Ổ�\"7�29%q��{R˯h{�����^I�S�����\0�\r��j{�o��\\n�B��?6V ^>J�k�m_���z�⼩.u���M��J�XU�u�Mv�ߺ=#�_<+ቼ)�Z�G�i��-���k3�FҮ.�$��#q��>?�^�\0�V�Hu+������\Z����%���$�˴�zך����ԧ���Il�p-�~��wO����pN_u�xvX�0�w�\'Y$��Z �dvA*q���&����^���gٯ�EkF\ZZ��ӗ��zr-�{��E���hV>\r���M?�w����7�m\\�+(��en-��ړ�x3��\0�Z/���P�]C^���!$wn�̏)$�3�#2�<�楖���n<=4�\0�VK�1\0���x\'�\'\"�ޫ�OX�{�p�	ܷL�2��`��0+���P���Q�Z�k���;���!9��&�J�^\n��ks[㯏,~$x��M?�^C@��t�ćr71�YA��A�v��ǚ��)�/��\\.��WQ�m�6]D�-�ġʕ��*\\0.U�em�����5+Y����C�-ͬZ��+�d`\"җE��2�Y�!��]\Zj�8쏞̳*ؼT�5`����_-�y��G�%ٍ���Cy&F��\r�nN22q�l������֧8~+G�c�����h\0������W�oڤ\Z�����K��qk\\h��#m�T��\Z����������a6���m���8<�a����9����l�z��x�(o��v�>)E��2KW���g�H�n�c<�̎��sW�/�,�e\"��h�YZi%��rUWh\\��q��h4��yt���'),
(4,'King regreso a casa','����\0JFIF\0\0`\0`\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0������/,o����K�K���7�9���p=��6���wlRC��|V֗y\r�7����NTc��=S�Z×��X���ao&���X��$���t�|=?��s��n�WP������������k�p�6 e���Ry�|���o�\0.�Y�[��|:$����|�Jb�a�!C\n�$mTc��88�%Hݦ�_����2��ڶl��?rp1��������G����Ǽ�W����1I0�Fs�k�|��,x�M�f���{]��Tuݤ�]afv?�A����#�>	Y]YIc����]��#�&��;�n(F\\�oZ�(򪏝����\'\r����s�\rO��k�4�v�\"�\"����\'a�L��rIW� V�C�Ɵ\Z�Im�m7þ!��]+����rE4���0�\0�X6B�R����\0c���?Ԭ|3}ce�{uk�bɡ��4;b3<�p�nP\n�I�0k�\r�:վ��[x��p���!\Z�׈̀H�{ YY|�e��c0�z��p��~��#Z8�6)T�k���=Ֆ�|ρt3��${���:6@?Ϛ��Ꮣ��4q�c1�ߞ���ks�ë��?���Z��V����颎).#*	ފ�ՉFL� .v�?�׿��:���p�K!��8��e�ĥH�T�@���C~7S���>�\'�mc�>)��9��rX���>�tDkh�q�D�����=��t߈�&��%��oi�c�4��+8�\r���s�#iO�x��~?\\xz�K�]M��v\r4��/x�(1b`79&������,͝��f�y�w��$�sr�K1c���>7�����\'���\0��}\\kc�F4=��WNgo�c�ta�i���۟j�<����{��9�t��.��ɺ9��$m2	c���A�G�P�Ο�k6�\0m��TH���[g��\\���I���!E9�\n�c\'�g�\n�L�M���s����1��3#+	Ff;�n���H5�f����,����z�\0���[���>���4��ﵛfښ{],���@����B��2��z�k��Ɣ��G��n����_,�_���ָ/�Z���RE\n�	���y���T�$*�a��fl�����~/���h?�.>٨ZI%���(��\n�<�C����_6�I�U(�~�\0�=��ˈ��ꎓ��_l�S������k�~hj�_�����\0�׋�7�y�������\0�]����\0J�2��;�)4��R�g�VD_�zt�]����r��e�UhW�����W��ţ�q���hp>%�z�ǧWM�O!��z)T��F��u?�V�����O?��Z\Z�\\ܬ�j��l���5m���1]�d\\��+�e���ȶ���zt/�t�z���^��_����Vk���i���V�\'��H �2������T2�|5�H�������;��lu��ZƩ$���G�3\\i�����4�v,.���v��oI����\"�J�EH|!���W����V�C}��~yb?z��c>�*�ف�����g)>3��w\Z��O������:�VTY+�*��d�:k�����:6���q���Q�_1[~�%$9?W9ϥv�;��_�Un�6�@��[�5�j�leNZ;�(~\"�Ͽ�߇����K�^k�\"�o��ä鴫+x�\n�,�	i��3G;�����/�G�e���o뚖�c�\\j��jz֝y���v��\Z��H�����5V�Q*��ٗ�+���M���\0g��ZB�k��1��5��W�-�m&�Q�9$�P-�+�(��9Ry\'\'��W���K{�(x���>����A~��>��h���g����\r�P��]�Ƨu�D�@�M>t�>�)h54��2����τ�������\n)�߈��~\Z�W��OxwS𑵃C�<��H$�L�wY���fxa��fNw�����_�o�><Y�����kq�=�Zi\ZM�y�j]�i�L�i�u����8D\\���\0�o��ٯ�~���MKź�����;�[�m$�ѿ���IY���#J7\0��n���-՗72\'��[-�0���ͭo�������K~�>#���j��n��x�I5�*��3/�]iv6\\ÙZ�o{���-�,��Uf��ӿ�\\�5�Ӵ�	�v�n��i������ۮ���i��L�26���Ǹ87�.I\Zڿ���޵�X��?w�x~�DԼ/=��:=�i67�i\"}.��e�-�쯼��H��w6�&��_�\0H�s��~>���o�X���\r��h�%��Y���ӀG7�W�\\\\���ۣINF�w���aFr��o�wy�D��R7�>���Җ�����oy�N��TӖM3��+�;k�0,m\Z���l=߁h�SM����0�V=/�>\"����m����+�.��Υqq���c�6q�,,�H���6S��\n|A��o���N�t�cM�v�t���k��9��gY��F+v�F~��H��S��|G4�]�I̗s]B��h�M�_,��m`>n�X�V!E�?��`p�j�4W����\0$}A��\0�_�_`𞁥��,m�]E-����Fff�b�g��H�ށ7q��\\���$v��M0[�R�Ă\\.�|��vs�	&�+��+��t	m6�cK�[�\0h�#�䯗�24�(G�**�;ebF��=����MjkY��aV؉���H��6E�Ш(���̿;�T��Zt>�-���$۳���k|?��2a��\"�������{qҾi��������2[�cc��N��8�T�?�����:����\Z�2��c(�������,��[w��]������־n��<���3]:�A���}MrH�<F_��R�\'�աm���W���7Dٓ�TO�U<����@���+J���}�&�\r�Oj�ӗ�_�o#�Jh�-�ä]Css�[ڸ�BN�`N��g�O��1|%�/-<�Y�Z�R������˲�a�+2�g����|۠Iҽ����lai��)�9!c�d2q�w7��Z-�>*Xz�Rmw���w����Q����Gqp�YR6B�4\'�ÈS#=N+S���C$:v���6V�L-qsyy8�4�F�T�ն��\0���W�|>�}����\'JQk�ڻ�B�2�\'\'�NrkϼW�e|o�Z�R��zLQ$�S�bd|��\"s�r���*����[��[\Z1�x�\"�n�%{ۣ�O�����:}�����K�1����]�+0<�$�1�<6�\0��\n�i��G�}������pG�\0�<��s�R���Ѥ�^|�ZU�FM�Ge8�Pp���bY5�:4��i	�\0�O�O��)�Ώ%ev֦��D)bܰo�OG�\0���o��Mv��I��X��ф�� ��f<��n8`U���w��\0�ԗK�� KmVc�ޫ8��Z20$d���\\��g�Ώ�Oyg%��zV�W�IKs#�m��K���6�R�u�|)��u���c���\rF+�K��)pL;\\+}�r���p��ӥ.h]�LUlU>Y�5u���S�����BMCO��ˣ.�,�K$p�3\"��$:��|�0z�O�+��K�T�m�|�Ӭp�%0��!1�!�B�H䟛Z��36�����%���K)�v�.&`��E%H��3�FrEK�l��Mg����ā�0�H;�����8e�*��\nR�W��+���w���>M3G�\Zo����\\��=�y�\Z��&+���48؂]?�+�еUѼ1x�%�ox��V{��s���X��(H��ҳp�׋�?_�mm�c��.��g�+!�36��\\m�@\\��zE��Z��.��k[�_�����5��@;s�_0A�(T�ןR��=<��7n�վ���/,�9�����GrׂH��nnvcž�U?v�Wr\0Mz���E3��Z]�ƛX�\r���Av	#Lr��	P�ȻC�|u`��~����hf��K++�A(YV9/n~X�.v�m�0�\n)$s]���^Ֆ��H��h�m�	1ac��\"=�I�O�I�P+ͬ��{4mnin�\0C��u�E���v�\0�����2e�Ia��rʹ%\Z\'<�9��mw�+�v��[R�]s���y�\0��.~�b*߻p����.�aG\0$�����\0�F毙�S�U��=�5E8r�ݴoER���J�o�\\?�y��fT�ޝ\rX��sm���5�V	`�gq���Ϸ�h�(ּ[�?>}���oCH�������6���Z�_���}*�z�i�\0if�bݰ�Eݟ�s��5������P����4F�Ϯ	<צ|<���sC���?ܑ}��W��%�;�?�	}+�ўEEh���jk��b܏���|;y.��[�WPx�R�XƝ4$�Q�,�lm\'r�9�����:s[��kM�^�U�-�P�\0?_ְ��Ө�k\'Xl#��<�{^ҧ�{y#�xT\"Kua\rĊL<�͐8�r�r���x��W�t<K�V�y}�[;��N?t\'&3c 3dg$�:S���D�4�*�p�ug-��G����Bq�+ݼs��&�����u��i�4R��#`��ʦ06X�hRs��_%�x��S����\Z�4��#��\0?*��/q���h�3�3>d���\nR�oG��k���﵍��&��e�?w\"ø�څHl��|���>��~���ip����V�-�:s�:u�#c\'T��Fkļ�v�V�[�Ͼa����w1�\\1�;��{|��tK�XY}��K7W�������f��\0�,*m�����\Z�jQ��=�\rX�j�U諒{y��:�8��5��3��R	�;�dhU���RW$��*2k#���mZ����w�әZ�:�[f2Wc�9�d�_^|4�\0�}x�N��/y��/��j�2O{$z}�v�\n��=���BM���@ ��俴��⯃Z�5�h�!�Η���A-�&���l����ݸ�@ʕ�Hڭ\\��_��=\n֧/C�d�}>��;��#��r�4ܫ*��,�w? `S\0�/�Ab��T��Z����<Lncy�G��bT����\Z�W�1���T�n.�c�An�DФ�a�Ȑ�/)�rC�����cw��[�\\Mg·�<�۵%ˌ�I�]Wqm�|�t�z_Cjs�i���w����D-�E\r��9��gy���� ~r��2���\'�<Vml㸷�����]�n-����	p�r�����\0X����~�Z|zW�4��!�P�7V��e���y�xbAݹ��aW#��O��9���O&�\n>\\��ǫrO^+Ɩ*<���	�A�_j�=/þ)���n�]6���� �����\0���9�����d�����ǰ�N�ӊ���7Qk3]¤�\r���Ün^\0������o�z�\0�Kn~W������ɶz�j�/�����BV��q�?��_i�h�~c݉��D:u�N0=�W����i��X��%s�� ��xz��i��\"(����u�yP���\0�5��6���O$ww�Z�6��.{�/<{\n+ʿ�*��X���KwW�ds\0x?0�eI���]Uh�ֹ���Gn��j��p|�fw�F�2s�:R�PG��v�n��.�:�#܏^�W����*�1����w�A�Ml���V~r|�+��~#$��h�ۢU]�1��Mt���0nT{W3����f�\0S������ ��̾��G�֚�S���4~\'�r��l��	�q�W��I]Y߽���W�x4�|I$?3G\Z�@a���Wӟ4&��~�q�r���Q�(���jN�1�\0���4�6��q$�iW.ZDu	�����N~��G��ئ�̚1q�~�\r~�~�~�\0�?����J�:������g���?�����Y#��V?-��d��`}��C%����Ř��4�c�>��PAgo����~U�G�\0r�����_㽝Ƶ���Ȧ��	F���6߯5�_�o	My�A[�\n�|��.��<�\\�zu�_��BO�_���?�v�����G�G����3�ST�%Ԭ�ԧRU��+O^����|3���Q���@��nz~����\06�>�ǩYĪ�\Z?�B�E�PA�\0�̵�A��5��6�:��|��\0��1q���	��;E����5K{85K(#M�,��1M�Grʮ�s�W�~\'����*r������+�@����޽s�^]�� �w��|�=�Q��e��\'����B!�\\��H�¥αgkq*`�#i�䑌�N*������#�<��0�g�n�c�X\\��.y�\\��)��I;v=jɥ%c�.�?.�e���-����\'���7d�~�Z�_�R���5%^?�E}\r�W�~E�à�d�|7�����\\��rONY�׀�P�%�ƺ��Ƭ�1��=2O�_Fx��3뗻�I�_�K�z��1\\}����NdR�����]�|_}�A�۵��3J���#���L��o��ۀ����s�����:��g��S][�۶\'��jq����ͥs���Z���k�X��M��sۮ��+T��ԗKw�\"/-Zy����/�9��j~!𪃻Z�?����\0d���	�w³<��	��[n,���{m��~�O��*Ϳ�c_�g���%���H��\Z�3��㧮3Ep��-��e��*��ؘd��뀫נ����C��#����r1����#ê��7�A�����R}����ї�z�U��%���V�54_��\0^�x@���\n�g`ehZ;ߙ�3]�<Mb5�0۟3 ����q֩>���ofu>�_<�+���tļ��)���fς:��ŵ��G$���\'�#I�<K�.�\r$�ob>]���rx���_Q~��3�\Z^����		fsz`�l�J��=�sӣ\Z|ڳ��\0���?��{�\0��.�Ե\r\Z�\0>��M-���A\'��O٪��[���i��/دo���¼��E���A�ٯ��\0��\0�_�%��Oÿ�������������or!�U_9A�J������bFv��g�.?����{�r�D�\\09R�y�#�{|;N�՛����6sZ?XV�+w�1��/>\Z|C�����m��[_�U�B�yH����|��k���\0�Ux#�}��F��t;�9����vIko4d {����I�Uu݅�������dZ����v����>$����U��IYRH�6�A\"PX4l6��9�5���d��d�=�̓����i!�6k��t�O�rJ�2&F���q�4�7ͪ���ySZ������W��\0i��R�c�P�K�m� �b�H�M���7��O�?�<|X���g�\r�ǫIq���-�=����цQ4��[W��mj�K���?�\r.��V��n@�I\"K�xv�#�a�]�i�|�����?\n�9��(��7�U����y���B��Cg<��\'&��bTlD�����R���I۪��\0����ŧʯ��ρt/_A6�y�-����}���2��A��*�G�HNk㟋~2��E�@��T���6�����cM����H�\"#���H`�N7��?q~Һ7��\0��O��\0�1X����[=B�$0i�f�����8x���PIf?���V�\",��\n���1��c�5}.W�q��d�^g*�e(�������\0��w�oi>]��%���	L�գ���/ � � |����R��<m�̶sL�1a�ے�}k��\0�?⍎���9���H�-&ڗl^O���-���b@�I\'����A�~�w�ed�������\"�\\>-Ƈ��j}~���\'Q[��~j�i��g��KDx�n�	uf�>��#��/���2���\\s���y��#��&���X����(�Z3�|S���=\\v�yw��|��Q�~��^=�ͣ�ʫ�`��׎x�Ŗ�_K�a^z�=��^�M����ԉ������x�v�5�W���2U;\nYj�dUY=�gL�$޹-�w�kO�d�Py\"����]��������������o/v�z���|I��Ȭ�M���#<��׎A힕����p�>oJ�>	�o�K�\Z���I��g(��o)$ՏR�lz]�33K4�;Q�!#l��1ߥ{��{N����� ���� ���|ãx�,��|�V�݂��ǁ�b?�5��\n��<gs\n��im\n�k�O��~`7�OL�߁\Z�l��bc�f���\0C�n�}�+��V�u5͍���.f$�,�2��}+��=BHV=�Y��\r���?��?m�[o��6�p�_g�-��@���$z�A�q\\���I\0���p~h�c���etyiٞc7�[?F?����Ϗ�4i�\0?���~!�qh����{r�ir�U��cw�+t �Z&��\0	��Ei����n�\'��-ch��d��C/J�T�k����[�ߵ5��\rbe�F�7�k��,����-��!�R��Q�^.��ğjv�$k�>���e��*\\��Uy���o��é۴5|�R��._��C�����{�#��|u��x�O��]b9-�FI7�P�X��X3ʂp���]�O��/G��e�6��z��Qi�ooķ/u��Pk���j��\"ǀ\0U#�_�^)��i�xf��/�m�����usM�T���b�o\Z�F钸IDj�B�0$�����o�Z�6~��ľ �8�]N���eu�1V��;y�!k���;+���L���������f�^�+��GƟ�U��cP��ƽ\'�qk\r/���&�l�f��Rfg�%r�:Xw�\" \Z�\0뛥��h�8W����f�����s�]G *Q2�83�d�O�n� ރ�j�&����E�My\"B�K1�\0��+�0�2�FP�ǓZr�gos����%�?f�6���v��|��$����_*~����O��r=Ί�NWާ��+�/�>Ӵ���G�=փ�[٩��\"*C)�5���`[�ĭy\Z1�7%s����򺱩������~���*x(\'���<n�ǒF�d�w�$\nʾ��cl�?�]+��U�Y�J��x=+��|C�U�۷v^�������OT|��8�g��{%�[���#?{����m5ԟ3.��&���1s�|�tsWZ��M�={f��E��e�ٱ}��̝��+����v��tbc*��:knu��q����EP���rv����5��]{��5�<�O��gYm��\\*��~��|���{g!;Dq��Ǫ�\0٫�l�>U_Z��^ �}��w4:|�zc5���ͩ�΢F���O�O�c���`fu���̤�s�zOn��z�ӵ�q���{��`�rF���,�2�������_2xK�:Ʊm[�\\̸R>]��-�ҽO��|]{���-��%ݹW�w�B`#�A��?Z��Ꚇ�Tq\\��I�ro�<���׮�K�ͼ,�ke������S�^����Z\\�I���x��j��\r?��\0h=w�]�FѬ�YI�nG�����d�����XaVRe#��]Mu�>w.Yr�c��ئ�O�:�9�m���7�4G�%�X\"���A��wZ���\'�|%����]iq��&By�7\02N�\0�~�⽛�\ZW�(O�#���%X��<y�O^�6RY����U��\\ĉ*������	񭯆u+ȴ�g%�rK,�w\r�J�	��a�H�Uc�3����q9T�Ԛ�_rG�e��0���:/�^�<!��Zo���:��O����Mo������,�	�x>����\0��5ֻ�I�U��/.���&���Kv��T����5�֗��x�^�M��P�$�P��u��Y��`�<��X�����5ߊzu���V���#�����;�6$8^9�{W��T�R�z#��Ӧ�u��?�W���^x?\\ӭc��\0L����̲���� �������\"kߴ���:�Xy�	���+�?�>+��?\n��s3Y���P���/Rs�y�\\g��Ϸ~��k�2����5{��b����0de�h�2ܐ9�{)�������f**8�\0��?V�$�Ы�|O�>�&ٙ~��]�G�|��W��9Օ��Y����@�\0�5�|V��׼S��@�m��׆,uE��]>�\Z��+�d�7m��6BI���8���O�:m+��f��/د��-�G!���{��|V_��:�p�_����4�l<��o��_�I�\\��bKÒ��!����=���y�������o.I$���|y�T�V�V�q�_��}oP�%m�3s�W�R���vM�kBL��Vk�\r��Cx�g��C;��<�v�3��X���\Z�â/�X�{�\"H�Σ��rҊź�w�G����=h��L%Y���M���b�Y^��=;Vi\0�(�\\I�}g�u���A���~	�ͧ�k7���3+v�Ã����:��e��v^�.,�E��kq8����x*��1�D��P�od��\\���?@��\n��\0\0.4��� ��?~�8�5Xf�#S�6�w�q�k�4)K�V�d��k{�7�YxVtk�4�\\ ����&�Q�a?2�cf��:.����s��151��v���8_j��2���x��἟V���+�m��0�ۦ3�+s���o�_�X��~M�Ωs��X�L�6ԏz��I\0g�rk��\0e�\07�MFx�g��Vݠ2ݪ��#e���$m����Al�;�\r��g�h�+;�)�u�Ԓ8$xc����[�����f�%e�\r�#������V��z�#��p�!Sx�4�W~��z7��\"o��z���\r��(�EҦ�+$q�l-R%�-�$���f���n�.>�5��OV1���29�O>����������\0�èO�8����T��VnAڤ�1�2Bp@���xP�����\0����9�e��L�±���6�㻏LW���c}JIku��V_���*u�ѧ�;���Sxw_�	f���\0,��J����d�m�7�,��mQ�k�v�HIueR�q$�S�$W����3ğ���rY�\\�;�|o��^3�\0��7�x�h���n�h��3��[�`����ӥy8�-������6ՙ��q�@��𞘢�H�%���mF/��ǽ�mr0�I��ٻ�ͭ�^$��y�������|�����1l�#�s�o�G���GƋ6�	 ����������M BჍŀº���9��?�מկ�%�WM������\"�4�H���\"<a�	f�g �v�Џ�z�>����u81���_=6�=:}�_��}���-}�� ���uM7PӚCK95vX�Ȕ�Ww�IWUe��+��p\\x�7��O�-����]����\ZI�8+c\'��k�e_��ǭY�n��$>ZHU�U]KmoLc���k��\0��xj���E�����i��\\k!C\Z4q�R��ǕR�$|��+�����y�b*Mѿ�����4w\">g<��kV�Y\"�3v�*}CUQo��{v�>�����us�Bk��hy���̑��j�qs�wx4�.�ߘg�:�Yz}�;��ry�6[�4��q�\Z*8�G�y�EXl��֜W\'���&øԩn��\0��]���d�,G=O���j��-s*�E���8�v=�IӚITm%�\0:�y��\r�Qw.��������۟j��?^1Z����A�W��O:�K��Q!a��7\nH#�=x���6�O\r��}]c�Sf�]�����Je��r�Ss� \0xIB���_���]k�\Z���;�9�G\Z\"bIX�]�d`�e^�w�ռ�7��WJmCN��o�^���-na��F��9�|�1.��2`��g8�`r椽����xo,�8�#�)��}4�}�\0��~�~	���z��qugcn\'\Z����*d;#VfW2�cF�\\�#��zg��\0G�;�\05�\Z���Ŷ��3)��G�,�1��́����$����</������{��J�Y�٨[t���88�	��+�1~|n��E��º�#k+MCR�t�[H��C.�n][�A�F��;P6��ad�&��?���4�>�j-y+�t;o��v���\'��pֶ�q��Q��*���m�A�F�\\�9U\'�2|��	o�����$��|���׃d{Ei�����YK1W��P��333�Z���\0��������V��Vm6뺎��K�[L#�Ҵ��Tk��s<ј�t� P�����篶��k�3h6>#Ӯtw�ta_i��G<|��1�^��<���KK[8�ڱ�&�*�\Z��R�I���7�\n{�=Z��q���-SÚ���5[k=n�Rԭ��o;9��4�e��Q]���Tn>G���o�mo1a��C� ��^9��֪�_4�cT�Ԯ��͖�n�8�Ѥb9����T�<\r�}JKָV6�\\	�l-����x��Ϛb�VnU��Ec�����AS��K��(�~!�U��}o$�F��d�<���x.>�#��k�>�������9��|;�_��������\\�o3\"*;�l�Y^f�%\n�����\0��P����r^�&L�NK����ܤd2�q�����?����ב�\0g߶%�hё��H ��>���*����iÝѧN�[�٧��>�爾\r|H�4]Cn��Z�`�����Î\Z6]������g�?h���\nu/�^:���Mط0<q)�Ү#V�s`�c�@�dݒ��6�A�|s��JhV�?�oLk�8��qs�kV��k�\"��Fa#dm���>>i�����I��� D�ICG(n�������n\"���R�ԗ�ts�Mө�W����5�\0����O�#[�>�2�:Ͳ�k�A��<���Z&��p�AVo/��7v9ǧ����u���m�_�]R��-6dU��y��%�h�\0M��gv�+���~�}l��˸�q�A���?�_M��V�z�_�>��*���yd�\r��`�I��~˾C��`B���\0>��j�\Z��K���F8�ׯ��^��\\���wpz�?���U<B�љ7��l����\0<�TUˋ7�fܧ�����Q��}�8[_\r�f�O�}����نݬݰ^����ί2�0���\r�\0	���`�^����l�.�_��&2\r�\"�U�g����9��5��r��m���q:;�x��~j>&�X��ZV$�\'�\'�$u���\0g�WM���5頷[XM��%o��p����� b���\"��\0���s\r��Z���#�$�q� \'\'�G�G͟���3����0�6�V�4�۴3��dbh�dRJ�Q�T!\0�d��]تt��?��4�z��#:�,:|�ݿ/�>����sBԾ��m�\\�z��t�&a*�#�V���mv�Pc�X�Ƭf_Z�vl�۱̱[���1RX��WV\nH\0�O,y��i���Z9ǋ䋃n��(�nϚ%�0��Ȫz�������qc6�i���g摻�%��\nI �q�H�3�fqU]Z�o�2��C�̷/���,*Iz��ݻ��x��[�e�����ʹX%�yc%���?����=*���/\\�?�Z�֋�[	�ŧ�i&��P,��`H<�8^՟⿊k��M�x�l�xfb�,�]7�79�ؑ�$��<gΧ�+�kC���!���p� q!�O�q����e<*�\\�QO����cS4�M������?j?�/�!�-KT��oh�\'�`���m�.�vQN�QKm�%�6�Pv�OK��k�O����i�1ꍩC<w1�\"�cb�<�d\'jq���+��(�h��O�}�|]���޽�O�Z��S:�����lы����51�*�p�8�o��\0|E�0|eռ�M\'��\0�nu�Sҧ�)%���8bgBv������+ԆSK�E6�Vzw<i�eFR�j�Z�x���jry�\\��\ZVo݉H�) ��s�Ƹ;O�����In��Q�9X�o��;����=���ZƳ��?�Y��%�0��d����J�_�ه\rK\Z�8��zY�[���Ǚ�f���9����F_j:��b�^�4H\'��ۢ��9��ĞN3�j�|}c��}\n����䓹��\\/9� ��9���mӶs��?�R�$��Z��9�0��~�b�9`)����8�{��s�_�f�����^h~���G���\"�?�wm�K��r�s`�8�~���ءf�b@��\0+.�K��F�tWR�G~���+R��Oհ���g��Ҟ-�F��Z⭌�߾j�߶��c�����euV��\'�y�L��+lteaշ/ }*�[f�?2?�FSp$pק=뾝-�\n�!-$z\r��\r�\n��a���Vf��op�(V������1c�IbT��-�GN?1���⧉�\\(9ۜ�g���d��q���<�Y�~�д�N�Uf� u�\0�QU�<G�VI<�����ǽㆃEKY3����B�ky6�d/�\"$l�q� g9lcu�E�C���۵�/\Z夁�36G#��������K�����\0�61�Ps��x$�|����3�;�n�z?�ҽ������<zy9��OT���9�x�Ŵ�n#XK|�~]�ӧ#�v�י�\0�:ogf�_��KH�qܟ~�\0^�b�/������o;>\\��������팪���9RWqOS���>�j��5Ws����a�-c���#�2m�h�N��=��W��XU��9\01�����֕�,�cϙ�\08?�����Y��+��y����$��G�9+6O��g�f/�%^��\ZO���\'`RѬ��_w��v����\0����?�+�`��,~\rh��D�.��寎fMb������\0&-�.>��\0�;���\0�S��#3Gq�U��B�M=O�<���џ?�<\r�\0�o��o�\rs��$ԥе=J�@�o��M����N�q4߸�c��&�$/�R�UVj���cN.R>t�\0���\0�nt��S����߂��6��l����[�ɢXP�-�FSʈ�F�S��K\'�|c���e�\0�/4�;�v��k�x+�\"O�Z���Vh?�4����:	��d��Ii�ݸ6��������f�g�w����m��^;0�o�aG0j�@E����5�&#�\0����_}����\rW�|�w�\0�o���P4 H��+njq�M�����|̹f�%=����\"w��o�V���\n�?�!��zΉ��g��2<ceŽ�]�*6$��!�+2�͏�\"�����������c�L�<��>�\Z5��t��v��WQ�H�py&c�H���R\n2����*?���9�b\n�Y�������h�Ɯ�,��i�\"��\"�m�#n�����?F��Ǆ�6xF����;W�|i�Z^X��\0���V��3`>��!�i$�rK^4�۳���4i�]%s��	��\0�|\r�1��gğ|=��Oy���\\����ju\r7º��qof��i�H�o:P̨Є�C<���������5O�:��\r+J׼3p�Z���h���e����H�\n�a�#V��+��.ѧ��/��e��Y�p��2<!=�9�ta�=+��\r������+�����SK�Ms�O��Y�<Ҭ�uk���ڽ�����I\r�N�\Zr�Uw�ޥ�;���k$p�s���_��������U7�u�CP՚m��[+�q(7�_q�8L��q�~T[Υ/�Q�����9\' ~��������g�\0���x_��k�V�͖��xJ�������Z9b�]IS�2	�_�ޕp����r���9>��OӜu�SR2��}T]��E�Yn�k4R�\0|�$��������\Z�I6�亝�l���$������v�6m$lY�/Rwq�G�Ǩ8����h�\n�/P�$�`�����|\\��(��;K8-u9|�C;F��Q��G8<��裌dQ�>�\"�i��*p�*�K��p�nFFG�b[�R��o�����= =1�>ջ�x��1y^\\{�ˈ��j��2Nђ}�Fk�2���G$��$��E��;>Z�[H�\n��^�G�EnH!�Y$>XUu�#r�=���OL�+�ؾ��U�Td]�.���m�v�ͫ���x��j��ž�-k!<�/�[�oA�TPZ\\܅Tg��i�zs��U�M:h�$�-�\0���zG�	緥\Z�-4t+vB�R��1#\'��Ӟ������Wݟ-��<��	���қ�s ��92�ʽ���r�O����~�\0GNr28��\'s�:�*��G$�g��Ak5�I\"�|x���$~$���qP�Z{���2�ß���;��?L�h4�Ue��c�j�ΪNF���rOZ��\0��Q���)��^0��}?����)k�G�������r�J��VW��g�9�ͱt�����]�}���v��g���F����\0y�����\0���\0���u_�_��+�_x��\\���!o-ᵚ��5��Um�� )#������6�������#�-�izw��o���F�\r�W:��Pn��TY#\'kpO�B4�$7�\Z|O��C�����i�tvj��d���I8\r:i&�IVIV�+�o<m����7_>���\Z�������Ú��∵{{m&��KQ��[(�x�,��LȌbg6��Tx�)u/=\\V�%�EIn�5�۲��2�L×W{������[�߲�Ɵ�\0���\0�E{��ڦ�e�x�H\r��FW�е�b��FYG2-��jdT-�����W�⟄��N�{�@׾	�����M�­SZoV��m>Y�(�J>\n�&*N0�ry�����w�?!���!�4�h���{�[;�gk�h�mt�\"�f.�D�������%��o���Z<>������Qi�\\�W���%��I%��H@��,sE!S��aC���^g�ۛ�Z\'.^���Ij^#���#(^�o�Q�����C�\0���v�\0�7�Vx\n�ŷ(��Ѯ���ko\ZZ�ys#�$ m�I�9<�������p��|V��o�X�O�xFM\n���K�f{�I�C>fM��k������M�\0����\ZM����pu�o�־3(7�t��0JEU�\0Zl\01#!�O�s�\0d�&���I�̳x�P���(�D������-�����Bиi.^,�U9�ɯZ\\]���ϙB59ַz�k���T�?�f񑢹y�m�N�zowe������G�r�\'�Oڏ����%E�i�> x�Z�u٭$��<)�뗸{[�X����p`��K$�ގ\Z/��U�\0K�\0�o�|C��٨x��m�,�>%���\0l�4y�F�|�f��#m�wr�W�?����\0�G��\0i�_�_�?x���^�O�Ӽ/��#�R�[��L���9�*�E!��u�\'<;\'�)}�?��\0Yx�|=y����l7�\0,mg�H�\0�C����\n�̸�+��军��g=4nK�u������\\��dx�F\Z5�f�\\���k^�/�c��+����6�׿�Wů�~��&��x�NM?M��BKM:G0ɼ��	UB�<Ş1������͵e���Ǣ���M~�x�������g�7C��#i�\n֯�\\յ{�m���l\rĄ�\\�@���?72FC)�*����\0�e���A��;mR��~*�Շ������P���\'���]�C �YB	��x�-�׆\ru)E��-,�i���nۮ�1�8��,Ekrť��O�ڭO��`;e��A��?]��3ی`�Z\\��e��f	ăv�3�͞�$�1�6mt��ƭq�8Sʌ���^�zw�BƵ���fiTd�N:۟�����{7���]	�e���%UJ�/��N@����p��U��������6w�)8\0�FzU�BUY�Nye�A�<�y?�����l��#H������]�8�2,UGE�;�\n�_�rH�X�nFpI����*���a$�Y@�ݓ���=�WSS�1��4}&+��f���.���\0d��Go�t��\Z�[�ْ�X�>>r�d�#�<u����jv��ym�ʔe@G%�{���ߵhjV����k�o�˛�����ۀ�&S����ס\ZiD�jU����\\�\\<���\\���T�Fь�Z���b�#,e������x8T�\ZUč�Q��p�\"D@�3�<�0NOҽ���>����R�����\'S��L��a�̶!d�=Pq�͊���z��^�6<I.�&����$�8D�H�s�1��>oA�\r-�\0�.��S\r�ԉ\r�)�P\Zt9,�I�����ھ�����M���h]|�$戧ؙ��3���*�p~�����&����[&��ʫ,n�C3�m�����)�U1��k@�Q��>u��n���X��@-쩀3����=L���Px�R])4���Xl!�\\-��ʰ�\'H�]��\r�99�_N�����tѤh�.���H�F65�m�X\'vK�KdU\'�-��\"O����۴lSG���$K)\\�	�+W��述��z�_i����/����u�f62y�-ܘiJ�\\�~bH\'�k��_���1�(��sވ�����$�\n0۸l���\\���t]*�\Z�����|�E-̲Ȳ]�g�l�e|�����\r?Rk�������]+�Y@v\r���\Z$v�@_��1�Ti�ߑ}Ț��K�{<����wc�6��.����A���\\G���eA�ؑ���7]&{s����QZ�v!�ÿ�����[,1���k�����-��qˬOh�*c76K39#d�bX|�\0a@ �<U���z����Pb�ç��0�3a�6Ҡ2����	�慬���q�^W��s���\Z��\r6�wu�]H��wr[9S����,:q܎k��Ś�ڕ�\0������+��?�wp���qҾ���\'��s5��	�e��f�J�4�N��fO��.����2Ɣ~��M���{Cqi�YHIH�-ˢ�f[3�����)�!��\Zs�3����C�1�M��B��.��J�u�k2ȑ5��g���n���~S��Ҝu��Fbi��;����c �F\0D�8^+����%��\r�n����/���v}�v��O ��\\��[�\Z)�㹏TS\"�x�h���VE�lH\n�.�pA��S�8?u%�iS�k�o�>z�&��Z3�M�%��,�{���T�6GS#��X�������v���f\r+ė��T�.� [t�њ(�dl���e9\n�.U��,99C��}w���:KL�V7r�4sشp�,i8���0؉��0^	89�*ɤ��kT|�}sq���U���\\3��g��To%w�k)i�\"��\'\0�:*�+�;�\0�h|c�\0����Śo�o��_���\Z��ut�l����o4����0���f]˟8���,�B��5xl�}�MS�77z���ڒ6[������X�6e�#�FB�J	R�A<?�8i�xH�^�o�����8z�����w�yP�t�dM�g�ps�\\�ފ�\n7ýQ�e/Y�q�8����e{G����HaR�v�KeN�8\'��=zU���6�枷�m��$�bW��2��7r#Q�8����gxNW�,~V%A��A�5TL���������O�v{Fpƌw:k�oK{}.)4���@�/�#�S&@D1f\'˻s�7m��iM��<:^��&�y�?6X�9��\n��0��/\'������a���}x#ߒqDSy�\\[ƪ~��}	>�g��b�lw���\0΅��Y����ɖ��_�ܭ�lyEY-���Pg{\0U�U�EiE�Dx��vh���ቂb��C�7_�U��8\0�$ם�*�{Y���K�=	�?�sP�«G\"�䱍p3�g#���~�.)�/�]����ss?�ַ2+;�,��k,����|�����i皽o�Ck\Z]�[6§今k%��O�v�:�H�ϯ��v*��R9V\0}9���������IS��z�s�_|T��sK�蚷�!��#S�2H�s+ZI��fv�rn�l���Ǘ��v/��[(��r	#�Q$�/�%(U�c�t<:�k�����Fs��۳�q�ӎzS���>V�UpAc׏__�#��{���ᮼ�\n�I4&\"�mq�}��?�2j���ڜ��I�]5^�oR�r~�F5`�q��8���I���9]�΍����!sӌǾOӚ�%/&�U�-�7��8�$t��=���=J���׮<3�ۢyz���%�����x��.�\0�_��gq�\\j��4����ahYm#�P�p[1�N�Z�\0�A�1�|�2�#+2*�������񦋥ܬ̥��<.x<��\0:9PsK��r~�>)I#wkI�(y����Թ��T�_�%�Z���˸�H���;kX|���C�	ݹ�y��x8��)#.w�=^Q����u�k4��}�n��=x����A�.�i�ߎ\Zߍt�\rM���6�tqF�q��R�Ga��sX:n��E��\\^iW�Vq��$��O&�@�	�U�\nr�#qa��1�ɑF1�����i��YwG������|�2~�i�.�=��?�����Wڷ¹���6�4��Z��o-u2���ݭ%��h%�dI�J���\'��K��⏌Z�j^.�.���^��ڄ��k��o.�|˛��`:����c���۶D�F{|�ݟc����NMC̋r�q��,N1�t�\0��-<劍5�%k���ɥ��k��U��j���]?�CB�kYJ�u�{u9p;qEQ]MB�rL�\n������̌9O��'),
(5,'Sonic 2','����\0JFIF\0\0`\0`\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����O��g�j�D��#�㠤��R�u��Ji��4�]�iC�{o�O��u���-��7r9k��F��R\r/���w�4�mR�὎P�1�m��\'���G�`�{g���\0����ҽ�>g�\'���ʖ8n���P��w�G���;�#�%�\r~�.I��,:���Wѳ~��ծ,���P���T�$�׿|J����O�N�o�ͤ÷M���0\\K�R�0ڮ���U\'N-������,� ���Ri>����\r�\Z_x�;�%Dmn�co=���W�|2���Mk�m��G�]�;��L�}���ط�z�v���Z��4��1=�ײ�����-g5���#nw|w�~uҸ�] ��b��ρ~��ڇ�l5Y\'�2��*�7.�8���I�_���x��irC�꤭}��\04�\0�\r%��,s4�d�pX�\'�e]xM9#��+�0������U�R���#�Z;����¿~�^�&����i�v����.�!ˍ$b���r�`3���cƞ��g�[�þ��Y�Z�->��`��ң�=I�_�����-+�íK���\'����S3F�3F�:2��dfG r�w �W���\0੟\Z��>&�n�⫳�Z�·�ۦ�k�\"�E�I��JrGF�������$�����`x�y�)B�7;�[z&���O�k���쫠h��մ�W[���OZ\Zeȸ�L��ʖ�Ȅ�J�\0�9��S�\0�P�־+�~ �f����=O{�7�3#�n<(i�w&����B�����tE�ӡ�́4�J���R�U�fg�����O����&��.�f���>վ����=���fi�(=܅�\0��|e��6Z����׭��x3���W�b�廿K�e�]�����/�5�_��Ic�C��4z��lS[\\��D9Y08|/=�����\nq����\rs�_t?x���Ƨ4\Zz�0�{X�e��T)�8�ԯxD����ռ��������?����Q�\0���x��W��o��^]4���L�k��`����p���jPX<���m_��=N$���$��E��.��V��y�������e���h1h�M��_�^�՛G������Y\"f��Q�g\0c=��C<�,a[\0�O���_gx��	�&��̼�<0�@@�n�����>�5��*O������m��\r>ܲ1�����?(�}���=?v�~����αU/�%���gɶvrO*+7��8�{���տ����cB�����i,d��[k;y{�e�;0풋��m�o�/��\0����ko7�{�id�����{W������?��1�\0T��n�\0�+�3�2�^>�	�ݳ�8o��`�,^5���%����\'��[�N1ձ�J�ե�a��Xh���&q5�g,Ҹ\\�[~���]7�Xu���F��\\�	����ξ?�<wW�^�Mo��Di��$����ue����m���}����;��i/|k���+�I�3y ��	�2�ٞ|����$~��B�G�c��cIj�VW?�q؎\Z�I�f���䳵�[K�o\0��W�P�\0	�j���&�|O,�*\"*��\0Q����d��Nn��t���?2�**��y���֛���7�z���������A�Q_G��|�*�����R����qèY��ƠTyA{\08�A�OG����f�F;���H����M׊f�Z9��,��»��7��5�̪8�ݚ�\08��h�$���Ög����}��g���׈���9��݆&Q��=��u�G��)��|\r�,77Q^M]<sYC��s�PxɮN_ϧ�E��������Wo�-.���烅�dȯy�\\m����Na[��N���Q��j5���]���L��_�co\0i�\'���k>��#����#<�`tr�6�f�]U=�k�|%�\0Y�~-��V���~��T�\0��Q�m��D	;�H^OQ��7��\0����Oy�xg�G�<-��t�\0c��Qؤ��@�\0Yհ?�+\'����ⅇ�=K����j�5�{w~�i%�����0�~���_�d�8r4\"�5S��~���_���c�֕HCE������j�P�zƹ�=BkX���������<�$$I��H��3�p)�����\0)��>k^)���_��+{��+�TC4�#��>Ea��y�]\'��\0�&G��/�����f��[X�Gc<	4щ�n��� �YG����׵X������;��=���k˯��[�xi�<�̐�G����c�*3��}�srQ�Q|�kCχ����o���~����/��Kk�[�=6���๕n���f@*\n6:�a�8������>���<�\0�U{u�xF�!�:e�mԶ��������rNky?���������_�:]���s<��o$� t�]��\\������V��m��O;pw\"r��s��q��]U�ꦞ�W�����E��z�?�F��M��Z=��mu\\^[y��\Z��#�1+\Z��/^�w^k�4)�dӬ�ɓ�8C��>������������~4��>5Ң���wB�q�+6#�������u)��]kC�i�$W(˓�^������fS�nqv�w۲�z��謖k�Q��~oN�_x�L��g�)��h<�$��=뉗O�������s�P7��J�Mw�K[�_�M��Y��;U>nF}�z�*�ԟ?f��u\rs�����\0.����b7y~RU�?{58L\"��W�z��0�i�\r_�bY��U��������R�>ƹ?�?���]c��uX�[nJ��;����\0�U�������s�_�Y��`�z�iO:i�[2Tg�������\0-�����> �4�I��&�}����v�q��{�1�)�Gs��a�QF��G����m������\0\r�ןkM�\ZM0Y\Z�p$>������ݪ|W�}��xvkk��5���Z��3H0(���9��_�:3xj�d5���͈�3�?uq��	�N��G���k��,R�xlx��WR�C��I�����+�u��z���j;�=CJ�Ϸ�e����<G˸�ں�{�Y�3~�d��������M�Ȟ&@fx���;��=9��ɡV��6~}�K\rR-U^^�����>���G�M��;D�Mv�1�(����> hi�x���6�+���7��`�Y�	����|�i�a���H!;�(�6�p:d�����Vi��IdE`*\0��W��u+9����>���ʔwm?����G��d����+���W��>F��K�\Ze����ׯ?�uZ$�\\�#f�g�Z����>��`��j��~�qq��e_l���\0\Z:�~�Z�ꫝ��5[-������z�o��f��.��#�di�x_���� 2L�)���j���I%�O���)71�`�?��a#Ө�o�N.��*j�F[�&YY�zs�2kZh-g��C��#Ҽ������\'�,|(ռ]�������Н�^����v�z���w�\0��x����s�o��(��>�wPm?�z��F��D��y�ZVP\n)��q�+�����<Bj0���w�Ij�1�G��)�ܝ����~��b��h��e�[�Sےi�E������5�$�u��_V �W���T�^�:~Ҿ8յK���.����Ym4�R{->��7Ȇ8��q���������k�G���^�ڿ�<S�����mE��(D%�u>��ѫ�<����Ի��K��{�<jX��qQ����{�\'ӿ�\0k����l�Mk�e$�8w�1��ߵkxb;_���X�ީ�j�T�2c��J���W���\0d��m\'�-<�6��\rİ�܋+�,�@P��%I�\\�_�I�x|Z��]W�>>�.�qk(�R�118tl���k���=\\n8�T�K�g��b����亻5�������	g��_|3�������۲7l��n\'�y`ˑ��w���f;�\0��W�ߍ?|a�X]k�\Z���[�\r��L���[qa�5uYp�[!T�g��\0��\0��h?��}�|h�\r[W�G�`Ӥ۪.�)t��nݸ��/���\0�i:o����Z�~�{�ĵ���(oY�-���)*�˜\0;W��cpT��2�UՖ��F��7�0��Hڗ�d�Ri��f�կ��؋�\n���5���k]oI�(|C��-��(���T��n@9#�����c�����.|G��\n��X����������rc��rzp9��^��1�+O�=�]��I��k�!�]%R;[�o2����zs�\\��+��D��&����P�wݹQ�	08\'�y�^*�\'����N���m��9Liѕ*�R���Zm��s����\0�p~�6w���φ<e�}F��N��k9^��\0\n���z�����������\'��!��Ѵ�D\ZM������<�<�r0��CSڽg�u��]M�����s{�-��6F㎾¾����\r��P�\0�Aqc���\0V����@+�&\"�5<:�O����b�W-�U��G�����|��>����9�G~��Hာ�I\'\'��[߸�?���V���\"�ȠY���>��}�����#�f��ƚKI 8��Eܟ]������\0h��v�(��d�V��4�{p9��<&��s��8�ԨPw�Q������I�C�G\' ���x�S�o۽�]�r����}}�Αd�IذE��M��nՕ}���JnbKx�y��!I�ղ�F����RꞮ����g����he�b<� ��=�ƽ;ភ���,ͅv��Ҽ���M��\rŪ�l�r����׽z�f��:S<���R;�r3�˚����J��>n�^�=ge�#�E��h��$�\0��ߺ*��^��ꔿ�����[��˸gҫj6e}�B�1�\'�I����6Tv�gP�\'1T����0˧E�~��Ǫ�6q{>Y������2�3�q��@�B�c�5���s�\0\0���\0i�\r��Ekci�M�+�#�ˋ9.R�q�l!�3�3������2u)��r�����5����RW���Z�6~j�\0�f�\0k[������}yo�i���BVW�UGl�8�V/���S|��~������Þ��T�8ė�E��N	9Vr�>���o��~]]�~\\�7��bÃ��<�zW��s��X~�ږ����.n<�0���lb�v��P�a�;i)9z����\0��P�<miCOcM(�Wf�����]�\n5�\\)�������\0���t\nxA�U^�MѴ����51��B�zc8����j�Q�z4d��9��>>~�^<����?AԴ�6K���zOۭK+_ڪ��X��	,0zW�g�5��sZ0����[�g�p�\Z�2��M�|��j���)�|H��>��C\Z�l�N#NN�ӐX�=M}�0~��Ӽ��Z�}�]��O��6x c�8]�Ǯ3^7�ٲsp�Z�a�g�W�A���cic�6��zכ�g��������w���x\'¼f.��L�<�vq�����e��|C�*�Zj\Z~�!�%��QG@a��hּ\'�hVj��jv��Vttb=@=G�⼏��M��/!��ln���2�:e�\r�5{����o�v�6��=.�->�Pλ^[�3�y��٘J���zQ�H�i/�o���wcpt�)��鿚[y5���w�7�&J�������E��GU��zW�a{?����n-���mΗq/���u��1К���\'�.l.$�ƭ�T���_O�q��~��/t�F���*���~�i��O��#���\0h|7�{�\n��T�oďitcI�4L�q�s^o��&������\0x�V��Ԋ��&%�@)�<�GZ��-qo�̬2tۓ�Pk�Ԥ���љ���9N8pO~+�%=y^Q\\�������}��o�����ද����Mք6Q��or���G�����s�7� �SMs{c%��{�.n�v�c�ʈA �y8x{ZS��z��̙����!�>�����\0�X���A5ԗ��E+�I\'^x��漈���V{>��\\�hM�_.���\'ĺ���$��6��E_1�c�7���끜Tqjq���վ�x8,�H�2�k����i�h��+nR�q�(�gQ𞗦	.��ݞ~s���^�\Z0��|/������\Z�[��K���\0,s~��F?��������s$k��,��U�<��e���5G��o�X�T�4fE���g��yXt�(�5�o����x��B��z���;�^>;6�J~ʆ��E�z���<Q���n�#������8/�fy��ߕ�\0⨯p������������_�~~��\0?�����[�**p�rz���^���Z͊���+���mY�ѷ�W�<Q�*u�?�c#ox�O�\Z^���	o�i��܏��	Q�r+��Ꮛf�����\"-q6�}c$��-լ��O�4�@�+������c�(�Sl�VD�n��W�W�1�K��Mn~ϩiw^|r��G\"6�o� \Z�2L:�մ����t?P�\ZK�ĸ|J����Ϝ�h�\0�xG�7�v;�5->��o2�JJ��~zFy���h�����_\r�!x�����n��m�.�I���GtT���خ����7�l/�_�E����U�z���ƲC2�*�<��\0\Z��\0��N�e�x�ᮭ}ggk�;�m\Z����+E*F�̕Zu����b�T�}Y\'�i>h����7>���j��a�Kݒ�촻�?�%�U��Jq��GҴ�\0fi�ŷVq?���9�zw�K��<7�|y�Y\\C�5��=��ӏ�y�\0�٣�\\��$�Km��ۑ_yO�g<��y_,\'PT�������R[Z��̚M�bG_ʱc�{>n��W�h��,��ͷ�����_L��|[q��b\\���Ns��|�l4\\y�^S�J\rFKB9`�䲕�qҭx|���~l�تڼ�AV�o��/�C��S8��kϳp���AO��#�l���U�=�ٶ��L�}��Yt�[to���yF?�=A��>\'~���~	O�O��m⧇�E`F����1�Y䁌��_���${F��\\+�������?���\0�t���\0�Mk멒�P;.��ӌ�Y�0�q4���7GWo��߽���@�C�K+�-zz额�;os����N��]����I�����&�֭�hN�ͶO0�o1V�����O�-��t_����m��\r�9����~u�?�3���Ɵ���1K{�s���9�7:�#���c�)����[yM��E�`#���MJ=�{Z�\0���\0k6�\"a���$�#7�u�ҽ��~�F���77\0B����;���\"��`:�pÏ��ג�zt�u�5��E�͡�S<��5�߲w�#�;�3K�k��h���m|�0�}�-}�&���ۚ�~g��*�iY;+����۪�G��W�}����q\n��r�1�g�m��\0\nӼ�7as�rH\0��5\n��__s���_��Z��a��|��}	����4����-m���i���Ҿ?븬Bj/���r,.1�W�o�~,�|���yЋ��9>h�?����|׿x�������� E����A�K��-��$̪�`��)��;׳|:��z|-2���n��?گ=Jpw���s�ulW�\"�[�����\0�\r�\0��(�O�����L�o��������|�ڹ�JU߀��U���yoJ�mV�K��t,Ɇf���^��I���=�ݜoǏI�m\n�m�|��+����[�\0�d�^����=㳮���$���\ZK�f��m�!@�y��~7�8��{b��-tb�%�c}����#�ͪ��UR��Y����Xӥξҳ��(�\'O��߂Ji?��/��3j��#k�,�kr�8ܮ�H�\'�7��<)����Ei��4��{�]��\0��p��N��U����o�i�mn�y���B����ue$<H5�?|*<k֗?���w�h-�Eg9#�s�5��\':u�����\0�\"�לjP�gJj�OG�%�F�^l�o���?l/]x������O��HK1�P\n�	�1[�\r�����<s�z����[��\nF#]��pG�S��W`	ON�Ez1���jъ�cü��Վ.��l��쭡�w?^~�������l����޿Yw\"<pq��?�^��e�?z���\"�?K�b�1���sNӑ~�{,o\'*3���>��}��e�/��� Қ��H��?74�1���=�<Ϋ�r�p�}I�5���\Z�!N���5��,s[�f\'�خ���\0涒$B�6���q_�_���_|�.���յ����j��[|�:�dݶݙF�J��\\v�W��AԾ���,|?�OM�\0�?JQ������[��gu�*��\0}0	-ǵ~��po�C�Mm���>�5��	Bs�v�����Mꎳ�I����9x���u�P�KI��ѽ	���~\"�7�/���.��`Z;2��.H ��b�H�cx:��|!���Ág����bݝ�Fv mu �����Z����v�\Z���8��,�q�l7��[�c�. ��b��t��k����Y�ʶ;*�����Mh��������kj�[�H�f�a�9<�T�\"���R��?�ƪ�T��q�և�5߱	���I\"�S�,��=1����>�Ѭ��c�.Sq�v����~�������?�S���Nj1�[�׋�m��}[6�6���3jQ;c�%s�浼9��o��ξ[m���O�U�\0��o����2M�xݴ,Σ��\\�?`�h�v��3RT�*T�w>���Z?[��9U��߂��~��6�5��8��^{��o��&:��%�����8lr������N��������������q\\i/���?�tOOj�R�<߽���6�hBo�����{�ݾ���Kg����Ɗ��M.�\0�����7�ǃ��������[�am�v;\n�\Z�:��a�dx�?�����S�[�Ua������bd��^���=�ǖn�J�?1�	���\r��|F�Uԣ����8�|����$?hv[�SVu��*珥|��Zh-�U��n{W��V��s��\r���\n���5��o�s���msS�P�e_�<�W�J�O�ۙs\\��|,ڽ�q�J����5�F�!Iͽ��0t�J�<�~�[��;���O2>�ɛM=�w�O�c��z��	�q���ۤhG�Ӽe�U8!�Ÿ�*�+�����o�?���}>�T�\r�y61S!ۻv� p�{W�|^��|o���\0�(��ފ��4V�#��H��l~8�\'/�a��W���[+�%亟��,E[U��ު7��4��OA�o���\0�΢�~����=rb�Dɕ�����\n�~,x&=_���m���>R��E?�<=s\\5��˝?T�5[��Y7�k#|ݶ�0k��	<ke��-|I�����ֺƯwe2,�}�ΐƩ)Atf����*�mSw���k|��݁����V��7g�[y���c�m7�:׋5�}\'F���5k��mm�/$�u�\0�g=\0�_�ϋ?e�V�����xwR�,���c����VyU�RC��r1�دҏ�\'�\0�]\'����_5K�?���t����;&�3~�Ic*Y]\"R]��8=��\0#�\0�^x��\n�;�>\Z�k�[�bl5=.������5�ʳ ;Y]�V�׷��P�\"���쓕�mu�&~#�g�T3LB�0���3�o�4��k_g��������O\0ɦ�^8�ִ��YQ@��E��7���9=�����_��K��O�̗��}�7��0B\'vV�L9ڡ������O��[�\'Y�~�&�0����$����5�2���p�ַJ�1��7�9��k�\'.��B�ѻl�?�3ʬ���i7k�g�������qq�[T��_:g�3��@p7q��19���r�0�\0���������X�CޤtKi/�����Ss6ݫ�ON������\"�c�>=һ,A��z玵�|�\0�:���y�/��\ZO�!�gך)��%���\n���g�z���2�e�V&�a�o����d}o��u\n���[E�����|M��V�����]�~O��ԧ����#|�+��\0t�3Փ�\'Ώ�w�\0ǀ:\n�ώ^���ſ�V��o��Wv�;a%e@3�n���P5��moh�q-��p`r]����l��?:�Y5��\0�|��ֶ\Z��*�\0r�u�?A�\0e��ٷ��H������\n�w[�%�G_ݝ��b�����q��\0������4}*����h�Tc��Ma�\"�m��ٳX4�A��}�nێ�9�J�%���]��ڷba���ϛ���3yѲ���;����>��Q[�g��5�\'��\0fx-6��2l�����GZ�����Ѥp�_n���M�Z���u��3��ˏ���\0���W�����\0>��Q\\������yy.�*D�$�*�Nz\n��\0	��ƶ��ƻF����I\Z`������9���-�C����\"�&��3���$*2��� b��p��p���R���u�\nh~1�.���I%}�~�pF3ڸ������ŝa+�m�g�8��&��]�����ۅ�T�l�Iv��+Ю�ox~E!�C3|���ִsԌ�{��1�)�Q�ֶ�ٳ����=���g���3���{�\0؊xd���ݣ�:���#�A�}uwʹUVe�X��N��pI��n>���S[J���>�<a�S��ܼ�|����~jr����x$\\�Xf�)�.@�1�@�Q�����+�ּfڵי�2}=a��3�֌����־����O�SE���tx�A�_DM����4�g8lzA_K\r���Iy}���6%�XdP�$�G�۵|�c�R�iN�C�q��ϣ}lzY^e͌Ķ����~]�]�=c�?���\n�\r���]���m�m�4�%bT�ݰ�z`\0@��|�����x�A���^f�&�P�%���;w̩t\0ں����mY�\0y�g�{~W�����>+x\\ҵլՄ0�5$�l0\0�O�k�n�|�-f����o��je8|<��J:����[�t��<e������+V�<I�Ieq���,�C����l�@m�\0�FkW�-��>%x+����CE�m\n��\0Ne��+�MB2Vh�I݃c�|���3\\�SQռy�@A\r�������9V��r1��㯯־��\0�����	���Q�ٮ-���Q��DPm�ЙY�RF\0��\0�ݼ$�b�9e0��������������1�\'��i�:7���?�ޟ��\0�\"4�\0�x��^$�\Z��ڞ!7W&�;��<r�O$���6e�_��\'�e���Gf�2�oY�6����C��u��)?io�v�y������/�pdm6���9�d�D3�`�i;�\Z�q���\Z|=�\0���]��#�~����뚻����In�n\Z-�b��o89��8{�`�S	�RѶ�����~_��SSb�ܩ��o}���~�߳Ǉl�/]jZ�Ʊ��l��э.���M\r�V^�O9�P�2�[���\0d����/��C�$���5�M&���qr�;g��Υ�0T�E}A�:�#�O	�����6\r��s$:z�[y	;1L�\'����oo��|l�e�Ե�Ö~���g�c`�vp<�Ȼp\0g;C��=�.㪹�|ED�⢝�ʳ��·Pɨ��d�g���V�\0#�3�O����?�I�]I�Oj�:�������y�����_�����9�x�Z��P�π�HZx��ϨHB�G<6#29�\n}+���K�Y�_���I�?��幚�E���i�t�`G�<��@�I �+�:��g?�����>��?G��/�2�f��s՘�䓀j��4ͨ��6�孿S�|}G;a(���%���տ¨.�H��r@QT��%o&�ֳ:��U?.{q�V��Ɨd�o�\'V^r$fǹ�ex�Y�i�o�.�_�li�88t���eĔ-{�y�[��=�?�$��o�j�]Y��\r�,��ǽ|��|q�g��}�i�FP�6MF�x����}�k��KE�u�Up���~���Q�����{�Ky>Q�bi��?�qa�\nδ&ߑ�F�=�����h��\Z�����q�\0���Ɗ���w�\0�_��Q^����Ӌ�\"����#�U\r�*�\0vZ�>=���\"���6�q�ǟ�*�g��#�E��[5[)b�B�Ɂ�p��>��z��~����h������ջ[F	��\\(�\0�u�>��O�>�,5-�~��Cg��m!�s,�T�\"<c��B�ň��F�OR���ng��;{�>��������>#��$�˹K�c6�{�8]����?�zm������o-�,��Ȱ.كڃ�I#�3]�8r�b�/���|�g�a��\Z���ٮ�%�ߊ�n��5��E�-�w�\'ֶ.>5��V�f�K*�!B���\\�_�]gAi�ᾅ�b#��6M�C�p\0�\rs�6�g�E���Y�^F�9߽���1�8>����_+{y��.\Z�rI��z~��KA��:���]�My.֑��@�\0V_����G��0�.��E�9�[�[�@�s�@�ҽ�|3�K��-פE��W��m@>�߁��g�ǽO����7�5X����\"g�n- \'-��f�\0mH\r�`��+�8z��F7]���y��^�\"��e�Ɲe\'���.���Z6��F�}-����x�iF�1]���v��A=�+T�c�Ӛ6��J(wg��\r}}u�ݭ�|M���k4:k�O��#�x-�e���I�R@��k����?�?	o�O����T������捱��-�$t�=+\\wΖ)G	%*\\�I���T�O���8��5���E\'%�g����?�DO�w>����MJ�[1�M<�G]���(����\0��}.���\0Մr]X�6�jH��$��I5���2����8�����o��e�7\\�#���P���`�C��s A�	��|?��㖋���[�w�,�׼?�8�����0ƚ֫)f� ��G��9�^Fy�küV\'�ӣ����t�ɦ��Kiӡ�gB�i�����8ūy[Ky�_���\0�w�9�>���֥}�^�|ku��ރiR�s\\(6�Nw��Kuv2z�M�+�j��>�,��\nI<�I��;�(IpEb^���?a��(g��\'~�^&�<A�Z}��eؿ���+)#fX#�,#Pz�����>-�]�\rw2��A<s�J��W����9��D�{u���F^�WV0n�|�oe�ݏ�?�_�G�K����Z_�D�,�Y�}wG��615�|�$l��_\0��C{W�������(�t�f��񓦅�Xt]Fg�e.ǔ��E9�z�����I��u+D���Ie2ʳ\0�C��\0������%��5�-k�Y\r/R��!�+ɭW	�~L��q��9�#���:YG��M\'&�V�__;a�Я��oQ�K>W��OK;��\0��9����S�����\\��X��-X�o�N��G�6Ĥ�8�\0g��?�OM��]���%�\0���n<#a��rky��&0��*�m��NI���<��q�\0���O���|Mo�}��k�����X��2��\06ι��cᱜ=��b��)Jr��\0�����T�:�.U��>�o�SK��f$m˜l^��gZ�����tܬ�\n�#j�>��_i��o�|Hl���E��S�,\r*���ʎ8���~z��Q�������V}\'P[�ITIIx �u=7\'	�\"�#�;>d�O&<OA����ߴދ�L��c�4k�|\Zɺ���?8fhf�T�,�Ns�_	��\0���ڄ��1b��H������[ǭ-Ėz�J���;����=kЇ�XH+�/��\0��y}��/�]Z��]�����,8�\0�%��?�������/��������\'�ү��/��;\\F)[��G\\���Z.!��P��f��g0��u�����^=�/�����L׏曇�d#���?�w�|Ke�h�5�O%��j:��rk��({O#l=m�����6m/�_�ar�Y}����tȶ�n|�� ��-�I��]�φ�;�mBK&�=������p�\\dd�������*I���q����U&���E!��\\`teu�GZ���|m�χ|7�[x�����E�&���-���}W��S�BJt��w��s�L�-��0����֛>�����������)�4�\nG\n?yNph�h4��:׉�C4V���D�?�mPO^�	�}���x��5����6|Ȋ����pI!�<��?�ROێ��(��Z�[��q�\n(��\"<���>����1׊�iK~�FyOb1�����z�v���6�l/������;O���\0�v���\\2����{Y߲���������u�\Zm�Mq��Fz\0��y���N��%7�?lK�?�z��S��\\j&@n�����ݳ�~��:��_�\'π��|)c�n�%�,�|�7B�I\'�⽼UGG�.T��u������������S��-i%�b�y/���c�~\Z|8�V;�|%�Hty�z�Kͣs�Y��������?�m�?�$���N��m����nm]� �,��� �u�r�ݚO��4�$�B�� 㯨�y��oھ�C��Ʃ�����9��dd����3�k�̱��\r�!�4�]m�L�����6�������0ҿhMc�߱F�k�3ú��5/J�O��3��)r���!��c�W�_�Rok?b���xO@�5�ԯ�=i�Ҭf�[x̩\n��p�b8�j�`��z����t3k�>�t�uj?p�\rO*&���Fz�wJ�r��~�m|m���r%�4�>=��Tl��yv�-�SҾ�Þ\"���ԭk�0�i^M�ｎ2��O�Nғ����}��{��g��\'P�k�j��2��o7#`�ņ*��x�=�����|A��/V���muT��\\�=���?��S[����3A�� �|?��.���]�ܔ��{���ҫ�S��b���흮�%�?�&�j\Z43o��!^�$���NN}+���\'��NK\n���iN\\���Vv���f��%B���hE������o�c����7���r9��3�h\"�n2�`�G�k�~�H�����j�K�p��]\'V�IH�;<����1��	���0�!�Z^�R�C]kV:|�~��\r�R�ZlF���~U�?���^�O�.�Q������>.Ԓ�g�ͨ�[|g�+�K�\0�|�b�	�����b������o��RY�f�L4�՛p}��m\'��D���#������k�L�hV�䈮є��f�ydgk�~;��߶7ƫ�{�z~���ZN��2�>�-�0��`>l�\0�k�?h_�_�8x����-��۩ �#;�\'d��!�`�����t�}���O�Q�2��\'���-�\Z2�������?S͸/W	\n�ƵFm�em5_��藆�$|-X��R�\\zM���S����Ҩ��9���>��V�\0��[?�Rj� ��܆u,��D��\0m���9��~�x��ǚ�k3���)D�\0`n��k��\0�b�k���F�&�hm�P\n�Р,}�?�t֔��#\';���j`�sUP���WI+�v_��\0�c��:���|U���^�{-���u,Q��&�\0/`88���Ͼx�þ=���9����\\�\r�����0r�b�לv��5�I��ͫ�fXCYF.���\\��3_5�����|K�[�F�־#�V��(���c�uӣ�#)��}5�x��)R�N�*KT���w����}�\0qQ^���G��\0!�\0��{O�ί�����O�����+$m$�j�I�o��߭z���������r���Ց\"�@e,G���/�OǥxV�d���FVYA��|��q��W��r��o�m¾\r��������a�K��h*ܨ*���v\\W���gR\n0�&�oNu��s�~-x�\\��<G&�uccmx�g\\�~|�O�6b�p\0�\0v��~�4��/��n&�8�b�V�����q��3��|���K���u	���w1��/̢,�X�<�t��e����gkr�}�nm|���Y;��?J�~&�e���>����M�S���O���@?l��V�p�?�wp�:4w�6�|�p�#��[������\0��\0�t����6��+����Z��f��F����i��p�ݰ�W�z\Z���Ɯ���cq����D���frI�k����6�]�u\0��:d{s^IN�:~�:�o���تp��ek	���dڼ�ծ������Ư�(7�,l���|�i_��6Z���V�F�(\n�<��z��<Ma��x�V�U�����Mqa,�,y6�p�w����_�͟|O�]|Y��G��MΡp<�ܟ#L�<��QS�2M}��yx\n��7�|;��:��t�ck�6y�2�r���RNN_���\0^:��_5\'Z�_}�~�ޯ����ܿ�b��pv�&�6��w���O����\0��\\Z�����O*6��N�ʟL�j���\0i�SY7���Mɾ9ˀ@��GU8�s^O��W�^)�<�� K9/C�c%�24w��4.� {����kz��֖��7���YNv�X�����񳎘���+��K=]�����Ⱛ	i�%̮�E��;]x{�g�u]3R6M�����[`�l��f�~���Z�o�/��<��b��vq�H�c|�$h�<�y$��O��+���\'���5�İ4(m���WS�p~������|}�\rF׵-B�}�lm��kw�4�Eu^��\' W�`2�G������uE㱐�ݒV���~��\0�A><�����,���tMMԴ��X_.�kY�f�h�nH�s�3�r+�S[��P&Y[42H��\0������5�/��\Z�����+˱q\'�o.��#��m���\r�l�-���_�P�0��)��Ɩ�f��I-�}�=��=+�o�\'ü?E�Z�|;���|��}��E�ѼW�]?���i�4��x��]}���HG�,N�r�~���.q��~�~ţT��\0d\r�V�ImbV݌�x!�������U����p�!8�~G���;�2�;Ux����F�\n2è�}�k�-#�\nS⯇��.&���!��ė�����wFp���Q]^ S���Q�jA&���}�;8#��U[xҫνZ����?พ,�o�?�\r�]��\0i��?�u;[X%�!�S[���\0`I%Dx�5X�5K���k���Y$}�}9�U���Lx�㦩�\0�[^���e�lt��BK����eK�O\'�w�4[W;w`!��Oa^��RP���{u�Ӕ}��徑m�wk�OZ�.��*�$,@��_j��?�x�����]2�9�#k��%��[��ʉ�N���=��~���7�t���v�W�F��A��M�����	���1�V�nS���0n�k�oש�W��ks���]�bÁ��#�y����Mq3	\ZiC6J��O�\0�����+���wƲ\\\\:�`;J��\0gq]�����1�uce,j۞W��\\�z�c��ބ\Zg�Ɵ5E?#s�����Y���\0������x����j���:5��\'����.O6�{d5Õ���t��pG��|���~\'H</�\\Ijcg�V2�Adfe<���@k������Y�-���\Z�i���\ZA�{�/8�`O$V^��\0 �ӼMn��.�Y\n��$�wB�˷\'��d�b��q<�A�ӕ�h�6�#�0�-R\rSV���mo���y�P�ZZۭ��,��~���W.T`�ד�\n�����?�?�����I\'Y�1)&}�p:v<��z����]j(���WWof���K���``W�8��^��?�G�e������B�Xm/$HՁ;X!�\'rM|�m�S�N�d�����\n95S�m��>7�\0��x&?�ߵ���[�K�e\\{���WȚοui�-�8������7z��\r/W�	�ٮi��I��\ZF$�:���&����;x\'�@�\08HKQ�#�y<-���mw���)g����*O��[5�Gҟ�L_�(L���q�j����,?��\'X�4Y\\:��U��	�Q��?k�u�bk�J��n�it\"E�3� #<u�Z��r�+|����Tw���@�n�a���_�*�,fCO8��M>]��X�T+�\Z�敯�o�S�/ػ����]?M����λ\r��Ӊ �Yw=�Ȯ�\0�\n��+_|+���Oh�\\�\r���%�Ý�UĎ�X�l�ǦZ����(j߲_��||�Ǘ��x�����.�X$��N|��~P�i ps�\Z���E���\0xG���-�_�I{5���~�mv�{��σ�V�\0dk�sj��eJh�B	��o��;%���1Y���K���,Wm�������j7ڞ��4�..&�VX݀d�g9=:g�g_YKux��[LS��Bs�{���9е����J״��>�\'%-��YA v�=M}E�\0�����\0h�v�׍,u}?���<���\'�(�$.���ad�P��J�J��8UQF4������|�\'�Ju+�$��m�r?�Ν�]|S�ý�5Ə��2)V)��%\r��	�j�/\r|g��E��|#�-���ln&�<æ)�r��ݰAy��>=������Q��j)|��V{�6�QX�g�P0j¹�\"�FK�X͢m��l�J�\0=q�����㬙�q8l,��I\'n��o�]ly��p40��v-��$�����@��5���XⷒH��\'�W_�Y]��#8�q\\o��Z��w�l���n�����?iM~k���7�Ӧ�o�Hɴ�A$q����U����xw�RkW׬�9�UK�-V{9��F�\ZP��퐑��}�a�zy�kܒ����p>a5lVz*���ޗ��A�Ŭ\n������K�rREe��{1���M�:��ޤ]N4V�D*UN�����V}�1i)?�~��I�^?�C*�y�X���?*�v��~�^?���uo���d&F5܂F�m��\n��	���	m���[���8b\Z@�q��Ǡ��/������fOك��w�>%xW]�t]e��[�\0h�wi%eRw2ͅ8�9�UJ����o���F�zQ���u�\0w�����oi��tzm��Z��9X��)�(+���&�B�7u��\0\r�q�Z��2\\FbF3&���6:�����<�X�\0���-[R��?-���9ȆQ��\r�����pk���\0����h!�>�7ֱ�Y䳾����@�,������񘺭\'\r>_�y1�iѻ�R���O������\0��h�!�\0��|%�\0��_�/�\0Ei�j�e}]!�6��lq���>�ic4�\"lu�v�H��F~���F��݄w���x�K�x���Y��+��ąuP�\'���s�#@��c�_X-��x��W�i�4R[��h�Y�TUE	%����Z]C�i��,�-|7w�����i\\�����L���8ボ����)�^}�\0������.�n����_���?�|2�lt�_��\"�Mj,�.�<-6����;I998$��*~��\"�|5&���\'Rѵ(���e����WW�`�]6��簮7���\n�5�~*��TOpn.n�N��nmd��#r��W���u���.�;\rC���Z4�WO,s(�fؼ�8 ��q^m\\5JuT�������Q�#V���WEZ�K��[���S�u�$�6��c��M�#!�dn����W\"�9�$���mZ�Ic}Ά_�op������>8�)�޹�+{�CJ�4k5�yM��[�/n���f�+���oJ���N�:�kH���q��k���3��X����7g+�ٮ��� xt��3N\"�ZB����\\�2I����1�\0��Ǐ?i_/ğ��N��\0��)uH�\0�\n٨�$d`����f��� /�=�\0j�[�w���M᎗s�i�#\"�֢�����8W,;d_K��?�Rm\'Y�]�i�[��Oߋ�Z�bd7��6.q�yy�l�_���7�U-��*ܑ�h��R��>��f������G��o\0�\'TԴ��.��:��(�X\"DR��}9n���%�7�7��Ρ�����0�4�6���,���E_��>3\\x���J_lb�q�������]_�W؅�P�{��9R�x����\0y\\Q<>[�YnW�;�{��τ��|_�g\\���k�2�58Ər\0���;�upY��(�cl��n�$�����sK���\0`O�>*�5���X���G�0��A��6�$����+��&��U���Zď�SjV�\r�%�\Zn֚�;V��C�\n	i!$p������\0����^x_M�on�?���4yc��8P�]v��08[��g����U�eRVv엖�S5����J�:m��7����Ο��������[S�|3��	��<�B���bc-*�c�95��l��������y�*�u�}������?��={��2�g����6�DZ+8�*P�%X�鑃�^Ok��vI�2���O&��8yE)Uwn�?\'�􏕩^������f�?D������\0�h���\0��_�)��y�`��X�V,	<�VRA�g�{O��V����{�\'��MoĚ��[��֚\\�����_$�>a#.��\n�y�_�?|e���-Z�k]�MN[�l2��F�>S���r�}r>��\nG��6�~Ҵ&�<$��$��m֟:�XUu@�O95����\Z�N-�Ԗ�\0?S�2�J*S����]E.��w?���F���+��D�$�UN{	,�\"�W��8Os�+��#�	�c~��/���X�km���G5U���y�2ԒB�A��G?x�ú���Rlu�{�[�B�\ZbN}�+���*kU�o���e<N\n�ի�I����֍nU�w330N�s��]G�n^7D����|�m����k\"\ru��\r��?�l�\0<T�^�m�Ya[���H?��\0Z��IZG��_4^��|0��������zb�˸%�V��cx�#oj�\"��~�Z]+|H�4�-�ْ���Q�\01H.3\Z�0NGWź�7�γڬ7W*��;!E`�� ��]���x�R����ƃ�i�!�\\�Q��ץrO���:#�SV�{�[�i�3�\0�����\0��b�\0�	�o����G�\0�(����{H�y���\0�s�\\i:N���4v�[��`�-���� s��\'�5�6 ���F��#Qg�<�S郟j�-|?�B�\0g��J��,!�t�#��z���K�z����\0^�����o���!���lg�9acǍI�_��\\x����Ht=�Nb����f��~U`&fB���>�+I�5��=F�[����o6���L�Ĕ%c|\"��\"�S�`��u/�;�~�&񅿄t�\Z^��C��h�-���\n��2ϻ���d�l�Y?�e�?g��;�	<K�\nK���,WW�tf�@��cdE!�1���*���㹝,}(�Ὺ��#���h���Z���T->���c���L���H��ݻ���e�5���^���y�=����>��.�#��ˌ�Z���\0����Oğ�����5�w6�>�o-�:<z��q?���$��g�\n���]Կ�H�;�ς<@��\'i�-��Š��e{�����wW�d�V&�Dv��)8ɢ�\n����L���R�G��τ|I�$�<�)$Y\'^*�r8(�\r��NzTS隓ٵ�>0��xx��RH `q�־���\0��-�|����j:3|B׭�	�c����~һ�&t�������W��\0��9�N|B�\'���^�V�����Z�\0��x�����*��⑬9-���\0�_�RW�_q�O6�F_��^����\0Ɩ\Z�Z�Is7�\Za���\00w=�7G�\r�+vT�~m�o�+���\"Ɠ���\0�|O⏍�h�����ie�csjٸ��\"�X�lɽ6��(z�^Y�b�7�c_�^\Z�L�&��~&�;@��rV�Ԗ�0%\\�&�C�c��1�V0�7�|ͻ�0/?�:ׂ�g\r�;��t�}!���欣S[��T�� 1�6���YF\0T��\0�6��G�_��������mcJ���d�F�+x�X��o\0pk���W�)�?�7� ״�?��ž�jU�♷6��,�<�A�G����kS�_�C\r�:����b���p���0����/��,m��yх~��q���j�/3����ztʽ�Я8�Ufֿy��=s����5��_��[zu#sgZ3ڬ�1@�F`xf��I�_2���Y\ZE^���}y��r��~��-���P����;�\0	-���#0����	�91��	�d��g5���\0��wZݭ�����W�M�WM\Zi� v�FVg߷��T�#vHLEIT�I%d�#:5�	9�NR�����d�����q����4��Ơ���uM�����,>b���0�~���/|1�G�\\k_u������ڈ��&�Ɠ;*��L�8U%�����x��\Z\'�+:�����]���Z]�Iy;��[�PW1�#����d��\0�(x�J����z���M���g=ޥ��W��B�X��<�XY	�%{W+�)`�*8�$�����]�ݕ�P�Ybhͩ_[>�߷����_�ph�Lm�E1[9#=U������Mp�?���<Jڣ�Ŧ�I����m$$����_n|3�\0� ��k�O���?⭭���ew6�+5�\\ܦ��h�m_-U��f#a�5������h�,׾(Z�>����t����C�(m�K�(M���ׇ ˒p絭uiuW];#��)N~�wl��]~4�rC&[�:��1Mo��d��o�;q^��~� ��>!x�K��K}I���Z���(l$@�J�%U�A�y�9��>]~�_�/�<y�G��xZ����\"h�m��oL�BF\rz�\'Sا�%{y\r�RvG-y�{�Q��P\"Gm����T��E��f�?-�@�HFNsT�r��N���\0�)�33��<�J�Q2-�E������EQ��z5\\���_j�}�WOd_��ϐ~��x�P�O��l죠S���I�j�}O\'�M���g6鄚f�FB��A�Di��;���^��~,��6>�<Q\r��g�\\i�Y}�\nEop�4�	��29\'9���dx������;��������\0�֗�j��=�%�Qm_�j�c׍��u喑Xtp�G�O�`�@q�Cʩ�\0¯^�~�=��n\rk��l�$�e橨����[[G��c�\n���*���\Z��W�Γ�jze��;���w�\\�w�YM,�M���lg�1�W���q�30����jE�g�6�1$�n����sy��齏��Q�\0����}--�\rRH���T��o��C�c�!\0m�Wp9�{�w���c�}�,c�o��\0G�H�f��-�����/(I%�G���|������x����c�խ/���]r�P�n-⼳�f��\"��,��8�57�vCti�^G�P�M�h-w�Ρໟٿ�uYnZ���M��ԯ4�s�,�X�a�����\n��⎳����^�Z����t�}#lv��*�U\'<�W���_�?���O�Z�F��Kh���m�Ky��d�5`9�*���M����x��Vic�|�k�Y�1��d��==sZr��`⓼U�e�W�����o��\rk��W6����i-���$мzeKE$�������%�\0P���>��~��M��i�O�YZ��sE���:~�_�)ݓ���b�gĿ���I}��$���<�\n�������<�«�����O�4K�6���kk��[�m��m�\n�󁊿S>]l����O�>?�M�|k�-RmC�\Z��5��D�\0��U\n\0\0����\n����$Z-��K����yhvےG1�.��f�9�_<i�:�F�����M[�YTy\"2e��V%[��`��ů��\'��Z�x������J-�����	$P�\0q8T;�:#RkC�<m�t�F����I���x�|e�ƱZ�%��v3�����������\0�S�_���<yyv�.�\Z��\n2�)u�T�ޤ�:v�|ܷlp]���R%ʲ�m���z\n¥I�J)����\Zp�Ǳ|+��~(|�日�g�W�]���.�n�n��D32��,�0ď��v�>�Yˠx�kCce.�\n=����Lgt��G2��|�-�1��\nx;��!���zb�XzR���ȯcO��\n���\0\Z>|c�_�<-���M�C�Y�[w�����Pc\'�k�~&|G־0|A��U�;����^It��4��6\0\0rO�X���q�Z�YpGד��E\'t8ӄ]�\Z�\00l��5[��.�\'�gև�(������݃��T{���Ί?��');
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
