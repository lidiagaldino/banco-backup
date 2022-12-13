-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: db_pessegos_pizza
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `tbl_bebida`
--

DROP TABLE IF EXISTS `tbl_bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bebida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teor_alcoolico` int NOT NULL,
  `id_produto` int NOT NULL,
  `id_tipo_bebida` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_produto_bebida` (`id_produto`),
  KEY `FK_tipo_bebida_bebida` (`id_tipo_bebida`),
  CONSTRAINT `FK_produto_bebida` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id`),
  CONSTRAINT `FK_tipo_bebida_bebida` FOREIGN KEY (`id_tipo_bebida`) REFERENCES `tbl_tipo_bebida` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bebida`
--

LOCK TABLES `tbl_bebida` WRITE;
/*!40000 ALTER TABLE `tbl_bebida` DISABLE KEYS */;
INSERT INTO `tbl_bebida` VALUES (4,0,4,1),(5,0,12,1),(6,0,13,1),(7,0,14,1),(8,0,15,1),(9,0,16,1),(10,0,17,1),(11,0,18,1),(12,0,19,1),(13,0,20,1),(14,0,24,7);
/*!40000 ALTER TABLE `tbl_bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mensagem`
--

DROP TABLE IF EXISTS `tbl_mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mensagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mensagem`
--

LOCK TABLES `tbl_mensagem` WRITE;
/*!40000 ALTER TABLE `tbl_mensagem` DISABLE KEYS */;
INSERT INTO `tbl_mensagem` VALUES (1,'Pizzas de muita qualidade','Lídia Galdino','lidia.galdino@outlook.com'),(5,'Adoro vocês, bjs','Isabelle','isabelle@gmail.com'),(6,'aff','Isabelle','isabelle@gmail.com'),(7,'Ebaaa','Isabelle','isabelle@gmail.com'),(8,'adorei suas pizzas dlc mt bon','Antony','antony@gmail.com'),(9,'oii','Lidia','lidiagabrielly14@gmail.com'),(11,'Ótima empresa, pizzas muito gostosas','Maria Silva','maria@gmail.com'),(12,'Ótima empresa, pizzas muito gostosas','Maria Silva','maria@gmail.com'),(13,'Ótima empresa, pizzas muito gostosas','Maria Silva','maria@gmail.com'),(14,'oiiiiiiiiiiiiiiii','Isabelle','isabellematos@gmail.com'),(15,'a pizza nao tem muito recheio, a massa é dura que nem sola de sapato, o motoboy veio dando grau na moto e chegou tudo dessarumado sem contar do preco superfaturado e nao condizente com a qualidade aaa','Isabelle','isabelle@gmail.com');
/*!40000 ALTER TABLE `tbl_mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pizza`
--

DROP TABLE IF EXISTS `tbl_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produto` int NOT NULL,
  `id_tipo_pizza` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_produto_pizza` (`id_produto`),
  KEY `FK_tipo_pizza_pizza` (`id_tipo_pizza`),
  CONSTRAINT `FK_produto_pizza` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id`),
  CONSTRAINT `FK_tipo_pizza_pizza` FOREIGN KEY (`id_tipo_pizza`) REFERENCES `tbl_tipo_pizza` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pizza`
--

