-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 13-Fev-2020 às 11:46
-- Versão do servidor: 5.6.39-cll-lve
-- versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f11fheux_summit`
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
(3, 'Design Gr&aacute;fico', ''),
(4, 'Rob&oacute;tica & Dom&oacute;tica', ''),
(5, 'Programa&ccedil;&atilde;o Mobile', ''),
(6, 'Repara&ccedil;&atilde;o de Hardware', ''),
(7, 'Programa&ccedil;&atilde;o', ''),
(8, 'Desenvolvimento de Videojogos', ''),
(9, 'Anima&ccedil;&atilde;o 2D & 3D', ''),
(10, 'Impress&atilde;o 3D', '');

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
  `status` int(11) NOT NULL DEFAULT '0',
  `codigo` int(11) NOT NULL,
  `cod_confirm` int(11) NOT NULL DEFAULT '1230984',
  `consentimento` tinyint(1) NOT NULL,
  `datareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `s1` tinyint(4) NOT NULL,
  `s2` tinyint(4) NOT NULL,
  `s3` tinyint(4) NOT NULL,
  `s4` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `reg_evento`
--

INSERT INTO `reg_evento` (`id`, `email`, `nome`, `apelido`, `telefone`, `status`, `codigo`, `cod_confirm`, `consentimento`, `datareg`, `s1`, `s2`, `s3`, `s4`) VALUES
(175, 'koskakot@hotmail.com', 'Maria', 'xzczx', '22222222', 1, 8832, 50808, 1, '2020-02-07 12:25:28', 0, 0, 0, 0),
(178, 'taniaferreira96@hotmail.com', 'Tânia', 'Ferreira', '915294981', 0, 5173, 46888, 0, '2020-02-07 19:13:52', 0, 0, 0, 0),
(185, 'tania.isabel.ferreira.2013@gmail.com', 'Tânia', 'Ferreira', '915294981', 1, 7861, 66465, 0, '2020-02-07 19:44:19', 0, 0, 0, 0),
(190, 'martalf_aguiar@hotmail.com', 'Marta', 'Aguiar', '937098282', 0, 9215, 68181, 0, '2020-02-07 19:45:34', 0, 0, 0, 0),
(193, 'arturdoalves@gmail.com', 'Artur', 'Alves', '916274063', 1, 7274, 52215, 0, '2020-02-07 22:35:58', 0, 0, 0, 0),
(194, 'jdbarros@gmail.com', 'José Daniel', 'Barros', '929081682 ', 1, 6514, 34671, 0, '2020-02-07 23:40:37', 0, 0, 0, 0),
(196, 'pipefernandes24@gmail.com', 'José Filipe', 'Fernandes', '911115839', 1, 6009, 73631, 1, '2020-02-08 12:00:29', 0, 0, 0, 0),
(197, '2000pedroafonso@gmail.com', 'Pedro', 'Silva', '935836195', 0, 5473, 45072, 1, '2020-02-08 12:02:46', 0, 0, 0, 0),
(199, 'xanagaia@hotmail.com', 'Alexandra', 'Quaresma', '911851464', 2, 9984, 45786, 1, '2020-02-08 13:22:05', 0, 1, 0, 0),
(200, 'anafarrajao020@gmail.com', 'Ana', 'Farrajão', '930553808', 2, 5298, 35459, 1, '2020-02-08 13:23:48', 1, 0, 0, 0),
(201, 'anapbaetas@gmail.com', 'Ana Paula', 'Gonçalves', '934835676', 1, 4758, 57759, 1, '2020-02-08 13:25:10', 0, 0, 0, 0),
(202, 'celiraquel12@gmail.com', 'Célia', 'Cardoso', '914352124', 2, 8617, 68877, 1, '2020-02-08 13:26:16', 1, 0, 0, 0),
(203, 'julieta82pinto@hotmail.com', 'Julieta', 'Pinto', '910039991', 0, 8747, 87239, 1, '2020-02-08 13:27:58', 0, 0, 0, 0),
(204, 'lurdesvilar55@gmail.com', 'Maria de Lurdes', 'Vilar', '915309897', 2, 9754, 27105, 1, '2020-02-08 13:29:05', 1, 0, 0, 0),
(205, 'cimarisaribeiro@gmail.com', 'Marisa', 'Ribeiro', '916829440', 1, 5409, 46068, 1, '2020-02-08 13:29:58', 0, 0, 0, 0),
(206, 'pedrosalgueiro.pinho@gmail.com', 'Pedro', 'Pinho', '910078584', 2, 3794, 26868, 1, '2020-02-08 13:30:45', 1, 0, 0, 1),
(207, 'soraiacoutobfc84@gmail.com', 'Soraia', 'Couto', '911851464', 2, 3371, 31727, 1, '2020-02-08 13:31:34', 1, 0, 0, 1),
(208, 'laucccampos@sapo.pt', 'Maria', 'Campos', '912775659', 1, 5813, 56994, 1, '2020-02-08 13:32:05', 0, 0, 0, 0),
(215, 'emanuelcosta28@outlook.com', 'Emanuel', 'Costa', '914380262', 0, 1006, 72107, 1, '2020-02-08 15:07:54', 0, 0, 0, 0),
(216, 'ines_pinto92@hotmail.com', 'Inês', 'Pinto', '918491613', 1, 2297, 18503, 1, '2020-02-08 19:16:32', 0, 0, 0, 0),
(221, 'soniaqbrioso@gmail.com', 'Sónia', 'Brioso', '916672140', 1, 6500, 61587, 1, '2020-02-09 00:00:47', 0, 0, 0, 0),
(223, 'martaangelpt@gmail.com', 'Marta', 'Bedê', '967744581', 1, 6696, 64279, 1, '2020-02-09 00:33:06', 0, 0, 0, 0),
(224, 'jjorgealves@gmail.com', 'Jorge', 'Alves', '965890565', 2, 8420, 87067, 0, '2020-02-09 15:05:46', 1, 0, 1, 1),
(227, 'joao_silva25@hotmail.com', 'Joao', 'Silva', '916465894', 0, 6045, 82479, 0, '2020-02-09 15:14:20', 0, 0, 0, 0),
(228, 'passos.nuno@gmail.com', 'Nuno', 'Passos', '914316204', 1, 4189, 60538, 0, '2020-02-09 15:15:20', 0, 0, 0, 0),
(229, 'susanacorreiatdp@gmail.com', 'Susana Correia', 'Correia', '914515380', 1, 1033, 89750, 0, '2020-02-09 15:22:04', 0, 0, 0, 0),
(230, 'raquelbarrote@gmail.com', 'Raquel', 'Barrote', '913680625', 1, 2846, 36007, 0, '2020-02-09 15:26:25', 0, 0, 0, 0),
(249, 'paulopacheco1960@gmail.com', 'Paulo', 'Pacheco', '917557431', 2, 1894, 65799, 0, '2020-02-09 15:38:31', 1, 0, 1, 0),
(250, 'lopestici@hotmail.com', 'Ticiana', 'Lopes', '932020067', 1, 4140, 88121, 0, '2020-02-09 15:46:49', 0, 0, 0, 0),
(253, 'telmofreitas@outlook.pt', 'Telmo', 'Freitas', '966350307', 1, 3566, 86373, 0, '2020-02-09 15:47:23', 0, 0, 0, 0),
(254, 'rikardokarvalho@hotmail.com', 'Ricardo', 'Carvalho', '914619935', 2, 7055, 95016, 0, '2020-02-09 15:53:01', 1, 0, 0, 0),
(255, 'david.seabra@ua.pt', 'David', 'Ferreira', '961079413', 2, 4645, 83619, 0, '2020-02-09 15:55:12', 1, 0, 0, 0),
(257, 'paulo05pereira@gmail.com', 'Paulo', 'Pereira', '936722155', 0, 6605, 11327, 0, '2020-02-09 16:49:55', 0, 0, 0, 0),
(259, 'rricardochiu350@gmail.com', 'Ricardo', 'Chiu', '914892689', 0, 7939, 15159, 0, '2020-02-09 18:46:42', 0, 0, 0, 0),
(260, 'rricardochiu@gmail.com', 'Ricardo', 'Chiu', '914892689', 1, 1712, 21882, 0, '2020-02-09 18:53:21', 0, 0, 0, 0),
(261, 'sofiasoares.design@gmail.com', 'Sofia', 'Soares', '918685803', 1, 1606, 74055, 0, '2020-02-09 19:14:59', 0, 0, 0, 0),
(262, 'fabio.cunha94@hotmail.com', 'Fabio', 'Cunha', '932849504', 0, 5549, 46823, 0, '2020-02-09 19:20:05', 0, 0, 0, 0),
(263, 'malvarocarreira@hotmail.com', 'Manuel Álvaro', 'Carreira', '915005544 ', 1, 5470, 65569, 0, '2020-02-09 19:25:09', 0, 0, 0, 0),
(264, 'marianamonteiro410@gmail.com', 'Mariana', 'Monteiro', '912966887', 2, 4649, 42907, 0, '2020-02-09 19:52:36', 1, 0, 0, 0),
(265, 'resribeiro.0@gmail.com', 'Ricardo', 'Ribeiro', '914479461', 1, 5764, 33460, 0, '2020-02-09 19:55:50', 0, 0, 0, 0),
(266, 'hugosrosas@gmail.com', 'Hugo', 'Rosas', '918888668', 1, 9499, 38655, 0, '2020-02-09 20:10:41', 0, 0, 0, 0),
(267, 'baraomeister@gmail.com', 'Paulo', 'Alexa', '223262476', 2, 8850, 29704, 0, '2020-02-09 20:48:37', 1, 0, 0, 0),
(269, 'diannaribeiro13@gmail.com', 'Diana', 'Ribeiro', '916808004', 2, 1081, 68697, 0, '2020-02-09 21:47:02', 1, 0, 0, 0),
(270, 'kevinguerracastillo@gmail.com', 'KEVIN', 'GUERRA CASTILLO', '914368951', 2, 5280, 35518, 0, '2020-02-10 06:52:38', 1, 0, 1, 0),
(271, 'diogocroda@gmail.com', 'Diogo', 'Roda', '916538080', 2, 3191, 49652, 0, '2020-02-10 08:42:45', 0, 0, 0, 1),
(272, 'amsbraga@gmail.com', 'António', 'Braga', '910020766', 2, 9215, 29618, 0, '2020-02-10 09:23:14', 1, 0, 0, 1),
(273, 'adrithevenard@gmail.com', 'Adriana', 'Thevénard', '915313256', 2, 2245, 38007, 0, '2020-02-10 09:23:27', 1, 0, 0, 0),
(275, 'luismlei@gmail.com', 'Luis', 'Lei', '917555012', 2, 9783, 65754, 0, '2020-02-10 09:28:14', 1, 0, 1, 0),
(276, 'pintodosreis1@gmail.com', 'Paulo', 'Reis', '927424442', 1, 3574, 89042, 0, '2020-02-10 09:42:14', 0, 0, 0, 0),
(277, 'joanagouveia1985@gmail.com', 'Joana', 'Gouveia', '963873394', 1, 9307, 97747, 0, '2020-02-10 09:43:02', 0, 0, 0, 0),
(278, 'vasco.s.leite@gmail.com', 'Vasco', 'Leite', '919715410', 2, 3650, 23501, 0, '2020-02-10 09:48:22', 1, 1, 1, 1),
(279, 'formacao.soniaribeiro@gmail.com', 'Sónia', 'Ribeiro', '919113212', 1, 9898, 94597, 0, '2020-02-10 09:50:45', 0, 0, 0, 0),
(280, 'amandiasoares1977@gmail.com', 'Amândia', 'RibSoareseiro', '915461131', 1, 7074, 95088, 0, '2020-02-10 09:52:36', 0, 0, 0, 0),
(284, 'rakel-20@live.com.pt', 'Raquel', 'Queirós', '914085904', 1, 5028, 92926, 0, '2020-02-10 09:54:10', 0, 0, 0, 0),
(285, 'smaramalho@gmail.com', 'Sandra', 'Ramalho', '918540829', 1, 7125, 39965, 0, '2020-02-10 09:54:55', 0, 0, 0, 0),
(286, 'pernasat@gmail.com', 'Ana Teresa', 'Silva', '969224946', 1, 8403, 94092, 0, '2020-02-10 09:56:02', 0, 0, 0, 0),
(287, 'janicemelanie@sapo.pt', 'Janice', 'Gomes', '938768322', 1, 1931, 36669, 0, '2020-02-10 09:57:04', 0, 0, 0, 0),
(288, 'maribelpor@gmail.com', 'Maribel', 'Correia', '935597861', 1, 2943, 85099, 0, '2020-02-10 09:58:02', 0, 0, 0, 0),
(289, 'rakelalmeida.84@gmail.com', 'Raquel', 'Almeida', '917951391', 1, 2873, 51166, 0, '2020-02-10 09:59:01', 0, 0, 0, 0),
(290, 'jisilva919@gmail.com', 'Joana', 'Silva', '914637218', 1, 1584, 35165, 0, '2020-02-10 09:59:48', 0, 0, 0, 0),
(291, 'joana.n.f.ferreira@gmail.com', 'Joana', 'Ferreira', '914442246', 1, 3059, 72231, 0, '2020-02-10 10:00:50', 0, 0, 0, 0),
(292, 't-matveenko@mail.ru', 'Tatiana', 'Matveenko', '917996939', 1, 9443, 56105, 0, '2020-02-10 10:02:17', 0, 0, 0, 0),
(293, 'carlosmferreir@gmail.com', 'Carlos', 'Ferreira', '919827703', 1, 7622, 83564, 0, '2020-02-10 10:04:45', 0, 0, 0, 0),
(295, 'filipabarros@michaelpage.pt', 'Filipa', 'Barros', '919200512', 1, 4685, 51334, 0, '2020-02-10 10:15:50', 0, 0, 0, 0),
(296, 'raquelalmeida@michaelpage.pt', 'Raquel', 'Almeida', '916713272', 1, 6079, 99228, 0, '2020-02-10 10:16:42', 0, 0, 0, 0),
(302, 'gabrielalopescorreia@gmail.com', 'Gabriela', 'Correia', '936614674', 1, 3320, 64057, 0, '2020-02-10 10:20:09', 0, 0, 0, 0),
(303, 'emanuelccosta95@gmail.com', 'Emanuel', 'Costa', '914380262', 1, 4734, 55509, 0, '2020-02-10 11:00:40', 0, 0, 0, 0),
(304, 'josejoaquimrizzo@hotmail.com', 'José Joaquim', ' de Azevedo', '938360948', 1, 7782, 31920, 0, '2020-02-10 11:08:05', 0, 0, 0, 0),
(313, 'jeniqf@gmail.com', 'Jeniffer', 'Azevedo', '930516249', 2, 3440, 75832, 0, '2020-02-10 11:16:47', 0, 0, 0, 1),
(314, 'dulce.magalhaes@iefp.pt', 'Dulce', 'Magalhães', '918952333', 1, 9410, 98681, 0, '2020-02-10 11:28:55', 0, 0, 0, 0),
(315, 'susanaagomes@gmail.com', 'Jorge', 'almeida', '910034093', 1, 2464, 80038, 0, '2020-02-10 11:40:51', 0, 0, 0, 0),
(316, 'nanditoteixeira@hotmail.com', 'Fernando', 'Teixeira', '938244297', 1, 3526, 87052, 0, '2020-02-10 11:41:48', 0, 0, 0, 0),
(318, 'mafaldacampos05@gmail.com', 'Mafalda', 'Campos', '910673955', 1, 7975, 71948, 0, '2020-02-10 11:42:56', 0, 0, 0, 0),
(319, 'patypaiva643@gmail.com', 'Patricia', 'Paiva', '919399176', 1, 4486, 89679, 0, '2020-02-10 11:43:36', 0, 0, 0, 0),
(320, 'cristina15pintinho@hotmail.com', 'Carmen', 'Oliveira', '916400296', 0, 7907, 87618, 0, '2020-02-10 11:44:31', 0, 0, 0, 0),
(321, 'sousamc2@gmail.com', 'Comceição', 'Sousa', '926075208', 1, 7551, 72289, 0, '2020-02-10 11:45:11', 0, 0, 0, 0),
(325, 'susana_a_gomes@hotmail.com', 'Isidro', 'Silva', '911780213', 1, 4661, 46116, 0, '2020-02-10 11:46:12', 0, 0, 0, 0),
(326, 'alicefortes19@gmail.com', 'Alice', 'Fortes', '912002881', 0, 7261, 92480, 0, '2020-02-10 11:46:47', 0, 0, 0, 0),
(327, 'antoniojmonteiro77@gmail.com', 'António', 'Monteiro', '928060212', 1, 7887, 25524, 0, '2020-02-10 11:47:29', 0, 0, 0, 0),
(329, 'marisamarques@gmail.com', 'Marisa', 'Marques', '914300855', 0, 9633, 11025, 0, '2020-02-10 11:48:32', 0, 0, 0, 0),
(330, 'rife.pt@gmail.com', 'Ricardo', 'Leal', '913627494', 1, 5169, 51777, 0, '2020-02-10 11:50:11', 0, 0, 0, 0),
(331, 'j.s@live.com.pt', 'José', 'Silva', '914470635', 0, 2419, 68034, 0, '2020-02-10 11:51:00', 0, 0, 0, 0),
(332, 'joaquimmaia@gmail.com', 'Joaquim', 'Maia', '916958612', 0, 7795, 92112, 0, '2020-02-10 11:51:35', 0, 0, 0, 0),
(333, 'lauracunha.1916@gmail.com', 'Laura', 'Gonçalves', '926379357', 0, 3387, 17907, 0, '2020-02-10 11:52:03', 0, 0, 0, 0),
(334, 'susanadoida82@hotmail.com', 'Marisa', 'Marques', '914300855', 0, 6749, 87240, 0, '2020-02-10 11:57:13', 0, 0, 0, 0),
(337, 'joaquimmaia075@gmail.com', 'Joaquim', 'Maia', '916958612', 1, 4941, 79555, 0, '2020-02-10 12:04:34', 0, 0, 0, 0),
(338, 'anaarcomaior087@gmail.com', 'Marisa', 'Marques', '914300855', 1, 1272, 21646, 0, '2020-02-10 12:08:05', 0, 0, 0, 0),
(339, 'isaloureiro25@gmail.com', 'Raquel', 'Martins', '926660052', 1, 6896, 80414, 0, '2020-02-10 12:13:36', 0, 0, 0, 0),
(340, 'lauracunha.1966@gmail.com', 'Laura', 'Gonçalves', '926379357', 1, 5645, 38349, 0, '2020-02-10 12:13:40', 0, 0, 0, 0),
(342, 'maru1708@hotmail.com', 'Maria', 'Guedez', '913994740', 0, 5289, 42555, 0, '2020-02-10 12:15:09', 0, 0, 0, 0),
(345, 'susana89martins@gmail.com', 'Susana', 'Martins', '912738010', 1, 5645, 62543, 0, '2020-02-10 12:18:27', 0, 0, 0, 0),
(346, 'martasofiaferreira8@gmail.com', 'Marta', 'Ferreira', '919410513', 1, 4280, 43365, 0, '2020-02-10 12:19:49', 0, 0, 0, 0),
(347, 'jr.barros.1920@gmail.com', 'Ilídia', 'Barros', '915582973', 0, 3623, 24349, 0, '2020-02-10 12:20:46', 0, 0, 0, 0),
(348, 'ferreiraraul701@gmail.com', 'Raúl', 'Ferreira', '911946830', 1, 7362, 69223, 0, '2020-02-10 12:21:45', 0, 0, 0, 0),
(349, 'fatima21071967@gmail.com', 'Fátima', 'Matos', '962533865', 1, 9728, 70448, 0, '2020-02-10 12:24:12', 0, 0, 0, 0),
(350, 'nawal.aragao@gmail.com', 'Naija', 'Aragão', '934974715', 1, 5108, 88446, 0, '2020-02-10 12:25:06', 0, 0, 0, 0),
(351, 'paula.mbarbosa24@gmail.com', 'Paula', 'Barbosa', '917412913', 1, 2664, 74416, 0, '2020-02-10 12:25:50', 0, 0, 0, 0),
(352, '123456@gmail.com', 'Alexandra', 'Monteiro', '934157542', 0, 1583, 72502, 0, '2020-02-10 12:26:52', 0, 0, 0, 0),
(353, 'lourisabel@gmail.com', 'Isabel', 'Loureiro', '962776582', 1, 9377, 84389, 0, '2020-02-10 12:27:34', 0, 0, 0, 0),
(354, 'mayauk17@gmail.com', 'Maiully', 'Zaffari Jorge', '914456157', 2, 4569, 86976, 0, '2020-02-10 13:29:53', 1, 0, 0, 0),
(355, 'fatimamsantos1967@gmail.com', 'Fátima', 'Santos', '934630632', 2, 1158, 56528, 0, '2020-02-10 13:59:01', 0, 1, 0, 0),
(356, 'joanaameliabarbosasantos1996@gmail.com', 'Joana', 'Santos', '915942083', 2, 2043, 42689, 0, '2020-02-10 14:14:54', 0, 1, 0, 0),
(357, 'natachadreamaker@gmail.com', 'Natacha', 'Sampaio', '963347431', 1, 9450, 38360, 0, '2020-02-10 14:41:30', 0, 0, 0, 0),
(359, 'jenniterra@gmail.com', 'JENNIFER', 'DELGADO', '912044460', 1, 4637, 79122, 0, '2020-02-10 14:53:24', 0, 0, 0, 0),
(360, 'joana_cx@outlook.com', 'Joana', 'Cartaxo', '913366917', 0, 2638, 29570, 0, '2020-02-10 15:22:36', 0, 0, 0, 0),
(361, 'gilmarfreitasportugal@gmail.com', 'Gilmar', 'Freitas', '911157771', 1, 9426, 30374, 0, '2020-02-10 15:27:22', 0, 0, 0, 0),
(362, 'rui.smonster@gmail.com', 'Rui', 'Sousa', '910424619', 1, 3283, 76657, 0, '2020-02-10 15:32:29', 0, 0, 0, 0),
(363, 'migueljasilveira@gmail.com', 'Miguel', 'Silveira', '911706517', 1, 9231, 80875, 0, '2020-02-10 15:36:46', 0, 0, 0, 0),
(364, 'dev.mstevz@gmail.com', 'Miguel', 'Salgado', '912603886', 1, 1601, 18388, 0, '2020-02-10 15:38:31', 0, 0, 0, 0),
(365, 'saravida.3@hotmail.com', 'Sara', 'Gomes', '931609126', 0, 2655, 81776, 0, '2020-02-10 15:39:10', 0, 0, 0, 0),
(366, 'danielbasilio9@gmail.com', 'Daniel', 'Basílio', '916584334', 1, 1207, 13409, 0, '2020-02-10 15:46:17', 0, 0, 0, 0),
(367, 'adelaide.souza@gmail.com', 'Adelaide', 'Teixeira de Sousa', '966637400', 1, 8638, 16460, 0, '2020-02-10 15:47:03', 0, 0, 0, 0),
(368, 'andsoftware@gmail.com', 'Rui', 'Figueiredo', '939193363', 2, 9179, 26070, 0, '2020-02-10 15:57:22', 1, 0, 1, 0),
(369, 'diogopintinha100@gmail.com', 'Diogo', 'Pintinha', '916669909', 0, 7411, 60322, 0, '2020-02-10 16:25:12', 0, 0, 0, 0),
(371, 'paulasilvafaustino5@gmail.com', 'Paula', 'F', '916681003', 2, 9653, 74507, 0, '2020-02-10 16:26:13', 1, 0, 0, 1),
(372, 'alvisibe@gmail.com', 'Alexandre', 'Bernardo', '939 625 639', 1, 6498, 90619, 0, '2020-02-10 16:51:19', 0, 0, 0, 0),
(373, 'richensan@gmail.com', 'Ricardo', 'Henriques', '961839118', 1, 7907, 38490, 0, '2020-02-10 16:51:38', 0, 0, 0, 0),
(374, 'brunomiguelsdias@gmail.com', 'Bruno', 'Dias', '936614630 ', 1, 1073, 45090, 0, '2020-02-10 17:53:03', 0, 0, 0, 0),
(376, 'rafael_desporto@hotmail.com', 'rafael', 'chagas', '918469170', 1, 6086, 89811, 0, '2020-02-10 18:11:07', 0, 0, 0, 0),
(377, 'geral@valorinesperado.pt', 'Vitor', 'Chaves', '910758504', 2, 2866, 68682, 0, '2020-02-10 18:12:30', 1, 0, 0, 0),
(379, 'ana.luisa.rito.90@gmail.com', 'Ana', 'Rito', '932543732', 0, 2365, 21514, 0, '2020-02-10 18:23:20', 0, 0, 0, 0),
(380, 'susana.guimaraes1@gmail.com', 'Susana Marta Costa', 'Guimarães', '918308629 ', 2, 9248, 77119, 0, '2020-02-10 18:37:07', 1, 0, 0, 0),
(381, 'bea_silva@live.com.pt', 'Beatriz', 'Silva', '933826177', 2, 2392, 94153, 0, '2020-02-10 19:11:40', 1, 0, 0, 0),
(382, 'luisa2396@icloud.com', 'Luísa', 'la Féria', '912708768', 1, 5059, 86918, 0, '2020-02-10 20:30:32', 0, 0, 0, 0),
(383, 'afvmatinhas@gmail.com', 'André', 'Matinhas', '967816606', 2, 7480, 48848, 0, '2020-02-10 21:03:49', 0, 0, 1, 0),
(384, 'ivo.filipe1993@gmail.com', 'Ivo', 'Rodrigues', '918072373', 1, 9672, 80554, 0, '2020-02-10 21:56:18', 0, 0, 0, 0),
(385, 'agpinheiro@gmail.com', 'António', 'Pinheiro', '915601752', 1, 4537, 97062, 0, '2020-02-10 23:32:26', 0, 0, 0, 0),
(386, 'lidiaa.20@gmail.com', 'Lídia', 'Gonçalves', '917018772', 1, 5234, 15290, 0, '2020-02-11 01:08:35', 0, 0, 0, 0),
(388, 'heliaribeiro27@hotmail.com', 'Helia', 'Ribeiro', '916837967', 1, 6347, 66153, 0, '2020-02-11 07:03:46', 0, 0, 0, 0),
(389, 'helio74santos@hotmail.com', 'Hélio Fernando Cunha', 'Santos', '938459261', 1, 5377, 34868, 0, '2020-02-11 09:40:28', 0, 0, 0, 0),
(390, 'frodrigues.valbru@sapo.pt', 'Tecnico marketing', '19.0082 (10)', '919233928', 1, 8106, 62029, 0, '2020-02-11 09:42:33', 0, 0, 0, 0),
(393, 'antonioj.costa@gmail.com', 'António', 'Costa', '917360607', 1, 7672, 77661, 0, '2020-02-11 09:45:52', 0, 0, 0, 0),
(394, 'brancaveigacosta@gmail.com', 'Branca', 'Costa', '916297277', 2, 2212, 30532, 0, '2020-02-11 09:46:53', 1, 0, 1, 1),
(395, 'nuno.dfrs@gmail.com', 'Nuno', 'Silva', '916601932', 2, 7990, 28629, 0, '2020-02-11 09:47:09', 1, 0, 1, 0),
(397, 'goncalofilipe117@gmail.com', 'Gonçalo', 'Filipe', '919008843', 2, 4843, 21091, 0, '2020-02-11 09:52:51', 1, 0, 0, 0),
(398, 'antoniocosta7777@sapo.pt', 'António', 'Costa', '91736607', 2, 9852, 80972, 0, '2020-02-11 09:52:52', 1, 0, 1, 1),
(400, 'angela-alves-simao@hotmail.com', 'Ângela', 'Simão', '914014323', 2, 2862, 14509, 0, '2020-02-11 09:53:14', 0, 0, 0, 1),
(403, 'joao.ledo.fonseca@gmail.com', 'João', 'Ledo Fonseca', '933648495', 2, 4498, 96045, 1, '2020-02-11 10:05:13', 1, 0, 0, 0),
(405, 'verasilvasoares@outlook.com', 'Vera', 'Soares', '919391229', 2, 1574, 34450, 0, '2020-02-11 11:14:25', 1, 0, 1, 0),
(407, 'ejg.rodrigues@hotmail.com', 'Eduardo', 'Rodrigues', '918978959', 0, 7500, 19489, 0, '2020-02-11 11:44:45', 0, 0, 0, 0),
(408, 'psi.anacarvalho@gmail.com', 'Ana Clara', 'Carvalho', '914125517', 1, 9389, 41433, 0, '2020-02-11 12:08:11', 0, 0, 0, 0),
(411, 'josecarlosgoncalves@gmail.com', 'José Carlos', 'Gonçalves', '912736607', 0, 6141, 37470, 0, '2020-02-11 12:19:01', 0, 0, 0, 0),
(412, 'hugoandre7@hotmail.com', 'Hugo André Afonso', 'Galhardo', '915573707', 1, 4465, 64789, 0, '2020-02-11 12:20:33', 0, 0, 0, 0),
(413, 'gestaodesportivaol@gmail.com', 'Claudinei Alves', 'Pequeno', '911557145', 1, 2226, 40150, 0, '2020-02-11 12:25:04', 0, 0, 0, 0),
(414, 'fatima.ramos.fanse@gmail.com', 'Fátima', 'Ramos', '917557075', 2, 1315, 75524, 0, '2020-02-11 12:28:11', 1, 0, 0, 0),
(418, 'eduardamtalves@gmail.com', 'Eduarda alves', 'Alves', '916084669', 1, 9484, 23676, 0, '2020-02-11 12:33:15', 0, 0, 0, 0),
(419, 'carine_salgado@hotmail.com', 'Carine Braz', 'Braz', '964342309', 1, 2622, 11487, 0, '2020-02-11 12:49:00', 0, 0, 0, 0),
(420, 'anapaularomano3@gmail.com', 'Ana Paula Felix', 'Romano', '932772403', 1, 9394, 57256, 0, '2020-02-11 13:24:16', 0, 0, 0, 0),
(421, 'marialicedepinho@gmail.com', 'Maria Alice', 'De Pinho', '910426968', 1, 8854, 90777, 0, '2020-02-11 13:34:33', 0, 0, 0, 0),
(422, 'sarasoares_06@hotmail.com', 'Sara', 'Soares', '918404978', 2, 1643, 71184, 0, '2020-02-11 13:35:13', 1, 0, 0, 0),
(423, 'monicacarvcosta@gmail.com', 'Monica', 'Costa', '934185824', 1, 4909, 74441, 0, '2020-02-11 14:00:46', 0, 0, 0, 0),
(424, 'patriciaribas.2000@gmail.com', 'Patrícia', 'Leal', '913044992', 1, 1918, 99476, 0, '2020-02-11 16:21:33', 0, 0, 0, 0),
(425, 'n@ssss', 'n', 'n', 'bm', 0, 5328, 73360, 0, '2020-02-12 11:31:02', 0, 0, 0, 0);

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

