-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: redatora
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'f01b7aee-c3db-11f0-bbdf-d09466e73791:1-68';

--
-- Table structure for table `aluno_conquistas`
--

DROP TABLE IF EXISTS `aluno_conquistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_conquistas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aluno_id` int NOT NULL,
  `conquista_id` int NOT NULL,
  `data_conquista` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  KEY `conquista_id` (`conquista_id`),
  CONSTRAINT `aluno_conquistas_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  CONSTRAINT `aluno_conquistas_ibfk_2` FOREIGN KEY (`conquista_id`) REFERENCES `conquistas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_conquistas`
--

LOCK TABLES `aluno_conquistas` WRITE;
/*!40000 ALTER TABLE `aluno_conquistas` DISABLE KEYS */;
INSERT INTO `aluno_conquistas` VALUES (1,1,1,'2026-06-15 17:57:35'),(2,1,2,'2026-06-15 17:57:35'),(3,1,8,'2026-06-15 17:57:35'),(4,2,1,'2026-06-15 17:57:35'),(5,2,3,'2026-06-15 17:57:35'),(6,3,1,'2026-06-15 17:57:35'),(7,3,4,'2026-06-15 17:57:35'),(8,4,1,'2026-06-15 17:57:35'),(9,5,1,'2026-06-15 17:57:35'),(10,5,10,'2026-06-15 17:57:35');
/*!40000 ALTER TABLE `aluno_conquistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_responsavel`
--

DROP TABLE IF EXISTS `aluno_responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_responsavel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aluno_id` int NOT NULL,
  `responsavel_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  KEY `responsavel_id` (`responsavel_id`),
  CONSTRAINT `aluno_responsavel_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  CONSTRAINT `aluno_responsavel_ibfk_2` FOREIGN KEY (`responsavel_id`) REFERENCES `responsaveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_responsavel`
--

LOCK TABLES `aluno_responsavel` WRITE;
/*!40000 ALTER TABLE `aluno_responsavel` DISABLE KEYS */;
INSERT INTO `aluno_responsavel` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `aluno_responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `turma` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Mariana Silva','mariana@gmail.com','123456','3º Informática','2026-06-15 17:55:42'),(2,'Carlos Souza','carlos@gmail.com','123456','3º Informática','2026-06-15 17:55:42'),(3,'Ana Oliveira','ana@gmail.com','123456','3º Informática','2026-06-15 17:55:42'),(4,'Pedro Santos','pedro@gmail.com','123456','3º Informática','2026-06-15 17:55:42'),(5,'Julia Costa','julia@gmail.com','123456','3º Informática','2026-06-15 17:55:42');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conquistas`
--

DROP TABLE IF EXISTS `conquistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquistas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `pontos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquistas`
--

LOCK TABLES `conquistas` WRITE;
/*!40000 ALTER TABLE `conquistas` DISABLE KEYS */;
INSERT INTO `conquistas` VALUES (1,'Primeira Redação','Enviou a primeira redação',10),(2,'Nota 600','Obteve nota acima de 600',20),(3,'Nota 700','Obteve nota acima de 700',30),(4,'Nota 800','Obteve nota acima de 800',40),(5,'Nota 900','Obteve nota acima de 900',50),(6,'Cinco Redações','Escreveu cinco redações',25),(7,'Dez Redações','Escreveu dez redações',40),(8,'Primeira Reescrita','Realizou uma reescrita',15),(9,'Aluno Dedicado','Acessou o sistema por 30 dias',35),(10,'Campeão da Redação','Conquistou todas as conquistas',100);
/*!40000 ALTER TABLE `conquistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redacoes`
--

DROP TABLE IF EXISTS `redacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redacoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aluno_id` int NOT NULL,
  `tema_id` int NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota_c1` smallint DEFAULT NULL,
  `nota_c2` smallint DEFAULT NULL,
  `nota_c3` smallint DEFAULT NULL,
  `nota_c4` smallint DEFAULT NULL,
  `nota_c5` smallint DEFAULT NULL,
  `nota_total` smallint DEFAULT NULL,
  `versao` int DEFAULT '1',
  `redacao_pai_id` int DEFAULT NULL,
  `data_envio` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  KEY `tema_id` (`tema_id`),
  KEY `redacao_pai_id` (`redacao_pai_id`),
  CONSTRAINT `redacoes_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  CONSTRAINT `redacoes_ibfk_2` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`),
  CONSTRAINT `redacoes_ibfk_3` FOREIGN KEY (`redacao_pai_id`) REFERENCES `redacoes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redacoes`
--

LOCK TABLES `redacoes` WRITE;
/*!40000 ALTER TABLE `redacoes` DISABLE KEYS */;
INSERT INTO `redacoes` VALUES (1,1,1,'Redação 1','Texto da redação 1',180,180,180,180,180,900,1,NULL,'2026-06-15 17:56:44'),(2,2,2,'Redação 2','Texto da redação 2',160,170,180,175,180,865,1,NULL,'2026-06-15 17:56:44'),(3,3,3,'Redação 3','Texto da redação 3',170,170,170,170,170,850,1,NULL,'2026-06-15 17:56:44'),(4,1,1,'Redação 1 - Reescrita','Texto corrigido da redação',190,190,190,190,190,950,2,1,'2026-06-15 17:57:08');
/*!40000 ALTER TABLE `redacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsaveis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsaveis`
--

LOCK TABLES `responsaveis` WRITE;
/*!40000 ALTER TABLE `responsaveis` DISABLE KEYS */;
INSERT INTO `responsaveis` VALUES (1,'José Silva','jose@gmail.com','(22)99999-1111'),(2,'Maria Souza','maria@gmail.com','(22)99999-2222'),(3,'Paulo Oliveira','paulo@gmail.com','(22)99999-3333'),(4,'Fernanda Costa','fernanda@gmail.com','(22)99999-4444'),(5,'Roberto Santos','roberto@gmail.com','(22)99999-5555');
/*!40000 ALTER TABLE `responsaveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
INSERT INTO `temas` VALUES (1,'Educação no Brasil','Desafios da educação brasileira'),(2,'Inteligência Artificial','Impactos da IA na sociedade'),(3,'Mudanças Climáticas','Preservação do meio ambiente'),(4,'Bullying nas Escolas','Combate ao bullying'),(5,'Inclusão Social','A importância da inclusão'),(6,'Saúde Mental','Saúde mental entre os jovens'),(7,'Redes Sociais','Influência das redes sociais');
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15 16:58:51
