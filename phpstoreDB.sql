-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 31-Mar-2022 às 17:12
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `phpstore`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `username`, `password1`) VALUES
(1, 'email1@gmail.com', '12345'),
(2, 'email2@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `namec` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `namec`, `create_at`, `update_at`) VALUES
(1, 'T-Shirt', '2022-03-08 16:22:46', '2022-03-08 16:22:46'),
(2, 'Pants', '2022-03-08 16:24:12', '2022-03-08 16:24:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `create_at`, `update_at`) VALUES
(1, 'email1@gmail.com', 'Meu primeiro Insert com PHP!', '2022-03-07 13:17:27', '2022-03-07 13:17:27'),
(2, 'email2@hotmail.com', 'Meu segundo Insert com PHP!', '2022-03-07 13:23:14', '2022-03-07 13:23:14'),
(3, '', '', '2022-03-07 22:01:39', '2022-03-07 22:01:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`id`, `username`, `create_at`, `update_at`, `password1`) VALUES
(1, 'email1@gmail.com', '2022-03-19 07:53:58', '2022-03-19 07:53:58', '123'),
(2, 'email2@gmail.com', '2022-03-21 12:21:13', '2022-03-21 12:21:13', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `address1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address1`, `phone`, `total`, `create_at`, `update_at`) VALUES
(1, 1, 'test', '912931212', 3500, '2022-03-25 14:55:18', '2022-03-25 14:55:18'),
(2, 1, 'test2', '912931292', 3500, '2022-03-25 15:06:37', '2022-03-25 15:06:37'),
(3, 1, 'test3', '912931292', 3500, '2022-03-25 15:12:15', '2022-03-25 15:12:15'),
(4, 1, 'test4', '912931292', 4000, '2022-03-25 15:46:58', '2022-03-25 15:46:58'),
(5, 1, '', '', 4000, '2022-03-25 15:51:06', '2022-03-25 15:51:06'),
(6, 1, '', '', 4000, '2022-03-25 15:52:23', '2022-03-25 15:52:23'),
(7, 1, '', '', 4000, '2022-03-25 15:52:43', '2022-03-25 15:52:43'),
(8, 1, 'test5', '912931292', 4000, '2022-03-25 15:54:19', '2022-03-25 15:54:19'),
(9, 1, 'testing', '912931292', 2500, '2022-03-25 15:57:05', '2022-03-25 15:57:05'),
(10, 1, 'testing', '912931292', 2500, '2022-03-25 16:00:40', '2022-03-25 16:00:40'),
(11, 1, 'test', '912931212', 2500, '2022-03-25 16:01:33', '2022-03-25 16:01:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`, `create_at`, `update_at`) VALUES
(1, 8, 4, 1, '2022-03-25 15:54:19', '2022-03-25 15:54:19'),
(2, 8, 15, 1, '2022-03-25 15:54:19', '2022-03-25 15:54:19'),
(3, 9, 15, 1, '2022-03-25 15:57:05', '2022-03-25 15:57:05'),
(4, 10, 15, 1, '2022-03-25 16:00:40', '2022-03-25 16:00:40'),
(5, 11, 15, 1, '2022-03-25 16:01:33', '2022-03-25 16:01:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `namep` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int NOT NULL,
  `picture` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int NOT NULL,
  `descriptionp` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `namep`, `price`, `picture`, `create_at`, `update_at`, `category_id`, `descriptionp`) VALUES
(4, 'Calça', 1500, 'uploads/Foto.PNG', '2022-03-08 12:28:03', '2022-03-08 12:28:03', 2, 'Calça nova!'),
(13, 'Pants', 2000, 'uploads/Foto.PNG', '2022-03-11 20:14:34', '2022-03-11 20:14:34', 1, 'Actualizado'),
(15, 'Grif', 2500, 'uploads/Foto.PNG', '2022-03-12 17:07:26', '2022-03-12 17:07:26', 2, 'Do bom grif'),
(16, 'Calção', 3500, 'uploads/Foto.PNG', '2022-03-12 17:35:53', '2022-03-12 17:35:53', 1, 'Calção Favorito'),
(17, 'Sapatos', 945, 'uploads/Foto.PNG', '2022-03-12 17:49:48', '2022-03-12 17:49:48', 2, 'Do bo sápato'),
(18, 'Peixe', 3500, 'uploads/Foto.PNG', '2022-03-21 11:31:52', '2022-03-21 11:31:52', 2, 'Peixe fresco');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
