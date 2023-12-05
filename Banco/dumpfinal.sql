CREATE DATABASE  IF NOT EXISTS `db_sbook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_sbook`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: sbook-servidor.mysql.database.azure.com    Database: db_sbook
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tbl_anuncio`
--

DROP TABLE IF EXISTS `tbl_anuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_anuncio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `numero_paginas` int DEFAULT NULL,
  `ano_lancamento` year NOT NULL,
  `descricao` text NOT NULL,
  `data_criacao` datetime NOT NULL,
  `status_anuncio` bit(1) NOT NULL DEFAULT b'1',
  `edicao` varchar(100) DEFAULT NULL,
  `isbn` double DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `id_usuario` int NOT NULL,
  `id_estado_livro` int NOT NULL,
  `id_idioma` int NOT NULL,
  `id_editora` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Usuario_Anuncio` (`id_usuario`),
  KEY `FK_EstadoLivro_Anuncio` (`id_estado_livro`),
  KEY `FK_Idioma_Anuncio` (`id_idioma`),
  KEY `FK_Editora_Anuncio` (`id_editora`),
  CONSTRAINT `FK_Editora_Anuncio` FOREIGN KEY (`id_editora`) REFERENCES `tbl_editora` (`id`),
  CONSTRAINT `FK_EstadoLivro_Anuncio` FOREIGN KEY (`id_estado_livro`) REFERENCES `tbl_estado_livro` (`id`),
  CONSTRAINT `FK_Idioma_Anuncio` FOREIGN KEY (`id_idioma`) REFERENCES `tbl_idioma` (`id`),
  CONSTRAINT `FK_Usuario_Anuncio` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anuncio`
--

