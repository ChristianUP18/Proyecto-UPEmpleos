-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: empleos_up
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `areas_publicaciones`
--

DROP TABLE IF EXISTS `areas_publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas_publicaciones` (
  `id_Areas` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  PRIMARY KEY (`id_Areas`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_publicaciones`
--

LOCK TABLES `areas_publicaciones` WRITE;
/*!40000 ALTER TABLE `areas_publicaciones` DISABLE KEYS */;
INSERT INTO `areas_publicaciones` VALUES (1,'Abastecimiento y Logística'),(2,'Administración, Contabilidad y Finanzas'),(3,'Aduana y Comercio Exterior'),(4,'Atención al Cliente, Call Center y Telemarketing'),(5,'Comercial, Ventas y Negocios'),(6,'Comunicación, Relaciones Institucionales y Públicas'),(7,'Diseño'),(8,'Educación, Docencia e Investigación'),(9,'Enfermería'),(10,'Gastronomía y Turismo'),(11,'Gerencia y Dirección General'),(12,'Ingeniería Civil y Construcción'),(13,'Ingenierías'),(14,'Legales'),(15,'Marketing y Publicidad'),(16,'Minería, Petróleo y Gas'),(17,'Producción y Manufactura'),(18,'Recursos Humanos y Capacitación'),(19,'Salud, Medicina y Farmacia'),(20,'Secretarias y Recepción'),(21,'Seguros'),(22,'Tecnología, Sistemas y Telecomunicaciones');
/*!40000 ALTER TABLE `areas_publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion_postulaciones`
--

DROP TABLE IF EXISTS `calificacion_postulaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion_postulaciones` (
  `calificacion_Ususario` int(1) DEFAULT NULL,
  `calificacionEmpresa` int(1) DEFAULT NULL,
  `id_Postulaciones` int(11) NOT NULL,
  PRIMARY KEY (`id_Postulaciones`),
  CONSTRAINT `fk_calificacion_Postulaciones_postulaciones1` FOREIGN KEY (`id_Postulaciones`) REFERENCES `postulaciones` (`id_Postulaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion_postulaciones`
--

LOCK TABLES `calificacion_postulaciones` WRITE;
/*!40000 ALTER TABLE `calificacion_postulaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificacion_postulaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `idcomentarios` int(11) NOT NULL AUTO_INCREMENT,
  `comentarios` varchar(300) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  `idestatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcomentarios`,`idusuarios`,`idestatus`),
  KEY `fk_comentarios_usuarios1_idx` (`idusuarios`),
  KEY `fk_comentarios_estatus_Comentario1_idx` (`idestatus`),
  CONSTRAINT `fk_comentarios_estatus_Comentario1` FOREIGN KEY (`idestatus`) REFERENCES `estatus_comentario` (`idestatus`),
  CONSTRAINT `fk_comentarios_usuarios1` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corregimiento`
--

DROP TABLE IF EXISTS `corregimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corregimiento` (
  `id_Corregimiento` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  `id_Provincia` int(11) NOT NULL,
  PRIMARY KEY (`id_Corregimiento`,`id_Provincia`),
  KEY `fk_corregimiento_provincia1_idx` (`id_Provincia`),
  CONSTRAINT `fk_corregimiento_provincia1` FOREIGN KEY (`id_Provincia`) REFERENCES `provincia` (`id_Provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corregimiento`
--

LOCK TABLES `corregimiento` WRITE;
/*!40000 ALTER TABLE `corregimiento` DISABLE KEYS */;
INSERT INTO `corregimiento` VALUES (1,'Bocas del Toro',1),(2,'Changuinola',1),(3,'Chiriquí Grande',1),(4,'Almirante',1),(5,'Aguadulce',2),(6,'Antón',2),(7,'La Pintada',2),(8,'Natá',2),(9,'Olá',2),(10,'Penonomé',2),(11,'Colón',3),(12,'Chagres',3),(13,'Donoso',3),(14,'Portobelo ',3),(15,'Santa Isabel',3),(16,'Omar Torrijos',3),(17,'Alanje',4),(18,'Barú',4),(19,'Boquerón',4),(20,'Boquete',4),(21,'Bugaba',4),(22,'David',4),(23,'Dolega',4),(24,'Gualaca',4),(25,'Remedios',4),(26,'Renacimiento',4),(27,'San Félix',4),(28,'San Lorenzo',4),(29,'Tolé',4),(30,'Tierras Altas',4),(31,'Chepigana ',5),(32,'Pinogana ',5),(33,'Santa Fe',5),(34,'Chitré ',6),(35,'Las Minas',6),(36,'Los Pozos',6),(37,'Ocú',6),(38,'Parita',6),(39,'Pesé',6),(40,'Santa María',6),(41,'Guararé',7),(42,'Las Tablas',7),(43,'Los Santos',7),(44,'Macaracas',7),(45,'Pedasí',7),(46,'Pocrí',7),(47,'Tonosí',7),(48,'Panamá',8),(49,'San Miguelito',8),(50,'Balboa',8),(51,'Chepo',8),(52,'Chimán',8),(53,'Taboga',8),(54,'Atalaya',9),(55,'Calobre',9),(56,'Cañazas',9),(57,'La Mesa',9),(58,'Las Palmas',9),(59,'Montijo',9),(60,'Río de Jesús',9),(61,'San Francisco',9),(62,'Santa Fe',9),(63,'Santiago',9),(64,'Soná',9),(65,'Mariato',9),(66,'Arraiján',10),(67,'Capira',10),(68,'Chame',10),(69,'La Chorrera',10),(70,'San Carlos',10);
/*!40000 ALTER TABLE `corregimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `nivel` varchar(45) NOT NULL,
  `instituciones` varchar(45) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuarios`),
  CONSTRAINT `fk_educacion_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_area`
--

DROP TABLE IF EXISTS `empresa_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa_area` (
  `id_Areas` int(11) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Areas`,`idusuarios`),
  KEY `fk_empresa_Area_perfil_Empresa1_idx` (`idusuarios`),
  CONSTRAINT `fk_empresa_Area_areas_Publicaciones1` FOREIGN KEY (`id_Areas`) REFERENCES `areas_publicaciones` (`id_Areas`),
  CONSTRAINT `fk_empresa_Area_perfil_Empresa1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_empresa` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_area`
--

LOCK TABLES `empresa_area` WRITE;
/*!40000 ALTER TABLE `empresa_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_industria`
--

DROP TABLE IF EXISTS `empresa_industria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa_industria` (
  `id_Tipo` int(11) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tipo`,`idusuarios`),
  KEY `fk_empresa_Industria_perfil_Empresa1_idx` (`idusuarios`),
  CONSTRAINT `fk_empresa_Industria_perfil_Empresa1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_empresa` (`idusuarios`),
  CONSTRAINT `fk_empresa_Industria_tipo_Industria1` FOREIGN KEY (`id_Tipo`) REFERENCES `tipo_industria` (`id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_industria`
--

LOCK TABLES `empresa_industria` WRITE;
/*!40000 ALTER TABLE `empresa_industria` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_industria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_civil`
--

DROP TABLE IF EXISTS `estatus_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus_civil` (
  `id_Estatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_civil`
--

LOCK TABLES `estatus_civil` WRITE;
/*!40000 ALTER TABLE `estatus_civil` DISABLE KEYS */;
INSERT INTO `estatus_civil` VALUES (1,'Soltero'),(2,'Unido'),(3,'Casado');
/*!40000 ALTER TABLE `estatus_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_comentario`
--

DROP TABLE IF EXISTS `estatus_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus_comentario` (
  `idestatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_comentario`
--

LOCK TABLES `estatus_comentario` WRITE;
/*!40000 ALTER TABLE `estatus_comentario` DISABLE KEYS */;
INSERT INTO `estatus_comentario` VALUES (1,'Enviado'),(2,'Aceptado'),(3,'Rechazado');
/*!40000 ALTER TABLE `estatus_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_laboral`
--

DROP TABLE IF EXISTS `estatus_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus_laboral` (
  `id_Estatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_laboral`
--

LOCK TABLES `estatus_laboral` WRITE;
/*!40000 ALTER TABLE `estatus_laboral` DISABLE KEYS */;
INSERT INTO `estatus_laboral` VALUES (1,'Desempleado'),(2,'Trabajador');
/*!40000 ALTER TABLE `estatus_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_mensajes`
--

DROP TABLE IF EXISTS `estatus_mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus_mensajes` (
  `idestatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_mensajes`
--

LOCK TABLES `estatus_mensajes` WRITE;
/*!40000 ALTER TABLE `estatus_mensajes` DISABLE KEYS */;
INSERT INTO `estatus_mensajes` VALUES (1,'enviado'),(2,'visto');
/*!40000 ALTER TABLE `estatus_mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_postulaciones`
--

DROP TABLE IF EXISTS `estatus_postulaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus_postulaciones` (
  `id_Estatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_postulaciones`
--

LOCK TABLES `estatus_postulaciones` WRITE;
/*!40000 ALTER TABLE `estatus_postulaciones` DISABLE KEYS */;
INSERT INTO `estatus_postulaciones` VALUES (1,'Aplicado'),(2,'Visto'),(3,'Aceptado'),(4,'Rechazado');
/*!40000 ALTER TABLE `estatus_postulaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_publicaciones`
--

DROP TABLE IF EXISTS `estatus_publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus_publicaciones` (
  `id_Estatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_publicaciones`
--

LOCK TABLES `estatus_publicaciones` WRITE;
/*!40000 ALTER TABLE `estatus_publicaciones` DISABLE KEYS */;
INSERT INTO `estatus_publicaciones` VALUES (1,'Activo'),(2,'Finalizado'),(3,'Almacenado');
/*!40000 ALTER TABLE `estatus_publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_laboral` (
  `id_Experiencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `telefonos` varchar(45) DEFAULT NULL,
  `descripciones` varchar(45) NOT NULL,
  `fecha_Inicio` timestamp NOT NULL,
  `fecha_Final` timestamp NULL DEFAULT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Experiencia`,`idusuarios`),
  KEY `fk_experiencia_Laboral_perfil_Usuario1_idx` (`idusuarios`),
  CONSTRAINT `fk_experiencia_Laboral_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_Genero` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino'),(2,'Femenino');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomas`
--

DROP TABLE IF EXISTS `idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idiomas` (
  `ididiomas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`ididiomas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomas`
--

LOCK TABLES `idiomas` WRITE;
/*!40000 ALTER TABLE `idiomas` DISABLE KEYS */;
INSERT INTO `idiomas` VALUES (1,'Español'),(2,'Ingles'),(3,'Mandarín'),(4,'Francés'),(5,'Portugués '),(6,'Ruso');
/*!40000 ALTER TABLE `idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensajes` (
  `idMensajes` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(45) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_Postulaciones` int(11) NOT NULL,
  `idusuario` varchar(45) NOT NULL,
  `idestatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idMensajes`,`id_Postulaciones`,`idestatus`),
  KEY `fk_mensajes_postulaciones1_idx` (`id_Postulaciones`),
  KEY `fk_mensajes_estatus_Mensajes1_idx` (`idestatus`),
  CONSTRAINT `fk_mensajes_estatus_Mensajes1` FOREIGN KEY (`idestatus`) REFERENCES `estatus_mensajes` (`idestatus`),
  CONSTRAINT `fk_mensajes_postulaciones1` FOREIGN KEY (`id_Postulaciones`) REFERENCES `postulaciones` (`id_Postulaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_Pais` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Panama');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_empresa`
--

DROP TABLE IF EXISTS `perfil_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_empresa` (
  `idusuarios` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `rucs` varchar(45) NOT NULL,
  `razones` varchar(45) NOT NULL,
  `direcciones` varchar(45) NOT NULL,
  `correos` varchar(45) NOT NULL,
  `telefonos` varchar(45) NOT NULL,
  `id_Corregimiento` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`,`id_Corregimiento`),
  KEY `fk_perfil_Empresa_corregimiento1_idx` (`id_Corregimiento`),
  CONSTRAINT `fk_perfil_Empresa_corregimiento1` FOREIGN KEY (`id_Corregimiento`) REFERENCES `corregimiento` (`id_Corregimiento`),
  CONSTRAINT `fk_perfil_Empresa_usuarios1` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_empresa`
--

LOCK TABLES `perfil_empresa` WRITE;
/*!40000 ALTER TABLE `perfil_empresa` DISABLE KEYS */;
INSERT INTO `perfil_empresa` VALUES ('mechanicsPA','Mechanics','1243637','no se ','avenida imaginaria, al lado del super mercado','mechanicsPA@gmai.com','11111',3,'~/Content/img/fotoEmpresa/default.png'),('panamablue@gmai.com','Panama Bule S.A.','1243637','no se ','calle 3 ','panamablue@gmai.com','11111',1,'~/Content/img/fotoEmpresa/default.png');
/*!40000 ALTER TABLE `perfil_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_usuario`
--

DROP TABLE IF EXISTS `perfil_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_usuario` (
  `idusuarios` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `cedulas` varchar(45) NOT NULL,
  `edades` varchar(45) NOT NULL,
  `direcciones` varchar(45) NOT NULL,
  `correos` varchar(45) NOT NULL,
  `telefonos` varchar(45) NOT NULL,
  `fechas_n` datetime NOT NULL,
  `id_Estatus_laboral` int(11) NOT NULL,
  `id_Estatus_Civil` int(11) NOT NULL,
  `id_Genero` int(11) NOT NULL,
  `id_Corregimiento` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`,`id_Estatus_laboral`,`id_Estatus_Civil`,`id_Genero`,`id_Corregimiento`),
  KEY `fk_perfil_Usuario_estatus_Laboral1_idx` (`id_Estatus_laboral`),
  KEY `fk_perfil_Usuario_estatus_Civil1_idx` (`id_Estatus_Civil`),
  KEY `fk_perfil_Usuario_genero1_idx` (`id_Genero`),
  KEY `fk_perfil_Usuario_corregimiento1_idx` (`id_Corregimiento`),
  CONSTRAINT `fk_perfil_Usuario_corregimiento1` FOREIGN KEY (`id_Corregimiento`) REFERENCES `corregimiento` (`id_Corregimiento`),
  CONSTRAINT `fk_perfil_Usuario_estatus_Civil1` FOREIGN KEY (`id_Estatus_Civil`) REFERENCES `estatus_civil` (`id_Estatus`),
  CONSTRAINT `fk_perfil_Usuario_estatus_Laboral1` FOREIGN KEY (`id_Estatus_laboral`) REFERENCES `estatus_laboral` (`id_Estatus`),
  CONSTRAINT `fk_perfil_Usuario_genero1` FOREIGN KEY (`id_Genero`) REFERENCES `genero` (`id_Genero`),
  CONSTRAINT `fk_perfil_Usuario_usuarios1` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_usuario`
--

LOCK TABLES `perfil_usuario` WRITE;
/*!40000 ALTER TABLE `perfil_usuario` DISABLE KEYS */;
INSERT INTO `perfil_usuario` VALUES ('1','1','1','1','1','1','marvin@up.ac.pa','11111','2021-12-08 00:00:00',1,1,2,11,'~/Content/img/fotoUsuarios/default.png'),('marvin01','marvin','ledezma','8-847-1894','30','santa Sofia calle 99','marvin@up.ac.pa','66666666','2021-12-08 00:00:00',2,2,1,2,'~/Content/img/fotoUsuarios/default.png'),('marvin08','marvi','ledezma','8-847-1894','30','santa sofia','marvin@upac.pa','66666666','2021-01-01 00:00:00',2,3,1,1,'~/Content/img/fotoUsuarios/default.png');
/*!40000 ALTER TABLE `perfil_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peril_laboral`
--

DROP TABLE IF EXISTS `peril_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peril_laboral` (
  `descripcion` varchar(250) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuarios`),
  CONSTRAINT `fk_peril_Laboral_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peril_laboral`
--

LOCK TABLES `peril_laboral` WRITE;
/*!40000 ALTER TABLE `peril_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `peril_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postulaciones`
--

DROP TABLE IF EXISTS `postulaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postulaciones` (
  `id_Postulaciones` int(11) NOT NULL AUTO_INCREMENT,
  `salarios` int(11) DEFAULT NULL,
  `comentarios` varchar(300) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_Publicaciones` int(11) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  `estatus_Postulaciones` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_Postulaciones`,`id_Publicaciones`,`idusuarios`,`estatus_Postulaciones`),
  KEY `fk_postulaciones_publicaciones1_idx` (`id_Publicaciones`),
  KEY `fk_postulaciones_perfil_Usuario1_idx` (`idusuarios`),
  KEY `fk_postulaciones_estatus_Postulaciones1_idx` (`estatus_Postulaciones`),
  CONSTRAINT `fk_postulaciones_estatus_Postulaciones1` FOREIGN KEY (`estatus_Postulaciones`) REFERENCES `estatus_postulaciones` (`id_Estatus`),
  CONSTRAINT `fk_postulaciones_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`),
  CONSTRAINT `fk_postulaciones_publicaciones1` FOREIGN KEY (`id_Publicaciones`) REFERENCES `publicaciones` (`id_Publicaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postulaciones`
--

LOCK TABLES `postulaciones` WRITE;
/*!40000 ALTER TABLE `postulaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `postulaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferencias_laborales`
--

DROP TABLE IF EXISTS `preferencias_laborales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferencias_laborales` (
  `idusuarios` varchar(45) NOT NULL,
  `id_Areas` int(11) NOT NULL,
  PRIMARY KEY (`idusuarios`,`id_Areas`),
  KEY `fk_preferencias_Laborales_areas_Publicaciones1_idx` (`id_Areas`),
  CONSTRAINT `fk_preferencias_Laborales_areas_Publicaciones1` FOREIGN KEY (`id_Areas`) REFERENCES `areas_publicaciones` (`id_Areas`),
  CONSTRAINT `fk_preferencias_Laborales_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferencias_laborales`
--

LOCK TABLES `preferencias_laborales` WRITE;
/*!40000 ALTER TABLE `preferencias_laborales` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferencias_laborales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `id_Provincia` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `id_Pais` int(11) NOT NULL,
  PRIMARY KEY (`id_Provincia`,`id_Pais`),
  KEY `fk_provincia_pais1_idx` (`id_Pais`),
  CONSTRAINT `fk_provincia_pais1` FOREIGN KEY (`id_Pais`) REFERENCES `pais` (`id_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Bocas del Toro',1),(2,'Coclé',1),(3,'Colón',1),(4,'Chiriquí',1),(5,'Darién',1),(6,'Herrera ',1),(7,'Los Santos',1),(8,'Panamá',1),(9,'Veraguas',1),(10,'Panamá Oeste',1);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_idiomas`
--

DROP TABLE IF EXISTS `publicacion_idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion_idiomas` (
  `id_Publicaciones` int(11) NOT NULL,
  `idiomas` int(11) NOT NULL,
  PRIMARY KEY (`id_Publicaciones`,`idiomas`),
  KEY `fk_publicacion_Idiomas_idiomas1_idx` (`idiomas`),
  CONSTRAINT `fk_publicacion_Idiomas_idiomas1` FOREIGN KEY (`idiomas`) REFERENCES `idiomas` (`ididiomas`),
  CONSTRAINT `fk_publicacion_Idiomas_publicaciones1` FOREIGN KEY (`id_Publicaciones`) REFERENCES `publicaciones` (`id_Publicaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_idiomas`
--

LOCK TABLES `publicacion_idiomas` WRITE;
/*!40000 ALTER TABLE `publicacion_idiomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion_idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicaciones` (
  `id_Publicaciones` int(11) NOT NULL AUTO_INCREMENT,
  `titulos` varchar(75) NOT NULL,
  `descripciones` varchar(500) NOT NULL,
  `direcciones` varchar(200) DEFAULT NULL,
  `salarios_base` int(10) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idusuarios` varchar(45) NOT NULL,
  `id_Estatus` int(11) NOT NULL DEFAULT '1',
  `tipo_Horario` int(11) NOT NULL,
  `id_Areas` int(11) NOT NULL,
  `id_Corregimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_Publicaciones`,`idusuarios`,`id_Estatus`,`tipo_Horario`,`id_Areas`,`id_Corregimiento`),
  KEY `fk_publicaciones_perfil_Empresa1_idx` (`idusuarios`),
  KEY `fk_publicaciones_estatus_Publicaciones1_idx` (`id_Estatus`),
  KEY `fk_publicaciones_tipo_Horario1_idx` (`tipo_Horario`),
  KEY `fk_publicaciones_areas_Publicaciones1_idx` (`id_Areas`),
  KEY `fk_publicaciones_corregimiento1_idx` (`id_Corregimiento`),
  CONSTRAINT `fk_publicaciones_areas_Publicaciones1` FOREIGN KEY (`id_Areas`) REFERENCES `areas_publicaciones` (`id_Areas`),
  CONSTRAINT `fk_publicaciones_corregimiento1` FOREIGN KEY (`id_Corregimiento`) REFERENCES `corregimiento` (`id_Corregimiento`),
  CONSTRAINT `fk_publicaciones_estatus_Publicaciones1` FOREIGN KEY (`id_Estatus`) REFERENCES `estatus_publicaciones` (`id_Estatus`),
  CONSTRAINT `fk_publicaciones_perfil_Empresa1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_empresa` (`idusuarios`),
  CONSTRAINT `fk_publicaciones_tipo_Horario1` FOREIGN KEY (`tipo_Horario`) REFERENCES `tipo_horario` (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES (1,'Operador de equipo Pesado','operar maquinaria de extracción de tierra','milla22 ',1700,'2021-12-07 21:02:20','panamablue@gmai.com',1,1,16,3),(2,'Operador de equipo Pesado','operar maquinaria de extracción de tierra','milla22 ',1700,'2021-12-07 21:09:29','panamablue@gmai.com',1,1,16,3),(3,'Mecánico de Motores Diesel','reparación de todo tipo de motores y de diferentes marcas','balboa',1000,'2021-12-07 22:43:05','mechanicsPA',1,1,17,3);
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencias`
--

DROP TABLE IF EXISTS `referencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referencias` (
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `telefonos` varchar(45) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuarios`),
  CONSTRAINT `fk_referencias_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencias`
--

LOCK TABLES `referencias` WRITE;
/*!40000 ALTER TABLE `referencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_areas`
--

DROP TABLE IF EXISTS `sub_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_areas` (
  `id_SubAreas` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_SubAreas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_areas`
--

LOCK TABLES `sub_areas` WRITE;
/*!40000 ALTER TABLE `sub_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timestamps`
--

DROP TABLE IF EXISTS `timestamps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timestamps` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timestamps`
--

LOCK TABLES `timestamps` WRITE;
/*!40000 ALTER TABLE `timestamps` DISABLE KEYS */;
/*!40000 ALTER TABLE `timestamps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_horario`
--

DROP TABLE IF EXISTS `tipo_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_horario` (
  `idtipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_horario`
--

LOCK TABLES `tipo_horario` WRITE;
/*!40000 ALTER TABLE `tipo_horario` DISABLE KEYS */;
INSERT INTO `tipo_horario` VALUES (1,'Tiempo Copmpleto'),(2,'Tele-Trabajo'),(3,'Part-Time');
/*!40000 ALTER TABLE `tipo_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_industria`
--

DROP TABLE IF EXISTS `tipo_industria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_industria` (
  `id_Tipo` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_industria`
--

LOCK TABLES `tipo_industria` WRITE;
/*!40000 ALTER TABLE `tipo_industria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_industria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuarios`
--

DROP TABLE IF EXISTS `tipo_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuarios` (
  `id_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuarios`
--

LOCK TABLES `tipo_usuarios` WRITE;
/*!40000 ALTER TABLE `tipo_usuarios` DISABLE KEYS */;
INSERT INTO `tipo_usuarios` VALUES (1,'Postulante'),(2,'Empresa'),(3,'Administrador');
/*!40000 ALTER TABLE `tipo_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_idioma`
--

DROP TABLE IF EXISTS `usuario_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_idioma` (
  `idiomas` int(11) NOT NULL,
  `idusuarios` varchar(45) NOT NULL,
  PRIMARY KEY (`idiomas`,`idusuarios`),
  KEY `fk_Usuario_idioma_perfil_Usuario1_idx` (`idusuarios`),
  CONSTRAINT `fk_Usuario_idioma_idiomas1` FOREIGN KEY (`idiomas`) REFERENCES `idiomas` (`ididiomas`),
  CONSTRAINT `fk_Usuario_idioma_perfil_Usuario1` FOREIGN KEY (`idusuarios`) REFERENCES `perfil_usuario` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_idioma`
--

LOCK TABLES `usuario_idioma` WRITE;
/*!40000 ALTER TABLE `usuario_idioma` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` varchar(45) NOT NULL,
  `contrasenas` varchar(45) NOT NULL,
  `id_Tipo` int(11) NOT NULL,
  PRIMARY KEY (`idusuarios`,`id_Tipo`),
  KEY `fk_usuarios_tipo_Usuarios_idx` (`id_Tipo`),
  CONSTRAINT `fk_usuarios_tipo_Usuarios` FOREIGN KEY (`id_Tipo`) REFERENCES `tipo_usuarios` (`id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('1','1',1),('marvin01','1234',1),('marvin08','1234',1),('mechanicsPA','1234',2),('panamablue@gmai.com','1234',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07 21:56:51
