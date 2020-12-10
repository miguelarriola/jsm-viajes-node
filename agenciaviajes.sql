-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2020 a las 06:58:57
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenciaviajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimoniales`
--

CREATE TABLE `testimoniales` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `testimoniales`
--

INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(2, 'Miguel', 'miguel@correo', 'Las mejores vacaciones'),
(3, 'Carlos', 'carlos@mail', 'Que malas vaciones'),
(4, 'Nrdjes', 'nar@mail', 'Inolvidable!!'),
(5, 'Sonia', 'son@mail', 'Fue lo mejor de mi visa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `precio` int(9) UNSIGNED NOT NULL,
  `fecha_ida` date NOT NULL,
  `fecha_vuelta` date NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `disponibles` int(9) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `titulo`, `precio`, `fecha_ida`, `fecha_vuelta`, `imagen`, `descripcion`, `disponibles`, `slug`) VALUES
(1, 'Italia', 50000, '2021-06-24', '2021-07-30', 'roma', 'Sed auctor, libero ac pharetra venenatis, ligula magna mollis orci, a dignissim purus felis in nibh. Nulla facilisi. Maecenas a volutpat libero, non lacinia ex. Vivamus gravida arcu a varius interdum. Cras vitae orci id nulla lacinia luctus. Morbi tempor lectus lorem, eget tristique nulla luctus non. Vestibulum nec diam ac sapien porttitor dignissim vel pharetra odio.', 32, 'viaje-italia'),
(2, 'Canadá', 60000, '2021-07-19', '2021-07-19', 'canada', 'Sed auctor, libero ac pharetra venenatis, ligula magna mollis orci, a dignissim purus felis in nibh. Nulla facilisi. Maecenas a volutpat libero, non lacinia ex. Vivamus gravida arcu a varius interdum. Cras vitae orci id nulla lacinia luctus. Morbi tempor lectus lorem, eget tristique nulla luctus non. Vestibulum nec diam ac sapien porttitor dignissim vel pharetra odio.', 25, 'viaje-canada'),
(3, 'Grecia', 40000, '2021-08-29', '2021-09-15', 'grecia', 'Sed auctor, libero ac pharetra venenatis, ligula magna mollis orci, a dignissim purus felis in nibh. Nulla facilisi. Maecenas a volutpat libero, non lacinia ex. Vivamus gravida arcu a varius interdum. Cras vitae orci id nulla lacinia luctus. Morbi tempor lectus lorem, eget tristique nulla luctus non. Vestibulum nec diam ac sapien porttitor dignissim vel pharetra odio.', 18, 'viaje-grecia'),
(4, 'Inglaterra', 50000, '2021-04-16', '2021-10-03', 'londres', 'Sed auctor, libero ac pharetra venenatis, ligula magna mollis orci, a dignissim purus felis in nibh. Nulla facilisi. Maecenas a volutpat libero, non lacinia ex. Vivamus gravida arcu a varius interdum. Cras vitae orci id nulla lacinia luctus. Morbi tempor lectus lorem, eget tristique nulla luctus non. Vestibulum nec diam ac sapien porttitor dignissim vel pharetra odio.', 22, 'viaje-inglaterra'),
(5, 'Río de Janeiro', 8000, '2021-04-16', '2021-04-25', 'rio', 'Sed auctor, libero ac pharetra venenatis, ligula magna mollis orci, a dignissim purus felis in nibh. Nulla facilisi. Maecenas a volutpat libero, non lacinia ex. Vivamus gravida arcu a varius interdum. Cras vitae orci id nulla lacinia luctus. Morbi tempor lectus lorem, eget tristique nulla luctus non. Vestibulum nec diam ac sapien porttitor dignissim vel pharetra odio.', 23, 'viaje-rio-de-janeiro'),
(6, 'Francia', 75000, '2021-04-03', '2021-04-10', 'paris', 'Sed auctor, libero ac pharetra venenatis, ligula magna mollis orci, a dignissim purus felis in nibh. Nulla facilisi. Maecenas a volutpat libero, non lacinia ex. Vivamus gravida arcu a varius interdum. Cras vitae orci id nulla lacinia luctus. Morbi tempor lectus lorem, eget tristique nulla luctus non. Vestibulum nec diam ac sapien porttitor dignissim vel pharetra odio.', 14, 'viaje-francia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `testimoniales`
--
ALTER TABLE `testimoniales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `testimoniales`
--
ALTER TABLE `testimoniales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
