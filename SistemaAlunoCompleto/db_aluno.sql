-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 20-Out-2018 às 21:38
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aluno`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `rgm` int(10) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `idade` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`rgm`, `nome`, `email`, `dt_nascimento`, `idade`, `endereco`, `foto`) VALUES
(18229174, 'Lucas Franca Kornaker', 'lucaskornaker13@hotmail.com', '1998-04-13', '20', 'Rua Renato Katsuya Sato', 'lucas.jpeg'),
(17717981, 'JOSE ALLEF BEZERRA DA SILVA', 'joseallefbs@gmail.com', '1996-08-10', '22', 'Francisco de Souto Maior', 'img.jpg'),
(17405092, 'Gustavo Floriano Prado', 'guga_floriano13@hotmail.com', '1996-12-24', '21', 'Rua Gato Cinzento', 'gustavo.jpeg'),
(17658772, 'JADILSON ALMEIDA', 'Jadilson_almeida98@hotmail.com', '1998-05-17', '20', 'estrada do lageado velho', 'jadilson.jpeg'),
(17153051, 'Leonardo Cuenca de Almeida', 'leonardocuencads@outlook.com', '1998-04-15', '20', 'rua Manoel Rodrigues Santiago', 'leonardo.jpeg'),
(17656711, 'BRUNO FIGUEIREDO HENRIQUES', 'brunohenriques.sp1@gmail.com', '1991-02-25', '27', 'Rua Mafalda', 'bruno.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
