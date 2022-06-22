-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 19:55:53
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `planeta_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idiomaOficial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poblacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`, `capital`, `idiomaOficial`, `poblacion`) VALUES
(1, 'Colombia', 'Bogotá', 'Español', '12'),
(2, 'ensayo2', 'ensayo2', 'ensayo2', '100'),
(3, 'ensayo3', 'ensayo3', 'ensayo3', '300'),
(4, 'ensayo4', 'ensayo4', 'ensayo4', '400'),
(5, 'ensayo5', 'ensayo5', 'ensayo5', '500'),
(6, 'ensayo6', 'ensayo6', 'ensayo6', '600'),
(7, 'ensayo7', 'ensayo7', 'ensayo7', '700'),
(8, 'ensayo2', 'ensayo2', 'ensayo2', '200'),
(9, 'ensayo9', 'ensayo9', 'ensayo9', '900'),
(10, 'ensayo10', 'ensayo10', 'ensayo10', '1000'),
(19, 'ensayo9', 'ensayo9', 'ensayo9', '900');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
