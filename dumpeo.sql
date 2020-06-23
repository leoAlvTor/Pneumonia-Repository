-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

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
-- Current Database: `ejb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `ejb`;

--
-- Table structure for table `CATEGORY`
--

DROP TABLE IF EXISTS `CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORY` (
  `CODIGO` int(11) NOT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORY`
--

LOCK TABLES `CATEGORY` WRITE;
/*!40000 ALTER TABLE `CATEGORY` DISABLE KEYS */;
INSERT INTO `CATEGORY` (`CODIGO`, `DESCRIPCION`) VALUES (1,'Hola Adios'),(2,'1211'),(3,'');
/*!40000 ALTER TABLE `CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `CODIGO` int(11) NOT NULL,
  `COSTOUNITARIO` double DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA_CODIGO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `FK_PRODUCT_CATEGORIA_CODIGO` (`CATEGORIA_CODIGO`),
  CONSTRAINT `FK_PRODUCT_CATEGORIA_CODIGO` FOREIGN KEY (`CATEGORIA_CODIGO`) REFERENCES `CATEGORY` (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` (`SEQ_NAME`, `SEQ_COUNT`) VALUES ('SEQ_GEN',50);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jee`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `jee`;

--
-- Table structure for table `PERSONA`
--

DROP TABLE IF EXISTS `PERSONA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSONA` (
  `CODIGO` int(11) NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSONA`
--

LOCK TABLES `PERSONA` WRITE;
/*!40000 ALTER TABLE `PERSONA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PERSONA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` (`SEQ_NAME`, `SEQ_COUNT`) VALUES ('SEQ_GEN',650);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TELEFONO`
--

DROP TABLE IF EXISTS `TELEFONO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TELEFONO` (
  `ID` int(11) NOT NULL,
  `NUMERO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OPERADORA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USUARIO_CEDULA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TELEFONO_USUARIO_CEDULA` (`USUARIO_CEDULA`),
  CONSTRAINT `FK_TELEFONO_USUARIO_CEDULA` FOREIGN KEY (`USUARIO_CEDULA`) REFERENCES `usuario` (`CEDULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TELEFONO`
--

LOCK TABLES `TELEFONO` WRITE;
/*!40000 ALTER TABLE `TELEFONO` DISABLE KEYS */;
INSERT INTO `TELEFONO` (`ID`, `NUMERO`, `OPERADORA`, `TIPO`, `USUARIO_CEDULA`) VALUES (1,'0979395837','MOVISTAR','CELULAR','0101130862');
/*!40000 ALTER TABLE `TELEFONO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UPS_ENTIDAD_UNO`
--

DROP TABLE IF EXISTS `UPS_ENTIDAD_UNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UPS_ENTIDAD_UNO` (
  `CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `APELLIDO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UEU_EMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  UNIQUE KEY `UEU_EMAIL` (`UEU_EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UPS_ENTIDAD_UNO`
--

LOCK TABLES `UPS_ENTIDAD_UNO` WRITE;
/*!40000 ALTER TABLE `UPS_ENTIDAD_UNO` DISABLE KEYS */;
INSERT INTO `UPS_ENTIDAD_UNO` (`CODIGO`, `APELLIDO`, `UEU_EMAIL`, `NOMBRE`) VALUES (1,'Apellido2','correo2','Nombre2');
/*!40000 ALTER TABLE `UPS_ENTIDAD_UNO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `CODIGO` int(11) NOT NULL,
  `NACIONALIDAD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` (`CODIGO`, `NACIONALIDAD`, `NOMBRE`) VALUES (552,'Estadounidense','Patito');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo`
--

DROP TABLE IF EXISTS `capitulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capitulo` (
  `CODIGO` int(11) NOT NULL,
  `NUMERO` int(11) DEFAULT NULL,
  `TITULO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIBRO_CODIGO` int(11) DEFAULT NULL,
  `AUTOR_CODIGO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `FK_capitulo_AUTOR_CODIGO` (`AUTOR_CODIGO`),
  KEY `FK_capitulo_LIBRO_CODIGO` (`LIBRO_CODIGO`),
  CONSTRAINT `FK_capitulo_AUTOR_CODIGO` FOREIGN KEY (`AUTOR_CODIGO`) REFERENCES `autor` (`CODIGO`),
  CONSTRAINT `FK_capitulo_LIBRO_CODIGO` FOREIGN KEY (`LIBRO_CODIGO`) REFERENCES `libro` (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo`
--

LOCK TABLES `capitulo` WRITE;
/*!40000 ALTER TABLE `capitulo` DISABLE KEYS */;
INSERT INTO `capitulo` (`CODIGO`, `NUMERO`, `TITULO`, `LIBRO_CODIGO`, `AUTOR_CODIGO`) VALUES (553,0,'El perro y el gato',551,552);
/*!40000 ALTER TABLE `capitulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `CODIGO` int(11) NOT NULL,
  `ISBN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NUMEROPAGINAS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` (`CODIGO`, `ISBN`, `NOMBRE`, `NUMEROPAGINAS`) VALUES (551,'000','NA',100),(601,'2234','Libro',200);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla1`
--

DROP TABLE IF EXISTS `tabla1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabla1` (
  `id1` int(11) NOT NULL,
  `nombre` char(20) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla1`
--

LOCK TABLES `tabla1` WRITE;
/*!40000 ALTER TABLE `tabla1` DISABLE KEYS */;
INSERT INTO `tabla1` (`id1`, `nombre`) VALUES (3,'-'),(4,'JESUS'),(5,'JUAN');
/*!40000 ALTER TABLE `tabla1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `CEDULA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CEDULA`),
  UNIQUE KEY `CORREO` (`CORREO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`CEDULA`, `APELLIDO`, `CORREO`, `NOMBRE`, `PASSWORD`) VALUES ('0101130862','Alvarado','leo@leo.com','Leo','123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mundoganaderomercy`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mundoganaderomercy` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_spanish_ci */;

USE `mundoganaderomercy`;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `cliente_id` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_telefono` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`cliente_id`, `cliente_nombre`, `cliente_telefono`, `cliente_direccion`) VALUES ('0101130862','Celso Alvarado','0998072563','Checa'),('0105652747','Leonardo Alvarado','0979395837','Checa'),('9999999999','Consumidor Final','0000000000','NA'),('9999999999999','Daniel Cardenas','NA','Corpanche');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_cabecera`
--

