-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/02/2025 às 18:09
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `noahkrugerestoque`
--
CREATE DATABASE IF NOT EXISTS `noahkrugerestoque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `noahkrugerestoque`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL COMMENT 'Esse Ã© responsavel por definir o codigo do cliente.',
  `nome_cliente` varchar(50) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o nome do cliente',
  `endereco` varchar(50) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o endereÃ§o do cliente.',
  `cidade` varchar(50) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir a cidade do cliente.',
  `cep` varchar(10) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o cep do cliente',
  `cnpj` varchar(30) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o cnpj do cliente',
  `unidade_federativa` char(2) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir a unidade federativa do cliente.',
  `ie` int(10) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o ie do cliente.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `nome_cliente`, `endereco`, `cidade`, `cep`, `cnpj`, `unidade_federativa`, `ie`) VALUES
(20, 'Beth', 'Av ClimÃ©rio n. 45', 'SÃ£o Paulo', '25679300', '3248512673268', 'SP', 9280),
(110, 'Jorge', 'Rua CaiapÃ³ 13', 'Curitiba', '30078500', '1451276498349', 'PR', NULL),
(130, 'Edmar', 'Rua da Prais s/n', 'Salvador', '30079300', '234632842349', 'BA', 7121),
(157, 'Paulo', 'Tv. Moraes c/3', 'Londrina', NULL, '328482233242', 'PR', 1923),
(180, 'Livio', 'Av. Beira Mar n.1256', 'FlorianÃ³polis', '30077500', '1273657123474', 'SC', NULL),
(222, 'LÃºcia', 'Rua Itabira 123 loja 09', 'Belo Horizonte', '22124391', '2831521393488', 'MG', 2985),
(234, 'JosÃ©', 'Quadra 3 bl. 3 sl 1003', 'Brasilia', '22841650', '2176357612323', 'DF', 2931),
(260, 'Susana', 'Rua Lopes Mendes 12', 'NiterÃ³i', '30046500', '217635712329', 'RJ', 2530),
(290, 'Renato', 'Rua Meireles n. 123 bl.2 sl.345', 'SÃ£o Paulo', '30225900', '1327657112314', 'SP', 1820),
(390, 'SebastiÃ£o', 'Rua da Igreja n. 10', 'Uberaba', '30438700', '321765472133', 'MG', 9071),
(410, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', '1283512823469', 'RJ', 7431),
(720, 'Ana', 'Rua 17 n. 19', 'Niteroi', '24358310', '12113197.000000000', 'RJ', 2134),
(830, 'Mauricio', 'Av Paulista 1236 sl/2345', 'SÃ£o Paulo', '3012683', '3281698574656', 'SP', 9343),
(870, 'Flavio', 'Av. Pres Vargas 10', 'SÃ£o Paulo', '22763931', '2253412693879', 'SP', 4631);

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_de_pedido`
--

CREATE TABLE `item_de_pedido` (
  `num_pedido` int(11) NOT NULL,
  `cod_pedido` int(11) NOT NULL,
  `quantidade_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_de_pedido`
--

INSERT INTO `item_de_pedido` (`num_pedido`, `cod_pedido`, `quantidade_produto`) VALUES
(120, 25, 10),
(121, 31, 35),
(96, 77, 20),
(101, 31, 9),
(147, 45, 8),
(146, 31, 7),
(145, 77, 3),
(144, 25, 10),
(143, 78, 30),
(104, 53, 32),
(203, 31, 6),
(189, 78, 45),
(144, 31, 20),
(105, 78, 10),
(110, 25, 10),
(111, 78, 70),
(103, 53, 37),
(91, 77, 40),
(137, 22, 10),
(136, 77, 35),
(135, 53, 18),
(108, 13, 17),
(119, 77, 40),
(118, 13, 6),
(117, 22, 10),
(116, 53, 43),
(131, 13, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `num_pedido` int(11) NOT NULL,
  `prazo_entrega` int(11) DEFAULT NULL,
  `Cod_Cliente` int(11) NOT NULL,
  `Cod_Vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`num_pedido`, `prazo_entrega`, `Cod_Cliente`, `Cod_Vendedor`) VALUES
(91, 20, 260, 11),
(97, 20, 720, 101),
(98, 20, 410, 209),
(101, 15, 720, 101),
(103, 20, 260, 11),
(104, 30, 110, 101),
(105, 15, 180, 240),
(108, 15, 290, 310),
(111, 20, 260, 240),
(112, 20, 260, 240),
(119, 30, 390, 250),
(121, 20, 410, 209),
(127, 10, 410, 11),
(137, 20, 720, 720),
(138, 20, 260, 11),
(143, 30, 20, 111),
(148, 20, 720, 101),
(189, 15, 870, 213),
(203, 30, 830, 250);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL,
  `Unidade_produto` varchar(10) DEFAULT NULL,
  `descricao_produto` varchar(50) DEFAULT NULL,
  `Valor_Unitario` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`cod_produto`, `Unidade_produto`, `descricao_produto`, `Valor_Unitario`) VALUES
(13, 'G', 'Ouro', 6.18),
(22, 'M', 'Linho', 0.11),
(25, 'Kg', 'Queijo', 0.97),
(30, 'SAC', 'AÃ§ucar', 0.30),
(31, 'Bar', 'Chocolate', 0.87),
(45, 'M', 'Madeira', 0.25),
(53, 'M', 'Linha', 1.80),
(77, 'M', 'Papel', 1.05),
(78, 'L', 'Vinho', 2.00),
(87, 'M', 'Cano', 1.97);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `cod_vendedor` int(11) NOT NULL COMMENT 'Esse Ã© responsavel por definir o codigo do vendedor.',
  `nome_vendedor` varchar(50) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o nome do vendedor.',
  `salario_fixo` decimal(15,2) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir o salario fixo do vendedor.',
  `faixa_comissao` char(2) DEFAULT NULL COMMENT 'Esse Ã© responsavel por definir a faixa de comissao do vendedor.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendedor`
--

INSERT INTO `vendedor` (`cod_vendedor`, `nome_vendedor`, `salario_fixo`, `faixa_comissao`) VALUES
(11, 'JoÃ£o', 2780.00, 'C'),
(101, 'JoÃ£o', 2650.32, 'C'),
(111, 'Carlos', 2490.00, 'A'),
(209, 'JosÃ©', 1800.00, 'C'),
(213, 'Jonas', 2300.50, 'A'),
(240, 'Antonio', 9500.00, 'C'),
(250, 'MauricÃ­o', 2930.00, 'B'),
(310, 'Josias', 870.00, 'B'),
(720, 'Felipe', 4600.00, 'A');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices de tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD KEY `FK_num_pedido_pedido` (`num_pedido`),
  ADD KEY `FK_cod_produto` (`cod_pedido`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`num_pedido`),
  ADD KEY `Cod_Cliente` (`Cod_Cliente`,`Cod_Vendedor`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`);

--
-- Índices de tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`cod_vendedor`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD CONSTRAINT `FK_cod_produto` FOREIGN KEY (`cod_pedido`) REFERENCES `produto` (`cod_produto`),
  ADD CONSTRAINT `FK_num_pedido_pedido` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`num_pedido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
