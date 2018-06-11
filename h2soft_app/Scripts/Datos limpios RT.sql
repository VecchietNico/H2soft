-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: h2softapp
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Dumping data for table `alertas`
--

LOCK TABLES `alertas` WRITE;
/*!40000 ALTER TABLE `alertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `caja-total`
--

LOCK TABLES `caja-total` WRITE;
/*!40000 ALTER TABLE `caja-total` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja-total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `camiones`
--

LOCK TABLES `camiones` WRITE;
/*!40000 ALTER TABLE `camiones` DISABLE KEYS */;
INSERT INTO `camiones` (`idCamiones`, `nombre`, `capacidadMaxima`, `createdAt`, `updatedAt`) VALUES (1,'Camión 1',80,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Camión 2',80,'1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `camiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`idClientes`, `razonSocial`, `direccion`, `CUIL`, `idTipo`, `createdAt`, `updatedAt`) VALUES (1,'Prosegur','San Luis 300, X5022KSE Córdoba, Argentina','273849987',1,'2018-05-29 00:10:59','2018-05-29 00:24:03'),(2,'CAT','San Luis 89, Córdoba, Argentina','124556377',1,'2018-05-29 00:14:39','2018-05-29 00:25:59'),(3,'Ocasa','Buenos Aires 60, X5022AAB Córdoba, Argentina','374446573',1,'2018-05-29 00:18:32','2018-05-29 00:26:47'),(4,'Correo Argentino','Av. Colón 500, Córdoba, Argentina','276654089',1,'2018-05-29 00:23:43','2018-05-29 00:27:19'),(5,'Edisur','Sta Fe 1192, Córdoba, Argentina','28776579',1,'2018-05-29 01:31:05','2018-05-29 01:31:05'),(6,'Arcor','Av. Maipú 500, Córdoba, Argentina','2734566792',1,'2018-05-30 22:53:48','2018-05-30 22:53:48'),(7,'Carrefour','Av. Colón, Córdoba, Argentina','234723807',1,'2018-05-30 23:27:28','2018-05-30 23:27:28'),(8,'Rapicor','Av. Colón 2020, 5000 Córdoba, Argentina','3745678',1,'2018-06-11 02:42:17','2018-06-11 02:42:17');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contactos-x-cliente`
--

LOCK TABLES `contactos-x-cliente` WRITE;
/*!40000 ALTER TABLE `contactos-x-cliente` DISABLE KEYS */;
INSERT INTO `contactos-x-cliente` (`idContactosXCliente`, `idCliente`, `nombre`, `telefono`, `celular`, `mail`, `observaciones`, `createdAt`, `updatedAt`) VALUES (1,1,'Raúl Gutierrez','0351 4820620','0351 157687633','raulg@gmail.com','','2018-05-29 00:10:59','2018-05-29 00:24:03'),(2,2,'Andrea Peralta','0351 4897655','0351 157546699','anderap@outlook.com','','2018-05-29 00:14:39','2018-05-29 00:25:59'),(3,3,'Romina Napoles','0351 4827844','0351 155664398','nromina@gmail.com','','2018-05-29 00:18:32','2018-05-29 00:26:47'),(4,4,'Emanuel Ansalone','0351 4826675','0351 157563348','emanuela@gmail.com','','2018-05-29 00:23:43','2018-05-29 00:27:19'),(5,5,'Carolina Espinosa','0351 4823455','0351 157549987','carlona1@hotmail.com','','2018-05-29 01:31:05','2018-05-29 01:31:05'),(6,6,'Romina Castro','0351 157562087','0351 157563348','romi_castro@hotmail.com','','2018-05-30 22:53:48','2018-05-30 22:53:48'),(7,7,'Roberto Jalisco','0351 4820600','0351 157563348','robertj@gmail.com','','2018-05-30 23:27:28','2018-05-30 23:27:28'),(8,8,'Raul Gomez','0351 4809898',NULL,'raul@gmail.com','','2018-06-11 02:42:17','2018-06-11 02:42:17');
/*!40000 ALTER TABLE `contactos-x-cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contratos`
--

LOCK TABLES `contratos` WRITE;
/*!40000 ALTER TABLE `contratos` DISABLE KEYS */;
INSERT INTO `contratos` (`idContratos`, `idCliente`, `fechaFirma`, `fechaVigenciaDesde`, `fechaVigenciaHasta`, `createdAt`, `updatedAt`) VALUES (1,1,'2017-12-05 03:00:00','2017-12-05 03:00:00','2018-06-05 03:00:00','2018-05-29 01:17:30','2018-05-29 04:01:20'),(2,2,'2017-12-28 03:00:00','2017-12-28 03:00:00','2018-06-28 03:00:00','2018-05-29 01:18:58','2018-05-29 01:18:58'),(3,3,'2017-11-21 03:00:00','2017-11-28 03:00:00','2018-05-30 03:00:00','2018-05-29 01:23:50','2018-05-29 01:23:50'),(4,4,'2018-03-01 03:00:00','2018-03-01 03:00:00','2018-09-03 03:00:00','2018-05-29 01:27:04','2018-05-29 01:27:04'),(5,5,'2018-05-29 03:00:00','2018-05-29 03:00:00','2018-11-29 03:00:00','2018-05-29 12:33:20','2018-05-29 12:33:20');
/*!40000 ALTER TABLE `contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle-factura`
--

LOCK TABLES `detalle-factura` WRITE;
/*!40000 ALTER TABLE `detalle-factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle-factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle-gasto`
--

LOCK TABLES `detalle-gasto` WRITE;
/*!40000 ALTER TABLE `detalle-gasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle-gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle-recorrido`
--

LOCK TABLES `detalle-recorrido` WRITE;
/*!40000 ALTER TABLE `detalle-recorrido` DISABLE KEYS */;
INSERT INTO `detalle-recorrido` (`idDetalleRecorrido`, `idRecorrido`, `idObjetivo`, `orden`, `cantidadDispensersSugerida`, `createdAt`, `updatedAt`) VALUES (1,1,19,1,NULL,'2018-06-11 02:26:40','2018-06-11 02:26:59'),(2,1,20,2,NULL,'2018-06-11 02:26:45','2018-06-11 02:26:59'),(3,1,26,3,NULL,'2018-06-11 02:26:58','2018-06-11 02:26:59'),(4,2,25,1,NULL,'2018-06-11 02:27:23','2018-06-11 02:27:38'),(5,2,30,2,NULL,'2018-06-11 02:27:31','2018-06-11 02:27:38'),(6,2,31,3,NULL,'2018-06-11 02:27:36','2018-06-11 02:27:38'),(7,3,27,1,NULL,'2018-06-11 02:28:21','2018-06-11 02:28:42'),(8,3,21,3,NULL,'2018-06-11 02:28:31','2018-06-11 02:28:42'),(9,3,28,2,NULL,'2018-06-11 02:28:41','2018-06-11 02:28:42'),(10,4,32,2,NULL,'2018-06-11 02:30:37','2018-06-11 02:30:54'),(11,4,29,3,NULL,'2018-06-11 02:30:45','2018-06-11 02:30:54'),(12,4,34,1,NULL,'2018-06-11 02:30:53','2018-06-11 02:30:54'),(13,5,33,4,NULL,'2018-06-11 02:32:14','2018-06-11 02:33:20'),(14,5,35,3,NULL,'2018-06-11 02:32:25','2018-06-11 02:33:20'),(15,5,37,2,NULL,'2018-06-11 02:33:09','2018-06-11 02:33:20'),(16,5,36,1,NULL,'2018-06-11 02:33:18','2018-06-11 02:33:20'),(17,6,30,1,NULL,'2018-06-11 02:35:14','2018-06-11 02:35:24'),(18,6,29,3,NULL,'2018-06-11 02:35:20','2018-06-11 02:35:24'),(19,6,26,2,NULL,'2018-06-11 02:35:23','2018-06-11 02:35:24'),(20,7,29,3,NULL,'2018-06-11 02:36:15','2018-06-11 02:36:24'),(21,7,34,1,NULL,'2018-06-11 02:36:19','2018-06-11 02:36:24'),(22,7,36,2,NULL,'2018-06-11 02:36:23','2018-06-11 02:36:24');
/*!40000 ALTER TABLE `detalle-recorrido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle-recorrido-historico`
--

LOCK TABLES `detalle-recorrido-historico` WRITE;
/*!40000 ALTER TABLE `detalle-recorrido-historico` DISABLE KEYS */;
INSERT INTO `detalle-recorrido-historico` (`idDetalleRecorridoHistorico`, `idRecorridoHistorico`, `idObjetivo`, `orden`, `idRemito`, `entregado`, `idProducto`, `cantidadSugerida`, `observaciones`, `createdAt`, `updatedAt`) VALUES (1,1,19,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(2,1,20,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(3,1,26,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(4,2,19,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(5,2,20,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(6,2,26,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(7,3,19,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(8,3,20,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(9,3,26,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(10,4,19,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(11,4,20,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(12,4,26,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(13,5,25,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(14,5,30,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(15,5,31,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(16,6,25,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(17,6,30,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(18,6,31,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(19,7,25,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(20,7,30,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(21,7,31,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(22,8,25,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(23,8,30,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(24,8,31,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(25,9,27,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(26,9,21,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(27,9,28,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(28,10,27,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(29,10,21,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(30,10,28,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(31,11,27,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(32,11,21,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(33,11,28,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(34,12,27,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(35,12,21,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(36,12,28,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(37,13,32,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:25','2018-06-11 02:47:25'),(38,13,29,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:25','2018-06-11 02:47:25'),(39,13,34,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:25','2018-06-11 02:47:25'),(40,14,33,4,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(41,14,35,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(42,14,37,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(43,14,36,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(44,15,33,4,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(45,15,35,3,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(46,15,37,2,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(47,15,36,1,NULL,0,NULL,NULL,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33');
/*!40000 ALTER TABLE `detalle-recorrido-historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle-remito-dispensers`
--

LOCK TABLES `detalle-remito-dispensers` WRITE;
/*!40000 ALTER TABLE `detalle-remito-dispensers` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle-remito-dispensers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle-remito-productos`
--

LOCK TABLES `detalle-remito-productos` WRITE;
/*!40000 ALTER TABLE `detalle-remito-productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle-remito-productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalles-contrato`
--

LOCK TABLES `detalles-contrato` WRITE;
/*!40000 ALTER TABLE `detalles-contrato` DISABLE KEYS */;
INSERT INTO `detalles-contrato` (`idDetallesContrato`, `idContrato`, `cantidadMaxima`, `cantidadMinima`, `precioPorUnidad`, `idProducto`, `createdAt`, `updatedAt`) VALUES (3,2,60,1,70,1,'2018-05-29 01:18:58','2018-05-29 01:18:58'),(4,2,80,61,50,1,'2018-05-29 01:18:58','2018-05-29 01:18:58'),(5,2,110,81,45,1,'2018-05-29 01:18:58','2018-05-29 01:18:58'),(6,3,30,1,50,1,'2018-05-29 01:23:50','2018-05-29 01:23:50'),(7,3,40,31,40,1,'2018-05-29 01:23:50','2018-05-29 01:23:50'),(8,3,50,41,35,1,'2018-05-29 01:23:50','2018-05-29 01:23:50'),(9,4,30,1,50,1,'2018-05-29 01:27:04','2018-05-29 01:27:04'),(10,4,45,31,40,1,'2018-05-29 01:27:04','2018-05-29 01:27:04'),(11,1,30,1,60,1,'2018-05-29 04:01:20','2018-05-29 04:01:20'),(12,1,200,61,20,1,'2018-05-29 04:01:20','2018-05-29 04:01:20'),(13,1,60,31,50,1,'2018-05-29 04:01:20','2018-05-29 04:01:20'),(14,5,50,30,50,1,'2018-05-29 12:33:20','2018-05-29 12:33:20'),(15,5,70,51,40,1,'2018-05-29 12:33:20','2018-05-29 12:33:20');
/*!40000 ALTER TABLE `detalles-contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dias`
--

LOCK TABLES `dias` WRITE;
/*!40000 ALTER TABLE `dias` DISABLE KEYS */;
INSERT INTO `dias` (`idDias`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Lunes','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Martes','1970-01-01 00:00:00','1970-01-01 00:00:00'),(3,'Miercoles','1970-01-01 00:00:00','1970-01-01 00:00:00'),(4,'Jueves','1970-01-01 00:00:00','1970-01-01 00:00:00'),(5,'Viernes','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `dias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dispenser-x-detalle-recorrido`
--

LOCK TABLES `dispenser-x-detalle-recorrido` WRITE;
/*!40000 ALTER TABLE `dispenser-x-detalle-recorrido` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispenser-x-detalle-recorrido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dispensers`
--

LOCK TABLES `dispensers` WRITE;
/*!40000 ALTER TABLE `dispensers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispensers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`idEmpleados`, `nombre`, `apellido`, `dni`, `fechaNacimiento`, `domicilio`, `idLocalidad`, `createdAt`, `updatedAt`) VALUES (1,'Emanuel','Perroud','34805349','1990-01-25 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Camila','Visconti','12345678','1990-01-01 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(3,'Camila','Belloni','12345678','1990-01-01 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(4,'Ignacio','Guri','12345678','1990-01-01 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(5,'Nicolas','Vecchiet','12345678','1990-01-01 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(6,'Joaquin','Gomez','1234556','1990-01-01 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00'),(7,'Francisco','Arriague','1234556','1970-01-01 00:00:00','calle 123',NULL,'1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados-alerta`
--

LOCK TABLES `estados-alerta` WRITE;
/*!40000 ALTER TABLE `estados-alerta` DISABLE KEYS */;
INSERT INTO `estados-alerta` (`idEstadoAlerta`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Pendiente','2018-04-22 00:00:00','2018-04-22 00:00:00'),(2,'Realizada','2018-04-22 00:00:00','2018-04-22 00:00:00');
/*!40000 ALTER TABLE `estados-alerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados-dispenser`
--

LOCK TABLES `estados-dispenser` WRITE;
/*!40000 ALTER TABLE `estados-dispenser` DISABLE KEYS */;
INSERT INTO `estados-dispenser` (`idEstadosDispenser`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'En fábrica y limpio','En fábrica y limpio','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'En objetivo y limpio','En objetivo y limpio','1970-01-01 00:00:00','1970-01-01 00:00:00'),(3,'En objetivo y sucio','En objetivo y sucio','1970-01-01 00:00:00','1970-01-01 00:00:00'),(4,'En mantenimiento','En mantenimiento','1970-01-01 00:00:00','1970-01-01 00:00:00'),(5,'Descartado','Descartado','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `estados-dispenser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados-factura`
--

LOCK TABLES `estados-factura` WRITE;
/*!40000 ALTER TABLE `estados-factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados-factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados-mantenimiento`
--

LOCK TABLES `estados-mantenimiento` WRITE;
/*!40000 ALTER TABLE `estados-mantenimiento` DISABLE KEYS */;
INSERT INTO `estados-mantenimiento` (`idEstadosMantenimiento`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Pendiente','Pendiente de ser realizado por un empleado de mantenimiento','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Realizado','Mantenimiento ya realizado','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `estados-mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados-recorrido`
--

LOCK TABLES `estados-recorrido` WRITE;
/*!40000 ALTER TABLE `estados-recorrido` DISABLE KEYS */;
INSERT INTO `estados-recorrido` (`idEstadosRecorrido`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Nuevo','Recién creado','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'En Proceso','Se están visitando los objetivos','1970-01-01 00:00:00','1970-01-01 00:00:00'),(3,'Suspendido','Por algún motivo no se puede continuar','1970-01-01 00:00:00','1970-01-01 00:00:00'),(4,'Finalizado','Se visitaron todos los objetivos','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `estados-recorrido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados-remito`
--

LOCK TABLES `estados-remito` WRITE;
/*!40000 ALTER TABLE `estados-remito` DISABLE KEYS */;
INSERT INTO `estados-remito` (`idEstadosRemito`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Creadi','Remito creado','2018-01-01 00:00:00','2018-01-01 00:00:00'),(2,'Anulado','','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `estados-remito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frecuencias-recorrido`
--

LOCK TABLES `frecuencias-recorrido` WRITE;
/*!40000 ALTER TABLE `frecuencias-recorrido` DISABLE KEYS */;
INSERT INTO `frecuencias-recorrido` (`idFrecuenciasRecorrido`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Semanal','2018-01-01 00:00:00','2018-01-01 00:00:00'),(2,'Bisemanal','2018-01-01 00:00:00','2018-01-01 00:00:00'),(3,'Mensual','2018-01-01 00:00:00','2018-01-01 00:00:00');
/*!40000 ALTER TABLE `frecuencias-recorrido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
INSERT INTO `gastos` (`idGastos`, `fecha`, `idEmpleado`, `descripcion`, `monto`, `idMedioDePagoCobro`, `imagen`, `createdAt`, `updatedAt`) VALUES (2,'2018-05-29 03:00:00',1,'Pago cliente Prosegur',10000,1,'','2018-05-29 13:35:21','2018-05-29 13:35:21'),(3,'2018-05-30 03:00:00',1,'Pago Arcor',3000,2,'','2018-05-30 23:46:17','2018-05-30 23:46:17'),(4,'2018-05-30 03:00:00',5,'Nafta',-300,1,'','2018-05-30 23:52:07','2018-05-30 23:52:07'),(5,'2018-05-30 03:00:00',4,'Gas',-300,1,'','2018-05-31 00:16:32','2018-05-31 00:16:32');
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historial_x_dispenser`
--

LOCK TABLES `historial_x_dispenser` WRITE;
/*!40000 ALTER TABLE `historial_x_dispenser` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_x_dispenser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `horarios-x-objetivo`
--

LOCK TABLES `horarios-x-objetivo` WRITE;
/*!40000 ALTER TABLE `horarios-x-objetivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `horarios-x-objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` (`idLocalidad`, `nombre`, `idProvincia`, `createdAt`, `updatedAt`) VALUES (1,'Córdoba',1,'1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mantenimientos`
--

LOCK TABLES `mantenimientos` WRITE;
/*!40000 ALTER TABLE `mantenimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantenimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medios-de-pago-cobro`
--

LOCK TABLES `medios-de-pago-cobro` WRITE;
/*!40000 ALTER TABLE `medios-de-pago-cobro` DISABLE KEYS */;
INSERT INTO `medios-de-pago-cobro` (`idMediosDePagoCobro`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Efectivo',NULL,'2018-05-29 04:31:32','2018-05-29 04:31:32'),(2,'Cheque',NULL,'2018-05-29 04:31:50','2018-05-29 04:31:50'),(3,'Transferencia',NULL,'2018-05-29 04:31:59','2018-05-29 04:31:59');
/*!40000 ALTER TABLE `medios-de-pago-cobro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `motivos-de-reasignacion`
--

LOCK TABLES `motivos-de-reasignacion` WRITE;
/*!40000 ALTER TABLE `motivos-de-reasignacion` DISABLE KEYS */;
INSERT INTO `motivos-de-reasignacion` (`idMotivoDeReasignacion`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Enfermedad','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Vacaciones','1970-01-01 00:00:00','1970-01-01 00:00:00'),(3,'Otro','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `motivos-de-reasignacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `objetivos-x-cliente`
--

LOCK TABLES `objetivos-x-cliente` WRITE;
/*!40000 ALTER TABLE `objetivos-x-cliente` DISABLE KEYS */;
INSERT INTO `objetivos-x-cliente` (`idObjetivosXCliente`, `idCliente`, `nombre`, `direccion`, `localidad`, `latitud`, `longitud`, `observaciones`, `createdAt`, `updatedAt`) VALUES (19,1,'Sika','Manuel Quintana 5660','Córdoba',NULL,NULL,NULL,'2018-05-29 00:24:03','2018-05-29 00:24:03'),(20,1,'Sol de Mayo','Santa Fe 500','Córdoba',NULL,NULL,NULL,'2018-05-29 00:24:03','2018-05-29 00:24:03'),(21,1,'Nuevo Centro','Duarte Quirós 3444','Córdoba',NULL,NULL,NULL,'2018-05-29 00:24:03','2018-05-29 00:24:03'),(25,2,'Multimarcas','Avenida General Paz 70','Córdoba',NULL,NULL,NULL,'2018-05-29 00:25:59','2018-05-29 00:25:59'),(26,2,'Oficina Norte','Duarte Quirós 300','Córdoba',NULL,NULL,NULL,'2018-05-29 00:25:59','2018-05-29 00:25:59'),(27,2,'Oficina Sur','Avenida Pablo Ricchieri 5588','Córdoba',NULL,NULL,NULL,'2018-05-29 00:25:59','2018-05-29 00:25:59'),(28,3,'Capitalinas','Humberto 1° 600','Córdoba',NULL,NULL,NULL,'2018-05-29 00:26:47','2018-05-29 00:26:47'),(29,3,'Patio Olmos','Boulevard Pte. Arturo Umberto Illia 700','Córdoba',NULL,NULL,NULL,'2018-05-29 00:26:47','2018-05-29 00:26:47'),(30,4,'Colon','Avenida Colón 600','Córdoba',NULL,NULL,NULL,'2018-05-29 00:27:19','2018-05-29 00:27:19'),(31,4,'Nuñez','Avenida Rafael Núñez 4400','Córdoba',NULL,NULL,NULL,'2018-05-29 00:27:19','2018-05-29 00:27:19'),(32,4,'Central','Avenida Pablo Ricchieri 7054','Córdoba',NULL,NULL,NULL,'2018-05-29 00:27:19','2018-05-29 00:27:19'),(33,5,'Manantiales','Padre Luchesse S/N','Villa Allende',NULL,NULL,NULL,'2018-05-29 01:31:05','2018-05-29 01:31:05'),(34,5,'Manantiales Sur','Rogelio Martínez 3342','Córdoba',NULL,NULL,NULL,'2018-05-29 01:31:05','2018-05-29 01:31:05'),(35,5,'Opera','Pelagio Luna 5564','Córdoba',NULL,NULL,NULL,'2018-05-29 01:31:05','2018-05-29 01:31:05'),(36,6,'Castro Barros','Avenida Castro Barros 566','Córdoba',NULL,NULL,NULL,'2018-05-30 22:53:48','2018-05-30 22:53:48'),(37,6,'Lugones','Avenida Poeta Lugones S/N','Córdoba',NULL,NULL,NULL,'2018-05-30 22:53:48','2018-05-30 22:53:48'),(38,7,'Colon','Avenida Colón S/N','Córdoba',NULL,NULL,NULL,'2018-05-30 23:27:28','2018-05-30 23:27:28'),(39,7,'O\'Higgins','Bernardo O\'Higgins 3478','Córdoba',NULL,NULL,NULL,'2018-05-30 23:27:28','2018-05-30 23:27:28'),(40,8,'San Martin','San Martín 300','Córdoba',NULL,NULL,NULL,'2018-06-11 02:42:17','2018-06-11 02:42:17'),(41,8,'Los andes','La Rioja 70','Córdoba',NULL,NULL,NULL,'2018-06-11 02:42:17','2018-06-11 02:42:17');
/*!40000 ALTER TABLE `objetivos-x-cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` (`idPais`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Argentina','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`idProductos`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Bidón de agua 20 L','Bidón de agua de 20 litros','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Bidón de agua 10 L','Bidón de agua de 10 litros','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` (`idProvincia`, `nombre`, `idPais`, `createdAt`, `updatedAt`) VALUES (1,'Córdoba',1,'1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recorridos`
--

LOCK TABLES `recorridos` WRITE;
/*!40000 ALTER TABLE `recorridos` DISABLE KEYS */;
INSERT INTO `recorridos` (`idRecorridos`, `idDia`, `idFrecuencia`, `idTurno`, `idTemporada`, `activo`, `createdAt`, `updatedAt`) VALUES (1,1,1,1,2,1,'2018-06-11 02:26:40','2018-06-11 02:26:40'),(2,1,1,2,2,1,'2018-06-11 02:27:23','2018-06-11 02:27:23'),(3,2,1,1,2,1,'2018-06-11 02:28:21','2018-06-11 02:28:21'),(4,2,3,2,2,1,'2018-06-11 02:30:37','2018-06-11 02:30:37'),(5,2,2,2,2,1,'2018-06-11 02:32:14','2018-06-11 02:32:14'),(6,1,3,1,2,1,'2018-06-11 02:35:14','2018-06-11 02:35:14'),(7,3,1,1,2,1,'2018-06-11 02:36:15','2018-06-11 02:36:15');
/*!40000 ALTER TABLE `recorridos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recorridos-historicos`
--

LOCK TABLES `recorridos-historicos` WRITE;
/*!40000 ALTER TABLE `recorridos-historicos` DISABLE KEYS */;
INSERT INTO `recorridos-historicos` (`idRecorridosHistoricos`, `idDia`, `idFrecuencia`, `idTurno`, `idTemporada`, `idEstado`, `idEmpleadoAsignado`, `idCamionAsignado`, `fechaAsignacion`, `fechaInicio`, `fechaFin`, `idRecorrido`, `idMotivoDeReasignacion`, `createdAt`, `updatedAt`) VALUES (1,1,1,1,2,1,2,NULL,'2018-06-11 03:46:50',NULL,NULL,1,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(2,1,1,1,2,1,2,NULL,'2018-06-18 03:46:50',NULL,NULL,1,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(3,1,1,1,2,1,2,NULL,'2018-07-02 03:46:50',NULL,NULL,1,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(4,1,1,1,2,1,2,NULL,'2018-07-23 03:46:50',NULL,NULL,1,NULL,'2018-06-11 02:46:50','2018-06-11 02:46:50'),(5,1,1,2,2,1,3,NULL,'2018-06-11 03:47:01',NULL,NULL,2,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(6,1,1,2,2,1,3,NULL,'2018-06-18 03:47:01',NULL,NULL,2,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(7,1,1,2,2,1,3,NULL,'2018-07-02 03:47:01',NULL,NULL,2,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(8,1,1,2,2,1,3,NULL,'2018-07-23 03:47:01',NULL,NULL,2,NULL,'2018-06-11 02:47:01','2018-06-11 02:47:01'),(9,2,1,1,2,1,2,NULL,'2018-06-12 03:47:17',NULL,NULL,3,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(10,2,1,1,2,1,2,NULL,'2018-06-19 03:47:17',NULL,NULL,3,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(11,2,1,1,2,1,2,NULL,'2018-07-03 03:47:17',NULL,NULL,3,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(12,2,1,1,2,1,2,NULL,'2018-07-24 03:47:17',NULL,NULL,3,NULL,'2018-06-11 02:47:17','2018-06-11 02:47:17'),(13,2,3,2,2,1,3,NULL,'2018-06-12 03:47:25',NULL,NULL,4,NULL,'2018-06-11 02:47:25','2018-06-11 02:47:25'),(14,2,2,2,2,1,1,NULL,'2018-06-12 03:47:33',NULL,NULL,5,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33'),(15,2,2,2,2,1,1,NULL,'2018-06-19 03:47:33',NULL,NULL,5,NULL,'2018-06-11 02:47:33','2018-06-11 02:47:33');
/*!40000 ALTER TABLE `recorridos-historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `remitos`
--

LOCK TABLES `remitos` WRITE;
/*!40000 ALTER TABLE `remitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `remitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `remitos-x-factura`
--

LOCK TABLES `remitos-x-factura` WRITE;
/*!40000 ALTER TABLE `remitos-x-factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `remitos-x-factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`idRoles`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Administrador','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Encargado de Reparto','1970-01-01 00:00:00','1970-01-01 00:00:00'),(3,'Repartidor','1970-01-01 00:00:00','1970-01-01 00:00:00'),(4,'Cliente','1970-01-01 00:00:00','1970-01-01 00:00:00'),(5,'Encargado de Mantenimiento','1970-01-01 00:00:00','1970-01-01 00:00:00'),(6,'Gerente','1970-01-01 00:00:00','1970-01-01 00:00:00'),(7,'Facturista','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `temporadas`
--

LOCK TABLES `temporadas` WRITE;
/*!40000 ALTER TABLE `temporadas` DISABLE KEYS */;
INSERT INTO `temporadas` (`idTemporadas`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Verano','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Invierno','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipos-alerta`
--

LOCK TABLES `tipos-alerta` WRITE;
/*!40000 ALTER TABLE `tipos-alerta` DISABLE KEYS */;
INSERT INTO `tipos-alerta` (`idTipoAlerta`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Recambio de dispenser','2018-04-22 00:00:00','2018-04-22 00:00:00'),(2,'Pedido de bidones','2018-04-22 00:00:00','2018-04-22 00:00:00'),(3,'Desvinculación de dispenser','2018-04-22 00:00:00','2018-04-22 00:00:00');
/*!40000 ALTER TABLE `tipos-alerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipos-cliente`
--

LOCK TABLES `tipos-cliente` WRITE;
/*!40000 ALTER TABLE `tipos-cliente` DISABLE KEYS */;
INSERT INTO `tipos-cliente` (`idTiposCliente`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Empresa','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Particular','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `tipos-cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipos-mantenimiento`
--

LOCK TABLES `tipos-mantenimiento` WRITE;
/*!40000 ALTER TABLE `tipos-mantenimiento` DISABLE KEYS */;
INSERT INTO `tipos-mantenimiento` (`idTiposMantenimiento`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES (1,'Preventivo','Mantenimiento realizado para prevenir roturas','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Correctivo','Mantenimiento realizado para corregir roturas','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `tipos-mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` (`idTurnos`, `nombre`, `createdAt`, `updatedAt`) VALUES (1,'Mañana','1970-01-01 00:00:00','1970-01-01 00:00:00'),(2,'Tarde','1970-01-01 00:00:00','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `activo`, `idRol`, `idEmpleado`, `createdAt`, `updatedAt`) VALUES (3,'cami','$2a$10$AUI6wkl1z3PLnPXsxbY2iuXE/tdqO5xrO0fYVooQn0xG5heJ42th6',1,1,3,'1970-01-01 00:00:00','2018-06-02 19:56:16'),(6,'ema@ema.com','$2a$12$1EJ9yCSCUfxs7p.jzOiQk.xioxbwNDoInrp6uxbhWxcVhHN6AR2ye',1,1,1,'2018-05-29 04:21:11','2018-06-02 19:56:08'),(7,'camiv','$2a$12$yizLUDRmOXBejqYANCAGje2ogasC42GJZ5B135Zwr7R.RAQNGHLz2',1,1,2,'2018-06-02 19:56:27','2018-06-02 19:56:27'),(8,'nico','$2a$12$BQKFEfZvKzGW4xbZBITFTOjXrW2jRgf39iY8MmRZrSZHMKi48k9vy',1,1,5,'2018-06-02 19:56:41','2018-06-02 19:56:41'),(9,'gura','$2a$12$1yP4Oxlpw02EKGeZod1P2uZVJxqvb5MbT1iWoaCsbJxCTfSKOIEu2',1,1,4,'2018-06-02 19:57:13','2018-06-02 19:57:13'),(10,'repartidor','$2a$10$AUI6wkl1z3PLnPXsxbY2iuXE/tdqO5xrO0fYVooQn0xG5heJ42th6',1,3,6,'2018-06-02 19:57:13','2018-06-02 19:57:13'),(11,'encargado','$2a$10$AUI6wkl1z3PLnPXsxbY2iuXE/tdqO5xrO0fYVooQn0xG5heJ42th6',1,5,7,'2018-06-02 19:57:13','2018-06-02 19:57:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'h2softapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-11  0:29:03