-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2023 a las 15:14:37
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'ConfiguroWeb', 'hola@configuroweb.com', '3022589741', 'Cali', '2022-02-17 08:21:25', '2018-02-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mis_productos`
--

CREATE TABLE `mis_productos` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mis_productos`
--

INSERT INTO `mis_productos` (`id`, `name`, `description`, `foto`, `price`, `created`, `modified`, `status`) VALUES
(1, 'Arete', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'areta.jpg', 15000.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1'),
(2, 'Anillos', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'anillo.jpg', 25300.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1'),
(3, 'Collar', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'collar3.jpg', 17000.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1'),
(4, 'Pulsera', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'pulsera2.png', 21500.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1'),
(5, 'Candongas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'pulsera2.png', 20000.00, '2023-08-10 14:51:45', '2023-08-10 14:51:45', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id`, `customer_id`, `total_price`, `created`, `modified`, `status`) VALUES
(6, 1, 25.00, '2022-06-12 12:46:58', '2022-06-12 12:46:58', '1'),
(7, 1, 40.00, '2022-06-12 13:08:08', '2022-06-12 13:08:08', '1'),
(8, 1, 70500.00, '2022-10-14 17:54:16', '2022-10-14 17:54:16', '1'),
(9, 1, 75000.00, '2022-10-14 18:17:32', '2022-10-14 18:17:32', '1'),
(10, 1, 102300.00, '2022-10-14 18:25:04', '2022-10-14 18:25:04', '1'),
(11, 1, 89000.00, '2022-10-15 10:53:56', '2022-10-15 10:53:56', '1'),
(12, 1, 25300.00, '2022-10-15 10:54:19', '2022-10-15 10:54:19', '1'),
(13, 1, 31500.00, '2022-10-15 11:11:39', '2022-10-15 11:11:39', '1'),
(14, 1, 38500.00, '2023-08-07 13:07:20', '2023-08-07 13:07:20', '1'),
(15, 1, 63800.00, '2023-08-08 16:08:09', '2023-08-08 16:08:09', '1'),
(16, 1, 36500.00, '2023-08-08 16:17:57', '2023-08-08 16:17:57', '1'),
(17, 1, 38500.00, '2023-08-08 19:02:07', '2023-08-08 19:02:07', '1'),
(18, 1, 97600.00, '2023-08-08 19:13:53', '2023-08-08 19:13:53', '1'),
(19, 1, 97600.00, '2023-08-08 19:13:55', '2023-08-08 19:13:55', '1'),
(20, 1, 97600.00, '2023-08-08 19:13:56', '2023-08-08 19:13:56', '1'),
(21, 1, 97600.00, '2023-08-08 19:15:04', '2023-08-08 19:15:04', '1'),
(22, 1, 97600.00, '2023-08-08 19:15:06', '2023-08-08 19:15:06', '1'),
(23, 1, 97600.00, '2023-08-08 19:15:06', '2023-08-08 19:15:06', '1'),
(24, 1, 97600.00, '2023-08-08 19:15:06', '2023-08-08 19:15:06', '1'),
(25, 1, 119100.00, '2023-08-08 19:15:22', '2023-08-08 19:15:22', '1'),
(26, 1, 119100.00, '2023-08-08 19:15:22', '2023-08-08 19:15:22', '1'),
(27, 1, 119100.00, '2023-08-08 19:15:23', '2023-08-08 19:15:23', '1'),
(28, 1, 119100.00, '2023-08-08 19:15:23', '2023-08-08 19:15:23', '1'),
(29, 1, 119100.00, '2023-08-08 19:15:23', '2023-08-08 19:15:23', '1'),
(30, 1, 119100.00, '2023-08-08 19:15:23', '2023-08-08 19:15:23', '1'),
(31, 1, 21500.00, '2023-08-08 19:16:35', '2023-08-08 19:16:35', '1'),
(32, 1, 21500.00, '2023-08-08 19:16:36', '2023-08-08 19:16:36', '1'),
(33, 1, 21500.00, '2023-08-08 19:16:37', '2023-08-08 19:16:37', '1'),
(34, 1, 21500.00, '2023-08-08 19:16:37', '2023-08-08 19:16:37', '1'),
(35, 1, 21500.00, '2023-08-08 19:16:37', '2023-08-08 19:16:37', '1'),
(36, 1, 53500.00, '2023-08-08 19:20:17', '2023-08-08 19:20:17', '1'),
(37, 1, 61800.00, '2023-08-08 19:22:04', '2023-08-08 19:22:04', '1'),
(38, 1, 78800.00, '2023-08-08 19:36:52', '2023-08-08 19:36:52', '1'),
(39, 1, 55300.00, '2023-08-10 07:48:09', '2023-08-10 07:48:09', '1'),
(40, 1, 20000.00, '2023-08-10 07:53:10', '2023-08-10 07:53:10', '1'),
(41, 1, 35000.00, '2023-08-10 08:07:16', '2023-08-10 08:07:16', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_articulos`
--

CREATE TABLE `orden_articulos` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_articulos`
--

INSERT INTO `orden_articulos` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 6, 2, 1),
(2, 7, 3, 1),
(3, 7, 4, 1),
(4, 8, 1, 1),
(5, 8, 3, 2),
(6, 8, 4, 1),
(7, 9, 1, 1),
(8, 9, 3, 1),
(9, 9, 4, 2),
(10, 10, 3, 2),
(11, 10, 2, 1),
(12, 10, 4, 2),
(13, 11, 9, 1),
(14, 11, 3, 3),
(15, 11, 4, 2),
(16, 12, 2, 1),
(17, 13, 4, 1),
(18, 13, 3, 1),
(19, 14, 3, 1),
(20, 14, 4, 1),
(21, 15, 2, 1),
(22, 15, 3, 1),
(23, 15, 4, 1),
(24, 16, 1, 1),
(25, 16, 4, 1),
(26, 17, 3, 1),
(27, 17, 4, 1),
(46, 36, 3, 1),
(47, 36, 1, 1),
(48, 36, 4, 1),
(49, 37, 2, 1),
(50, 37, 4, 1),
(51, 37, 1, 1),
(52, 38, 4, 1),
(53, 38, 3, 1),
(54, 38, 2, 1),
(55, 38, 1, 1),
(56, 39, 2, 1),
(57, 39, 1, 2),
(58, 40, 5, 1),
(59, 41, 5, 1),
(60, 41, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mis_productos`
--
ALTER TABLE `mis_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indices de la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mis_productos`
--
ALTER TABLE `mis_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  ADD CONSTRAINT `orden_articulos_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orden` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
