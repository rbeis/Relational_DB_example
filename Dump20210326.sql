-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descrição` text,
  `carga` int(10) unsigned DEFAULT NULL,
  `totaulas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'html5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',30,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Banco de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_assiste_curso`
--

DROP TABLE IF EXISTS `registro_assiste_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_assiste_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_completa` date DEFAULT NULL,
  `id_registro` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_registro` (`id_registro`),
  KEY `id_curso` (`id_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_assiste_curso`
--

LOCK TABLES `registro_assiste_curso` WRITE;
/*!40000 ALTER TABLE `registro_assiste_curso` DISABLE KEYS */;
INSERT INTO `registro_assiste_curso` VALUES (1,'2014-03-01',1,2),(2,'2014-01-15',2,4),(3,'2016-01-07',3,4),(4,'2016-09-03',4,5),(5,'2015-11-07',5,7),(6,'2014-09-16',6,1),(7,'2015-05-11',7,3),(8,'2016-02-08',8,1),(9,'2015-03-18',9,2),(10,'2017-12-22',10,2),(11,'2018-11-28',11,5),(12,'2015-10-24',12,1),(13,'2017-08-09',13,7),(14,'2018-06-15',14,6),(15,'2019-06-16',15,4),(16,'2020-04-25',16,2),(17,'2021-12-30',17,3),(18,'2015-03-29',18,1);
/*!40000 ALTER TABLE `registro_assiste_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `profissao` varchar(30) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `cursopreferido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `cursopreferido` (`cursopreferido`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,'Armando','M','1998-05-15',1.80,'Brasil','Engenheiro da Computação','netose19@gmail.com',4),(2,'Pedro','M','2000-12-02',1.65,'Brasil','Arquiteto','pedro.nocera@hotmail.com',1),(3,'Jubileu','M','2003-08-25',1.63,'Brasil','Advogado','jubivogado@gmail.com',4),(4,'Samara','F','1960-04-04',1.72,'Portugal','Médica','samaramed@outlook.com',5),(5,'Maria','F','1963-02-12',1.40,'Espanha','Empreendedora','maria.rios@hotmail.com',3),(6,'Vania','F','2002-11-04',1.45,'Rússia','Bailarina','vtrost@outlook.com',7),(7,'Peter','M','1999-05-22',1.86,'Canadá','Piloto','pmcqueen@gmail.com',1),(8,'Sandra','F','1984-04-14',1.65,'México','Garçonete','sandraportorosa@outlook.com',6),(9,'Mario','M','1955-08-10',1.68,'Porto Rico','Encanador','broscompany@nintendo.com',6),(10,'Lumira','F','1985-04-20',1.57,'Brasil','Doméstica','lumirabatista@outlook.com',6),(11,'Tanaka','M','1978-09-15',1.71,'Coréia','Empreendedor','tanakaraqueeutequero@hotmail.com',6),(12,'Florisbela','F','1990-12-20',1.49,'México','Atriz','flordevida@gmail.com',2),(13,'Carlos','M','1946-10-22',1.64,'Brasil','Ciclista','carlosdavila@hotmail.com',7),(14,'Adalice Macedo','F','2010-02-20',1.40,'Brasil','Estudante','macelice@outlook.com',7),(15,'Gilberto Macedo','M','2014-06-16',1.22,'Brasil','Estudante','gildobaile@gmail.com',2),(16,'Matheus Lira','M','1984-02-20',1.65,'Brasil','Advogado','matheus_lira@gmail.com',2),(17,'Gabriel Nunes','M','1992-04-30',1.90,'Brasil','Advogado','ganunesadvocacia@outlook.com',2),(18,'Matheus Castro','M','2010-05-04',1.45,'México','Pedreiro','ttcastroblanco@gmail.com',7);
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 17:46:24