LOCK TABLES `tbl_anuncio` WRITE;
/*!40000 ALTER TABLE `tbl_anuncio` DISABLE KEYS */;
INSERT INTO `tbl_anuncio` VALUES (99,'Aristoteles e Dante Descobrem os Segredos do Universo',700,2014,'Dois melhores amigos se conhecem na piscina e assim formam um grande amizade. Apos uma trageria, o destino deles sao o mesmo?','2023-11-28 16:46:19',_binary '','primeira',22222,0.00,1,1,37,78),(109,'Diário de um Banana',122,2002,'Thiago','2023-11-29 13:19:42',_binary '','1',8506055652,NULL,2,1,1,64),(114,'História do Futuro',1004,2015,'bolsonaro e politica','2023-12-01 13:50:36',_binary '','sp',11155289,10.00,5,2,37,95),(115,'Um Romance Conveniente',1009,2022,'Romance padrao seculo XX','2023-12-01 14:00:56',_binary '','Tres',11144455289,85.00,5,1,37,74),(116,'educacao',690,2022,'Educacao e escolas e universidades','2023-12-01 14:30:22',_binary '','Sao paulo',1111555889,0.00,5,2,37,68),(117,'Suspense',256,2023,'Suspense, Matanssa e Assasinato! +18 ..\n3 livros\nPrimeiro: 19.90\nSegundo: 15.90\nterceiro: 25.90','2023-12-01 14:36:23',_binary '','Nova',55554187,25.90,5,1,37,66),(118,'A arte da Guerra',456,2008,'a arte da guerra By Sun Ztu','2023-12-01 14:46:31',_binary '','Setima',555666328,39.00,5,1,24,64),(119,'as cruzadas historicas',1009,2011,'as cruzadas foram um marco historico para os cristaos','2023-12-01 14:59:30',_binary '','Segunda',1111528,5.00,5,3,37,70),(120,'Crepusculo',11552288,2008,'Triangulo amoroso entre edrard jacob e bella e mccabelinho','2023-12-01 16:06:53',_binary '','thrid',55522148,0.00,5,3,21,66),(121,'Percy Jackson',111,2020,'Percy Jackson e os Olimpianos é uma série de seis romances de fantasia escritos pelo autor americano Rick Riordan . A primeira série de livros de suas Crônicas do Acampamento Meio-Sangue , os romances se passam em um mundo com os deuses gregos no século XXI.','2023-12-01 16:40:56',_binary '','1',29873833,NULL,3,3,37,68),(123,'O Pequeno Principe',110,2021,'É um principezinho loiro, que viajou pelo espaço para descobrir o que existia além de seu planeta B-612.','2023-12-04 13:28:12',_binary '','1',2526728,45.00,6,3,37,66);
/*!40000 ALTER TABLE `tbl_anuncio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50003 TRIGGER `trgDeleteIDAnuncio_Autor_Foto_Genero_TipoAnuncio` BEFORE DELETE ON `tbl_anuncio` FOR EACH ROW BEGIN
    -- Exclua os registros correspondentes na tbl_anuncio_autor
    DELETE FROM tbl_anuncio_autor
    WHERE id_anuncio = OLD.id;
    
    DELETE FROM tbl_usuario_anuncio_favoritados
    WHERE id_anuncio = OLD.id;
    
    -- Exclua os registros correspondentes na tbl_anuncio_tipo_anuncio
    DELETE FROM tbl_anuncio_tipo_anuncio
    WHERE id_anuncio = OLD.id;
    
    -- Exclua os registros correspondentes na tbl_anuncio_genero
    DELETE FROM tbl_anuncio_genero
    WHERE id_anuncio = OLD.id;
    
    -- Exclua os registros correspondentes na tbl_anuncio_autor
    DELETE FROM tbl_foto
    WHERE id_anuncio = OLD.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbl_anuncio_autor`
--

DROP TABLE IF EXISTS `tbl_anuncio_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_anuncio_autor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_anuncio` int NOT NULL,
  `id_autor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Anuncio_AnuncioAutor` (`id_anuncio`),
  KEY `FK_Autor_AnuncioAutor` (`id_autor`),
  CONSTRAINT `FK_Anuncio_AnuncioAutor` FOREIGN KEY (`id_anuncio`) REFERENCES `tbl_anuncio` (`id`),
  CONSTRAINT `FK_Autor_AnuncioAutor` FOREIGN KEY (`id_autor`) REFERENCES `tbl_autor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anuncio_autor`
--

LOCK TABLES `tbl_anuncio_autor` WRITE;
/*!40000 ALTER TABLE `tbl_anuncio_autor` DISABLE KEYS */;
INSERT INTO `tbl_anuncio_autor` VALUES (117,99,6),(131,109,1),(135,114,2),(136,115,1),(137,116,3),(138,117,2),(139,118,4),(140,119,5),(141,120,2),(142,121,40),(144,123,41);
/*!40000 ALTER TABLE `tbl_anuncio_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_anuncio_genero`
--

DROP TABLE IF EXISTS `tbl_anuncio_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_anuncio_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_anuncio` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Anuncio_AnuncioGenero` (`id_anuncio`),
  KEY `FK_Genero_AnuncioGenero` (`id_genero`),
  CONSTRAINT `FK_Anuncio_AnuncioGenero` FOREIGN KEY (`id_anuncio`) REFERENCES `tbl_anuncio` (`id`),
  CONSTRAINT `FK_Genero_AnuncioGenero` FOREIGN KEY (`id_genero`) REFERENCES `tbl_genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anuncio_genero`
--

LOCK TABLES `tbl_anuncio_genero` WRITE;
/*!40000 ALTER TABLE `tbl_anuncio_genero` DISABLE KEYS */;
INSERT INTO `tbl_anuncio_genero` VALUES (293,99,9),(294,99,27),(295,99,28),(331,109,2),(332,109,22),(346,114,1),(347,114,2),(348,114,3),(349,114,4),(350,114,5),(351,114,6),(352,114,7),(353,114,8),(354,114,9),(355,114,10),(356,115,33),(357,116,2),(358,116,5),(359,116,8),(360,116,11),(361,116,12),(362,116,13),(363,116,14),(364,116,16),(365,116,23),(366,116,25),(367,116,26),(368,116,31),(369,117,9),(370,117,1),(371,117,34),(372,117,36),(373,118,1),(374,118,2),(375,118,5),(376,118,8),(377,118,17),(378,118,20),(379,118,22),(380,118,28),(381,118,32),(382,118,38),(383,119,1),(384,119,2),(385,119,3),(386,119,4),(387,119,5),(388,119,6),(389,119,7),(390,119,8),(391,119,9),(392,120,1),(393,120,2),(394,120,3),(395,121,12),(396,121,31),(397,121,24),(405,123,25);
/*!40000 ALTER TABLE `tbl_anuncio_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_anuncio_grupo_interesse`
--

DROP TABLE IF EXISTS `tbl_anuncio_grupo_interesse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_anuncio_grupo_interesse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_anuncio` int NOT NULL,
  `id_grupo_interesse` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Anuncio_AnuncioGrupoInteresse` (`id_anuncio`),
  KEY `FK_GrupoInteresse_AnuncioGrupoInteresse` (`id_grupo_interesse`),
  CONSTRAINT `FK_Anuncio_AnuncioGrupoInteresse` FOREIGN KEY (`id_anuncio`) REFERENCES `tbl_anuncio` (`id`),
  CONSTRAINT `FK_GrupoInteresse_AnuncioGrupoInteresse` FOREIGN KEY (`id_grupo_interesse`) REFERENCES `tbl_grupo_interesse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anuncio_grupo_interesse`
--

LOCK TABLES `tbl_anuncio_grupo_interesse` WRITE;
/*!40000 ALTER TABLE `tbl_anuncio_grupo_interesse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_anuncio_grupo_interesse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_anuncio_tipo_anuncio`
--

DROP TABLE IF EXISTS `tbl_anuncio_tipo_anuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_anuncio_tipo_anuncio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_anuncio` int NOT NULL,
  `id_tipo_anuncio` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Anuncio_AnuncioTipAnuncio` (`id_anuncio`),
  KEY `FK_TipoAnuncio_AnuncioTipoAnuncio` (`id_tipo_anuncio`),
  CONSTRAINT `FK_Anuncio_AnuncioTipAnuncio` FOREIGN KEY (`id_anuncio`) REFERENCES `tbl_anuncio` (`id`),
  CONSTRAINT `FK_TipoAnuncio_AnuncioTipoAnuncio` FOREIGN KEY (`id_tipo_anuncio`) REFERENCES `tbl_tipo_anuncio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anuncio_tipo_anuncio`
--

LOCK TABLES `tbl_anuncio_tipo_anuncio` WRITE;
/*!40000 ALTER TABLE `tbl_anuncio_tipo_anuncio` DISABLE KEYS */;
INSERT INTO `tbl_anuncio_tipo_anuncio` VALUES (154,99,1),(168,109,2),(172,114,3),(173,115,3),(174,116,1),(175,117,3),(176,118,3),(177,119,3),(178,120,2),(179,121,2),(181,123,3);
/*!40000 ALTER TABLE `tbl_anuncio_tipo_anuncio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_autor`
--

DROP TABLE IF EXISTS `tbl_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_autor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_autor`
--

LOCK TABLES `tbl_autor` WRITE;
/*!40000 ALTER TABLE `tbl_autor` DISABLE KEYS */;
INSERT INTO `tbl_autor` VALUES (1,'J.K Rolling'),(2,'Stephanke Myers'),(3,'David Goggins'),(4,'Sun Tzu'),(5,'Gabriel Gomes'),(6,'Jeff Kinney'),(7,'J.R.R. Tolkien'),(39,'lulu'),(40,'Rick Riordan'),(41,'Antoine de Saint-Exupéry');
/*!40000 ALTER TABLE `tbl_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_avaliacao`
--

DROP TABLE IF EXISTS `tbl_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario_avaliador` int NOT NULL,
  `id_usuario_avaliado` int NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_UsuarioAvaliado_Avaliacao` (`id_usuario_avaliado`),
  KEY `FK_UsuarioAvaliador_Avaliacao` (`id_usuario_avaliador`),
  CONSTRAINT `FK_UsuarioAvaliado_Avaliacao` FOREIGN KEY (`id_usuario_avaliado`) REFERENCES `tbl_usuario` (`id`),
  CONSTRAINT `FK_UsuarioAvaliador_Avaliacao` FOREIGN KEY (`id_usuario_avaliador`) REFERENCES `tbl_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_avaliacao`
--

LOCK TABLES `tbl_avaliacao` WRITE;
/*!40000 ALTER TABLE `tbl_avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chat`
--

DROP TABLE IF EXISTS `tbl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_usuario` bit(1) NOT NULL DEFAULT b'1',
  `id_mongo` varchar(255) NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Usuario_Chat` (`id_usuario`),
  CONSTRAINT `FK_Usuario_Chat` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chat`
--

LOCK TABLES `tbl_chat` WRITE;
/*!40000 ALTER TABLE `tbl_chat` DISABLE KEYS */;
INSERT INTO `tbl_chat` VALUES (1,_binary '','653a9e41b8ff8556b75e425d',1),(2,_binary '','653a9e41b8ff8556b75e425d',3),(3,_binary '','653a9e63b8ff8556b75e4260',1),(4,_binary '','653a9e63b8ff8556b75e4260',3),(5,_binary '','653a9fb9d2894ff3464cb545',1),(6,_binary '','653a9fb9d2894ff3464cb545',3),(7,_binary '','653aa016f0e53dca7f72da8f',1),(8,_binary '','653aa016f0e53dca7f72da8f',3),(9,_binary '','653aa05dcbd3e5e72fa8d0c1',1),(10,_binary '','653aa05dcbd3e5e72fa8d0c1',3),(11,_binary '','653aa1b9768e494bf4ede3ce',1),(12,_binary '','653aa1b9768e494bf4ede3ce',3),(13,_binary '','653aa241bb627e64a542ba1a',1),(14,_binary '','653aa241bb627e64a542ba1a',5),(15,_binary '','653aa24dbb627e64a542ba1d',1),(16,_binary '','653aa24dbb627e64a542ba1d',2),(17,_binary '','653aae686482a3cf030510af',1),(18,_binary '','653aae686482a3cf030510af',2),(19,_binary '','653ab4d6db95dd54c7db0166',5),(20,_binary '','653ab4d6db95dd54c7db0166',1),(21,_binary '','653abaf5f3b15429a948d220',5),(22,_binary '','653abaf5f3b15429a948d220',1),(23,_binary '','653abafef3b15429a948d223',2),(24,_binary '','653abafef3b15429a948d223',5),(25,_binary '','653abb06f3b15429a948d226',1),(26,_binary '','653abb06f3b15429a948d226',7),(27,_binary '','653eb342a87e95fa882ab177',1),(28,_binary '','653eb342a87e95fa882ab177',2),(29,_binary '','653eb393a87e95fa882ab17a',1),(30,_binary '','653eb393a87e95fa882ab17a',2),(31,_binary '','653eb41dcc13cc1db525170c',1),(32,_binary '','653eb41dcc13cc1db525170c',2),(33,_binary '','653eb486cc13cc1db525170f',1),(34,_binary '','653eb486cc13cc1db525170f',6),(35,_binary '','653eb607e1a62d57e0c5ba86',1),(36,_binary '','653eb607e1a62d57e0c5ba86',6),(37,_binary '','653eb618e1a62d57e0c5ba89',1),(38,_binary '','653eb618e1a62d57e0c5ba89',2),(39,_binary '','654137fd35c47340b421fcd8',1),(40,_binary '','654137fd35c47340b421fcd8',19),(41,_binary '','655cdc5ddacfd0c177cdab97',1),(42,_binary '','655cdc5ddacfd0c177cdab97',19),(43,_binary '','655cdcaee5dfce8bef48a02d',1),(44,_binary '','655cdcaee5dfce8bef48a02d',19),(45,_binary '','655cdd65fe38828e4d97226d',1),(46,_binary '','655cdd65fe38828e4d97226d',19),(47,_binary '','655cdf001120f65bf505b683',1),(48,_binary '','655cdf001120f65bf505b683',19),(49,_binary '','655cdf164f8476b30d4d7611',1),(50,_binary '','655cdf164f8476b30d4d7611',19),(51,_binary '','655ce05e9608612a1ecc112b',1),(52,_binary '','655ce05e9608612a1ecc112b',19);
/*!40000 ALTER TABLE `tbl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_editora`
--

DROP TABLE IF EXISTS `tbl_editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_editora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_editora`
--

LOCK TABLES `tbl_editora` WRITE;
/*!40000 ALTER TABLE `tbl_editora` DISABLE KEYS */;
INSERT INTO `tbl_editora` VALUES (64,' Brazilian Publisher of Art and Culture'),(65,' Callis'),(66,' Cortez Editora'),(67,' DSOP - Educação Financeira'),(68,' Edições Loyola'),(69,' Edições Sesc SP'),(70,' Editora da Universidade Federal do Pará'),(71,' Editora Fiocruz'),(72,' Editora Leopoldianum'),(73,' Editora Unifesp'),(74,' Editora IMEPH'),(75,' Editora Melhoramentos'),(76,' Editora Moderna/Salamandra'),(77,' Editora Pipoca'),(78,' Editora UNESP'),(79,' Editora Universidade de Brasília'),(80,' Editora Viajante do Tempo'),(81,' Edusp'),(82,' FTD Educação'),(83,' Girassol Brasil'),(84,' Global Editora'),(85,' Grupo A'),(86,' Grupo Autêntica'),(87,' Grupo Companhia das Letras'),(88,' Letras do Pensamento Editora'),(89,' Napoleão Editora'),(90,' Pallas Editora'),(91,' Pergunta Fixar'),(92,' SESI-SP Editora'),(93,' Todolivro'),(94,' Ubook'),(95,' Outros');
/*!40000 ALTER TABLE `tbl_editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco`
--

DROP TABLE IF EXISTS `tbl_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_endereco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(250) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco`
--

LOCK TABLES `tbl_endereco` WRITE;
/*!40000 ALTER TABLE `tbl_endereco` DISABLE KEYS */;
INSERT INTO `tbl_endereco` VALUES (1,'Rua Odilon Henrique de Macedo','Vila Gustavo Correia','Carapicuíba','SP','06310410'),(2,'Rua Júlio Prestes','Jardim Belval','Barueri','SP','06420230'),(3,'Rua Maranduva','Vale do Sol','Jandira','SP','06620320'),(4,'Rua Luiz Carlos Bechara','Vila Marcondes','Carapicuíba','SP','06321570'),(5,'Rua Luiz Carlos Bechara','Vila Marcondes','Carapicuíba','SP','06321570'),(6,'Rua Maranduva','Vale do Sol','Jandira','SP','06620320'),(7,'Rua teste update','Bairro teste update','Cidade teste update','Estado teste update','06420-230'),(8,'Rua teste insert','Bairro teste insert','Cidade teste insert','Amapa','06420-230'),(9,'Rua teste insert','Bairro teste insert','Cidade teste insert','Amazonas','06420-230'),(10,'Rua teste insert','Bairro teste insert','Cidade teste insert','Rio de Janeiro','06420-230'),(11,'Rua teste insert','Bairro teste insert','Cidade teste insert','Rio de Janeiro','06420-230'),(12,'Rua teste insert','Bairro teste insert','Cidade teste insert','Rio de Janeiro','06420-230'),(13,'Rua teste insert','Bairro teste insert','Cidade teste insert','Amazonas','06420-230'),(14,'Rua teste insert','Bairro teste insert','Cidade teste insert','Amazonas','06420-230'),(15,'Avenida Arnaldo de Freitas','Jardim Bela Vista','Itapevi','SP','06656-100'),(16,'Rua Cuiabá','Parque Turiguara','Cotia','SP','06703-320'),(17,'Rua teste insert','Bairro teste insert','Cidade teste insert','Estado teste insert','06420-230'),(18,'Rua teste insert','Bairro teste insert','Cidade teste insert','Estado teste insert','06420-230'),(19,'Avenida Arnaldo de Freitas','Jardim Bela Vista','Itapevi','SP','06656100'),(20,'Rua Elton','Centro','Jandira','SP','06420-340'),(21,'Rua Elton','Centro','Jandira','SP','06420-340'),(22,'Rua Elton','Centro','Jandira','SP','06420-340'),(23,'Rua Elton','Centro','Jandira','SP','06420-340'),(24,'Rua Elton','Centro','Jandira','SP','06420-340'),(25,'Rua Elton','Centro','Jandira','SP','06420-340'),(26,'Rua Elton','Centro','Jandira','SP','06420-340'),(27,'Rua Elton','Centro','Jandira','SP','06420-340'),(28,'Rua Elton','Centro','Jandira','SP','06420-340'),(29,'Rua Elton','Centro','Jandira','SP','06420-340'),(30,'Rua Elton','Centro','Jandira','SP','06420-340'),(31,'Rua Elton','Centro','Jandira','SP','06420-340'),(32,'Rua Elton','Centro','Jandira','SP','06420-340'),(33,'Rua Elton','Centro','Jandira','SP','06420-340'),(34,'Rua Júlio Prestes','Jardim Belval','Barueri','SP','06420-230'),(35,'Rua Elton','Centro','Jandira','SP','06420-340'),(36,'Rua Elton','Centro','Jandira','SP','06420-340'),(37,'Rua Elton','Centro','Jandira','SP','06420-340'),(38,'Rua Elton','Centro','Jandira','SP','06420-340'),(39,'Rua Elton','Centro','Jandira','SP','06420-340'),(40,'Rua Elton','Centro','Jandira','SP','06420-340'),(41,'Rua Luiz Carlos Bechara','Vila Marcondes','Carapicuíba','SP','06321570'),(42,'Rua Luiz Carlos Bechara','Vila Marcondes','Carapicuíba','SP','06321570');
/*!40000 ALTER TABLE `tbl_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_livro`
--

DROP TABLE IF EXISTS `tbl_estado_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estado_livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_livro`
--

LOCK TABLES `tbl_estado_livro` WRITE;
/*!40000 ALTER TABLE `tbl_estado_livro` DISABLE KEYS */;
INSERT INTO `tbl_estado_livro` VALUES (1,'Novo'),(2,'Seminovo'),(3,'Usado');
/*!40000 ALTER TABLE `tbl_estado_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_foto`
--

DROP TABLE IF EXISTS `tbl_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_foto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(5000) NOT NULL,
  `id_anuncio` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Anuncio_Foto` (`id_anuncio`),
  CONSTRAINT `FK_Anuncio_Foto` FOREIGN KEY (`id_anuncio`) REFERENCES `tbl_anuncio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_foto`
--

LOCK TABLES `tbl_foto` WRITE;
/*!40000 ALTER TABLE `tbl_foto` DISABLE KEYS */;
INSERT INTO `tbl_foto` VALUES (321,'https://br.web.img2.acsta.net/pictures/23/11/09/14/17/1467592.png',99),(322,'https://br.web.img2.acsta.net/pictures/23/11/09/14/17/1467592.png',99),(323,'https://br.web.img2.acsta.net/pictures/23/11/09/14/17/1467592.png',99),(361,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fdownload.jpeg?alt=media&token=42e4ad63-f9b4-4cae-89cb-4f9dd3840c22',109),(362,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fimages.jpeg?alt=media&token=929d6df9-7d75-467d-9f18-0f4ed5d4aae2',109),(363,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fimages%20(1).jpeg?alt=media&token=63d4868b-1926-4de5-a456-b0cadb38905b',109),(373,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fimage%3A35-1701449410276.jpg?alt=media&token=77326697-312c-4f5e-9872-1d2cfa576628',114),(374,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fimage%3A35-1701449410256.jpg?alt=media&token=cfb821b7-1dc7-47e3-84f4-28f09e58f51d',114),(375,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fimage%3A33-1701449410286.jpg?alt=media&token=2dd4ea2a-cf92-4bdf-b22a-d0ee0fa209a4',114),(376,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A42-1701450029078.jpg?alt=media&token=88c70a22-69ed-4e1d-a463-0a2bf15a34e0',115),(377,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A37-1701450029113.jpg?alt=media&token=0a46a70f-496a-42a3-9fbd-10675afc1ddb',115),(378,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A40-1701450029128.jpg?alt=media&token=2b6de21d-6a3d-437c-963e-e72e4ea2ac9a',115),(379,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A48-1701451768141.jpg?alt=media&token=b0a99c65-9f93-49b7-b8a1-fc0a5223d3ce',116),(380,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A44-1701451768164.jpg?alt=media&token=d4aca0c0-72d0-49bc-a325-f33be27c517a',116),(381,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A46-1701451768178.jpg?alt=media&token=5e24fe19-471c-430a-a1be-07d3589df981',116),(382,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A54-1701452140630.jpg?alt=media&token=b8ae36c8-1f59-4b61-8bf7-4b43271afcdb',117),(383,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A50-1701452140643.jpg?alt=media&token=83a54de1-95a0-4249-bd1b-52d0193ad73a',117),(384,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A52-1701452140653.jpg?alt=media&token=1fe34bc5-9156-46fd-9511-531453815e1d',117),(385,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A56-1701452715566.jpg?alt=media&token=aacc8a3b-7e38-43a6-b99a-0d10b7fff36b',118),(386,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A60-1701452715598.jpg?alt=media&token=cbdcacd3-2f29-4826-8763-114a4442899e',118),(387,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A58-1701452715612.jpg?alt=media&token=f4068f7e-eee2-4335-9c4f-776cf60e89e4',118),(388,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A66-1701453493751.jpg?alt=media&token=1a8df540-f69e-475d-820a-c8d3ebcef72e',119),(389,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A64-1701453493796.jpg?alt=media&token=fe20a103-738a-4f3a-bff6-cc417ce375f6',119),(390,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A62-1701453493807.jpg?alt=media&token=67ae3486-80e6-479c-93fb-bbc61eb39a8b',119),(391,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A71-1701457572013.jpg?alt=media&token=d0e351c0-8cc9-4cd7-aa57-48d958675da5',120),(392,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A73-1701457571961.jpg?alt=media&token=7b86426e-7943-459e-8fe7-698d65d5f811',120),(393,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fmsf%3A69-1701457572037.jpg?alt=media&token=621f5687-bd67-4b13-85a0-347e8a7bc3b2',120),(394,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fpercy.webp?alt=media&token=d2fe8b19-7ea0-47a9-b720-afb2ff429d6d',121),(395,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fpercy2.webp?alt=media&token=6662b6d9-f189-4940-a5ab-490b6a746d00',121),(396,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2FpercyJackson.webp?alt=media&token=da566023-da73-497d-bd9c-f069603be352',121),(400,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2FpequenoPrincipe.webp?alt=media&token=29af843b-60d2-4435-aefe-5c8d7f8ea68d',123),(401,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2FpequenoPrincipe2.png?alt=media&token=a011e726-bb09-4df4-bfe8-7adb45eb4263',123),(402,'https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fprincipe3.jpeg?alt=media&token=f7bf0e14-10ce-4623-80b0-ae34c4ed86eb',123);
/*!40000 ALTER TABLE `tbl_foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Ação'),(2,'Arte'),(3,'Autoajuda'),(4,'Autobiografia'),(5,'Aventura'),(6,'Biografia'),(7,'Coleção'),(8,'Conto'),(9,'Crimes Reais'),(10,'Distopia'),(11,'Ensaios'),(12,'Fantasia'),(13,'Ficção Científica'),(14,'Ficção Contemporânea'),(15,'Ficção Feminina'),(16,'Ficção Infantil'),(17,'Ficção Policial'),(18,'Ficção histórica'),(19,'Gastronomia'),(20,'Graphic Novel'),(21,'História'),(22,'Horror'),(23,'Humanidades e Ciências Sociais'),(24,'Humor'),(25,'Infantil'),(26,'Juvenil'),(27,'LGBTQ+'),(28,'New adult'),(29,'Novela'),(30,'Paternidade e família'),(31,'Realismo mágico'),(32,'Religião e Espiritualidade'),(33,'Romance'),(34,'Suspense'),(35,'Technologia e Ciência'),(36,'Thriller'),(37,'Viagem'),(38,'Young adult');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_grupo_interesse`
--

DROP TABLE IF EXISTS `tbl_grupo_interesse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_grupo_interesse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `data_criacao` datetime NOT NULL,
  `foto` varchar(5000) NOT NULL DEFAULT 'https://cdn-icons-png.flaticon.com/512/4519/4519678.png',
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_grupo_interesse`
--

LOCK TABLES `tbl_grupo_interesse` WRITE;
/*!40000 ALTER TABLE `tbl_grupo_interesse` DISABLE KEYS */;
INSERT INTO `tbl_grupo_interesse` VALUES (1,'Amantes de Harry Potter','2023-10-15 18:49:40','https://cdn-icons-png.flaticon.com/512/4519/4519678.png','Amamantes de harry Potter de todo o Brasil.');
/*!40000 ALTER TABLE `tbl_grupo_interesse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_idioma`
--

DROP TABLE IF EXISTS `tbl_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_idioma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_idioma`
--

LOCK TABLES `tbl_idioma` WRITE;
/*!40000 ALTER TABLE `tbl_idioma` DISABLE KEYS */;
INSERT INTO `tbl_idioma` VALUES (1,'Alemão'),(2,'Argelino'),(3,'Awadhi'),(4,'Azerbaijão'),(5,'Bengali'),(6,'Bhojpuri'),(7,'Birmanês'),(8,'Cantonês'),(9,'Chinês'),(10,'Coreano'),(11,'Egípcio'),(12,'Espanhol'),(13,'Farsi'),(14,'Francês'),(15,'Gan'),(16,'Gujarati'),(17,'Hakka'),(18,'Hauçá'),(19,'Hindi'),(20,'Holandês'),(21,'Inglês'),(22,'Iorubá'),(23,'Italiano'),(24,'Japonês'),(25,'Javanês'),(26,'Jinyu'),(27,'Kannada'),(28,'Maitili'),(29,'Malaio'),(30,'Mandarim'),(31,'Marati'),(32,'Min nan'),(33,'Oriya'),(34,'Panjabi'),(35,'Panjabi'),(36,'Polaco'),(37,'Português'),(38,'Romeno'),(39,'Russo'),(40,'Servo-croata'),(41,'Sindi'),(42,'Sunda'),(43,'Tailandês'),(44,'Tamil'),(45,'Telugo'),(46,'Turco'),(47,'Ucraniano'),(48,'Urdu'),(49,'Vietnamita'),(50,'Xiang');
/*!40000 ALTER TABLE `tbl_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_anuncio`
--

DROP TABLE IF EXISTS `tbl_tipo_anuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_anuncio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_anuncio`
--

LOCK TABLES `tbl_tipo_anuncio` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_anuncio` DISABLE KEYS */;
INSERT INTO `tbl_tipo_anuncio` VALUES (1,'Doação'),(2,'Troca'),(3,'Venda');
/*!40000 ALTER TABLE `tbl_tipo_anuncio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_usuario`
--

DROP TABLE IF EXISTS `tbl_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_usuario`
--

LOCK TABLES `tbl_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_usuario` DISABLE KEYS */;
INSERT INTO `tbl_tipo_usuario` VALUES (1,'Administrador'),(2,'Participante');
/*!40000 ALTER TABLE `tbl_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cpf` varchar(18) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(256) NOT NULL,
  `senha_reset_token` int DEFAULT NULL,
  `senha_reset_expiracao` datetime DEFAULT NULL,
  `status_usuario` bit(1) NOT NULL DEFAULT b'1',
  `foto` varchar(5000) NOT NULL DEFAULT 'https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',
  `id_endereco` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Endereco_Usuario` (`id_endereco`),
  CONSTRAINT `FK_Endereco_Usuario` FOREIGN KEY (`id_endereco`) REFERENCES `tbl_endereco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'Luiz Gustavo','2023-06-12','2023-10-15 18:48:58','123-456-789-23','luizgustavo.sp2020@gmail.com','12345678',NULL,NULL,_binary '','https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2F1701749747964?alt=media&token=091b953c-a0b1-42da-b87c-260ec5e0c09c',1),(2,'Thiago Freitas','1986-08-04','2023-10-15 18:49:21','123-456-789-23','tifreitas10@gmail.com','87654321',NULL,NULL,_binary '','https://4.bp.blogspot.com/-6randhJrhWI/WFFPQD-5K4I/AAAAAAAAAGU/s71HKGP2H_sM9-hrwSwzd035JiyNa-9pwCLcB/s1600/Screenshot_1.png',2),(3,'Bianca Leao','1981-11-05','2023-10-15 18:49:39','123-458-789-23','biancapeleao@gmail.com','senai123',NULL,NULL,_binary '','https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2Fclose-up-hand-holding-basket-ball.jpg?alt=media&token=2076e931-7619-4eda-853e-b3db23dd03e5',3),(4,'Cristiano Moraes','2003-02-16','2023-10-16 16:31:28','29989055017','cristianocorrea3@gmail.com','cris123',5644,'2023-10-16 13:44:18',_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',4),(5,'Felipe Graciano','1987-06-10','2023-10-16 16:55:47','81744141002','felipinhograciano@gmail.com','felipelegal',2094,'2023-11-25 13:38:33',_binary '','https://i.pinimg.com/736x/f3/7f/93/f37f938899d7aae7dd1bd3293f1ea7c6.jpg',5),(6,'Bianca Leão','2005-08-06','2023-10-16 17:15:29','64296446002','biancadesenvolvedora@gmail.com','senai123',NULL,NULL,_binary '','https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2FWhatsApp%20Image%202023-10-09%20at%2013.19.09.jpeg?alt=media&token=5cb0987f-28d8-40a0-91c5-a78c3d8512c9',6),(7,'Marcel Texeira','1980-05-23','2023-10-16 18:13:13','129-456-789-23','marcel@gmail.com','bcd125',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',7),(8,'Teste','1980-05-23','2023-10-17 15:31:19','313.360.840-14','teste@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',8),(9,'Teste2','1980-05-23','2023-10-17 15:31:52','912.610.350-89','teste2@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',9),(10,'Teste3','1980-05-23','2023-10-17 15:32:25','474.895.660-70','teste3@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',10),(11,'Teste4','1980-05-23','2023-10-17 15:33:04','837.259.840-18','teste4@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',11),(12,'Teste5','1980-05-23','2023-10-17 15:33:27','429.920.980-00','teste5@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',12),(13,'Teste6','1980-05-23','2023-10-17 15:34:16','903.599.460-46','teste6@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',13),(14,'Teste7','1980-05-23','2023-10-17 15:34:38','337.301.860-94','teste7@gmail.com','testeee1',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',14),(15,'julia','2023-01-10','2023-10-18 15:36:33','1234567890','julinha123@gmail.com','12345678',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',15),(16,'gulherme','2023-09-10','2023-10-19 13:17:16','12345678901','gui123@gmail.com','12345678',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',16),(17,'Marcel Texeira','1980-05-23','2023-10-19 13:42:54','129-426-789-23','marcel2@gmail.com','bcd125',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',17),(18,'Marcel Texeira','1980-05-23','2023-10-19 13:43:08','129-426-589-23','marcel5@gmail.com','bcd125',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',18),(19,'João','2001-12-05','2023-10-27 15:55:11','123456789','jv147002@gmail.com','12345678',5920,'2023-11-30 12:22:39',_binary '','https://firebasestorage.googleapis.com/v0/b/fir-book-2c7e5.appspot.com/o/images%2F1701451028077?alt=media&token=b778a2bb-d6a3-4a27-9c49-42133bfae029',19),(20,'Millena Mills','2003-10-29','2023-11-02 17:17:10','128-403-234-80','millenamills@gmail.com','12345678jest',NULL,NULL,_binary '','https://i.pinimg.com/originals/b1/85/54/b1855492768711416e253cc496bae52a.png',20),(21,'Millena','2003-10-29','2023-11-13 22:42:57','128-403-239-80','millenamills9@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',21),(22,'Millena','2003-10-29','2023-11-13 22:43:33','128-403-439-80','millenamills7@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',22),(23,'Millena','2003-10-29','2023-11-13 22:45:22','128-403-433-80','millenamills4@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',23),(24,'Millena','2003-10-29','2023-11-13 22:52:24','128-405-433-80','millenamills8@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',24),(25,'Millena','2003-10-29','2023-11-13 22:56:54','128-605-433-80','millenamills18@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',25),(26,'Millena','2003-10-29','2023-11-13 22:57:36','123-605-433-80','millenamills13@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',26),(27,'Millena','2003-10-29','2023-11-14 15:20:49','123-605-493-80','millenamills19@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',27),(28,'Millena','2003-10-29','2023-11-14 15:20:50','123-623-493-85','millenamills25@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',28),(29,'Millena','2003-10-29','2023-11-14 15:22:29','123-723-493-85','millenamills28@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',29),(30,'Millena','2003-10-29','2023-11-14 15:23:21','123-685-493-80','millenamills39@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',30),(31,'Millena','2003-10-29','2023-11-14 15:23:22','123-723-423-85','millenamills29@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',31),(32,'Millena','2003-10-29','2023-11-14 15:39:25','123-625-493-80','millenamills49@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',32),(33,'Millena','2003-10-29','2023-11-14 15:39:26','123-253-423-85','millenamills42@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',33),(34,'Oswaldao','2002-04-09','2023-11-14 16:04:32','12345678980','oswaldao@gmail.com','12345678',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',34),(35,'Millena','2003-10-29','2023-11-26 13:58:20','123-525-493-80','millenamills50@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',35),(36,'Millena','2003-10-29','2023-11-26 14:05:44','123-825-493-80','millenamills54@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',36),(37,'Millena','2003-10-29','2023-11-26 14:18:12','223-825-493-80','millenamills57@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',37),(38,'Millena','2003-10-29','2023-11-26 14:18:14','123-173-423-85','millenamills52@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',38),(39,'Millena','2003-10-29','2023-11-26 14:22:25','253-895-493-80','millenamills59@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',39),(40,'Millena','2003-10-29','2023-11-26 14:22:27','923-173-423-85','millenamills60@gmail.com','temporaria2',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',40),(41,'davi','2004-06-04','2023-12-04 16:26:30','78344605016','davi@gmail.com','12345',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',41),(42,'pessoa','2006-06-07','2023-12-04 16:35:57','66268170008','pessoa@gmail.com','senai123',NULL,NULL,_binary '','https://www.seekpng.com/png/detail/41-410093_circled-user-icon-user-profile-icon-png.png',42);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_anuncio_favoritados`
--

DROP TABLE IF EXISTS `tbl_usuario_anuncio_favoritados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_anuncio_favoritados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_anuncio` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Usuario_UsuarioAnuncio` (`id_usuario`),
  KEY `FK_Anuncio_UsuarioAnuncio` (`id_anuncio`),
  CONSTRAINT `FK_Anuncio_UsuarioAnuncio` FOREIGN KEY (`id_anuncio`) REFERENCES `tbl_anuncio` (`id`),
  CONSTRAINT `FK_Usuario_UsuarioAnuncio` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_anuncio_favoritados`
--

LOCK TABLES `tbl_usuario_anuncio_favoritados` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_anuncio_favoritados` DISABLE KEYS */;
INSERT INTO `tbl_usuario_anuncio_favoritados` VALUES (356,19,99),(358,19,119),(359,3,120),(360,3,119),(362,3,115),(363,3,116),(366,2,115),(377,2,99),(379,5,123),(380,6,117),(382,1,123);
/*!40000 ALTER TABLE `tbl_usuario_anuncio_favoritados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_genero`
--

DROP TABLE IF EXISTS `tbl_usuario_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Usuario_UsuarioGenero` (`id_usuario`),
  KEY `FK_Genero_UsuarioGenero` (`id_genero`),
  CONSTRAINT `FK_Genero_UsuarioGenero` FOREIGN KEY (`id_genero`) REFERENCES `tbl_genero` (`id`),
  CONSTRAINT `FK_Usuario_UsuarioGenero` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_genero`
--

LOCK TABLES `tbl_usuario_genero` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_genero` DISABLE KEYS */;
INSERT INTO `tbl_usuario_genero` VALUES (7,3,13),(8,3,2),(9,3,9),(10,4,2),(11,4,9),(12,4,28),(13,5,20),(14,5,19),(15,5,22),(16,5,26),(17,6,2),(18,6,5),(19,6,4),(26,15,25),(27,15,26),(28,15,28),(29,15,33),(30,15,37),(31,15,38),(32,15,2),(33,15,8),(34,15,15),(35,15,18),(36,15,20),(37,15,21),(38,15,23),(39,15,22),(40,15,24),(41,16,23),(42,16,1),(43,16,5),(44,16,26),(78,2,10),(79,2,13),(80,2,11),(81,2,9),(102,1,1),(103,1,2),(104,1,3),(105,1,6),(106,1,7),(107,1,22),(108,1,24),(109,1,9),(110,19,1),(111,19,2),(112,19,3),(113,19,4),(114,19,6),(115,19,8),(116,19,10),(117,19,21),(118,19,24),(119,19,8),(120,19,6),(121,19,3),(122,19,4),(123,19,1),(124,19,2),(125,19,33);
/*!40000 ALTER TABLE `tbl_usuario_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_grupo_interesse_tipo_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario_grupo_interesse_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_grupo_interesse_tipo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_grupo_interesse` int NOT NULL,
  `id_tipo_usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_Usuario_UsuarioGrupoInteresseTipoUsuario` (`id_usuario`),
  KEY `FK_GrupoInteresse_UsuarioGrupoInteresseTipoUsuario` (`id_grupo_interesse`),
  KEY `FK_TipoUsuario_UsuarioGrupoInteresseTipoUsuario` (`id_tipo_usuario`),
  CONSTRAINT `FK_GrupoInteresse_UsuarioGrupoInteresseTipoUsuario` FOREIGN KEY (`id_grupo_interesse`) REFERENCES `tbl_grupo_interesse` (`id`),
  CONSTRAINT `FK_TipoUsuario_UsuarioGrupoInteresseTipoUsuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tbl_tipo_usuario` (`id`),
  CONSTRAINT `FK_Usuario_UsuarioGrupoInteresseTipoUsuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_grupo_interesse_tipo_usuario`
--

LOCK TABLES `tbl_usuario_grupo_interesse_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_grupo_interesse_tipo_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario_grupo_interesse_tipo_usuario` VALUES (1,2,1,2);
/*!40000 ALTER TABLE `tbl_usuario_grupo_interesse_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_temporario`
--

DROP TABLE IF EXISTS `tbl_usuario_temporario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_temporario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` int NOT NULL,
  `token_expiress` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_temporario`
--

LOCK TABLES `tbl_usuario_temporario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_temporario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario_temporario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_sbook'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_inserir_endereco_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_inserir_endereco_usuario`(
    logradouro varchar(250),
    bairro varchar(100),
    cidade varchar(100),
    estado varchar(50),
    cep varchar(10),
    nome varchar(60),
    cpf varchar(15),
    data_nascimento date,
    email varchar(255),
    senha varchar(256)
)
begin
    declare id_endereco int;
    
    if char_length(cep) = 0 or cep = null then 
    
		insert into tbl_endereco(
			logradouro,
			bairro,
			cidade,
			estado
		) values (
			logradouro,
            bairro,
            cidade,
            estado
		);
    
    else
		insert into tbl_endereco(
			logradouro,
			bairro,
			cidade,
			estado,
            cep
		) values (
			logradouro,
            bairro,
            cidade,
            estado,
            cep
		);

   end if; 
   
   set id_endereco = last_insert_id();
	
		insert into tbl_usuario(
			nome,
            cpf,
            data_nascimento,
            email,
            senha,
            id_endereco
        )values(
			nome,
            cpf,
            data_nascimento,
            email,
            senha,
            id_endereco
        );
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_quantidade_paginacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_quantidade_paginacao`()
begin
    -- Execute a primeira consulta para obter o total de registros
	SET @total_registros = (SELECT COUNT(*) FROM tbl_anuncio);

	-- Defina a quantidade desejada de registros por página
	SET @registros_por_pagina = 10;

	-- Calcule o número total de páginas
	SET @total_paginas = CEIL(@total_registros / @registros_por_pagina);

	-- Exiba o resultado
	SELECT @total_paginas AS total_paginas;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_endereco_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_update_endereco_usuario`(
	id_usuario int,
    id_endereco int,
    logradouro varchar(250),
    bairro varchar(100),
    cidade varchar(100),
    estado varchar(50),
    cep varchar(10),
    nome varchar(60),
    data_nascimento date
)
begin
    update tbl_endereco as endereco set 
		endereco.logradouro = logradouro,
        endereco.cidade = cidade,
        endereco.bairro = bairro,
        endereco.estado = estado,
        endereco.cep = cep
	where endereco.id = id_endereco;
        
	update tbl_usuario as usuario set
		usuario.nome = nome,
        usuario.data_nascimento = data_nascimento
    where usuario.id = id_usuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 18:19:44
