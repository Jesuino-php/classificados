-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.24-log
-- Versão do PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `classificados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

CREATE TABLE IF NOT EXISTS `anuncios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` text NOT NULL,
  `valor` float DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`id`, `id_usuario`, `id_categoria`, `titulo`, `descricao`, `valor`, `estado`) VALUES
(45, 10, 3, 'TV', 'nova', 200, 3),
(47, 10, 1, 'Orient', 'Muito bonito', 200, 3),
(48, 10, 2, 'Vetido ', 'Tecido de allgodÃ£o', 120, 0),
(50, 10, 4, 'Onix', 'Ano 2019 1.0 ', 30000, 3),
(51, 10, 1, 'CITIZEN', 'Novissimo', 101, 2),
(55, 12, 2, 'algodÃ£o', 'Vestido lindÃ­ssimo', 150, 3),
(56, 12, 2, 'algodÃ£o', '', 333, 2),
(57, 12, 2, 'algodÃ£o', 'Muito elegante para festas', 100, 1),
(58, 10, 1, 'Orient & Citizen', 'Lindissimo', 150, 3),
(59, 11, 3, 'TV', 'NovissÃ­ma', 2000, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios_imagens`
--

CREATE TABLE IF NOT EXISTS `anuncios_imagens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_anuncio` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Extraindo dados da tabela `anuncios_imagens`
--

INSERT INTO `anuncios_imagens` (`id`, `id_anuncio`, `url`) VALUES
(47, 45, '536cf744210adb17da5cc6f1e59b7869.jpg'),
(48, 47, '863a5262170be7fd83a6db56408dc6e3.jpg'),
(49, 48, 'd5086f40ff1f3b0e3dbffdd8281244d4.jpg'),
(51, 50, '92fb6145234d5354d29380fee300397e.jpg'),
(53, 45, 'fc25c46bd278e95a03e70aebad465d7c.jpg'),
(55, 55, '50eebbfac78bc8ed30dfb2bd07821d78.jpg'),
(58, 51, '9a0e350a58a1791077293858f9e9d92d.jpg'),
(61, 58, 'b53b91bd42c055adb14fbe166afe0c3e.jpg'),
(62, 55, 'dd7326b0df894f9f168bae4da61647eb.jpg'),
(63, 55, '90c1d9ef66a8e9bf876ca9d5ae54a834.jpg'),
(64, 56, '9e4e0eaf785761488ab3b6634cd16402.jpg'),
(65, 57, '1d04bddcd8fd802f37b0b02c69148c4f.jpg'),
(66, 56, '36212aa2ebe379b5757c15fb8f764d93.jpg'),
(67, 57, '94a5ddfa428b2b18dfb1500e547d3dd6.jpg'),
(68, 57, '0674fd28977f534bef7670c9c919d289.jpg'),
(69, 59, 'f2d170d83fab5d7039444da9487538ea.jpg'),
(70, 59, 'e0868d5316f7b7722dc4f0eacfb439fa.jpg'),
(71, 47, 'c3a322232d64223b3556d0a53cb62b8a.jpg'),
(72, 48, '01219ba48bb40a14e25a71fbf8bb5916.jpg'),
(73, 50, '10539437ceb1609997e5d2da2285d9a7.jpg'),
(74, 50, 'f7b82a52f0e8053c73963a6ce4797939.jpg'),
(75, 58, '428eac83c8cb2e76606dc1090bae0585.jpg'),
(76, 58, '21704a56f929ee853832c9fc60b8b1b2.jpg'),
(77, 58, '7465fb77ab28463bce6efb897c71bd54.jpg'),
(78, 58, '5d227990219a5c62995b3740071bc7a5.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'RELÓGIOS'),
(2, 'ROUPAS'),
(3, 'ELETRÔNICOS'),
(4, 'CARROS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `telefone`) VALUES
(10, 'Jesuino Batista', 'jesuinob@yahoo.com.br', 'e807f1fcf82d132f9bb018ca6738a19f', '71981812392'),
(11, 'Anderson Samuel', 'asdigital@hotmail.com', '202cb962ac59075b964b07152d234b70', '1234567890'),
(12, 'Eli Mary Lima', 'elimaryi@yahoo.com.br', '202cb962ac59075b964b07152d234b70', '9999999');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
