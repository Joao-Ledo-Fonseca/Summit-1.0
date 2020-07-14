-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 05-Fev-2020 às 01:59
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id11905308_test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `interest`
--

CREATE TABLE `interest` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `interest`
--

INSERT INTO `interest` (`id`, `name`, `description`) VALUES
(1, 'Audiovisual', ''),
(2, 'Marketing Digital & Redes Sociais', ''),
(3, 'Design Gráfico', ''),
(4, 'Robótica & Domótica', ''),
(5, 'Programação Mobile', ''),
(6, 'Reparação de Hardware', ''),
(7, 'Programação', ''),
(8, 'Desenvolvimento de Videojogos', ''),
(9, 'Animação 2D & 3D', ''),
(10, 'Impressão 3D', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_evento`
--

CREATE TABLE `reg_evento` (
  `id` int(11) NOT NULL,
  `email` char(50) COLLATE utf8_bin NOT NULL,
  `nome` char(30) COLLATE utf8_bin DEFAULT NULL,
  `apelido` char(30) COLLATE utf8_bin DEFAULT NULL,
  `telefone` varchar(15) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `codigo` int(11) NOT NULL,
  `cod_confirm` int(11) NOT NULL DEFAULT 1230984,
  `consentimento` tinyint(1) NOT NULL,
  `datareg` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `reg_evento`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_interest`
--

CREATE TABLE `reg_interest` (
  `user` int(11) NOT NULL,
  `interest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `reg_interest`
--



--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reg_evento`
--
ALTER TABLE `reg_evento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `reg_interest`
--
ALTER TABLE `reg_interest`
  ADD PRIMARY KEY (`user`,`interest`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `reg_evento`
--
ALTER TABLE `reg_evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
