-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.16 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para aeroporto
CREATE DATABASE IF NOT EXISTS `aeroporto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `aeroporto`;


-- Copiando estrutura para tabela aeroporto.aeronave
CREATE TABLE IF NOT EXISTS `aeronave` (
  `codigo` int(4) NOT NULL,
  `nomeAeronave` varchar(50) NOT NULL,
  `tipoAeronave` varchar(50) NOT NULL,
  `colunas` int(4) NOT NULL,
  `fileiras` int(4) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aeroporto.aeronave: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` (`codigo`, `nomeAeronave`, `tipoAeronave`, `colunas`, `fileiras`) VALUES
	(2, 'jkljklpj', 'iopjhiopj', 3, 3),
	(3, 'jklp', 'jhp', 3, 1),
	(5, 'dfasfas frqfqfd', 'dfad gqre a', 3, 5),
	(6, 'sadeqwtq ', 'ddaf q', 5, 5),
	(7, 'Luiz', 'Aviao BigNose', 3, 3),
	(8, 'Juliana', 'Avião de Luxo', 2, 2),
	(9, 'Jefferson', 'Jatinho ', 1, 1);
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;


-- Copiando estrutura para tabela aeroporto.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL DEFAULT '0',
  `formaTratamento` varchar(50) NOT NULL DEFAULT '0',
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `sobrenome` varchar(50) NOT NULL DEFAULT '0',
  `dataNascimento` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aeroporto.cliente: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `tipo`, `formaTratamento`, `nome`, `sobrenome`, `dataNascimento`) VALUES
	(1, 'Adulto', 'Sr', 'Maicon', 'Gouveia', '1994-06-23');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


-- Copiando estrutura para tabela aeroporto.passagem
CREATE TABLE IF NOT EXISTS `passagem` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `idCliente` int(4) NOT NULL DEFAULT '0',
  `idVoo` int(4) NOT NULL DEFAULT '0',
  `idResponsavel` int(4) NOT NULL DEFAULT '0',
  `coluna` int(4) DEFAULT '0',
  `fileira` int(4) DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`idCliente`,`idVoo`,`idResponsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aeroporto.passagem: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `passagem` DISABLE KEYS */;
INSERT INTO `passagem` (`id`, `idCliente`, `idVoo`, `idResponsavel`, `coluna`, `fileira`, `status`) VALUES
	(1, 1, 1, 1, 0, 0, '0');
/*!40000 ALTER TABLE `passagem` ENABLE KEYS */;


-- Copiando estrutura para tabela aeroporto.responsavel
CREATE TABLE IF NOT EXISTS `responsavel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `telefone` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aeroporto.responsavel: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `responsavel` DISABLE KEYS */;
INSERT INTO `responsavel` (`id`, `nome`, `telefone`, `email`) VALUES
	(1, 'Maicon Soares Gouveia', '(11)97243-1309', 'gouveia.maicon@gmail.com');
/*!40000 ALTER TABLE `responsavel` ENABLE KEYS */;


-- Copiando estrutura para tabela aeroporto.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `login` varchar(40) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `data` varchar(10) DEFAULT NULL,
  `nivelAcesso` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aeroporto.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nome`, `login`, `senha`, `data`, `nivelAcesso`) VALUES
	(1, 'Luiz Felipe', 'luiz', '202cb962ac59075b964b07152d234b70', NULL, 1),
	(2, 'Maicon Gouveia', 'maicon', '202cb962ac59075b964b07152d234b70', NULL, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


-- Copiando estrutura para tabela aeroporto.voo
CREATE TABLE IF NOT EXISTS `voo` (
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

-- Copiando dados para a tabela aeroporto.voo: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `voo` DISABLE KEYS */;
INSERT INTO `voo` (`codigo`, `origem`, `destino`, `dia`, `hora`, `situacao`, `valor`, `pri_escala`, `seg_escala`, `cod_aeronave`) VALUES
	(1, 'Santa Catarina', 'São Paulo', '2014-01-20', '15:00:00', 'Em espera', 150, '', '', 9),
	(18511, 'Acre', 'Alagoas', '2012-10-31', '21:59:00', 'Cancelado', 0, '', '', 3),
	(43214, 'Mato Grosso', 'Bahia', '2014-10-22', '01:59:00', 'Em espera', 10, '', '', 9);
/*!40000 ALTER TABLE `voo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
