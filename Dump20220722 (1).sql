CREATE DATABASE  IF NOT EXISTS `academia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `academia`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `exercicios`
--

DROP TABLE IF EXISTS `exercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicios`
--

LOCK TABLES `exercicios` WRITE;
/*!40000 ALTER TABLE `exercicios` DISABLE KEYS */;
INSERT INTO `exercicios` VALUES (1,'Supino declinado com Halteres'),(2,'PUSH UP'),(3,'One Arm Row com Halteres'),(4,'Bent Over Row com Barra'),(5,'Bícep curl com Barra W'),(6,'Bícep Curl com Halteres'),(7,'Trícep extension'),(8,'Trícep Deep'),(9,'Reverse Fly com halteres (deitado)'),(10,'Lateral Raise na Polia'),(11,'Agachamentos com Barra'),(12,'Leg extension'),(13,'Dead lift'),(14,'Leg Curl'),(15,'Calf Raise'),(16,'Calf Raise sentado'),(17,'Abdominal Crunch Bicicleta'),(18,'Hanging leg raise'),(19,'Leg Press'),(20,'Supino reto'),(21,'Remada na máquina'),(22,'Desenvolvimento'),(23,'Abdominal no solo'),(24,'Tríceps Máquina'),(25,'Puxador (pulley) Frontal'),(26,'Remada Máquina'),(27,'Rosca direta barra'),(28,'Mesa flexora'),(29,'Panturrilha sentado'),(30,'Cadeira adutora'),(31,'Cadeira abdutora');
/*!40000 ALTER TABLE `exercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `u_matricula` int(11) DEFAULT NULL,
  `data_presenca` date DEFAULT NULL,
  KEY `u_matricula` (`u_matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `u_matricula` int(11) DEFAULT NULL,
  `id_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cartao` varchar(20) DEFAULT 'PAGO NO DINHEIRO',
  `data_pagamento` date DEFAULT NULL,
  `tipo_pacote` enum('ANUAL','MENSAL','SEMESTRAL') DEFAULT NULL,
  `cvc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `u_matricula` (`u_matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (3,1,'PAGO NO DINHEIRO','2022-01-05','ANUAL',NULL),(4,2,'8389891798803','2022-03-03','SEMESTRAL',223),(5,3,'PAGO NO DINHEIRO','2022-01-15','MENSAL',NULL),(5,4,'PAGO NO DINHEIRO','2022-02-15','MENSAL',NULL),(5,5,'PAGO NO DINHEIRO','2022-03-15','MENSAL',NULL),(5,6,'PAGO NO DINHEIRO','2022-04-15','MENSAL',NULL),(5,7,'PAGO NO DINHEIRO','2022-05-15','MENSAL',NULL),(5,8,'PAGO NO DINHEIRO','2022-06-15','MENSAL',NULL),(5,9,'PAGO NO DINHEIRO','2022-07-15','MENSAL',NULL),(6,10,'PAGO NO DINHEIRO','2022-06-06','SEMESTRAL',NULL),(8,11,'87189803913','2021-12-05','ANUAL',345),(9,12,'891809849984','2022-01-10','SEMESTRAL',890),(10,13,'184890904442','2022-07-22','ANUAL',1234);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `u_matricula` int(11) DEFAULT NULL,
  `num_licenca` varchar(30) DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  UNIQUE KEY `num_licenca` (`num_licenca`),
  KEY `u_matricula` (`u_matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (1,'25678265477','13:30:00','18:30:00'),(7,'8278748988','07:30:00','12:30:00'),(2,'678289040383','19:30:00','22:30:00');
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino`
--

DROP TABLE IF EXISTS `treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupamento` varchar(15) DEFAULT NULL,
  `tempo` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino`
--

LOCK TABLES `treino` WRITE;
/*!40000 ALTER TABLE `treino` DISABLE KEYS */;
INSERT INTO `treino` VALUES (1,'perna','00:45:00'),(2,'braço','00:50:00'),(3,'costas','01:00:00'),(4,'panturrilha','00:30:00'),(5,'gluteos','00:45:00'),(6,'aerobico','01:00:00');
/*!40000 ALTER TABLE `treino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino_aluno_professor`
--

DROP TABLE IF EXISTS `treino_aluno_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treino_aluno_professor` (
  `u_matricula_professor` int(11) DEFAULT NULL,
  `u_matricula_aluno` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  KEY `u_matricula_professor` (`u_matricula_professor`),
  KEY `u_matricula_aluno` (`u_matricula_aluno`),
  KEY `t_id` (`t_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino_aluno_professor`
--

LOCK TABLES `treino_aluno_professor` WRITE;
/*!40000 ALTER TABLE `treino_aluno_professor` DISABLE KEYS */;
INSERT INTO `treino_aluno_professor` VALUES (1,3,1),(1,3,2),(1,3,3),(1,3,6),(2,4,1),(2,4,3),(2,4,5),(7,5,1),(7,5,2),(1,6,1),(1,6,6),(1,6,5),(1,8,1),(1,8,2),(1,8,4),(2,9,1),(2,9,2),(2,9,3),(2,9,4),(2,9,5),(2,9,6),(7,10,1),(7,10,6),(7,10,4);
/*!40000 ALTER TABLE `treino_aluno_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino_composto_por`
--

DROP TABLE IF EXISTS `treino_composto_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treino_composto_por` (
  `t_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `num_repeticoes` int(11) DEFAULT NULL,
  `num_series` int(11) DEFAULT NULL,
  KEY `t_id` (`t_id`),
  KEY `e_id` (`e_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino_composto_por`
--

LOCK TABLES `treino_composto_por` WRITE;
/*!40000 ALTER TABLE `treino_composto_por` DISABLE KEYS */;
/*!40000 ALTER TABLE `treino_composto_por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Elisa Gabriela','elisa.gabriela@gmail.com','Rua Domingos Olímpio','(94) 3110-5873','43654113656','2001-06-05','F'),(2,'Taylor swift','Iscu@gmail.com','Rua da Imprensa','(96) 3734-6718','98234495895','1989-12-13','F'),(3,'Gorgwe Reyborn','Reyborn@gmail.com','Rua Frederico Moura','(84) 2870-7488','93570456862','1984-10-10','F'),(4,'Lameali Xuocazol','Xuocazol@gmail.com','Rua Serra de Bragança','(96) 3886-2419','40667404058','2012-06-25','M'),(5,'Kusualon Baiadar','Baiadar@gmail.com','Rua das Fiandeiras','(92) 3615-3163','61372884475','1971-05-15','F'),(6,'Vinicius Fernandes','vini@gmail.com','Rua Cristiano Olsen','(82) 2329-0610','98958859113','1999-01-08','M'),(7,'Gabriela Targino','gabigabi@gmail.com','Praça da República','(24) 2827-8448','83425613219','2003-07-20','F'),(8,'Tifeze Lima','Lima00@gmail.com','Rua Frederico Moura','(65) 3677-1228','88727260267','1994-03-24','M'),(9,'Arandi Dafil','Ara_Dafil@gmail.com','Rua Pereira Estéfano','(64) 2215-2080','46429613135','1980-11-28','F'),(10,'Niodougog Urkeu','Urkeu@gmail.com','Avenida Tocantins','(79) 3897-0414','10664071856','1985-12-30','M');
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

-- Dump completed on 2022-07-22  3:23:28
