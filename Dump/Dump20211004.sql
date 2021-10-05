-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: geekstorage
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `actionfiguresstorage`
--

DROP TABLE IF EXISTS `actionfiguresstorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actionfiguresstorage` (
  `id` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `preco` decimal(6,2) NOT NULL,
  `tamanho` int NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `articulado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actionfiguresstorage`
--

LOCK TABLES `actionfiguresstorage` WRITE;
/*!40000 ALTER TABLE `actionfiguresstorage` DISABLE KEYS */;
INSERT INTO `actionfiguresstorage` VALUES (444,'Homem Aranha',180.99,30,'Super Heroi',1),(555,'Batman',200.00,100,'Super Heroi',1),(666,'Goku',229.99,40,'Anime',0),(444,'Homem Aranha',180.99,30,'Super Heroi',1),(555,'Batman',200.00,100,'Super Heroi',1),(666,'Goku',229.99,40,'Anime',0),(444,'Homem Aranha',180.99,30,'Super Heroi',1),(555,'Batman',200.00,100,'Super Heroi',1),(666,'Goku',229.99,40,'Anime',0);
/*!40000 ALTER TABLE `actionfiguresstorage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camisasstorage`
--

DROP TABLE IF EXISTS `camisasstorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camisasstorage` (
  `id` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `preco` decimal(6,2) NOT NULL,
  `tamanho` enum('P','M','G') NOT NULL,
  `cor` varchar(20) NOT NULL,
  `genero` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camisasstorage`
--

LOCK TABLES `camisasstorage` WRITE;
/*!40000 ALTER TABLE `camisasstorage` DISABLE KEYS */;
INSERT INTO `camisasstorage` VALUES (111,'Regata',10.99,'P','azul','F'),(222,'Blusa',29.99,'M','Vermelha','M'),(333,'Camiseta',39.99,'G','Verde','M'),(111,'Regata',10.99,'P','azul','F'),(222,'Blusa',29.99,'M','Vermelha','M'),(333,'Camiseta',39.99,'G','Verde','M'),(111,'Regata',10.99,'P','azul','F'),(222,'Blusa',29.99,'M','Vermelha','M'),(333,'Camiseta',39.99,'G','Verde','M');
/*!40000 ALTER TABLE `camisasstorage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `endereco` int DEFAULT NULL,
  PRIMARY KEY (`id_clientes`),
  KEY `endereco` (`endereco`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`endereco`) REFERENCES `enderecos` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Hector','123','hector@gmail.com',19,'321',NULL),(4,'1','1','1',1,'1',24),(5,'2','2','2',2,'2',25);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `cep` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (8,'1','1','1','1','1',1),(9,'5','5','5','5','5',5),(10,'9','9','9','9','9',9),(11,'1','1','1','1','1',1),(12,'1','1','1','1','1',1),(13,'1','1','1','1','1',1),(14,'1','1','1','1','1',1),(15,'1','1','1','1','1',1),(16,'1','1','1','1','1',1),(17,'1','1','1','1','1',1),(18,'1','1','1','1','1',1),(19,'1','1','1','1','1',1),(20,'1','1','1','1','1',1),(21,'1','1','1','1','1',1),(22,'1','1','1','1','1',1),(23,'1','1','1','1','1',1),(24,'1','1','1','1','1',1),(25,'2','2','2','2','2',2);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `idhistorico` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idhistorico`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'dsjabdj'),(2,'?'),(3,'\nProduto: \nId: 		111\nNome: 		Regata\nPreço Unidade: 	10.99\nCor: 		azul\nTamanho: 	P \nGênero: 	F\n'),(4,'\nProduto: \nId: 		111\nNome: 		Regata\nPreço Unidade: 	10.99\nCor: 		azul\nTamanho: 	P \nGênero: 	F\n'),(5,'\nProduto: \nId: 		111\nNome: 		Regata\nPreço Unidade: 	10.99\nCor: 		azul\nTamanho: 	P \nGênero: 	F\n'),(6,'\nProduto: \nId: 		111\nNome: 		Regata\nPreço Unidade: 	10.99\nCor: 		azul\nTamanho: 	P \nGênero: 	F\n'),(7,'\nProduto: \nId: 		111\nNome: 		Regata\nPreço Unidade: 	10.99\nCor: 		azul\nTamanho: 	P \nGênero: 	F\n'),(8,'\nProduto: \nId: 		111\nNome: 		Regata\nPreço Unidade: 	10.99\nCor: 		azul\nTamanho: 	P \nGênero: 	F\n');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 21:39:34
