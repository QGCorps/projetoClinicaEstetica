CREATE DATABASE  IF NOT EXISTS `clinica_estetica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinica_estetica`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_estetica
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `compromisso`
--

DROP TABLE IF EXISTS `compromisso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compromisso` (
  `id_compromisso` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) NOT NULL,
  `data_compromisso` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `nome_servico` varchar(50) NOT NULL,
  `id_pessoa` int NOT NULL,
  `status_compromisso` varchar(10) NOT NULL,
  PRIMARY KEY (`id_compromisso`),
  KEY `id_pessoa` (`id_pessoa`),
  KEY `nome_servico` (`nome_servico`),
  CONSTRAINT `compromisso_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  CONSTRAINT `compromisso_ibfk_2` FOREIGN KEY (`nome_servico`) REFERENCES `servico` (`nome_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compromisso`
--

LOCK TABLES `compromisso` WRITE;
/*!40000 ALTER TABLE `compromisso` DISABLE KEYS */;
INSERT INTO `compromisso` VALUES (1,'Bruna Cardosa Brasil de Souza','03-10-2023','18:00','Manutenção e Esmaltação em Gel',2,'agendado'),(2,'Yasmin Rodrigues da Silva','06-10-2023','15:00','Aplicação de Fibra de Vidro',17,'agendado'),(3,'Ana Carolina Teixeira Reis','20-10-2023','9:00','Massagem Relaxante',1,'agendado'),(4,'Francieli Liboni Da Silva','20-10-2023','16:30','Esmaltação em Gel',7,'agendado'),(5,'Rafaela Del Rio','21-10-2023','13:30','Maquiagem',15,'agendado');
/*!40000 ALTER TABLE `compromisso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 13:26:56
