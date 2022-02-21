-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Dez-2021 às 21:25
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbfrogplay`
--
CREATE DATABASE IF NOT EXISTS `dbfrogplay` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbfrogplay`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario`
--

CREATE TABLE `tb_funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `salario` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_funcionario`
--

INSERT INTO `tb_funcionario` (`id_funcionario`, `usuario`, `senha`, `salario`, `cargo`, `nome_completo`, `email`, `telefone`) VALUES
(1, 'adm', 'adm', '', 'administrador ', 'administrador ', '', ''),
(2, 'Brendon', 'a', '12000', 'programador', 'Brendon dos Santos Amarante', 'brendon-amarante@live.com', '21994109087'),
(3, 'Nicole', '123', '12000', 'professor', 'Fabio', 'fabio@gmail.com', '2325168663'),
(4, 'Felipe', 'felps', '98000', 'Cripytomoeda', 'Felipe Felps', 'felps', '51615648'),
(5, 'Gustavo', '123', '12000', 'programador', 'Gustavo Mendes', 'gustavo@mendes.com', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `produtora` varchar(45) NOT NULL,
  `quantidade_estoque` int(10) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`id_produto`, `nome_produto`, `produtora`, `quantidade_estoque`, `preco`) VALUES
(1, 'Grand Theft Auto V (PS4)', 'Rockstar', 8, 200),
(2, 'Grand Theft Auto V (X ONE)', 'Rockstar', 200, 200),
(5, 'Cyber Punk 2077 (PS4)', 'CD Projekt RED', 8, 90),
(6, 'Rocket League', 'PSYOnix', 200, 150);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `id_venda` int(11) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `quantidade_compra` int(11) NOT NULL,
  `total` float NOT NULL,
  `forma_pgto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`id_venda`, `nome_produto`, `nome_cliente`, `quantidade_compra`, `total`, `forma_pgto`) VALUES
(1, 'Grand Theft Auto V (PS4)', 'Brendon', 2, 400, 'PIX'),
(2, 'Cyber Punk 2077 (PS4)', 'Fabio', 2, 180, 'Cartão de Crédito');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`id_venda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
