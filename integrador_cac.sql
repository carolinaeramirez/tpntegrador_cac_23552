-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 16:55:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `tema` varchar(255) DEFAULT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Camila', 'Gutierres', 'cam@gmail.com', 'Desarrollo Web con React.js', '2023-11-12 15:54:27'),
(2, 'Juan', 'Martínez', 'juan@gmail.com', 'Introducción a Python para Desarrolladores', '2023-11-12 15:54:27'),
(3, 'Luisa', 'Rodríguez', 'luisa@gmail.com', 'Seguridad en Desarrollo Web', '2023-11-12 15:54:27'),
(4, 'Miguel', 'López', 'miguel@gmail.com', 'Desarrollo de Aplicaciones Móviles con Flutter', '2023-11-12 15:54:27'),
(5, 'María', 'García', 'maria@gmail.com', 'Inteligencia Artificial en Informática', '2023-11-12 15:54:27'),
(6, 'Carlos', 'Hernández', 'carlos@gmail.com', 'Desarrollo Ágil de Software', '2023-11-12 15:54:27'),
(7, 'Ana', 'Pérez', 'ana@gmail.com', 'Ciberseguridad en Aplicaciones Web', '2023-11-12 15:54:27'),
(8, 'Javier', 'Sánchez', 'javier@gmail.com', 'Desarrollo Full Stack con Node.js', '2023-11-12 15:54:27'),
(9, 'Laura', 'Gómez', 'laura@gmail.com', 'Automatización de Pruebas en Desarrollo Web', '2023-11-12 15:54:27'),
(10, 'Eduardo', 'Fernández', 'eduardo@gmail.com', 'Blockchain y Desarrollo de Contratos Inteligentes', '2023-11-12 15:54:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
