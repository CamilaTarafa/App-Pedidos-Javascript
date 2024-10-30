-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2024 a las 12:42:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clientespedidosya`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `DNI` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Preferencia` text NOT NULL,
  `Direccion` text NOT NULL,
  `Correo` text NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`DNI`, `Nombre`, `Preferencia`, `Direccion`, `Correo`, `Telefono`) VALUES
(16789377, 'Matias Merlo', 'Pancho', 'Hilario Ascasubi 3456 Olivos', 'matiasmerlo@hotmail.com', 1156689344),
(30566789, 'Micaela Laurencena', 'Hamburguesa', 'Avenida Maipu 1400 Olivos', 'micaelalaurencena@hotmail.com', 1150607080),
(40566789, 'Candela Vieites', 'Pancho', 'Vedia 1500  CABA', 'candevieites@hotmail.com', 1536785644),
(42576430, 'Lara Delprato', 'Sandwich', 'Esmeralda 4500 Munro', 'laradelprato@hotmail.com', 1145367893),
(42576433, 'Lucas Sanchez\r\n ', 'Hamburguesa', 'Diaz Velez 3360 Munro', 'lucas_sanchez@hotmail.com', 1145367890),
(42576456, 'Carla Bacigalupo', 'Sandwich', 'Ricardo Gutierrez 3200 Olivos', 'carlabacigalupo@hotmail.com', 1150245628),
(334067823, 'Lucia Pavone', 'Pancho', 'Avenida Maipu 1567 Olivos', 'luciapavone@hotmail.com', 1133325252);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
