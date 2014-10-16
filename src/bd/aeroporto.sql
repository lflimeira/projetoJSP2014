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
-- Copiando dados para a tabela aeroporto.aeronave: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` (`codigo`, `nomeAeronave`, `tipoAeronave`, `colunas`, `fileiras`) VALUES
	(1, 'Maicon', 'Jet', 2, 2),
	(2, 'Luiz', 'BigNose', 1, 3),
	(3, 'Juliana', 'Luxo', 1, 1),
	(5, 'Franciele', 'Irmã franci', 3, 4);
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;

-- Copiando dados para a tabela aeroporto.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nome`, `login`, `senha`, `data`, `nivelAcesso`) VALUES
	(1, 'Luiz Felipe', 'luiz', '123', NULL, 1),
	(2, 'Maicon Gouveia', 'maicon', '123', NULL, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
