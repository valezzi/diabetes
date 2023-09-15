-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/09/2023 às 01:00
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `diabetes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `controle_dt`
--

CREATE TABLE `controle_dt` (
  `ID_DT` int(3) NOT NULL,
  `GLICOSE` float NOT NULL,
  `GORD_FIG` float NOT NULL,
  `DATA` date NOT NULL,
  `HORA` timestamp NULL DEFAULT NULL,
  `ID_PC` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `ID_MED` int(11) NOT NULL,
  `medicamento` varchar(45) NOT NULL,
  `dose_med` varchar(45) NOT NULL,
  `paciente_ID_PC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `ID_PC` int(11) NOT NULL,
  `NOME_PC` varchar(50) NOT NULL,
  `IDADE` int(3) NOT NULL,
  `PESO` float NOT NULL,
  `ALTURA` float NOT NULL,
  `SEXO` varchar(2) NOT NULL,
  `NATF` int(4) NOT NULL,
  `controle_dt_ID_DT` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `controle_dt`
--
ALTER TABLE `controle_dt`
  ADD PRIMARY KEY (`ID_DT`);

--
-- Índices de tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`ID_MED`),
  ADD KEY `fk_medicamento_paciente1_idx` (`paciente_ID_PC`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`ID_PC`),
  ADD KEY `fk_paciente_controle_dt_idx` (`controle_dt_ID_DT`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `controle_dt`
--
ALTER TABLE `controle_dt`
  MODIFY `ID_DT` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `ID_PC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `medicamento`
--
ALTER TABLE `medicamento`
  ADD CONSTRAINT `fk_medicamento_paciente1` FOREIGN KEY (`paciente_ID_PC`) REFERENCES `paciente` (`ID_PC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `fk_paciente_controle_dt` FOREIGN KEY (`controle_dt_ID_DT`) REFERENCES `controle_dt` (`ID_DT`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
