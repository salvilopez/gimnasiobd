-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2019 a las 23:46:47
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `codNoticia` int(9) NOT NULL,
  `tituloNoticia` varchar(200) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`codNoticia`, `tituloNoticia`, `descripcion`, `video`) VALUES
(1, 'Como hacer una dieta', 'La dieta de los macros o dieta flexible propone adelgazar (o mantener el peso) controlando los gramos de macronutrientes que ingerimos diariamente.', 'https://www.youtube.com/embed/RP_vyRZUksk'),
(2, 'Hit', 'r un método eficiente desde la relación tiempo invertido / objetivos conseguidos, en gran medida gracias a la mejora del uso de las grasas como fuente de energía.', 'https://www.youtube.com/embed/uKgaeF2JOPk'),
(4, 'Fullbody Para Principiantes ', 'Cada vez hay más información acerca del entrenamiento con ejercicios multiarticulares, progresiones, rutinas planificadas…', 'https://www.youtube.com/embed/YI4YXQFhE_w'),
(5, 'como perder grasa', ' En este vídeo vamos a comentar 15 claves muy importantes para que quemar grasa corporal sin que perdamos masa muscular.', 'https://www.youtube.com/embed/0-MUwfgYq6M?&rel=0'),
(6, 'Contracturas y dolor cervical\r\n', 'En este video vamos a comentar las contracturas y el dolor cervical', 'https://www.youtube.com/embed/x_1g7EmgcPc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT 'USERDEFAULT.PNG',
  `fechaRegistro` date DEFAULT NULL,
  `fechaValidez` date DEFAULT NULL,
  `peso` int(3) DEFAULT NULL,
  `objetivo` varchar(100) DEFAULT NULL,
  `observacionesSalud` varchar(200) DEFAULT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL DEFAULT 'CLIENTE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombre`, `apellidos`, `direccion`, `telefono`, `fechaNacimiento`, `foto`, `fechaRegistro`, `fechaValidez`, `peso`, `objetivo`, `observacionesSalud`, `nombreUsuario`, `pass`, `email`, `tipo`) VALUES
('admin', 'admin', 'admin', 95287040, '2019-05-13', 'admin.jpg', '2019-05-01', '2021-05-12', NULL, '', NULL, 'admin', 'admin', 'admin@gmail.com', 'admin'),
('miguel', 'miguel', 'ddd', NULL, '2019-05-15', NULL, '2019-05-30', '2019-05-15', 55, '', NULL, 'miguel', 'miguel', 'miguel@gmail.com', 'cliente'),
('salvador', 'Sierra Lopez', 'Calle jubrique numero28', 651079892, '1992-09-29', 'Salvador.png', '2019-04-29', '2019-06-21', 72, 'masa muscular', 'perder zzzzzzzzzzzzz', 'salvilopez', 'salvilopez', 'salvilopezronda@gmail.com', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `codComida` int(9) NOT NULL,
  `nombreComida` varchar(200) NOT NULL,
  `fotoComida` varchar(100) NOT NULL,
  `receta` varchar(1000) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipoComida` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`codComida`, `nombreComida`, `fotoComida`, `receta`, `cantidad`, `tipoComida`) VALUES
(1, 'pasta', 'pasta.jpg', '  de pasta con aceite o salsa de tomate a ser posible natural', 400, 'almuerzo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dieta`
--

CREATE TABLE `dieta` (
  `codDieta` int(9) NOT NULL,
  `codComida` int(9) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `dia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dieta`
--

INSERT INTO `dieta` (`codDieta`, `codComida`, `nombreUsuario`, `dia`) VALUES
(1, 1, 'salvilopez', 'lunes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `codEjercicio` int(9) NOT NULL,
  `nombreEjercicio` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`codEjercicio`, `nombreEjercicio`, `video`, `foto`, `grupo`) VALUES
(2, 'Press plano con mancuernas', '', 'pechol.png', 'pectoral'),
(3, 'Press inclinado con barra', '', 'pechob.png', 'pectoral'),
(4, 'Press inclinado con mancuernas', '', 'pechof.png', 'pectoral'),
(5, 'Press apertura mancuernas', '', 'pechoe.png', 'pectoral'),
(6, 'Fondos pecho', '', 'pechog.png', 'pectoral'),
(7, 'Pull over con mancuernas', '', 'pechoh.png', 'pectoral'),
(8, 'Dominadas abiertas', '', 'espaldaj.png', 'espalda'),
(9, 'Dominadas cerradas', '', 'espaldak.png', 'espalda'),
(10, 'Remo cerrado', '', 'espaldae.png', 'espalda'),
(11, 'Jalon trasero', '', 'espaldab.png', 'espalda'),
(12, 'Jalon  delantero', '', 'espaldaa.png', 'espalda'),
(13, 'Remo al menton', '', 'espaldai.png', 'espalda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `codFactura` int(9) NOT NULL,
  `fechaPago` date NOT NULL,
  `meses` int(9) NOT NULL,
  `precio` float NOT NULL,
  `codTarifa` int(9) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `codCita` int(9) NOT NULL,
  `codSala` int(9) NOT NULL,
  `Fecha` date NOT NULL,
  `hora` int(2) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`codCita`, `codSala`, `Fecha`, `hora`, `nombreUsuario`) VALUES
(1, 2, '2019-05-13', 17, 'salvilopez'),
(2, 2, '2019-05-16', 17, 'salvilopez'),
(3, 2, '2019-05-01', 14, 'salvilopez'),
(4, 1, '2019-05-30', 10, 'salvilopez'),
(5, 1, '2019-05-29', 10, 'salvilopez'),
(6, 1, '2019-05-29', 10, 'salvilopez'),
(7, 1, '2019-05-29', 14, 'salvilopez'),
(8, 1, '2019-05-29', 14, 'salvilopez'),
(9, 1, '2019-05-07', 14, 'salvilopez'),
(10, 1, '2019-05-07', 17, 'salvilopez'),
(11, 1, '2019-05-07', 17, 'salvilopez'),
(12, 1, '2019-05-07', 14, 'salvilopez'),
(20, 1, '2019-05-21', 17, 'salvilopez'),
(21, 1, '2019-05-21', 17, 'salvilopez'),
(22, 1, '2019-05-21', 17, 'salvilopez'),
(23, 1, '2019-05-08', 10, 'salvilopez'),
(24, 1, '2019-05-08', 12, 'salvilopez'),
(25, 1, '2019-05-08', 12, 'salvilopez'),
(26, 2, '2019-05-16', 10, 'salvilopez'),
(27, 1, '2019-05-07', 18, 'salvilopez'),
(28, 1, '2019-05-23', 10, 'salvilopez'),
(29, 1, '2019-05-23', 13, 'salvilopez'),
(30, 1, '2019-05-23', 13, 'salvilopez'),
(31, 2, '2019-05-17', 17, 'salvilopez'),
(32, 1, '2019-05-08', 13, 'salvilopez'),
(33, 1, '2019-05-15', 14, 'salvilopez'),
(34, 1, '2019-05-08', 14, 'salvilopez'),
(35, 2, '2019-05-21', 17, 'salvilopez'),
(36, 2, '2019-05-16', 10, 'salvilopez'),
(37, 2, '2019-05-16', 21, 'salvilopez'),
(38, 2, '2019-05-16', 21, 'salvilopez'),
(39, 2, '2019-05-16', 21, 'salvilopez'),
(40, 2, '2019-05-16', 21, 'salvilopez'),
(41, 1, '2019-05-23', 13, 'salvilopez'),
(42, 1, '2019-05-23', 13, 'salvilopez'),
(43, 2, '2019-05-14', 10, 'salvilopez'),
(44, 2, '2019-05-14', 10, 'salvilopez'),
(45, 2, '2019-05-14', 17, 'salvilopez'),
(46, 2, '2019-05-14', 17, 'salvilopez'),
(47, 2, '2019-05-14', 17, 'salvilopez'),
(48, 2, '2019-05-14', 17, 'salvilopez'),
(49, 2, '2019-05-21', 13, 'salvilopez'),
(50, 1, '2019-06-06', 13, 'salvilopez'),
(51, 1, '2019-05-08', 19, 'salvilopez'),
(52, 1, '2019-05-08', 11, 'admin'),
(53, 1, '2019-05-31', 11, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

CREATE TABLE `rutina` (
  `nombreUsuario` varchar(100) NOT NULL,
  `codEjercicio` int(9) NOT NULL,
  `codRutina` int(9) NOT NULL,
  `repeticiones` int(9) NOT NULL,
  `dia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutina`
--

INSERT INTO `rutina` (`nombreUsuario`, `codEjercicio`, `codRutina`, `repeticiones`, `dia`) VALUES
('salvilopez', 1, 8, 10, 'lunes'),
('salvilopez', 9, 9, 10, 'viernes'),
('salvilopez', 1, 10, 10, 'martes'),
('admin', 11, 11, 10, 'martes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `codigoSala` int(9) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `capacidad` int(2) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imagen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`codigoSala`, `Nombre`, `capacidad`, `descripcion`, `imagen`) VALUES
(1, 'Spining', 30, 'El spinning es un ejercicio aeróbico y de piernas principalmente, donde el monitor o profesor puede mediante el cambio de la frecuencia de pedaleo y de la resistencia al movimiento, realizar todo tipo de intensidades.', 'spining.jpg'),
(2, 'Crossfit', 20, 'CrossFit se define como un sistema de entrenamiento de fuerza y acondicionamiento basado en ejercicios funcionales cnstantemente variados realizados a una alta intensidad.\r\n\r\nEs fácil escribirlo o explicarlo pero difícil entenderlo hasta que lo vivas. Ven a probarlo, ¡que no te lo cuenten!', 'crossfit.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `codTarifa` int(9) NOT NULL,
  `meses` int(2) NOT NULL,
  `nombreTarifa` varchar(200) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarifa`
--

INSERT INTO `tarifa` (`codTarifa`, `meses`, `nombreTarifa`, `precio`) VALUES
(7, 1, 'Tarifa mensual', '25'),
(8, 3, 'Tarifa trimestral', '60'),
(9, 6, 'Tarifa semestral', '90'),
(10, 12, 'Tarifa anual', '150');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`codNoticia`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`nombreUsuario`);

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`codComida`);

--
-- Indices de la tabla `dieta`
--
ALTER TABLE `dieta`
  ADD PRIMARY KEY (`codDieta`),
  ADD KEY `codComida` (`codComida`),
  ADD KEY `nombreUsuario` (`nombreUsuario`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`codEjercicio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`codFactura`),
  ADD KEY `nombreUsuario` (`nombreUsuario`),
  ADD KEY `nombreUsuario_2` (`nombreUsuario`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`codCita`),
  ADD KEY `codSala` (`codSala`),
  ADD KEY `nombreUsuario` (`nombreUsuario`);

--
-- Indices de la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD PRIMARY KEY (`codRutina`),
  ADD KEY `nombreUsuario` (`nombreUsuario`,`codEjercicio`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`codigoSala`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`codTarifa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `codNoticia` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comida`
--
ALTER TABLE `comida`
  MODIFY `codComida` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dieta`
--
ALTER TABLE `dieta`
  MODIFY `codDieta` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  MODIFY `codEjercicio` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `codFactura` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `codCita` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `rutina`
--
ALTER TABLE `rutina`
  MODIFY `codRutina` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `codigoSala` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `codTarifa` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dieta`
--
ALTER TABLE `dieta`
  ADD CONSTRAINT `dieta_ibfk_2` FOREIGN KEY (`codComida`) REFERENCES `comida` (`codComida`),
  ADD CONSTRAINT `dieta_ibfk_3` FOREIGN KEY (`nombreUsuario`) REFERENCES `cliente` (`nombreUsuario`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`codSala`) REFERENCES `sala` (`codigoSala`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`nombreUsuario`) REFERENCES `cliente` (`nombreUsuario`);

--
-- Filtros para la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD CONSTRAINT `rutina_ibfk_1` FOREIGN KEY (`codRutina`) REFERENCES `ejercicio` (`codEjercicio`),
  ADD CONSTRAINT `rutina_ibfk_2` FOREIGN KEY (`nombreUsuario`) REFERENCES `cliente` (`nombreUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
