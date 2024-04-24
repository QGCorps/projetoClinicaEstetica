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
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome_pessoa` varchar(50) NOT NULL,
  `telefone` bigint NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(35) NOT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `cidade` varchar(50) NOT NULL,
  `cpf` bigint DEFAULT NULL,
  `data_nascimento` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `observacao` varchar(1000) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Ana Carolina Teixeira Reis',11958249651,'Rua Gonçalves Dias, 2305','Jardim Primavera','','Araraquara',441834948,'28-06-1994','cliente','','',''),(2,'Bruna Cardosa Brasil de Souza',16988016608,'Avenida Luiz Raia, 472','Vila Suconasa','','Araraquara',36859371897,'10-03-1988','cliente','','',''),(3,'Charlene Ribeiro Cunha',16997893111,'Avenida Irmã Antonia de Arruda Camargo, 60','Jardim Vale das Rosas','','Araraquara',29619049861,'12-10-1981','cliente','','',''),(4,'Cleusa Montoro Stein',16997827881,'Avenida Pernambuco, 336','Jardim Brasil','','Araraquara',27835371847,'15-04-1963','cliente','','',''),(5,'Cristiane Caetano',16997127056,'Avenida Doutor Miguel Couto, 122','Jardim Imperador','','Araraquara',24593411807,'28-02-1977','cliente','','',''),(6,'Danielli Brasil Alves Pires',16988647620,'Avenida Dom Carlos Carmello, 371','Vila Suconasa','Apartamento 7, Bloco 03','Araraquara',36859371897,'10-03-1988','cliente','','',''),(7,'Francieli Liboni Da Silva',16996427447,'Rua Zenaide Volpe Abjaudi, 143','São José','','Américo Brasiliense',41293001805,'15-06-1992','cliente','','',''),(8,'Giovana Carolina Da Silva',16997514154,'Rua Bento Aranha Do Amaral, 13','Vale do Sol','','Araraquara',46356742828,'26-11-1997','cliente','','',''),(9,'Gislaine Cristina De Oliveira',16993930873,'Rua Luiz Alecio Sobrinho, 326','Jardim Maria Luiza II','Condomínio Alto da Boa Vista','Araraquara',36663926870,'18-05-1989','cliente','','',''),(10,'Jayne Pereira De Macedo',16997117375,'Avenida Votuporanga, 435','Jardim América','','Araraquara',39387830870,'19-03-1997','cliente','','',''),(11,'Larissa Montoro Stein Barros',16997757611,'Avenida Nossa Senhora Das Graças, 563','Jardim Melhado','','Araraquara',40897423828,'15-01-1991','cliente','','',''),(12,'Maísa Rosa Oliveira Seabra de Andrade',3799844115,'Rua Américo Brasiliense, 534','Vila Ferroviária','','Araraquara',0,'29-08-1973','cliente','','',''),(13,'Mércia Sandrini Diogo',16996099343,'Rua Nívea Cunha Fenerich, 201','Jardim Dom Pedro I','','Araraquara',39423763855,'01-07-1990','cliente','','',''),(14,'Pâmela Tainá Cassiano',16997949260,'Avenida Dom Carlos Carmelo, 721','Jardim Botânico','Apartamento 402, Bloco 07','Araraquara',44312966893,'18-04-1996','cliente','','',''),(15,'Rafaela Del Rio',16997697200,'Rua João de Caires, 34','Vila Furlan','','Araraquara',38502246860,'29-03-2000','cliente','','',''),(16,'Vitória Regolin Cayres',16997228572,'Rua das Magnólias, 250','Jardim das Magnólias','','Araraquara',53893037845,'19-06-2007','cliente','','',''),(17,'Yasmin Rodrigues da Silva',16997826931,'Rua Gilda Renê Simplício, 137','Parque Residencial Vale do Sol','','Araraquara',54115819820,'','cliente','','',''),(19,'Maria Eduarda Bueno',16988255863,'Rua Expedicionários do Brasil, 1971','Centro','Kitnet','Araraquara',11122233345,'15-05-2002','Cliente','Unha roida','janedoe@gmail.com','$2b$10$3FlvDjGpUqiBfJOL6unPPeq8QTJuGBuBM4/Hk8tMIo8/dfiC9hmIe');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
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
