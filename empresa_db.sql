-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2025 a las 14:24:46
-- Versión del servidor: 11.4.2-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa_db`
--
CREATE DATABASE IF NOT EXISTS `empresa_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `empresa_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `email`, `telefono`) VALUES
(1, 'Juan Perez', 'juan.perez@email.com', '555-1234'),
(2, 'Luis Méndez', 'luis.mendez@email.com', '555-5678'),
(3, 'Carla Ruiz', 'carla.ruiz@email.com', '555-9012'),
(4, 'Jorge López', 'jorge.lopez@email.com', '555-3456'),
(5, 'Marta Díaz', 'marta.diaz@email.com', '555-7890'),
(6, 'Ana García', 'ana.garcia@email.com', '555-1234'),
(7, 'Luis Méndez', 'luis.mendez@email.com', '555-5678'),
(8, 'Carla Ruiz', 'carla.ruiz@email.com', '555-9012'),
(9, 'Jorge López', 'jorge.lopez@email.com', '555-3456'),
(10, 'Marta Díaz', 'marta.diaz@email.com', '555-7890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `precio`, `stock`, `id_proveedor`) VALUES
(1, 'Laptop HP', 850.00, 15, 1),
(2, 'Mouse Inalámbrico', 25.00, 100, 2),
(3, 'Teclado Mecánico', 75.00, 50, 2),
(4, 'Monitor 24\"', 200.00, 30, 3),
(5, 'Disco SSD 1TB', 120.00, 40, 1),
(6, 'Webcam HD', 60.00, 25, 3),
(7, 'Laptop HP', 850.00, 15, 1),
(8, 'Mouse Inalámbrico', 25.00, 100, 2),
(9, 'Teclado Mecánico', 75.00, 50, 2),
(10, 'Monitor 24\"', 200.00, 30, 3),
(11, 'Disco SSD 1TB', 120.00, 40, 1),
(12, 'Webcam HD', 60.00, 25, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_empresa`, `contacto`, `telefono`) VALUES
(1, 'Distribuidora Norte S.A.', 'Roberto Sánchez', '555-1122'),
(2, 'Suministros del Sur Ltda.', 'Lucía Morales', '555-3344'),
(3, 'Tecnología Avanzada S.R.L.', 'Diego Castro', '555-5566'),
(4, 'Importadora Global', 'Elena Vargas', '555-7788'),
(5, 'Distribuidora Norte S.A.', 'Roberto Sánchez', '555-1122'),
(6, 'Suministros del Sur Ltda.', 'Lucía Morales', '555-3344'),
(7, 'Tecnología Avanzada S.R.L.', 'Diego Castro', '555-5566'),
(8, 'Importadora Global', 'Elena Vargas', '555-7788');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `id_producto`, `cantidad`, `fecha_venta`) VALUES
(1, 1, 1, 1, '2025-10-01'),
(2, 2, 2, 2, '2025-10-02'),
(3, 1, 3, 1, '2025-10-03'),
(4, 3, 4, 1, '2025-10-05'),
(5, 4, 5, 2, '2025-10-10'),
(6, 5, 6, 1, '2025-10-15'),
(7, 2, 1, 1, '2025-10-18'),
(8, 3, 2, 3, '2025-10-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
