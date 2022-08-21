-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2022 a las 22:02:54
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
-- Base de datos: `login_hookah`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Descripcion` text NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Cantidad` decimal(10,0) NOT NULL,
  `Estatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_Producto`, `Nombre`, `Descripcion`, `Precio`, `Cantidad`, `Estatus`) VALUES
(1, 'Tabaco', 'Don viento del norte', '15.00', '3', 1),
(2, 'Arroz', 'arroz campos', '45.00', '5', 0),
(3, 'Longaniza', 'la mejor carne', '90.00', '50', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Correo` text NOT NULL,
  `Password` text NOT NULL,
  `Telefono` text NOT NULL,
  `Nombre` text NOT NULL,
  `Apellidos` text NOT NULL,
  `Estatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `Correo`, `Password`, `Telefono`, `Nombre`, `Apellidos`, `Estatus`) VALUES
(1, 'maycolmiguel22morel@gmail.com', 'julio', '849-457-5072', 'Maycol Miguel', 'Morel Garcia', 1),
(2, 'maycolmiguel212morel@gmail.com', 'julio', '8297545078', 'maycol', 'morel', 1),
(3, 'miguel22morel@gmail.com', 'julio', '8456789452', 'miguel', 'morel', 1),
(4, 'maycolmiguel229morel@gmail.com', 'julio', '8495675667', 'maycol', 'morel', 1),
(5, 'morel@gmail.ocm', 'julio', '8092332323', 'morel', 'garcia', 1),
(6, 'maycolmiguel132morel@gmail.com', 'julio', '8091234567', 'Miguel', 'morel', 1),
(7, 'jose@gmail.com', 'julio', '8096745067', 'jose', 'taveras', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
