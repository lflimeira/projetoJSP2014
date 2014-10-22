-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.40-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema aeroporto
--

CREATE DATABASE IF NOT EXISTS aeroporto;
USE aeroporto;

--
-- Definition of table `aeronave`
--

DROP TABLE IF EXISTS `aeronave`;
CREATE TABLE `aeronave` (
  `codigo` int(4) NOT NULL,
  `nomeAeronave` varchar(50) NOT NULL,
  `tipoAeronave` varchar(50) NOT NULL,
  `colunas` int(4) NOT NULL,
  `fileiras` int(4) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aeronave`
--

/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` (`codigo`,`nomeAeronave`,`tipoAeronave`,`colunas`,`fileiras`) VALUES 
 (1,'Maicon','Jet',2,2),
 (2,'Luiz','BigNose',1,3),
 (3,'Juliana','Luxo',1,1),
 (5,'Franciele','Irmã franci',3,4);
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;


--
-- Definition of table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idCliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  `tratamento` varchar(10) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `sobrenome` varchar(80) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`idCliente`,`tipo`,`tratamento`,`nome`,`sobrenome`,`dataNascimento`) VALUES 
 (1,'Adulto','Sr.','Luiz','Felipe','1993-02-02'),
 (2,'Adulto','Sra.','Juliana','Alves','1991-05-09'),
 (3,'Criança','Sr.','Maicon','Gouveia','2004-09-09'),
 (4,'Criança','Sr.','Jefferson','Não Lembro','2006-07-13'),
 (5,'Bebê','Sra.','Bebezita','Chiquita','2013-02-03'),
 (6,'Bebê','Sr.','Joaquinzinho','Bebezinho','2014-05-06'),
 (7,'Adulto','Sr.','Luiz','Felipe','1993-02-02'),
 (8,'Adulto','Sra.','Juliana','Alves','1991-05-09'),
 (9,'Criança','Sr.','Maicon','Gouveia','2004-09-09'),
 (10,'Criança','Sr.','Jefferson','Não Lembro','2006-07-13'),
 (11,'Bebê','Sra.','Bebezita','Chiquita','2013-02-03'),
 (12,'Bebê','Sr.','Joaquinzinho','Bebezinho','2014-05-06'),
 (13,'Adulto','Sr.','Luiz','Felipe','1993-02-02'),
 (14,'Adulto','Sra.','Juliana','Alves','1991-05-09'),
 (15,'Criança','Sr.','Maicon','Gouveia','2004-09-09'),
 (16,'Criança','Sr.','Jefferson','Não Lembro','2006-07-13'),
 (17,'Bebê','Sra.','Bebezita','Chiquita','2013-02-03'),
 (18,'Bebê','Sr.','Joaquinzinho','Bebezinho','2014-05-06'),
 (19,'Adulto','Sr.','Luiz','Felipe','1993-02-02'),
 (20,'Adulto','Sra.','Juliana','Alves','1991-05-09'),
 (21,'Criança','Sr.','Maicon','Gouveia','2004-09-09'),
 (22,'Criança','Sr.','Jefferson','Não Lembro','2006-07-13'),
 (23,'Bebê','Sra.','Bebezita','Chiquita','2013-02-03'),
 (24,'Bebê','Sr.','Joaquinzinho','Bebezinho','2014-05-06'),
 (25,'Adulto','Sr.','Luiz','Felipe','1975-05-04'),
 (26,'Adulto','Sra.','Juliana','Alves','1972-05-05'),
 (27,'Criança','Sr.','Jefferson','Não Lembro','2005-02-04'),
 (28,'Criança','Srta.','Maica','Gouveia','2008-05-02');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


--
-- Definition of table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `login` varchar(40) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `data` varchar(10) DEFAULT NULL,
  `nivelAcesso` int(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`,`nome`,`login`,`senha`,`data`,`nivelAcesso`) VALUES 
 (1,'Luiz Felipe','luiz','202cb962ac59075b964b07152d234b70',NULL,1),
 (2,'Maicon Gouveia','maicon','202cb962ac59075b964b07152d234b70',NULL,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


--
-- Definition of table `voo`
--

DROP TABLE IF EXISTS `voo`;
CREATE TABLE `voo` (
  `codigo` int(11) NOT NULL,
  `origem` varchar(45) NOT NULL,
  `destino` varchar(45) NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `situacao` varchar(15) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `pri_escala` varchar(45) DEFAULT NULL,
  `seg_escala` varchar(45) DEFAULT NULL,
  `cod_aeronave` int(11) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voo`
--

/*!40000 ALTER TABLE `voo` DISABLE KEYS */;
INSERT INTO `voo` (`codigo`,`origem`,`destino`,`dia`,`hora`,`situacao`,`valor`,`pri_escala`,`seg_escala`,`cod_aeronave`) VALUES 
 (1,'Santa Catarina','São Paulo','2014-01-20','15:00:00','Em espera',150,'','',9),
 (2,'São Paulo','Rio de Janeiro','2014-12-30','13:00:00','Em espera',500,'','',1);
/*!40000 ALTER TABLE `voo` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