LOCK TABLES `tbl_pizza` WRITE;
/*!40000 ALTER TABLE `tbl_pizza` DISABLE KEYS */;
INSERT INTO `tbl_pizza` VALUES (1,1,1),(2,2,2),(3,11,1),(4,21,1),(5,22,6),(6,23,2);
/*!40000 ALTER TABLE `tbl_pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(350) NOT NULL,
  `favoritos` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (1,'Pizza de morango','Chocolate e morango','https://i0.wp.com/anamariabraga.globo.com/wp-content/uploads/2018/12/pizza-de-chocolate-com-morango.jpg?w=1200&ssl=1',9,1),(2,'Pizza Portuguesa','Mussarela, peito de peru, ovo e cebola','https://www.comidaereceitas.com.br/wp-content/uploads/2007/12/Pizza_portugaa.jpg',15,1),(4,'Suco de Laranja ','Laranja e gelo','https://img.elo7.com.br/product/zoom/262F374/adesivo-parede-decoracao-suco-de-laranja-fruta-lanchonete-adesivo-decorativo.jpg',2,0),(11,'Pizza Romeu e Julieta 1','Goiabada, mussarela e canela','https://www.redelevepizza.com.br/assets/imagens/pizzas/071/romeu-e-julieta.jpg',NULL,0),(12,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(13,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(14,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(15,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(16,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(17,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(18,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(19,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,0),(20,'Suco de morango com laranja','Morango, laranja e gelo','https://pbs.twimg.com/media/E4GJ_HLWQAMZvkf?format=jpg&name=medium',0,1),(21,'Pizza Romeu e Julieta','Goiabada, mussarela e canela','https://www.redelevepizza.com.br/assets/imagens/pizzas/071/romeu-e-julieta.jpg',0,1),(22,'Pizza de Camarão','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','https://www.redelevepizza.com.br/assets/imagens/pizzas/071/romeu-e-julieta.jpg',0,0),(23,'Pizza de quatro queijos','Queijo provolone, mussarela, gorgonzola e parmesão','https://firebasestorage.googleapis.com/v0/b/pessegos-ec695.appspot.com/o/image%2Fpizza-de%20quatro%20queijos.jpg?alt=media&token=a71b8f5a-9f3d-4830-a615-90173918e0e4',7,1),(24,'Coca cola zero','Coca cola','https://firebasestorage.googleapis.com/v0/b/pessegos-ec695.appspot.com/o/image%2Fcoca-cola%20zero.jpg?alt=media&token=bdb1b234-0ec2-4785-9fea-82fc0371d07d',0,1);
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto_tamanho`
--

DROP TABLE IF EXISTS `tbl_produto_tamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_produto_tamanho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `preco` float NOT NULL,
  `desconto` int DEFAULT NULL,
  `id_produto` int NOT NULL,
  `id_tamanho` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_produto_produto_tamanho` (`id_produto`),
  KEY `FK_tamanho_produto_tamanho` (`id_tamanho`),
  CONSTRAINT `FK_produto_produto_tamanho` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id`),
  CONSTRAINT `FK_tamanho_produto_tamanho` FOREIGN KEY (`id_tamanho`) REFERENCES `tbl_tamanho` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto_tamanho`
--

LOCK TABLES `tbl_produto_tamanho` WRITE;
/*!40000 ALTER TABLE `tbl_produto_tamanho` DISABLE KEYS */;
INSERT INTO `tbl_produto_tamanho` VALUES (1,59.9,10,1,1),(2,59.9,0,2,1),(4,6.5,0,4,3),(5,59.9,10,11,3),(6,6.5,0,4,3),(7,7,10,12,2),(8,10,10,12,3),(9,15,10,12,1),(10,15,10,13,1),(11,7,10,13,2),(12,10,10,13,3),(13,15,10,14,1),(14,7,10,14,2),(15,10,10,14,3),(16,7,10,15,2),(17,15,10,15,1),(18,10,10,15,3),(19,15,10,16,1),(20,7,10,16,2),(21,10,10,16,3),(22,7,10,17,2),(23,15,10,17,1),(24,10,10,17,3),(25,10,10,18,3),(26,7,10,18,2),(27,15,10,18,1),(28,7,10,19,2),(29,10,10,19,3),(30,15,10,19,1),(31,7,10,20,2),(32,15,10,20,1),(33,10,10,20,3),(34,49.9,10,21,2),(35,39.9,10,21,3),(36,59.9,10,21,1),(37,59.9,5,22,1),(38,59.9,10,23,1),(39,7,2,24,1),(40,3,2,24,2),(41,5,2,24,3);
/*!40000 ALTER TABLE `tbl_produto_tamanho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tamanho`
--

DROP TABLE IF EXISTS `tbl_tamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tamanho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tamanho`
--

LOCK TABLES `tbl_tamanho` WRITE;
/*!40000 ALTER TABLE `tbl_tamanho` DISABLE KEYS */;
INSERT INTO `tbl_tamanho` VALUES (1,'Grande'),(2,'Pequeno'),(3,'Médio');
/*!40000 ALTER TABLE `tbl_tamanho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_bebida`
--

DROP TABLE IF EXISTS `tbl_tipo_bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_bebida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_bebida`
--

LOCK TABLES `tbl_tipo_bebida` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_bebida` DISABLE KEYS */;
INSERT INTO `tbl_tipo_bebida` VALUES (1,'Suco'),(2,'Cerveja'),(3,'Vinho'),(4,'Vodka'),(5,'Coquetel'),(6,'MilkShake'),(7,'Refrigerante'),(8,'abc');
/*!40000 ALTER TABLE `tbl_tipo_bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_pizza`
--

DROP TABLE IF EXISTS `tbl_tipo_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_pizza`
--

LOCK TABLES `tbl_tipo_pizza` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_pizza` DISABLE KEYS */;
INSERT INTO `tbl_tipo_pizza` VALUES (1,'Pizza doce'),(2,'Pizza salgada'),(3,'Esfiha'),(4,'abc'),(5,'abc'),(6,'Pizza Frutos do Mar');
/*!40000 ALTER TABLE `tbl_tipo_pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(256) NOT NULL,
  `senha` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'root','81dc9bdb52d04dc20036dbd8313ed055'),(3,'mariaa','202cb962ac59075b964b07152d234b70'),(4,'isabelle','202cb962ac59075b964b07152d234b70'),(5,'arthur','97727283c98f0c8aa9600372c1cc0195'),(6,'zézinho','fae0b27c451c728867a567e8c1bb4e53');
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 11:28:43