INSERT INTO `reg_interest` (`user`, `interest`) VALUES
(175, 2),
(178, 5),
(185, 5),
(190, 1),
(193, 7),
(194, 1),
(194, 2),
(194, 3),
(194, 5),
(194, 8),
(196, 1),
(196, 6),
(196, 8),
(196, 9),
(196, 10),
(197, 9),
(199, 2),
(200, 1),
(201, 7),
(202, 1),
(203, 2),
(204, 2),
(205, 1),
(206, 1),
(207, 2),
(208, 1),
(215, 5),
(215, 7),
(216, 2),
(216, 9),
(221, 7),
(223, 1),
(223, 10),
(224, 5),
(224, 7),
(227, 3),
(228, 7),
(229, 1),
(229, 2),
(229, 10),
(249, 1),
(250, 5),
(250, 7),
(253, 1),
(253, 3),
(253, 9),
(254, 7),
(255, 1),
(255, 2),
(255, 3),
(255, 5),
(255, 7),
(255, 8),
(255, 9),
(255, 10),
(257, 8),
(259, 1),
(260, 1),
(261, 1),
(261, 2),
(261, 3),
(262, 8),
(264, 1),
(264, 2),
(264, 3),
(264, 5),
(264, 7),
(265, 1),
(265, 3),
(265, 7),
(266, 1),
(266, 2),
(266, 3),
(266, 4),
(266, 5),
(266, 6),
(266, 7),
(266, 8),
(266, 9),
(266, 10),
(267, 4),
(269, 1),
(270, 1),
(270, 8),
(271, 8),
(272, 1),
(273, 3),
(275, 2),
(275, 3),
(275, 7),
(276, 7),
(277, 9),
(279, 2),
(280, 2),
(284, 2),
(285, 2),
(286, 2),
(287, 2),
(288, 2),
(289, 2),
(290, 2),
(291, 2),
(292, 2),
(293, 1),
(295, 5),
(296, 5),
(302, 1),
(302, 2),
(302, 3),
(302, 5),
(302, 7),
(303, 5),
(303, 7),
(304, 7),
(313, 7),
(314, 2),
(334, 1),
(337, 1),
(338, 1),
(339, 1),
(339, 2),
(340, 1),
(342, 1),
(342, 2),
(345, 1),
(345, 2),
(346, 1),
(346, 2),
(347, 1),
(347, 2),
(348, 1),
(348, 2),
(349, 1),
(349, 2),
(350, 1),
(350, 2),
(351, 1),
(351, 2),
(352, 1),
(352, 2),
(353, 1),
(353, 2),
(354, 2),
(355, 2),
(356, 2),
(357, 1),
(359, 3),
(360, 9),
(361, 7),
(362, 8),
(363, 4),
(363, 5),
(363, 7),
(363, 8),
(363, 9),
(363, 10),
(364, 7),
(364, 8),
(364, 9),
(365, 8),
(366, 3),
(367, 1),
(368, 1),
(368, 2),
(369, 4),
(371, 7),
(372, 2),
(372, 7),
(373, 6),
(373, 7),
(373, 8),
(374, 1),
(374, 2),
(374, 3),
(376, 8),
(376, 9),
(377, 7),
(379, 8),
(380, 2),
(380, 3),
(380, 9),
(380, 10),
(381, 2),
(381, 3),
(382, 3),
(383, 1),
(383, 2),
(383, 3),
(383, 4),
(383, 7),
(383, 9),
(384, 2),
(384, 3),
(385, 7),
(386, 2),
(390, 2),
(393, 4),
(394, 4),
(395, 3),
(397, 1),
(398, 4),
(400, 3),
(403, 4),
(403, 5),
(403, 6),
(403, 7),
(403, 10),
(405, 1),
(405, 2),
(405, 3),
(407, 5),
(407, 6),
(407, 7),
(407, 8),
(408, 7),
(414, 2),
(419, 2),
(421, 1),
(421, 2),
(421, 7),
(421, 9),
(423, 4),
(424, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_evento`
--
ALTER TABLE `reg_evento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `reg_interest`
--
ALTER TABLE `reg_interest`
  ADD PRIMARY KEY (`user`,`interest`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_evento`
--
ALTER TABLE `reg_evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
