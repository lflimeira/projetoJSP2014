-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.20 - MySQL Community Server (GPL)
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

create table voo(
	codigo       smallint primary key not null,
    origem       varchar(45) not null,
    destino      varchar(45) not null,
    dia          date not null,
    hora         time not null,
    situacao     varchar(15),
    pri_escala   varchar(45),
    seg_escala   varchar(45),
    cod_aeronave smallint not null
)Engine=InnoDB;

-- Copiando dados para a tabela aeroporto.aeronave: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` (`codigo`, `nomeAeronave`, `tipoAeronave`, `colunas`, `fileiras`) VALUES
	(1, 'Maicon', 'Jet', 2, 2),
	(2, 'Luiz', 'BigNose', 1, 3),
	(3, 'Juliana', 'Luxo', 1, 1),
	(5, 'Franciele', 'Irmã franci', 3, 4);
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;


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
	(3, 'Jefferson Alves', 'Jefferson', '202cb962ac59075b964b07152d234b70', NULL, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;