DROP TABLE IF EXISTS `compra_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_cabecera` (
  `factura_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `autorizacion` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `fecha` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `forma_pago` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `proveedor_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `plazo` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `abono` double(14,4) NOT NULL,
  `subtotal12` double(14,4) NOT NULL,
  `subtotal0` double(14,4) NOT NULL,
  `totalIVA` double(14,4) NOT NULL,
  `ice` double(14,4) NOT NULL,
  `irbp` double(14,4) NOT NULL,
  `total` double(14,4) NOT NULL,
  `anulada` varchar(20) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'falso',
  PRIMARY KEY (`autorizacion`),
  KEY `fk_compra_proveedor` (`proveedor_id`),
  CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_cabecera`
--

LOCK TABLES `compra_cabecera` WRITE;
/*!40000 ALTER TABLE `compra_cabecera` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_detalle`
--

DROP TABLE IF EXISTS `compra_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_detalle` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `cabecera_id` varchar(200) COLLATE utf16_spanish_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `p_unit` double(14,4) NOT NULL,
  `v_total` double(14,4) NOT NULL,
  `pvp_unit` double(14,4) NOT NULL,
  `p_caja` double(14,4) NOT NULL,
  `v_total_caja` double(14,4) NOT NULL,
  `pvp_caja` double(14,4) NOT NULL,
  `tarifa` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `fecha_vencimiento` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `dummy` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_compra_producto` (`prod_id`),
  KEY `fk_detalle_cabecera` (`cabecera_id`),
  CONSTRAINT `FK_compra_producto` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`),
  CONSTRAINT `fk_detalle_cabecera` FOREIGN KEY (`cabecera_id`) REFERENCES `compra_cabecera` (`autorizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_detalle`
--

LOCK TABLES `compra_detalle` WRITE;
/*!40000 ALTER TABLE `compra_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `compra_productos` AFTER INSERT ON `compra_detalle` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock + NEW.cantidad,
	prod_fecha = NEW.fecha_vencimiento
	where prod_id = NEW.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `deuda_cabecera`
--

DROP TABLE IF EXISTS `deuda_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deuda_cabecera` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `id_factura` int(50) NOT NULL DEFAULT 0,
  `fecha_inicial` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `monto_original` double(14,4) NOT NULL,
  `monto_cancelado` double(14,4) NOT NULL DEFAULT 0.0000,
  `estado` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'PENDIENTE',
  PRIMARY KEY (`id`),
  KEY `fk_deuda_cliente` (`ruc`),
  KEY `fk_deuda_factura` (`id_factura`),
  CONSTRAINT `fk_deuda_cliente` FOREIGN KEY (`ruc`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `fk_deuda_factura` FOREIGN KEY (`id_factura`) REFERENCES `factura_cabecera` (`factura_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deuda_cabecera`
--

LOCK TABLES `deuda_cabecera` WRITE;
/*!40000 ALTER TABLE `deuda_cabecera` DISABLE KEYS */;
INSERT INTO `deuda_cabecera` (`id`, `ruc`, `id_factura`, `fecha_inicial`, `monto_original`, `monto_cancelado`, `estado`) VALUES (7,'9999999999999',23,'03-06-2020',2.7300,2.7300,'PENDIENTE'),(8,'9999999999999',24,'03-06-2020',17.5000,0.0000,'PENDIENTE'),(9,'0105652747',25,'16-06-2020',274.9000,0.0000,'PENDIENTE');
/*!40000 ALTER TABLE `deuda_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deuda_detalle`
--

DROP TABLE IF EXISTS `deuda_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deuda_detalle` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `deuda_id` int(20) NOT NULL,
  `monto_cancelado` double(14,4) NOT NULL,
  `fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_deuda_deuda` (`deuda_id`),
  CONSTRAINT `fk_deuda_deuda` FOREIGN KEY (`deuda_id`) REFERENCES `deuda_cabecera` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deuda_detalle`
--

LOCK TABLES `deuda_detalle` WRITE;
/*!40000 ALTER TABLE `deuda_detalle` DISABLE KEYS */;
INSERT INTO `deuda_detalle` (`id`, `deuda_id`, `monto_cancelado`, `fecha`) VALUES (17,7,2.7000,'03-06-2020');
/*!40000 ALTER TABLE `deuda_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleado_id` int(20) NOT NULL AUTO_INCREMENT,
  `empleado_nombres` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_titulo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_email` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_telefono` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_activo` tinyint(1) DEFAULT NULL,
  `empleado_password` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '=Q^t5Q*ABky5EmAu^tU%M5wac',
  PRIMARY KEY (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`empleado_id`, `empleado_nombres`, `empleado_titulo`, `empleado_email`, `empleado_telefono`, `empleado_direccion`, `empleado_activo`, `empleado_password`) VALUES (10,'Mercy Cardenas','Medica Veterinaria','NA','4041108','Chiquintad',0,'mundoganadero2020'),(11,'test','test','NA','4041108','Chiquintad',0,'pass');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_cabecera`
--

DROP TABLE IF EXISTS `factura_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_cabecera` (
  `factura_id` int(50) NOT NULL AUTO_INCREMENT,
  `cliente_ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_tipo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_subtotal` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_iva` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_descuento` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_total` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_anulada` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'FALSE',
  `factura_empleado` int(50) NOT NULL,
  PRIMARY KEY (`factura_id`),
  KEY `fk_factura_cliente` (`cliente_ruc`),
  KEY `fk_factura_empleado` (`factura_empleado`),
  CONSTRAINT `fk_factura_cliente` FOREIGN KEY (`cliente_ruc`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `fk_factura_empleado` FOREIGN KEY (`factura_empleado`) REFERENCES `empleados` (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_cabecera`
--

LOCK TABLES `factura_cabecera` WRITE;
/*!40000 ALTER TABLE `factura_cabecera` DISABLE KEYS */;
INSERT INTO `factura_cabecera` (`factura_id`, `cliente_ruc`, `factura_tipo`, `factura_fecha`, `factura_subtotal`, `factura_iva`, `factura_descuento`, `factura_total`, `factura_anulada`, `factura_empleado`) VALUES (22,'0101130862','contado','03-06-2020',154.0000,21.0000,0.0000,175.0000,'FALSE',11),(23,'9999999999999','credito','03-06-2020',2.7300,0.0000,0.0000,2.7300,'FALSE',11),(24,'9999999999999','credito','03-06-2020',15.4000,2.1000,0.0000,17.5000,'1',11),(25,'0105652747','credito','16-06-2020',274.9000,0.0000,0.0000,274.9000,'FALSE',11);
/*!40000 ALTER TABLE `factura_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_detalle`
--

DROP TABLE IF EXISTS `factura_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_detalle` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cabecera_id` int(100) NOT NULL DEFAULT 0,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `descripcion` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `tarifa` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `cantidad` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_unit` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_caja` double(14,4) NOT NULL DEFAULT 0.0000,
  `total` double(20,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`),
  KEY `fk_factura_det_cab` (`cabecera_id`),
  KEY `fk_factura_det_producto` (`prod_id`),
  CONSTRAINT `fk_factura_det_cab` FOREIGN KEY (`cabecera_id`) REFERENCES `factura_cabecera` (`factura_id`),
  CONSTRAINT `fk_factura_det_producto` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalle`
--

LOCK TABLES `factura_detalle` WRITE;
/*!40000 ALTER TABLE `factura_detalle` DISABLE KEYS */;
INSERT INTO `factura_detalle` (`id`, `cabecera_id`, `prod_id`, `descripcion`, `tarifa`, `cantidad`, `precio_unit`, `precio_caja`, `total`) VALUES (47,23,'123','Google Chrome','0',1.0000,2.7259,0.0000,2.7259),(48,24,'2211','Kitkat','12',1.0000,1.2000,17.5000,17.5000),(49,25,'Lidomic Frascos x 100cm','Lidomic Frasco x 100cm','0',1.0000,5.9000,0.0000,5.9000),(50,25,'7703889066107','Lombricel 25 x500ml','0',10.0000,26.9000,0.0000,269.0000);
/*!40000 ALTER TABLE `factura_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `venta_productos` AFTER INSERT ON `factura_detalle` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock - NEW.cantidad
	where prod_id = NEW.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nota_c`
--

DROP TABLE IF EXISTS `nota_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_c` (
  `nota_id` int(50) NOT NULL AUTO_INCREMENT,
  `cliente_ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_tipo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_subtotal` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_iva` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_descuento` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_total` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_anulada` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'FALSE',
  `factura_empleado` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`nota_id`),
  KEY `fk_nota_ruc` (`cliente_ruc`),
  CONSTRAINT `fk_nota_ruc` FOREIGN KEY (`cliente_ruc`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_c`
--

LOCK TABLES `nota_c` WRITE;
/*!40000 ALTER TABLE `nota_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_cabecera`
--

DROP TABLE IF EXISTS `nota_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_cabecera` (
  `autorizacion` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `idFactura` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `numeroNota` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `fechaNota` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `formaPago` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `proveedorRuc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `plazo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `abono` double(14,4) NOT NULL,
  `subtotal12` double(14,4) NOT NULL,
  `subtotal0` double(14,4) NOT NULL,
  `iva` double(14,4) NOT NULL,
  `ice` double(14,4) NOT NULL,
  `irbp` double(14,4) NOT NULL,
  `total` double(14,4) NOT NULL,
  PRIMARY KEY (`autorizacion`),
  KEY `fk_nota_proveedor` (`proveedorRuc`),
  CONSTRAINT `fk_nota_proveedor` FOREIGN KEY (`proveedorRuc`) REFERENCES `proveedores` (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_cabecera`
--

LOCK TABLES `nota_cabecera` WRITE;
/*!40000 ALTER TABLE `nota_cabecera` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_d`
--

DROP TABLE IF EXISTS `nota_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_d` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cabecera_id` int(100) NOT NULL DEFAULT 0,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `descripcion` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `tarifa` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `cantidad` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_unit` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_caja` double(14,4) NOT NULL DEFAULT 0.0000,
  `total` double(20,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_d`
--

LOCK TABLES `nota_d` WRITE;
/*!40000 ALTER TABLE `nota_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_d` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `nota_venta_productos` AFTER INSERT ON `nota_d` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock - NEW.cantidad
	where prod_id = NEW.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nota_detalle`
--

DROP TABLE IF EXISTS `nota_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_detalle` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `autorizacion` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `p_unit` double(14,4) NOT NULL,
  `v_total` double(14,4) NOT NULL,
  `pvp_unit` double(14,4) NOT NULL,
  `p_caja` double(14,4) NOT NULL,
  `v_total_caja` double(14,4) NOT NULL,
  `pvp_caja` double(14,4) NOT NULL,
  `tarifa` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nota_producto` (`prod_id`),
  KEY `fk_nota_cabecera_aut` (`autorizacion`),
  CONSTRAINT `fk_nota_cabecera_aut` FOREIGN KEY (`autorizacion`) REFERENCES `nota_cabecera` (`autorizacion`),
  CONSTRAINT `fk_nota_producto` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_detalle`
--

LOCK TABLES `nota_detalle` WRITE;
/*!40000 ALTER TABLE `nota_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `nota_compra_productos` AFTER INSERT ON `nota_detalle` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock - NEW.cantidad
	where prod_id = NEW.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_clase` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_genero` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_fecha_nac` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_raza` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_pelaje` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_prop_ci` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_ciudad` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_edad` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`paciente_id`),
  KEY `FK_paciente_propietario` (`paciente_prop_ci`),
  CONSTRAINT `FK_paciente_propietario` FOREIGN KEY (`paciente_prop_ci`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` (`paciente_id`, `paciente_nombre`, `paciente_clase`, `paciente_genero`, `paciente_direccion`, `paciente_fecha_nac`, `paciente_raza`, `paciente_pelaje`, `paciente_prop_ci`, `paciente_ciudad`, `paciente_edad`) VALUES (8,'Peluche','Canino','Macho','Checa','01-07-2019','Mestizo','Blanco','0105652747','Cuenca','0.11.2');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `prod_id` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_main_id` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_name` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_main_name` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_fecha` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prov_RUC` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_category` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_representation` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_int_quantity` int(10) NOT NULL,
  `prod_stock` double(14,4) NOT NULL DEFAULT 0.0000,
  `prod_box_price` double(14,4) NOT NULL,
  `prod_unit_price` double(10,4) NOT NULL,
  `prod_tax` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_box_12` double(10,4) NOT NULL,
  `prod_unit_12` double(10,4) NOT NULL,
  `prod_sell_box` double(10,4) NOT NULL,
  `prod_sell_unit` double(10,4) NOT NULL,
  PRIMARY KEY (`prod_id`),
  KEY `FK_producto_proveedor` (`prov_RUC`),
  CONSTRAINT `FK_producto_proveedor` FOREIGN KEY (`prov_RUC`) REFERENCES `proveedores` (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`prod_id`, `prod_main_id`, `prod_name`, `prod_main_name`, `prod_fecha`, `prov_RUC`, `prod_category`, `prod_representation`, `prod_int_quantity`, `prod_stock`, `prod_box_price`, `prod_unit_price`, `prod_tax`, `prod_box_12`, `prod_unit_12`, `prod_sell_box`, `prod_sell_unit`) VALUES ('00204','00204','Comedero rojo de 25kg','Comedero rojo de 25kg','2022-01-01','0101832426001','OTROS','UNIDAD',1,-12.0000,0.0000,8.2500,'0',0.0000,9.5000,0.0000,9.5000),('00294','00294','Gotero Cuajo Andino x60cm','Gotero Cuajo Andino x60cm','2022-01-01','0101832426001','OTROS','UNIDAD',1,7.0000,0.0000,1.7900,'12',0.0000,2.2000,0.0000,2.5000),('0034','0034','Bebedero 10lt CH','Bebedero 10lt CH','2022-01-01','0101832426001','OTROS','UNIDAD',1,-5.0000,0.0000,5.3900,'0',0.0000,6.7500,0.0000,6.7500),('0035','0035','Bebedero x 2lt ','Bebedero x 2lt ','2022-01-01','0101832426001','OTROS','UNIDAD',1,3.0000,0.0000,1.7000,'0',0.0000,2.8500,0.0000,2.8500),('0037','0037','Bebedero x 4lt CH','Bebedero x 4lt CH','2022-01-01','0101832426001','OTROS','UNIDAD',1,1.0000,0.0000,2.5000,'0',0.0000,3.5000,0.0000,3.5000),('0038','0038','Bebedero 6lt CH','Bebedero 6lt CH','2022-01-01','0101832426001','OTROS','UNIDAD',1,2.0000,0.0000,3.5900,'0',0.0000,4.7500,0.0000,4.7500),('0039','0039','Comedero bicolor 10lb','Comedero bicolor 10lb','2022-01-01','0101832426001','OTROS','UNIDAD',1,3.0000,0.0000,3.2500,'0',0.0000,4.7500,0.0000,4.7500),('0040','0040','Comedero bicolor 2.5kg','Comedero bicolor 2.5kg','2022-01-01','0101832426001','OTROS','UNIDAD',1,2.0000,0.0000,2.2500,'0',0.0000,3.5000,0.0000,3.5000),('0045','0045','Bebedero x 5lt CH','Bebedero x 5lt CH','2022-01-01','0101832426001','OTROS','UNIDAD',1,2.0000,0.0000,2.8300,'0',0.0000,3.8500,0.0000,3.8500),('084369000925','0174','Chupon mediano paar ovejas-cerdos','Chupon mediano paar ovejas-cerdos','2022-01-01','0101832426001','OTROS','EMPAQUE',12,1.0000,19.2000,1.6000,'0',27.0000,2.2500,27.0000,2.2500),('085845007315','0163','Anillo nasal num. 31','Anillo nasal numero 31','2022-01-01','0101832426001','OTROS','UNIDAD',1,5.0000,0.0000,7.3700,'0',0.0000,9.0000,0.0000,9.0000),('085845007339','00201','Anillo nasal num. 33','Anillo nasal num. 33','2022-01-01','0101832426001','OTROS','UNIDAD',1,5.0000,0.0000,7.8800,'0',0.0000,9.2500,0.0000,9.2500),('085845007537','0154','Anillo nasal num. 53','Anillo nasal numero 53','2022-01-01','0101832426001','OTROS','UNIDAD',1,4.0000,0.0000,8.7400,'0',0.0000,10.0000,0.0000,10.0000),('087219118610','087219118610','Vi-sorbits tabletas x200','Vi-sorbits tabletas x200','2021-11-01','0992512040001','Medicamentos','EMPAQUE',200,1.0000,39.1800,0.2000,'0',48.9800,0.3500,48.9800,0.3500),('123','321','Google Chrome','GChrome','2019-10-16','0101130862001','Abonos','UNIDAD',1,-2.0000,0.0000,3.2500,'0',0.0000,2.7259,0.0000,2.7259),('130','130','Foscablock 5kg x2','Foscablock 5kg x2','2020-05-01','0102561594001','OTROS','UNIDAD',1,2.0000,0.0000,12.8000,'0',0.0000,16.0000,0.0000,16.0000),('17730952033190','NOVF55','Sincromic','Sincromic 2cm caja x10','2021-10-01','0102143211001','Hormonas','EMPAQUE',10,-14.0000,32.0000,3.2000,'12',39.6000,3.9600,45.0000,4.5000),('2211','1122','Kitkat','Kitkat cocholate 9999','24-03-2020','0101130862001','Abonos','Unidad',10,997.0000,15.0000,1.0000,'12',15.4000,1.0560,17.5000,1.2000),('335','335','Ubretol tubo x30gr','Ubretol tubo x30gr','2021-09-02','0100331123001','Medicamentos','UNIDAD',1,10.0000,0.0000,1.0000,'0',0.0000,1.2500,0.0000,1.2500),('413','07413','Tarjetas JEP','TarjJep','2019-10-15','0105652747001','OTROS','UNIDAD',1,0.0000,0.0000,1.2500,'0',0.0000,1.5000,0.0000,1.5000),('714193600861','1020001','Petavit x60 tabletas','Petavit x60 tabletas','2021-08-01','0101773992001','Medicamentos','EMPAQUE',60,1.0000,11.2000,0.1900,'0',14.0000,0.3500,14.0000,0.3500),('769002032012','0180','Mister stick cinta atrapa mosca','Mister stick cinta atrapa mosca','2022-01-01','0101832426001','OTROS','EMPAQUE',100,3.0000,79.5000,0.8000,'0',0.0000,1.0000,0.0000,1.0000),('7703889001283','128','Chadine 1000ml','Chadine solucion x100ml','2021-09-01','1790721450001','Medicamentos','UNIDAD',1,1.0000,0.0000,10.0000,'0',0.0000,12.5000,0.0000,12.5000),('7703889001344','134','Enrovet 5% 100ml ','Enrovet solucion inyectable 5% 100ml ','2021-06-01','1790721450001','Medicamentos','UNIDAD',1,1.0000,0.0000,10.0000,'0',0.0000,12.5000,0.0000,12.5000),('7703889001511','151','Minaviar Antiestres 100G','Minaviar Sobre x 100G','2020-10-31','1790721450001','Medicamentos','UNIDAD',1,12.0000,0.0000,2.3000,'0',0.0000,3.0000,0.0000,3.0000),('7703889001542','7703889001542','Paredon x20ml','Paredon x20ml','2022-08-01','1790721450001','Medicamentos','UNIDAD',1,11.0000,0.0000,2.0000,'0',0.0000,2.2000,0.0000,2.2000),('7703889001597','159','Simprobac TS Frasco 20ml','Simprobac TS Frasco 20ml','2021-10-01','1790721450001','Medicamentos','UNIDAD',1,4.0000,0.0000,3.6000,'0',0.0000,4.5000,0.0000,4.5000),('7703889001610','161','Simprobac suspencion oral 50ml','Simprobac Susp. Oral x 50ml','2020-09-01','1790721450001','Medicamentos','UNIDAD',1,5.0000,0.0000,3.6000,'0',0.0000,4.5000,0.0000,4.5000),('7703889001764','176','Zakor 200mg-ml','Zakor 200mg-ml','2023-01-01','1790721450001','Medicamentos','UNIDAD',1,3.0000,0.0000,3.0000,'0',0.0000,3.7500,0.0000,3.7500),('7703889018038','1803','Fulminado 20ml','Fulminado frasco x 20ml','2021-10-01','1790721450001','Medicamentos','UNIDAD',1,13.0000,0.0000,2.2000,'0',0.0000,2.7500,0.0000,2.7500),('7703889018045','1804','Fulminado x100ml','Fulminado 2008 x100ml','2022-02-01','1790721450001','Medicamentos','UNIDAD',1,2.0000,0.0000,7.0000,'0',0.0000,8.7500,0.0000,8.7500),('7703889066107','6610','Lombricel 25 x500ml','Lombricel 25x100% co x500ml','2022-09-01','1790721450001','Medicamentos','UNIDAD',1,-35.0000,0.0000,21.5000,'0',0.0000,26.9000,0.0000,26.9000),('7703889066275','7703889066275','Netecan Suspencion Oral 10ml','Netecan Suspencion Oral 10ml','2021-07-01','1790721450001','Medicamentos','UNIDAD',1,5.0000,0.0000,2.6000,'0',0.0000,3.2500,0.0000,3.2500),('7703889066343','7703889066343','Netecan Suspension Oral 2ml','Netecan Suspension Oral 2ml','2021-07-01','1790721450001','Medicamentos','UNIDAD',1,6.0000,0.0000,1.5000,'0',0.0000,1.9000,0.0000,1.9000),('7703889066350','6635','Netecan Suspension oral 5ml','Netecan Suspension oral 5ml','2021-02-01','1790721450001','Medicamentos','UNIDAD',1,19.0000,0.0000,1.9000,'0',0.0000,2.4000,0.0000,2.4000),('7703889069573','6957','Clordelin V frasco 300ml','Clordelin V 300ml frasco x10ml','2021-10-01','1790721450001','Medicamentos','UNIDAD',1,6.0000,0.0000,8.0000,'0',0.0000,10.0000,0.0000,10.0000),('7703889073129','7703889073129','Cutamycon-VF 35G','Cutamycon-VF 35G','2023-03-01','1790721450001','Medicamentos','UNIDAD',1,2.0000,0.0000,3.8000,'0',0.0000,4.7500,0.0000,4.7500),('7703889096241','7703889096241','Enrovet Tabletas 25mg','Enrovet Tabletas 25mg','2021-12-01','1790721450001','Medicamentos','UNIDAD',1,300.0000,0.0000,0.1800,'0',0.0000,0.2500,0.0000,0.2500),('7703889097675','9767','Chadine 120ml','Chadine 120ml','2021-06-01','1790721450001','Medicamentos','UNIDAD',1,17.0000,0.0000,2.2000,'0',0.0000,2.7500,0.0000,2.7500),('7703889114198','11419','Vetergenta 10ml','Vetergenta gotas x 10ml','2021-10-01','1790721450001','Medicamentos','UNIDAD',1,3.0000,0.0000,3.2000,'0',0.0000,4.0000,0.0000,4.0000),('7703889114655','Gusantrol NF Unguento 60G','Gusantrol NF Unguento 60G','Gusantrol NF Unguento 60G','2020-11-01','1790721450001','Medicamentos','UNIDAD',1,4.0000,0.0000,2.5000,'0',0.0000,3.5000,0.0000,3.5000),('7703889122773','5537','Minaviar Antiestres 25G','Minaviar Antiestres 25G','2020-10-01','1790721450001','Medicamentos','UNIDAD',1,38.0000,0.0000,0.6000,'0',0.0000,1.0000,0.0000,1.0000),('7703889151162','7703889151162','Maxpren 10ml','Maxpren 10ml','2020-07-01','1790721450001','Medicamentos','UNIDAD',1,1.0000,0.0000,18.0000,'0',0.0000,22.5000,0.0000,22.5000),('7703889153746','7703889153746','Tradiovet 20ml','Tradiovet 20ml','2019-04-01','1790721450001','Medicamentos','UNIDAD',1,1.0000,0.0000,8.0000,'0',0.0000,10.0000,0.0000,10.0000),('7703889154972','15497','Sinborto 10ml','Sinborto frasco x 10ml','2021-01-01','1790721450001','Hormonas','UNIDAD',1,2.0000,0.0000,6.0000,'0',0.0000,7.5000,0.0000,7.5000),('7703889159298','175','Zakor Cerdos Granulado x5G','Zakor Cerdos Granulado x5G','2023-03-01','1790721450001','Medicamentos','UNIDAD',1,109.0000,0.0000,0.6000,'0',0.0000,1.0000,0.0000,1.0000),('7706358000084','7706358000084','Coccigan-s suspencion oral 10ml','Coccigan-s suspencion oral 10ml','2020-04-01','1104327570001','Medicamentos','UNIDAD',1,5.0000,0.0000,3.2000,'0',0.0000,4.0000,0.0000,4.0000),('7706358088624','7706358088624','Amigo Fresh 5g','Amigo Fresh 5g','2021-11-01','1104327570001','OTROS','UNIDAD',1,18.0000,0.0000,1.4000,'0',0.0000,1.9500,0.0000,1.9500),('7707007400620','DIARRVET50','Diarrevet 10G','Diarravet x 10gr','2021-10-01','0301942256001','Medicamentos','UNIDAD',1,50.0000,0.0000,1.1800,'0',0.0000,1.3000,0.0000,1.3000),('7707115300188','7707115300188','Quinocalf Pastilla 25mg','Quinocalf Pastilla 25mg','2021-09-01','0102561594001','Medicamentos','UNIDAD',1,382.0000,0.0000,0.1800,'0',0.0000,0.2500,0.0000,0.2500),('7707115366863','7707115366863','Marboquin tabletas 25mg','Marboquin tabletas 25mg','2020-04-01','0102561594001','Medicamentos','EMPAQUE',30,1.0000,24.0000,1.0000,'0',30.0000,1.2500,30.0000,1.2500),('7707115399885','912','Mikomax x10 tabletas','Mikomax x10 tabletas','2021-09-01','0102561594001','Medicamentos','EMPAQUE',1,10.0000,3.6800,0.3600,'0',4.6000,0.5000,4.6000,0.5000),('7707264460207','7707264460207','Conceptal 10ml','Conceptal FCO x 10ml','2019-12-01','0190388808001','Hormonas','UNIDAD',1,3.0000,0.0000,18.2400,'0',0.0000,28.5000,0.0000,28.5000),('7707297410510','LAU175','Aislador poste varilla x25U','Aislador poste varilla x25U','2022-01-01','0102143211001','OTROS','EMPAQUE',25,4.0000,9.7500,0.3900,'12',10.5600,0.5280,12.0000,0.6000),('7707297410736','LAU019','Aislador pivote negro x100','Aislador pivote negro x100','2022-01-01','0102143211001','OTROS','EMPAQUE',100,2.0000,18.1400,0.1814,'12',21.4720,0.2200,24.4000,0.2500),('7730952030178','7730952030178','Shooter spray 60ml','Shooter spray 60ml','2021-09-01','0102143211001','Medicamentos','UNIDAD',1,12.0000,0.0000,5.6000,'0',0.0000,7.0000,0.0000,7.0000),('7730952030185','7730952030185','Shooter spray 120ml','Shooter spray 120ml','2022-02-01','0102143211001','Medicamentos','UNIDAD',1,4.0000,0.0000,8.0000,'0',0.0000,10.0000,0.0000,10.0000),('7730952030390','7730952030390','Shooter pipeta 5kg a 10kg','Shooter pipeta 5kg a 10kg','2022-08-01','0102143211001','Medicamentos','UNIDAD',1,3.0000,0.0000,4.6400,'0',0.0000,5.8000,0.0000,5.8000),('7730952030406','7730952030406','Shooter Pipeta 10kg a 25kg 2.5ml','Shooter Pipeta 10kg a 25kg 2.5ml','2020-10-01','0102143211001','Medicamentos','UNIDAD',1,5.0000,0.0000,5.2000,'0',0.0000,6.5000,0.0000,6.5000),('7730952032202','MOVF144','Vitmic Complemento 500cc','Vitmic Complemento 500cc','2021-11-01','0102143211001','Medicamentos','UNIDAD',1,6.0000,0.0000,7.6000,'0',0.0000,9.5000,0.0000,9.5000),('7730952032950','NOVF34','Doramic 50ml','Doramic 50ml','2021-12-01','0102143211001','Medicamentos','UNIDAD',1,2.0000,0.0000,9.2000,'0',0.0000,11.5000,0.0000,11.5000),('7730952033124','NOVF00100','Saguaymic plus x50ml','Saguaymic plus frasco x50cc','2022-05-01','0102143211001','Medicamentos','UNIDAD',1,9.0000,0.0000,4.5600,'0',0.0000,5.7000,0.0000,5.7000),('7730952033209','NOVF019','Microtel 50ml','Microtel Boe oral x50cc','2022-02-01','0102143211001','Medicamentos','UNIDAD',1,9.0000,0.0000,4.1600,'0',0.0000,5.2000,0.0000,5.2000),('7797600000129','7797600000129','Euthanyle x 15ml','Euthanyle x 15ml','2020-08-01','0104760194001','OTROS','UNIDAD',1,2.0000,0.0000,31.1500,'0',0.0000,0.0000,0.0000,0.0000),('7797600000969','7797600000969','Promafine 10ml','Promafine Gotero x 10ml','2020-08-01','0104760194001','Tranquilizante','UNIDAD',1,1.0000,0.0000,4.5400,'0',0.0000,5.4500,0.0000,5.4500),('7797600001362','Neo Vitapel x30 comprimidos','Neo Vitapel x30 comprimidos','Neo Vitapel x30 comprimidos','2021-02-01','0104760194001','Medicamentos','EMPAQUE',30,2.0000,7.9200,0.2700,'0',9.9000,0.3500,9.9000,0.3500),('7798128580056','QSI008','Olivitasan frasco x100ml','Olivatasan frasco x100ml','2021-03-01','0102143211001','Medicamentos','UNIDAD',1,9.0000,0.0000,7.3100,'0',0.0000,9.1500,0.0000,9.1500),('7798144990532','831','Yohimbine vet 10ml','Yohimbine vet X 10ml','2021-03-01','0102561594001','Hormonas','UNIDAD',1,2.0000,0.0000,24.0000,'0',0.0000,30.0000,0.0000,30.0000),('7798182330291','7798182330291','Neumoflogin 16 comprimidos','Neumoflogin 16 comprimidos','24-03-2020','0104085246001','Medicamentos','EMPAQUE',16,1.0000,16.0000,1.0000,'0',0.0000,1.2500,0.0000,1.2500),('7841567000255','7841567000255','Anticel comprimidos 2mg','Anticel comprimidos 2mg','24-03-2020','0104085246001','Medicamentos','EMPAQUE',20,7.0000,6.8000,0.4400,'0',8.5000,0.5000,8.5000,0.5000),('7861000225182','11672','Doggimel x 100G','Doggimel x 100G','2021-04-03','0103365508001','Medicamentos','UNIDAD',1,14.0000,0.0000,4.2040,'0',0.0000,5.6000,0.0000,5.6000),('7862101615223','7862101615223','Allmectin Solucion Topica 60ml','Allmectin Solucion Topica 60ml','2023-05-01','0301942256001','Medicamentos','UNIDAD',1,8.0000,0.0000,4.3200,'0',0.0000,5.4000,0.0000,5.4000),('7862101617234','7862101617234','Ivercur 10G','Ivercur 10G','2023-01-01','0301942256001','OTROS','UNIDAD',1,4.0000,0.0000,1.5200,'0',0.0000,1.9000,0.0000,1.9000),('7862101617777','pielsana50','Piel Sana Unguento 50g','Piel Sana x 50 GR','2023-05-01','0301942256001','Medicamentos','UNIDAD',1,1.0000,0.0000,3.8400,'0',0.0000,4.8000,0.0000,4.8000),('7862101617968','7862101617968','Rosso jeringa x30ml','Rosso D Jeringa x30ml','2022-05-01','0301942256001','Medicamentos','UNIDAD',1,3.0000,0.0000,6.8000,'0',0.0000,8.5000,0.0000,8.5000),('7862102660604','7862102660604','Post-Part 50ml','Post Part 50ml','2021-05-01','0190370526001','Hormonas','UNIDAD',1,1.0000,0.0000,5.6800,'0',0.0000,7.1000,0.0000,7.1000),('7862102660611','7862102660611','Post-Part 100ml','Post-Part 100ml','2021-02-01','0190370526001','Hormonas','UNIDAD',1,2.0000,0.0000,8.6800,'0',0.0000,10.8500,0.0000,10.8500),('7862102660734','7862102660734','Streptosul JB Antibiotico 10g','Streptosul JB Antibiotico 10g','2021-11-01','0190370526001','Medicamentos','UNIDAD',1,50.0000,0.0000,1.0400,'0',0.0000,1.3000,0.0000,1.3000),('7862102660772','7862102660772','Piperazina al 53% 10G','Piperazina al 53% 10G','2021-09-01','0190370526001','Medicamentos','UNIDAD',1,54.0000,0.0000,0.5200,'0',0.0000,0.6500,0.0000,0.6500),('7862102661359','7862102661359','7862102661359','7862102661359','2021-03-01','0190370526001','Medicamentos','UNIDAD',1,2.0000,0.0000,10.4800,'0',0.0000,13.1000,0.0000,13.1000),('7862109810224','7862109810224','Sarnil Acaricida 100ml','Sarnil Acaricida 100ml','2020-11-01','0102342383001','Medicamentos','UNIDAD',1,3.0000,0.0000,2.9200,'0',0.0000,3.6500,0.0000,3.6500),('7862110040030','7862110040030','Talco Cariñoso 80G','Talco Cariñoso 80G','2022-02-01','0102274594001','Medicamentos','UNIDAD',1,2.0000,0.0000,2.1800,'0',0.0000,2.7200,0.0000,2.7200),('7862110040115','7862110040115','Raticin 10G','Raticin 10G','2020-12-01','0102274594001','OTROS','UNIDAD',1,18.0000,0.0000,0.8000,'0',0.0000,1.0000,0.0000,1.0000),('7862110040160','7862110040160','Raticin 50G','Raticin 50G','2021-10-01','0102274594001','OTROS','UNIDAD',1,45.0000,0.0000,2.1280,'0',0.0000,2.6600,0.0000,2.6600),('7862120610032','7862120610032','HepaPet x60 tabletas','HepaPet x60 tabletas','2021-02-21','0190370526001','Medicamentos','EMPAQUE',60,1.0000,15.8400,0.2800,'0',19.8000,0.3500,19.8000,0.3500),('7895559030010','NOVF432','BifeTacel 1lt','BifeTacel al 10% oral FCO x100cc','2021-12-01','0102143211001','Medicamentos','UNIDAD',1,1.0000,0.0000,35.2000,'0',0.0000,44.0000,0.0000,44.0000),('7895559060048','7895559060048','Ivermic 50ml','Ivermic 50ml','2021-11-01','0102143211001','Medicamentos','UNIDAD',1,1.0000,0.0000,4.8000,'0',0.0000,6.0000,0.0000,6.0000),('7895559060239','NOVF024','Ivermic+ad3e 50cc','Ivermic+ad3e 50cc','2021-11-01','0102143211001','Medicamentos','UNIDAD',1,13.0000,0.0000,9.6000,'12',0.0000,10.5600,0.0000,12.0000),('7895559060246','NOVF082','Ivermic+ad3e x100ml','Ivermic+ad3e frasco x100cc','2021-11-01','0102143211001','Medicamentos','UNIDAD',1,4.0000,0.0000,16.8000,'0',0.0000,21.0000,0.0000,21.0000),('7895559060253','NOVF089','Ivermic+ad3e x10 x10cc','Ivermic+ad3e x10 x10cc','2022-04-01','0102143211001','Medicamentos','EMPAQUE',10,1.0000,25.2000,2.8000,'0',35.0000,3.5000,35.0000,3.5000),('7895559060277','NOVF014','Ivermic+ad3e x20cc','Ivermic+ad3e x20cc','2022-04-01','0102143211001','Medicamentos','EMPAQUE',10,1.0000,41.7600,4.6400,'0',58.0000,5.8000,58.0000,5.8000),('7895559140054','NOVF007','Saguaymic Plus 1lt','Saguaymic Plus frasco x1000cc','2022-03-01','0102143211001','OTROS','UNIDAD',1,4.0000,0.0000,60.8000,'0',0.0000,76.0000,0.0000,76.0000),('8430274132961','8430274132961','Polivit Aminoacidos Liquido x 20ml','PolivitAminoacidos 20ml','2020-11-01','0101871069001','Medicamentos','UNIDAD',1,9.0000,0.0000,2.5400,'0',0.0000,3.1800,0.0000,3.1800),('8436034303190','8436034303190','Ratoli 100G','Ratoli 100G','2020-12-01','0301942256001','OTROS','UNIDAD',1,24.0000,0.0000,1.5200,'0',0.0000,1.9000,0.0000,1.9000),('AGRCALMILBOT007','AGRCALMILBOT007','Bota 4x4 talla 36','Bota 4x4 talla 36','2022-01-01','0190155188001','OTROS','UNIDAD',1,0.0000,0.0000,7.3360,'12',0.0000,7.9200,0.0000,9.0000),('AGRCALMILBOT008','AGRCALMILBOT008','Bota 4x4 talla 37','Bota 4x4 talla 37','2022-01-01','0190155188001','OTROS','UNIDAD',1,2.0000,0.0000,7.3360,'12',0.0000,7.9200,0.0000,9.0000),('AGRCALMILBOT009','AGRCALMILBOT009','Bota 4x4 talla 38','Bota 4x4 talla 38','2022-01-01','0190155188001','OTROS','UNIDAD',1,2.0000,0.0000,7.3360,'12',0.0000,7.9200,0.0000,9.0000),('AGRCALMILBOT010','AGRCALMILBOT010','Bota 4x4 talla 39','Bota 4x4 talla 39','2022-01-01','0190155188001','OTROS','UNIDAD',1,3.0000,0.0000,8.0300,'12',0.0000,8.8000,0.0000,10.0000),('AGRCALMILBOT011','AGRCALMILBOT011','Bota 4x4 talla 40','Botas 4x4 talla 40','2022-01-01','0190155188001','OTROS','UNIDAD',1,0.0000,0.0000,8.0300,'12',0.0000,8.8000,0.0000,10.0000),('AGRCALMILBOT012','AGRCALMILBOT012','Bota 4x4 talla 41','Bota 4x4 talla 41','2022-01-01','0190155188001','OTROS','UNIDAD',1,0.0000,0.0000,8.0304,'12',0.0000,8.8000,0.0000,10.0000),('AGRCALMILBOT017','AGRCALMILBOT017','Bota 4x4 talla 34','Bota 4x4 talla 34','2022-01-01','0190155188001','OTROS','UNIDAD',1,-2.0000,0.0000,7.3323,'12',0.0000,7.9200,0.0000,9.0000),('AGRCOAAGRLIQ001','AGRCOAAGRLIQ001','Agropega frasco 100ml','Agropega frasco 100ml','2022-05-01','0190155188001','Insecticidas','UNIDAD',1,6.0000,0.0000,0.5700,'0',0.0000,1.2500,0.0000,1.2500),('AGRCOAAGRLIQ002','AGRCOAAGRLIQ002','Agropega frasco 250ml','Agropega frasco 250ml','2022-08-01','0190155188001','Insecticidas','UNIDAD',1,5.0000,0.0000,1.1183,'0',0.0000,1.5000,0.0000,1.5000),('AGRFERFVEPOL010  engrose 500g','AGRFERFVEPOL010  engrose 500g','Fuerza verde engrose 500g','Fuerza verde engrose 500g','2022-06-01','0190155188001','Semillas','UNIDAD',1,5.0000,0.0000,1.6700,'0',0.0000,4.0000,0.0000,4.0000),('AGRFERFVFPOL010','AGRFERFVFPOL010','Fuerza verde floracion esp. 500g','Fuerza verde floracion esp. 500g','2022-10-01','0190155188001','Semillas','UNIDAD',1,3.0000,0.0000,1.6500,'0',0.0000,4.0000,0.0000,4.0000),('AGRFERFVSPOL010','AGRFERFVSPOL010','Fuerza verde especial 500g','Fuerza verde especial 500g','2022-09-01','0190155188001','OTROS','UNIDAD',1,5.0000,0.0000,1.6700,'0',0.0000,4.0000,0.0000,4.0000),('AGRFUNPONPOL005','AGRFUNPONPOL005','Poncho aguas 125gr','Poncho aguas 125gr','2021-07-01','0190155188001','OTROS','UNIDAD',1,2.0000,0.0000,1.4500,'0',0.0000,1.9500,0.0000,1.9500),('AGRFUNPONPOL007','AGRFUNPONPOL007','Poncho de agua 250gr','Poncho de agua 250gr','2021-09-01','0190155188001','OTROS','UNIDAD',1,10.0000,0.0000,2.6800,'0',0.0000,3.6000,0.0000,3.6000),('AGRHERAMILIQ003','AGRHERAMILIQ003','Dominal 500ml ','Dominal frasco 500ml','2021-03-01','0190155188001','OTROS','UNIDAD',1,3.0000,0.0000,2.6700,'0',0.0000,3.5500,0.0000,3.5500),('AGRHERAMILIQ004','AGRHERAMILIQ004','Dominal frasco x 1lt','Dominal frasco x 1lt','2021-05-01','0190155188001','OTROS','UNIDAD',1,3.0000,0.0000,4.3500,'0',0.0000,5.8000,0.0000,5.8000),('AGRHERGLILIQ001','AGRHERGLILIQ001','Glyfosad frasco 100ml','Glyfosad frasco 100ml','2021-10-01','0190155188001','Insecticidas','UNIDAD',1,6.0000,0.0000,1.3000,'0',0.0000,1.7500,0.0000,1.7500),('AGRHERGLILIQ002','AGRHERGLILIQ002','Glyfosad frasco 250ml','Glyfosad frasco 250ml','2021-10-01','0190155188001','OTROS','UNIDAD',1,6.0000,0.0000,1.7300,'0',0.0000,2.3000,0.0000,2.3000),('AGRHERGLILIQ003','AGRHERGLILIQ003','Glifosad frasco 500ml','Glifosad frasco 500ml','2021-09-01','0190155188001','Insecticidas','UNIDAD',1,3.0000,0.0000,2.6700,'0',0.0000,3.5500,0.0000,3.5500),('AGRHERGLILIQ004','AGRHERGLILIQ004','Glyfosad frasco 1lt','Glyfosad frasco 1lt','2021-08-01','0190155188001','OTROS','UNIDAD',1,5.0000,0.0000,4.3350,'0',0.0000,6.3000,0.0000,6.3000),('AGRHERGLYLIQ005','AGRHERGLYLIQ005','Glyfosad 1 galon','Glyfosad 1 galon','2021-03-01','0190155188001','OTROS','UNIDAD',1,1.0000,0.0000,15.1450,'0',0.0000,23.3000,0.0000,23.3000),('AGRHERPARLIQ003','AGRHERPARLIQ003','Contacto frasco x 500ml','Contacto frasco x 500ml','2020-10-01','0190155188001','OTROS','UNIDAD',1,6.0000,0.0000,4.0800,'0',0.0000,5.4500,0.0000,5.4500),('AGRHERPARLIQ004','AGRHERPARLIQ004','Contacto 1lt','Contacto 1lt','2022-10-01','0190155188001','OTROS','UNIDAD',1,5.0000,0.0000,7.4300,'0',0.0000,9.9000,0.0000,9.9000),('AGRINSM25POL004','AGRINSM25POL004','Moskition 100g','Moskition 100g','2021-08-01','0190155188001','Insecticidas','UNIDAD',1,9.0000,0.0000,0.8700,'0',0.0000,1.4500,0.0000,1.4500),('AGRINSM25POL007','AGRINSM25POL007','Moskition 250g','Moskition 250g','2021-09-01','0190155188001','Insecticidas','UNIDAD',1,9.0000,0.0000,1.6600,'0',0.0000,2.7500,0.0000,2.7500),('AGRINSM25POL010','AGRINSM25POL010','Moskition 500g','Moskition 500g','2021-09-01','0190155188001','Insecticidas','UNIDAD',1,4.0000,0.0000,2.8350,'0',0.0000,4.7000,0.0000,4.7000),('AGRINSSHYLIQ006','AGRINSSHYLIQ006','SHY frasco 250cm','SHY frasco 250cm','2021-08-01','0190155188001','Insecticidas','UNIDAD',1,8.0000,0.0000,3.0600,'0',0.0000,4.1000,0.0000,4.1000),('AGRINSSHYLIQ012','AGRINSSHYLIQ012','SHY frasco 100cm','SHY frasco 100cm','2021-09-01','0190155188001','Insecticidas','UNIDAD',1,-1.0000,0.0000,1.3300,'0',0.0000,1.8000,0.0000,1.8000),('Apetomax Jarabe x 20ml','Apetomax Jarabe x 20ml','Apetomax Jarabe x 20ml','Apetomax Jarabe x 20ml','2020-08-01','0102752490001','Medicamentos','UNIDAD',1,2.0000,0.0000,1.4400,'0',0.0000,1.8000,0.0000,1.8000),('Azitrox Dog 30ml','Azitrox Dog 30ml','Azitrox Dog 30ml','Azitrox Dog 30ml','2022-02-01','0301942256001','Medicamentos','UNIDAD',1,9.0000,0.0000,6.4000,'0',0.0000,8.0000,0.0000,8.0000),('Cariñoso vet 100G','Cariñoso vet 100G','Cariñoso vet 100G','Cariñoso vet 100G','2021-04-01','0102274594001','Medicamentos','UNIDAD',1,13.0000,0.0000,2.8300,'0',0.0000,3.5500,0.0000,3.5500),('Cheese-Mix 1lt','NOVF387','Cheese-Mix 1lt','Cheese-Mix frasco x1000cm','2021-02-01','0102143211001','OTROS','UNIDAD',1,2.0000,0.0000,15.0000,'12',0.0000,18.4800,0.0000,21.0000),('Cheese-Mix 500ml','VITA021','Cheese-Mix 500ml','Cheese-Mix frasco x500cc','2021-02-01','0102143211001','Medicamentos','UNIDAD',1,2.0000,0.0000,7.8600,'12',0.0000,9.6800,0.0000,11.0000),('Cheese-Mix botella x20cc','BIT015','Cheese-Mix botella x20cc','Cheese-Mix Goteros x20ml','2020-11-01','0102143211001','OTROS','UNIDAD',1,23.0000,0.0000,0.8700,'12',0.0000,0.9680,0.0000,1.1000),('Cheese-Mix x100 sobres','VITA020','Cheese-Mix x100 sobres','Cheese-Mix polvo caja x100 unidades','2021-05-01','0102143211001','OTROS','EMPAQUE',100,2.0000,17.1500,0.1700,'12',21.1200,0.2200,24.0000,0.2500),('Chickboster-01','Chickboster-01','Chickboster 30ml','Chickboster 30ml','2020-05-01','0102978038001','Medicamentos','UNIDAD',1,14.0000,0.0000,2.0000,'0',0.0000,2.5000,0.0000,2.5000),('Chickvit ADE+C','Chickvit ADE+C','Chickvit ADE+C 30ml','Chickvit ADE+C 30ml','2019-11-01','0102978038001','Medicamentos','UNIDAD',1,1.0000,0.0000,2.2000,'0',0.0000,2.7500,0.0000,2.7500),('Co-Vermin 25 x100ml','161CO250100','Co-Vermin 25 x100ml','Co-Vermin 25 suspension x 100ml','2021-11-01','0102342383001','Medicamentos','UNIDAD',1,7.0000,0.0000,5.6400,'0',0.0000,7.0500,0.0000,7.0500),('Complejo B-Tex Gallos','Complejo B-Tex Gallos','Complejo B-Tex Gallos x 20ml','Complejo B-Tex Gallos x 20ml','2020-12-01','0104760194001','Medicamentos','UNIDAD',1,1.0000,0.0000,1.3200,'0',0.0000,1.5000,0.0000,1.5000),('Complejo B-Tex x 60ml','Complejo B-Tex x 60ml','Complejo B-Tex x 60ml','Complejo B-Tex x 60ml','2020-11-01','0104760194001','Medicamentos','UNIDAD',1,6.0000,0.0000,1.8800,'0',0.0000,2.3500,0.0000,2.3500),('Crema de ordeñe x100G','Crema de ordeñe x100G','Crema de ordeñe x100G','Crema de ordeñe x100G','2021-10-01','0102143211001','OTROS','UNIDAD',1,9.0000,0.0000,4.6400,'0',0.0000,5.8000,0.0000,5.8000),('DAP014','DAP014','Zinaprim 20G','Zinaprim 20G','2021-05-01','0101818482001','Medicamentos','UNIDAD',1,6.0000,0.0000,1.2800,'0',0.0000,1.6000,0.0000,1.6000),('Desinflamic x100g','Desinflamic x100g','Desinflamic x100g','Desinflamic x100g','2021-11-01','0102143211001','OTROS','UNIDAD',1,0.0000,0.0000,4.8400,'0',0.0000,5.5000,0.0000,5.5000),('Dispensador de cinta electrica','LAU247','Dispensador de cinta electrica','Dispensador cinta electrica ferrango','2022-01-01','0102143211001','OTROS','UNIDAD',1,2.0000,0.0000,24.3800,'12',0.0000,29.9200,0.0000,34.0000),('Eprinomax pour-on 30ml','Eprinomax pour-on 30ml','Eprinomax pour-on 30ml','Eprinomax pour-on 30ml','2020-05-01','0190370526001','Medicamentos','UNIDAD',1,7.0000,0.0000,2.4900,'0',0.0000,3.1200,0.0000,3.1200),('Fast-T 50ml','Fast-T 50ml','Fast-T 50ml','Fast-T 50ml','2022-05-01','0102342383001','Medicamentos','UNIDAD',1,14.0000,0.0000,4.6000,'0',0.0000,5.7500,0.0000,5.7500),('Favectin pour-on 10ml','Favectin pour-on 10ml','Favectin pour-on 10ml','Favectin pour-on 10ml','2020-05-01','0104760194001','Medicamentos','UNIDAD',1,4.0000,0.0000,1.1600,'0',0.0000,1.4500,0.0000,1.4500),('Finestrol inyectable 5ml','Finestrol inyectable 5ml','Finestrol inyectable 5ml','Finestrol inyectable 5ml','24-03-2020','0104085246001','Medicamentos','UNIDAD',1,11.0000,0.0000,6.3200,'0',0.0000,7.9000,0.0000,7.9000),('Florflox Miscella Capsulas','Florflox Miscella Capsulas','Florflox Miscella Capsulas','Florflox Miscella Capsulas','2022-04-01','0301942256001','Medicamentos','UNIDAD',1,37.0000,0.0000,0.2800,'0',0.0000,0.3500,0.0000,0.3500),('Grasmore Pasto Tala','Grasmore Pasto Tala','Grasmore Pasto Tala','Grasmore Pasto Tala','2021-01-01','0190155188001','Granos','UNIDAD',1,25.0000,0.0000,2.6800,'0',0.0000,3.3500,0.0000,3.3500),('Holva Farbiovet Spray 60ml','Holva Farbiovet Spray 60ml','Holva Farbiovet Spray 60ml','Holva Farbiovet Spray 60ml','2021-08-01','0301942256001','Medicamentos','UNIDAD',1,2.0000,0.0000,8.0000,'0',0.0000,10.0000,0.0000,10.0000),('Iveryl pour on 100ml','Iveryl pour on 100ml','Iveryl pour on 100ml','Iveryl pour on 100ml','2022-01-01','0102342383001','Medicamentos','UNIDAD',1,4.0000,0.0000,7.6000,'0',0.0000,9.5000,0.0000,9.5000),('Iveryl pour on 30ml','Iveryl pour on 30ml','Iveryl pour on 30ml','Iveryl pour on 30ml','2022-05-01','0102342383001','Medicamentos','UNIDAD',1,10.0000,0.0000,3.1200,'0',0.0000,3.9000,0.0000,3.9000),('Kronivit x100 capsulas','QSI017','Kronivit x100 capsulas','Kronivit tarro x100 capsulas','2022-08-05','0102143211001','Medicamentos','EMPAQUE',100,1.0000,200.0000,2.0000,'0',320.0000,3.2000,320.0000,3.2000),('Lidomic Frascos x 100cm','NOVF026','Lidomic Frasco x 100cm','Lidomic Frasco x 100cm','2021-12-01','0102143211001','OTROS','UNIDAD',1,-5.0000,0.0000,4.7200,'0',0.0000,5.9000,0.0000,5.9000),('Mastimic-s 10G','NOVF099','Mastimic secado 10G','Mastimic secado 10G','2021-12-01','0102143211001','Medicamentos','UNIDAD',1,50.0000,0.0000,1.5900,'0',0.0000,2.0000,0.0000,2.0000),('Pasto Azul Potomac Westar','Pasto Azul Potomac Westar','Pasto Azul Potomac Westar','Pasto Azul Potomac Westar','2021-01-01','0190155188001','Granos','UNIDAD',1,15.0000,0.0000,4.0000,'0',0.0000,5.0000,0.0000,5.0000),('Piel Sana Unguento 15G','pielsana15','Piel Sana Unguento 15G','Piel Sana Unguento 15G','2023-07-01','0301942256001','Medicamentos','UNIDAD',1,2.0000,0.0000,1.2000,'0',0.0000,1.5000,0.0000,1.5000),('Ratex Farbiovet 30G','Ratex Farbiovet 30G','Ratex Farbiovet 30G','Ratex Farbiovet 30G','2021-07-01','0301942256001','OTROS','UNIDAD',1,30.0000,0.0000,1.0400,'0',0.0000,1.3000,0.0000,1.3000),('Ratkiller 25G','Ratkiller 25G','Ratkiller 25G','Ratkiller 25G','2020-05-01','0102342383001','OTROS','UNIDAD',1,10.0000,0.0000,0.8000,'0',0.0000,1.0000,0.0000,1.0000),('Raygras Anual Tetrastar Westar','Raygras Anual Tetrastar Westar','Raygras Anual Tetrastar Westar','Raygras Anual Tetrastar Westar','2021-01-01','0190155188001','Granos','UNIDAD',1,100.0000,0.0000,1.4200,'0',0.0000,1.6500,0.0000,1.6500),('Reygras Jumbo Corte','Reygras Jumbo Corte','Reygras Jumbo Corte','Reygras Jumbo Corte','2021-01-01','0190370526001','Granos','UNIDAD',1,25.0000,0.0000,1.4700,'0',0.0000,1.9500,0.0000,1.9500),('Rimadyl Botella 10mg','2261M116','Rimadyl ','Rimadyl 100mg masticable 60 tabletas','2021-12-01','0992512040001','Medicamentos','EMPAQUE',60,1.0000,42.3800,0.7100,'0',52.9500,0.9000,52.9500,0.9000),('Rimadyl Botella 25mg','Rimadyl Botella 25mg','Rimadyl 25mg','Rimadyl 25mg','2021-05-01','0992512040001','Medicamentos','EMPAQUE',60,1.0000,19.1000,0.3200,'0',23.9000,0.6500,23.9000,0.6500),('SEMHORCULAGR009','SEMHORCULAGR009','Culantro Anita AGR 1lb','Culantro Anita AGR 1lb','2023-01-01','0190155188001','Semillas','EMPAQUE',1,20.0000,6.0000,0.2800,'0',8.0000,0.3500,8.0000,0.3500),('SEMHORRABAGR009','SEMHORRABAGR009','Rabano crimson giant agrosad','Rabano crimson giant agrosad','2023-01-01','0190155188001','Semillas','EMPAQUE',20,1.0000,8.0500,0.7200,'0',10.7500,0.9000,10.7500,0.9000),('SEMPASTRBWES002','SEMPASTRBWES002','Trebol Blanco Westar','Trebol Blanco Westar','2021-01-01','0190155188001','OTROS','UNIDAD',1,5.0000,0.0000,5.0600,'0',0.0000,6.2000,0.0000,6.2000),('SEMPASTRDWES002','SEMPASTRDWES002','Trebol Rojo Dynamite Westar 50lb','Trebol Rojo Dynamite Westar 50lb','2021-01-01','0190155188001','OTROS','UNIDAD',1,50.0000,0.0000,4.4400,'0',0.0000,5.5000,0.0000,5.5000),('Sulfatex-2 Polvo 100g','Sulfatex-2 Polvo 100g','Sulfatex-2 Polvo 100g','Sulfatex-2 Polvo 100g','2021-08-01','0104760194001','Medicamentos','UNIDAD',1,36.0000,0.0000,2.8000,'0',0.0000,3.5000,0.0000,3.5000),('Supervitex -F 100G','Supervitex -F 100G','Supervitex -F 100G','Supervitex -F 100G','2022-07-01','0104760194001','Medicamentos','UNIDAD',1,9.0000,0.0000,2.5600,'0',0.0000,3.2000,0.0000,3.2000),('Supracalcio inyectable x100ml','Supracalcio inyectable x100ml','Supracalcio inyectable x100ml','Supracalcio inyectable x100ml','2022-03-01','0102342383001','Medicamentos','UNIDAD',1,15.0000,0.0000,5.6000,'0',0.0000,7.0000,0.0000,7.0000),('Tavet Doxiciclona plus 60ml','TAV001','Tavet Doxiciclona plus 60ml','Tavet Doxiciclona plus gotero x60ml','2021-05-01','0102143211001','Medicamentos','UNIDAD',1,8.0000,0.0000,4.3200,'0',0.0000,5.4000,0.0000,5.4000),('Tetero Mascota ','Tetero Mascota ','Tetero Mascota ','Tetero Mascota ','2023-01-01','0102143211001','OTROS','UNIDAD',1,10.0000,0.0000,2.0000,'0',0.0000,2.5000,0.0000,2.5000),('Tetina Terneros Botella','LAO265','Tetina Terneros Botella','Tetina Terneros Botella','2022-01-01','0102143211001','OTROS','UNIDAD',1,6.0000,0.0000,2.1600,'12',0.0000,3.0800,0.0000,3.5000),('Tilaclor Capsulas','Tilaclor Capsulas','Tilaclor Capsulas ','Tilaclor Capsulas ','2021-05-01','0103026225001','Medicamentos','UNIDAD',1,400.0000,0.0000,0.4000,'0',0.0000,0.5000,0.0000,0.5000),('Venoclisis Descartable','LAU268','Venoclisis Descartable','Venoclisis Descartable','2022-02-15','0102143211001','OTROS','UNIDAD',1,9.0000,0.0000,1.0700,'12',0.0000,1.5400,0.0000,1.7500),('Vermic Total Tableta','Vermic Total Tableta','Vermic Total Tableta','Vermic Total Tableta','2020-05-01','0102143211001','Medicamentos','EMPAQUE',10,2.0000,6.0000,0.6000,'0',12.5000,1.2500,12.5000,1.2500);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `prov_ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_telefono` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_email` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_observaciones` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`prov_ruc`, `prov_nombre`, `prov_direccion`, `prov_telefono`, `prov_email`, `prov_observaciones`) VALUES ('0100331123001','Castro Correa Carlos Francisco','Sector Apangora 1cd Quinta Julita Parroquia Nulti','2805549','castrocarlos1@hotmail.com','Medicamentos - Vitaminas y Minerales'),('0100810274001','Maldonado Lemus Eugenio Ivan','Ricaurte Florida SN ','NA','NA','Machetes - Guantes de Caucho'),('0101130862','Test','test','1233212','test','test'),('0101130862001','Distribuidora Pozo y Cueva','Armenillas','12322254','NA','Cafe - Margarina - Don Victorio'),('0101773992001','Guambana Lopez Ruben Bolivar','Ricuarte-Centro','4209067','distagrg@hotmail.com','Dermil - Nuvapon - Petavit'),('0101793446001','Arias Anguizaca Zoila Elena','Rafael Maria Arizaga y Antonio Borrero','0983136400','cabosur@hotmail.com','Cabos'),('0101818482001','Arevalo Correa Miguel Angel','Sangurima 3-30 y Tomas Ordonez','4114603','NA','Jabon Asuntol - Huevos Plasticos - Pecutrin'),('0101832426001','Pintado Arevalo Jose Rodrigo - Agroaustro','Av 10 de Agosto 5 197 y Av Solano','2817021','agroaust@etapa.net','Plasticos - Bebedero'),('0101871069001','Criollo Barrera Luis Guillermo','Santa Mariana SN','4191439','igcriollov@yahoo.com','Polivit Aminoacidos - Dovitex'),('0102143211001','Quezada Villacis Miriam Rocio','General Escandon SN y Ramona Cordero','2855536','agroveterinariapalacios@hotmail.com','Cuajo - Lidocaina - Cinta Electrica'),('0102274594001','Andrade Pesantez Mario Fernando','Av. Abelardo J. Andrade y Racar','4082600','fermaec9@yahoo.com','Raticidas'),('0102342383001','Dc. Fabian Manuel Astudillo Riera','Vega Munoz 15-63 ','2825235','facturacion.disaustro@gmail.com','Calcio - Desparasitantes'),('0102561594001','Paul Vinicio Alvarado Montenegro','Av Gonzales Suares 9-45 y Juan de Velasco','0000000','NA','Medicamentos'),('0102752490001','Miguel Angel Campoverde Astudillo','Cacique Chamba 1-74 y Jacinto Jijon y Caamano','4107140','veterinariacaninos@hotmail.com','Opigal - Antibioticos - Pesticidas'),('0102778750001','nauta Dias  Jaime Francisco','Av Gonzales Suares 16-020 y Rayoloma','4107133','nautamorochorepresentaciones@hotmail.com','Accesorios - Huesos'),('0102978038001','Alvarado Ruilova Irene Mirelli','S-N Via a Misicata','4077777','NA','Leche en polvo - Antibioticos'),('0103026225001','Izquierdo Serrano Juana Marcela','Canton Gualaceo L-7B','2889377','vetlaicuenca@hotmail.com','Imvab - Antibioticos'),('0103330890001','Veles Bravo Andrea Cristina','Roberto Crespo Toral SN','2810325','facturacion.aviaustro@gmail.com','Balanceados'),('0103350609001','Quiroz Moscoso Ligia Fabiola','Via al Cajas s-n Seguro Social Campecino','2370320','ligiaquirozmoscoso@hotmail.com','Balanceado de trucha'),('0103365508001','Vazquez Galarza Julio Leonardo','Av. Gonzales Suarez 6-45 y Guapondelig','4047753','guafclinica@gmail.com','Doggimel Sobres'),('0104085246001','Bueno Castro Esteban Miguel','Guapondelig y Jaime Roldos','2867125','NA','Finestrol - Medicamentos'),('0104760194001','Pacheco Yumbla Marco Antonio','Yanahurco 3-33 y Rio Colta','4041849','insuvet@outlook.es','Favetex'),('0105652747001','Distribuidora Asus','Quito','22543465','NA','Laptops'),('0123456789','TESTING','Test','1233212','NA','NA'),('0190155188001','Agrosad Productos Agropecuarios Compania Ltda.','Av Las Americas SN y Agustin Cueva','2856129','NA','Semillas - Fungicida - Insecticidas - Abonos'),('0190370526001','Disgrovac Cia. Ltda.','24 de Mayo y las primicias Manzana U Villa 6','NA','NA','Rati-Fin en sobre - Vacunas China Vac- NeumoVac'),('0190388808001','ProInVet Ag Cia. Ltda.','Barrio Santa Maria S-N','4193072','NA','Intervet'),('0190394751001','Luzfarma Cia. Ltda.','Av De las Americas L-2 y Padre Aguirre','2836017','NA','Medicinas e Insumos Medicos '),('0190409015001','Importadora Amoroso','Tungurahua 3-73 e Imbabura','2816849','NA','Rapitrampas'),('0190432998001','El Establo MM Agricola Cia. Ltda.','Av. De las Americas y Miguel Corral','4093418','NA','Balanciado para Gallos'),('0190477053001','Cegarseeds','Alonso de Zamora SN y Camino viejo a Banos','4084390','cgarseeds@yahoo.com','Semillas de Pasto'),('0300471125001','Calderon Vintimilla Celio Alfredo','Av. Ordonez Lazo SN y Av. Los Cerezos','4089591','ventasdisfercal@gmail.com','Guantes - Botas de caucho'),('0301942256001','Leon Calle Edison Jhovanny','General Escandon SN y Nicanor Cobos','0998856255','distr.leonc@gmail.com','Calfosal - Ratigel '),('0302002175001','Zhunio Ordonez Jessica Johanna','Barrio Bello Horizonte 180','0995073866','johazo@hotmail.com','Bloques Minerales y Vacunas'),('0992512040001','Disprovef Ecuador SA','Guayas - Guayaquil - Tarqui Felipe Peso Campuzano ','042658341','NA','Balanceados de Mascota y Vacunas'),('1103241822001','Darwin Victor Cueva Rojas','Vinces 12-20 y Machala','2731702','darwinc4@hotmail.com','Trimebac - Hunter'),('1104327570001','Fernandez Jimenes Wilmer Efrain','Carlos Mora S-N y Adam Smith','2546961','NA','Antibioticos Provet'),('1790721450001','Laboratorios Chalver Del Ecuador Cia. Ltda.','Japon N 39-208 y Vicente Cardenas','2251413','NA','Desparasitantes Lombrisel - Gusantrol'),('INNOVAAGRO','INNOVAAGRO','INNOVAAGRO','INNOVAAGRO','INNOVAAGRO','INNOVAAGRO');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registromedico`
--

DROP TABLE IF EXISTS `registromedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registromedico` (
  `registro_id` int(11) NOT NULL AUTO_INCREMENT,
  `registro_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `registro_hora` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `registro_next_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `registro_tipo` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `registro_descripcion` longtext COLLATE utf16_spanish_ci NOT NULL,
  `registro_paciente_id` int(11) NOT NULL,
  PRIMARY KEY (`registro_id`),
  KEY `FK_registro_paciente` (`registro_paciente_id`),
  CONSTRAINT `FK_registro_paciente` FOREIGN KEY (`registro_paciente_id`) REFERENCES `pacientes` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registromedico`
--

LOCK TABLES `registromedico` WRITE;
/*!40000 ALTER TABLE `registromedico` DISABLE KEYS */;
INSERT INTO `registromedico` (`registro_id`, `registro_fecha`, `registro_hora`, `registro_next_fecha`, `registro_tipo`, `registro_descripcion`, `registro_paciente_id`) VALUES (4,'03-06-2020','0','03-06-2020','Nota','Otras notas',8);
/*!40000 ALTER TABLE `registromedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `activo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mundoganaderomiguel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mundoganaderomiguel` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_spanish_ci */;

USE `mundoganaderomiguel`;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `cliente_id` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_telefono` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `cliente_email` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`cliente_id`, `cliente_nombre`, `cliente_telefono`, `cliente_direccion`, `cliente_email`) VALUES ('0101130862','Leo','2897510','Checa','torresleonardo@outlook.com'),('0105652747','Leonardo','2897510','Checa','calvaradot1@outlook.com'),('9999999999999','Consumidor Final','NA','NA','NA');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_cabecera`
--

DROP TABLE IF EXISTS `compra_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_cabecera` (
  `factura_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `autorizacion` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `fecha` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `forma_pago` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `proveedor_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `plazo` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `abono` double(14,4) NOT NULL,
  `subtotal12` double(14,4) NOT NULL,
  `subtotal0` double(14,4) NOT NULL,
  `totalIVA` double(14,4) NOT NULL,
  `ice` double(14,4) NOT NULL,
  `irbp` double(14,4) NOT NULL,
  `total` double(14,4) NOT NULL,
  PRIMARY KEY (`autorizacion`),
  KEY `fk_compra_proveedor` (`proveedor_id`),
  CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_cabecera`
--

LOCK TABLES `compra_cabecera` WRITE;
/*!40000 ALTER TABLE `compra_cabecera` DISABLE KEYS */;
INSERT INTO `compra_cabecera` (`factura_id`, `autorizacion`, `fecha`, `forma_pago`, `proveedor_id`, `plazo`, `abono`, `subtotal12`, `subtotal0`, `totalIVA`, `ice`, `irbp`, `total`) VALUES ('1','0010012','2019-10-18','Efectivo','0101130862001','0',0.0000,26.4000,15.0000,3.6000,1.2000,0.0000,46.2000);
/*!40000 ALTER TABLE `compra_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_detalle`
--

DROP TABLE IF EXISTS `compra_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_detalle` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `cabecera_id` varchar(200) COLLATE utf16_spanish_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `p_unit` double(14,4) NOT NULL,
  `v_total` double(14,4) NOT NULL,
  `pvp_unit` double(14,4) NOT NULL,
  `p_caja` double(14,4) NOT NULL,
  `v_total_caja` double(14,4) NOT NULL,
  `pvp_caja` double(14,4) NOT NULL,
  `tarifa` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `fecha_vencimiento` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_compra_producto` (`prod_id`),
  KEY `fk_detalle_cabecera` (`cabecera_id`),
  CONSTRAINT `FK_compra_producto` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`),
  CONSTRAINT `fk_detalle_cabecera` FOREIGN KEY (`cabecera_id`) REFERENCES `compra_cabecera` (`autorizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_detalle`
--

LOCK TABLES `compra_detalle` WRITE;
/*!40000 ALTER TABLE `compra_detalle` DISABLE KEYS */;
INSERT INTO `compra_detalle` (`id`, `prod_id`, `cabecera_id`, `cantidad`, `p_unit`, `v_total`, `pvp_unit`, `p_caja`, `v_total_caja`, `pvp_caja`, `tarifa`, `fecha_vencimiento`) VALUES (1,'413','0010012',12,1.2500,15.0000,1.5000,0.0000,0.0000,0.0000,'0','2019-10-15'),(2,'2211','0010012',1,1.0000,1.0000,1.2000,15.0000,15.0000,0.0000,'12','2019-10-15');
/*!40000 ALTER TABLE `compra_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `compra_productos` AFTER INSERT ON `compra_detalle` FOR EACH ROW BEGIN

	update productos
	set prod_stock = prod_stock + NEW.cantidad,
	prod_fecha = NEW.fecha_vencimiento
	where prod_id = NEW.prod_id;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `borrado_compras` BEFORE DELETE ON `compra_detalle` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock - OLD.cantidad
	where prod_id = OLD.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `deuda_cabecera`
--

DROP TABLE IF EXISTS `deuda_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deuda_cabecera` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `id_factura` int(50) NOT NULL DEFAULT 0,
  `fecha_inicial` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `monto_original` double(14,4) NOT NULL,
  `monto_cancelado` double(14,4) NOT NULL,
  `estado` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_deuda_cliente` (`ruc`),
  KEY `fk_deuda_factura` (`id_factura`),
  CONSTRAINT `fk_deuda_cliente` FOREIGN KEY (`ruc`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `fk_deuda_factura` FOREIGN KEY (`id_factura`) REFERENCES `factura_cabecera` (`factura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deuda_cabecera`
--

LOCK TABLES `deuda_cabecera` WRITE;
/*!40000 ALTER TABLE `deuda_cabecera` DISABLE KEYS */;
/*!40000 ALTER TABLE `deuda_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deuda_detalle`
--

DROP TABLE IF EXISTS `deuda_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deuda_detalle` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `deuda_id` int(20) NOT NULL,
  `monto_cancelado` double(14,4) NOT NULL,
  `fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_deuda_deuda` (`deuda_id`),
  CONSTRAINT `fk_deuda_deuda` FOREIGN KEY (`deuda_id`) REFERENCES `deuda_cabecera` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deuda_detalle`
--

LOCK TABLES `deuda_detalle` WRITE;
/*!40000 ALTER TABLE `deuda_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `deuda_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleado_id` int(20) NOT NULL AUTO_INCREMENT,
  `empleado_nombres` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_titulo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_email` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_telefono` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `empleado_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`empleado_id`, `empleado_nombres`, `empleado_titulo`, `empleado_email`, `empleado_telefono`, `empleado_direccion`) VALUES (1,'Leonardo Alvarado','Ingeniero','torresleonardo@outlook.com','2897510','Checa Centro');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_cabecera`
--

DROP TABLE IF EXISTS `factura_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_cabecera` (
  `factura_id` int(50) NOT NULL AUTO_INCREMENT,
  `cliente_ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_tipo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_subtotal` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_iva` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_descuento` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_total` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_anulada` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'FALSE',
  `factura_empleado` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`factura_id`),
  KEY `fk_factura_cliente` (`cliente_ruc`),
  CONSTRAINT `fk_factura_cliente` FOREIGN KEY (`cliente_ruc`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_cabecera`
--

LOCK TABLES `factura_cabecera` WRITE;
/*!40000 ALTER TABLE `factura_cabecera` DISABLE KEYS */;
INSERT INTO `factura_cabecera` (`factura_id`, `cliente_ruc`, `factura_tipo`, `factura_fecha`, `factura_subtotal`, `factura_iva`, `factura_descuento`, `factura_total`, `factura_anulada`, `factura_empleado`) VALUES (1,'0105652747','contado','02-10-2019',20.5000,2.1000,1.2000,19.3000,'TRUE',''),(2,'0101130862','contado','04-10-2019',25.5000,3.0600,0.0000,25.5000,'FALSE',''),(3,'0105652747','contado','09-10-2019',17.5000,2.1000,0.0000,17.5000,'FALSE',''),(4,'0105652747','credito','09-10-2019',17.5000,2.1000,0.0000,17.5000,'FALSE',''),(5,'0101130862','contado','10-10-2019',8.0000,0.9600,0.0000,8.0000,'FALSE',''),(6,'9999999999999','contado','12-10-2019',32.5000,2.1000,0.0000,32.5000,'FALSE','Usuario1'),(7,'9999999999999','contado','13-10-2019',92.0000,10.5000,10.5000,81.5000,'FALSE','Usuario1');
/*!40000 ALTER TABLE `factura_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_detalle`
--

DROP TABLE IF EXISTS `factura_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_detalle` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cabecera_id` int(100) NOT NULL DEFAULT 0,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `descripcion` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `tarifa` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `cantidad` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_unit` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_caja` double(14,4) NOT NULL DEFAULT 0.0000,
  `total` double(20,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`),
  KEY `fk_factura_det_cab` (`cabecera_id`),
  KEY `fk_factura_det_producto` (`prod_id`),
  CONSTRAINT `fk_factura_det_cab` FOREIGN KEY (`cabecera_id`) REFERENCES `factura_cabecera` (`factura_id`),
  CONSTRAINT `fk_factura_det_producto` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalle`
--

LOCK TABLES `factura_detalle` WRITE;
/*!40000 ALTER TABLE `factura_detalle` DISABLE KEYS */;
INSERT INTO `factura_detalle` (`id`, `cabecera_id`, `prod_id`, `descripcion`, `tarifa`, `cantidad`, `precio_unit`, `precio_caja`, `total`) VALUES (1,1,'2211','Kitkat','12',1.0000,1.2000,17.5000,17.5000),(2,1,'413','Tarjetas JEP','0',2.0000,1.5000,0.0000,3.0000),(3,2,'123','Google Chrome','12',2.0000,4.0000,0.0000,8.0000),(4,2,'2211','Kitkat','12',1.0000,1.2000,17.5000,17.5000),(5,3,'2211','Kitkat','12',1.0000,1.5000,17.5000,17.5000),(6,4,'2211','Kitkat','12',1.0000,1.2000,17.5000,17.5000),(7,5,'123','Google Chrome','12',2.0000,4.0000,0.0000,8.0000),(8,6,'2211','Kitkat','12',1.0000,1.2000,17.5000,17.5000),(9,6,'413','Tarjetas JEP','0',10.0000,1.5000,0.0000,15.0000),(10,7,'413','Tarjetas JEP','0',3.0000,1.5000,0.0000,4.5000),(11,7,'2211','Kitkat','12',5.0000,1.2000,17.5000,87.5000);
/*!40000 ALTER TABLE `factura_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `venta_productos` AFTER INSERT ON `factura_detalle` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock - NEW.cantidad
	where prod_id = NEW.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nota_c`
--

DROP TABLE IF EXISTS `nota_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_c` (
  `nota_id` int(50) NOT NULL AUTO_INCREMENT,
  `cliente_ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_tipo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `factura_subtotal` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_iva` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_descuento` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_total` double(14,4) NOT NULL DEFAULT 0.0000,
  `factura_anulada` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'FALSE',
  `factura_empleado` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`nota_id`),
  KEY `fk_nota_ruc` (`cliente_ruc`),
  CONSTRAINT `fk_nota_ruc` FOREIGN KEY (`cliente_ruc`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_c`
--

LOCK TABLES `nota_c` WRITE;
/*!40000 ALTER TABLE `nota_c` DISABLE KEYS */;
INSERT INTO `nota_c` (`nota_id`, `cliente_ruc`, `factura_tipo`, `factura_fecha`, `factura_subtotal`, `factura_iva`, `factura_descuento`, `factura_total`, `factura_anulada`, `factura_empleado`) VALUES (1,'9999999999999','contado','13-10-2019',17500.0000,2100.0000,1000.0000,16500.0000,'FALSE','Usuario1');
/*!40000 ALTER TABLE `nota_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_cabecera`
--

DROP TABLE IF EXISTS `nota_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_cabecera` (
  `autorizacion` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `idFactura` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `numeroNota` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `fechaNota` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `formaPago` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `proveedorRuc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `plazo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `abono` double(14,4) NOT NULL,
  `subtotal12` double(14,4) NOT NULL,
  `subtotal0` double(14,4) NOT NULL,
  `iva` double(14,4) NOT NULL,
  `ice` double(14,4) NOT NULL,
  `irbp` double(14,4) NOT NULL,
  `total` double(14,4) NOT NULL,
  PRIMARY KEY (`autorizacion`),
  KEY `fk_nota_proveedor` (`proveedorRuc`),
  CONSTRAINT `fk_nota_proveedor` FOREIGN KEY (`proveedorRuc`) REFERENCES `proveedores` (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_cabecera`
--

LOCK TABLES `nota_cabecera` WRITE;
/*!40000 ALTER TABLE `nota_cabecera` DISABLE KEYS */;
INSERT INTO `nota_cabecera` (`autorizacion`, `idFactura`, `numeroNota`, `fechaNota`, `formaPago`, `proveedorRuc`, `plazo`, `abono`, `subtotal12`, `subtotal0`, `iva`, `ice`, `irbp`, `total`) VALUES ('001001','1','001','10-10-2019','Efectivo','0101130862001','0',0.0000,8.5800,0.0000,1.1700,0.0000,0.0000,9.7500);
/*!40000 ALTER TABLE `nota_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_d`
--

DROP TABLE IF EXISTS `nota_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_d` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cabecera_id` int(100) NOT NULL DEFAULT 0,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `descripcion` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `tarifa` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `cantidad` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_unit` double(14,4) NOT NULL DEFAULT 0.0000,
  `precio_caja` double(14,4) NOT NULL DEFAULT 0.0000,
  `total` double(20,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_d`
--

LOCK TABLES `nota_d` WRITE;
/*!40000 ALTER TABLE `nota_d` DISABLE KEYS */;
INSERT INTO `nota_d` (`id`, `cabecera_id`, `prod_id`, `descripcion`, `tarifa`, `cantidad`, `precio_unit`, `precio_caja`, `total`) VALUES (13,1,'2211','Kitkat','12',1000.0000,1.2000,17.5000,17500.0000);
/*!40000 ALTER TABLE `nota_d` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`monty`@`localhost`*/ /*!50003 TRIGGER `nota_venta_productos` AFTER INSERT ON `nota_d` FOR EACH ROW BEGIN
	update productos
	set prod_stock = prod_stock - NEW.cantidad
	where prod_id = NEW.prod_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nota_detalle`
--

DROP TABLE IF EXISTS `nota_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_detalle` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `autorizacion` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `p_unit` double(14,4) NOT NULL,
  `v_total` double(14,4) NOT NULL,
  `pvp_unit` double(14,4) NOT NULL,
  `p_caja` double(14,4) NOT NULL,
  `v_total_caja` double(14,4) NOT NULL,
  `pvp_caja` double(14,4) NOT NULL,
  `tarifa` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nota_producto` (`prod_id`),
  KEY `fk_nota_cabecera_aut` (`autorizacion`),
  CONSTRAINT `fk_nota_cabecera_aut` FOREIGN KEY (`autorizacion`) REFERENCES `nota_cabecera` (`autorizacion`),
  CONSTRAINT `fk_nota_producto` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_detalle`
--

LOCK TABLES `nota_detalle` WRITE;
/*!40000 ALTER TABLE `nota_detalle` DISABLE KEYS */;
INSERT INTO `nota_detalle` (`id`, `prod_id`, `autorizacion`, `cantidad`, `p_unit`, `v_total`, `pvp_unit`, `p_caja`, `v_total_caja`, `pvp_caja`, `tarifa`) VALUES (123,'123','001001',3,3.2500,9.7500,4.0000,0.0000,0.0000,0.0000,'12');
/*!40000 ALTER TABLE `nota_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_clase` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_genero` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_fecha_nac` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_raza` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_pelaje` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_prop_ci` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_ciudad` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `paciente_edad` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`paciente_id`),
  KEY `FK_paciente_propietario` (`paciente_prop_ci`),
  CONSTRAINT `FK_paciente_propietario` FOREIGN KEY (`paciente_prop_ci`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` (`paciente_id`, `paciente_nombre`, `paciente_clase`, `paciente_genero`, `paciente_direccion`, `paciente_fecha_nac`, `paciente_raza`, `paciente_pelaje`, `paciente_prop_ci`, `paciente_ciudad`, `paciente_edad`) VALUES (1,'Peluche','Caninos','Masculino','Ecuador','08-08-2019','Mixta','Blanco','0101130862','Ecuador','0.2.3');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `prod_id` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_main_id` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_name` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_main_name` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_fecha` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prov_RUC` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `prod_category` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_representation` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_int_quantity` int(10) NOT NULL,
  `prod_stock` double(14,4) NOT NULL DEFAULT 0.0000,
  `prod_box_price` double(14,4) NOT NULL,
  `prod_unit_price` double(10,4) NOT NULL,
  `prod_tax` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prod_box_12` double(10,4) NOT NULL,
  `prod_unit_12` double(10,4) NOT NULL,
  `prod_sell_box` double(10,4) NOT NULL,
  `prod_sell_unit` double(10,4) NOT NULL,
  PRIMARY KEY (`prod_id`),
  KEY `FK_producto_proveedor` (`prov_RUC`),
  CONSTRAINT `FK_producto_proveedor` FOREIGN KEY (`prov_RUC`) REFERENCES `proveedores` (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`prod_id`, `prod_main_id`, `prod_name`, `prod_main_name`, `prod_fecha`, `prov_RUC`, `prod_category`, `prod_representation`, `prod_int_quantity`, `prod_stock`, `prod_box_price`, `prod_unit_price`, `prod_tax`, `prod_box_12`, `prod_unit_12`, `prod_sell_box`, `prod_sell_unit`) VALUES ('001122','01leo','Leo ','Patito','17/12/2019','0190433927001','Abonos','Unidad',1,10.0000,0.0000,1.2000,'0',0.0000,1.5000,0.0000,1.5000),('123','321','Google Chrome','GChrome','2019-10-15','0101130862001','OTROS','UNIDAD',1,-8.0000,0.0000,3.2500,'12',0.0000,3.5200,0.0000,4.0000),('2211','1122','Kitkat','Kitkat chocolate','2019-10-15','0101130862001','Golosinas','EMPAQUE',10,-990.0000,15.0000,1.0000,'12',15.4000,1.0560,17.5000,1.2000),('413','07413','Tarjetas JEP','TarjJep','2019-10-15','0105652747001','OTROS','UNIDAD',1,10.0000,0.0000,1.2500,'0',0.0000,1.5000,0.0000,1.5000);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `prov_ruc` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_direccion` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_telefono` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_email` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `prov_observaciones` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`prov_ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`prov_ruc`, `prov_nombre`, `prov_direccion`, `prov_telefono`, `prov_email`, `prov_observaciones`) VALUES ('0101130862001','Distribuidora Pozo y Cueva','Armenillas','12322254','NA','Cafe - Margarina - Don Victorio'),('0102447711001','Samaniego Cabrera Doris Jeaneth','Av De las Americas L-5 y Nicolas Coronel','4111410','terrasur.cuenca@gmail.com','Calcios - Desifectantes Topicos'),('0102752490001','Miguel Angel Campoverde Astudillo','Cacique Chamba 1-74 y Jacinto Jijon','4107140','veterinariacaninos@hotmail.com','Opigal - Michu'),('0105652747001','Distribuidora Asus','Quito','22543465','NA','Laptops'),('0190370526001','Digrovac Cia. Ltda.','24 de Mayo y las Primicias','NA','NA','Vacunas - Antibioticos - Vitaminas'),('0190433927001','CProvet','12 de Octubre SN y del Retorno','0994481864','cprovet@gmail.com','Pastos'),('0301103727001','Penafiel Cobos Jorge Stalin','Calle SN y Via Misicata','4077777','NA','Antibioticos'),('0301799136001','Ruilova Fajardo Roberto Rolando','Rio Palora 1-32 y Rio Curaray','2870301','NA','Medicamentos'),('0990018707001','ECUAQUIMICA','Av. Espana y Turuhuayco','2805203','NA','Herbisidas - Ranger'),('0990270988001','Nutril S.A.','Av. Marta Bucaram KM 6 1-2 via a Daule','NA','NA','Balanceado'),('1104351489001','Cordova Lopez Nilo Humberto','Av. Cuxibamba 75-92 e Ibarra','NA','NA','Calcio - Antibioticos - LIFE'),('1790319857001','Procesadora Nacional de Alimentos C.A. Pronaca','Av. De las Americas SN y Paseo del Salado','23976400','NA','Lechero - Sales Minerales'),('1890087252001','Tecnicos Agropecuarios Del Ecuador','Ricaurte Molinopamba ','4215333','NA','Antiparasitarios - Sales Minerales'),('MOLINOS y BALANCEADOS EL AGRO','MOLINOS y BALANCEADOS EL AGRO','MOLINOS y BALANCEADOS EL AGRO','MOLINOS y BALANCEADOS EL AGRO','MOLINOS y BALANCEADOS EL AGRO','MOLINOS y BALANCEADOS EL AGRO');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registromedico`
--

DROP TABLE IF EXISTS `registromedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registromedico` (
  `registro_id` int(11) NOT NULL AUTO_INCREMENT,
  `registro_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `registro_hora` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `registro_next_fecha` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `registro_tipo` varchar(70) COLLATE utf16_spanish_ci NOT NULL,
  `registro_descripcion` longtext COLLATE utf16_spanish_ci NOT NULL,
  `registro_paciente_id` int(11) NOT NULL,
  PRIMARY KEY (`registro_id`),
  KEY `FK_registro_paciente` (`registro_paciente_id`),
  CONSTRAINT `FK_registro_paciente` FOREIGN KEY (`registro_paciente_id`) REFERENCES `pacientes` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registromedico`
--

LOCK TABLES `registromedico` WRITE;
/*!40000 ALTER TABLE `registromedico` DISABLE KEYS */;
INSERT INTO `registromedico` (`registro_id`, `registro_fecha`, `registro_hora`, `registro_next_fecha`, `registro_tipo`, `registro_descripcion`, `registro_paciente_id`) VALUES (1,'11-10-2019','7:47','01-10-2019','Nota','Vacuna contra la rabia',1);
/*!40000 ALTER TABLE `registromedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `practica01`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `practica01` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `practica01`;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` (`SEQ_NAME`, `SEQ_COUNT`) VALUES ('SEQ_GEN',151);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operadora` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_cedula` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_telefono_USUARIO_CEDULA` (`usuario_cedula`),
  CONSTRAINT `FK_telefono_USUARIO_CEDULA` FOREIGN KEY (`usuario_cedula`) REFERENCES `usuario` (`cedula`),
  CONSTRAINT `telefono_usuario_fk` FOREIGN KEY (`usuario_cedula`) REFERENCES `usuario` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` (`codigo`, `numero`, `tipo`, `operadora`, `usuario_cedula`) VALUES (3,'0988847177','Celular','MOVISTAR','0101130862'),(52,'0985480072','Convencional','CNT','0105652747'),(53,'072897510','Convencional','ETAPA EP','0105652747');
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cedula`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`cedula`, `nombre`, `apellido`, `correo`, `contrasena`) VALUES ('0101130862','Leonardo','Torres','torresleonardo@outlook.com','leo1999'),('0101130962','Patito','Local','patito@outlook.com','patito123'),('0105652747','Danny','Robles','danny@outlook.com','dannyrobles');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-23 17:25:25
