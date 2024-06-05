-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:52:40
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`ID`, `nombre`, `descripcion`) VALUES
(1, 'Luna Nocturna', 'Una banda de rock alternativo con un toque místico y letras introspectivas.'),
(2, 'Los Viajeros del Sonido', 'Una agrupación experimental que fusiona diferentes géneros musicales para crear paisajes sonoros únicos.'),
(3, 'La Voz del Cielo', 'Un cantante solista con una voz angelical que cautiva a sus oyentes con melodías etéreas.'),
(4, 'Los Rebeldes del Ritmo', 'Un grupo de música electrónica que rompe con las convenciones y redefine los límites del género.'),
(5, 'Sinfonía Urbana', 'Una orquesta moderna que interpreta piezas clásicas con un toque urbano y contemporáneo.'),
(6, 'El Poeta del Silencio', 'Un músico solista que utiliza el poder del silencio en sus composiciones para crear atmósferas emotivas y reflexivas.'),
(7, 'Los Soñadores del Jazz', 'Una banda de jazz que transporta a su audiencia a los humeantes clubes de Nueva Orleans con su estilo vibrante y enérgico.'),
(8, 'La Estrella Fugaz', 'Una artista pop con una presencia escénica deslumbrante y letras pegajosas que se quedan grabadas en la mente de sus seguidores.'),
(9, 'Los Maestros del Groove', 'Un colectivo de músicos talentosos que dominan el arte del groove y llenan la pista de baile con su energía contagiosa.'),
(10, 'El Creador de Sueños', 'Un compositor y productor visionario que mezcla elementos de música electrónica, ambiental y world music para crear paisajes sonoros evocadores y oníricos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `ID` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`ID`, `artista_id`, `cancion_id`) VALUES
(1, 10, 150),
(2, 5, 75),
(3, 8, 120),
(4, 2, 34),
(5, 7, 68),
(6, 3, 89),
(7, 9, 112),
(8, 1, 45),
(9, 6, 22),
(10, 4, 17),
(11, 10, 99),
(12, 5, 88),
(13, 8, 51),
(14, 2, 15),
(15, 7, 78),
(16, 3, 100),
(17, 9, 23),
(18, 1, 59),
(19, 6, 94),
(20, 4, 80),
(21, 10, 113),
(22, 5, 65),
(23, 8, 37),
(24, 2, 74),
(25, 7, 28),
(26, 3, 41),
(27, 9, 55),
(28, 1, 82),
(29, 6, 9),
(30, 4, 130),
(31, 10, 57),
(32, 5, 27),
(33, 8, 104),
(34, 2, 36),
(35, 7, 76),
(36, 3, 108),
(37, 9, 64),
(38, 1, 39),
(39, 6, 96),
(40, 4, 90),
(41, 10, 138),
(42, 5, 47),
(43, 8, 83),
(44, 2, 63),
(45, 7, 56),
(46, 3, 124),
(47, 9, 102),
(48, 1, 19),
(49, 6, 54),
(50, 4, 85),
(51, 10, 142),
(52, 5, 43),
(53, 8, 119),
(54, 2, 14),
(55, 7, 35),
(56, 3, 79),
(57, 9, 77),
(58, 1, 3),
(59, 6, 111),
(60, 4, 128),
(61, 10, 116),
(62, 5, 105),
(63, 8, 72),
(64, 2, 50),
(65, 7, 132),
(66, 3, 93),
(67, 9, 53),
(68, 1, 121),
(69, 6, 26),
(70, 4, 131),
(71, 10, 136),
(72, 5, 18),
(73, 8, 31),
(74, 2, 48),
(75, 7, 21),
(76, 3, 115),
(77, 9, 10),
(78, 1, 144),
(79, 6, 81),
(80, 4, 67),
(81, 10, 124),
(82, 5, 75),
(83, 8, 42),
(84, 2, 62),
(85, 7, 91),
(86, 3, 6),
(87, 9, 129),
(88, 1, 95),
(89, 6, 144),
(90, 4, 137),
(91, 10, 49),
(92, 5, 32),
(93, 8, 98),
(94, 2, 120),
(95, 7, 123),
(96, 3, 14),
(97, 9, 38),
(98, 1, 126),
(99, 6, 22),
(100, 4, 135),
(101, 10, 73),
(102, 5, 141),
(103, 8, 1),
(104, 2, 29),
(105, 7, 144),
(106, 3, 63),
(107, 9, 45),
(108, 1, 59),
(109, 6, 22),
(110, 4, 17),
(111, 10, 99),
(112, 5, 88),
(113, 8, 51),
(114, 2, 15),
(115, 7, 78),
(116, 3, 100),
(117, 9, 23),
(118, 1, 59),
(119, 6, 94),
(120, 4, 80),
(121, 10, 113),
(122, 5, 65),
(123, 8, 37),
(124, 2, 74),
(125, 7, 28),
(126, 3, 41),
(127, 9, 55),
(128, 1, 82),
(129, 6, 9),
(130, 4, 130),
(131, 10, 57),
(132, 5, 27),
(133, 8, 104),
(134, 2, 36),
(135, 7, 76),
(136, 3, 108),
(137, 9, 64),
(138, 1, 39),
(139, 6, 96),
(140, 4, 90),
(141, 10, 138),
(142, 5, 47),
(143, 8, 83),
(144, 2, 63),
(145, 7, 56),
(146, 3, 124),
(147, 9, 102),
(148, 1, 19),
(149, 6, 54),
(150, 4, 85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`ID`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Amanecer en el Horizonte', 3, '04:20:00', '2023-01-15', 1, '/ruta/foto1.jpg'),
(2, 'Melodía del Bosque Encantado', 5, '03:45:00', '2022-11-28', 1, '/ruta/foto2.jpg'),
(3, 'Caminos de la Ciudad', 2, '05:10:00', '2023-02-05', 1, '/ruta/foto3.jpg'),
(4, 'Ritmo Latino', 8, '03:30:00', '2023-03-12', 1, '/ruta/foto4.jpg'),
(5, 'Estrellas en el Cielo', 4, '04:55:00', '2022-10-10', 1, '/ruta/foto5.jpg'),
(6, 'Sueños de Verano', 1, '04:02:00', '2023-04-20', 1, '/ruta/foto6.jpg'),
(7, 'Luces de la Noche', 7, '03:15:00', '2023-05-01', 1, '/ruta/foto7.jpg'),
(8, 'Olas del Océano', 6, '05:30:00', '2022-09-08', 1, '/ruta/foto8.jpg'),
(9, 'Vientos del Desierto', 3, '03:58:00', '2022-12-25', 1, '/ruta/foto9.jpg'),
(10, 'Canción del Recuerdo', 2, '04:45:00', '2023-06-18', 1, '/ruta/foto10.jpg'),
(11, 'Ritmo Tropical', 8, '03:40:00', '2023-07-05', 1, '/ruta/foto11.jpg'),
(12, 'Noches de Fiesta', 7, '04:20:00', '2022-08-12', 1, '/ruta/foto12.jpg'),
(13, 'Aurora Boreal', 4, '05:05:00', '2023-01-28', 1, '/ruta/foto13.jpg'),
(14, 'Canción del Despertar', 1, '03:55:00', '2023-09-15', 1, '/ruta/foto14.jpg'),
(15, 'Travesía sin Fin', 6, '04:30:00', '2022-11-01', 1, '/ruta/foto15.jpg'),
(16, 'Brillo Estelar', 3, '03:25:00', '2023-04-02', 1, '/ruta/foto16.jpg'),
(17, 'Pasos en la Arena', 5, '04:10:00', '2023-06-20', 1, '/ruta/foto17.jpg'),
(18, 'Cielo Profundo', 2, '03:45:00', '2022-12-10', 1, '/ruta/foto18.jpg'),
(19, 'Reflejos del Alba', 1, '05:20:00', '2023-08-18', 1, '/ruta/foto19.jpg'),
(20, 'Magia en el Aire', 4, '04:00:00', '2023-02-09', 1, '/ruta/foto20.jpg'),
(21, 'Sinfonía del Ocaso', 2, '04:15:00', '2023-05-30', 1, '/ruta/foto21.jpg'),
(22, 'Ritmo del Corazón', 8, '03:50:00', '2022-10-25', 1, '/ruta/foto22.jpg'),
(23, 'Melodía del Recuerdo', 1, '05:05:00', '2023-03-18', 1, '/ruta/foto23.jpg'),
(24, 'Estrellas Fugaces', 4, '03:40:00', '2023-06-08', 1, '/ruta/foto24.jpg'),
(25, 'Caminos del Alma', 6, '04:25:00', '2022-11-20', 1, '/ruta/foto25.jpg'),
(26, 'Luz de Luna', 3, '03:35:00', '2023-08-02', 1, '/ruta/foto26.jpg'),
(27, 'Vientos del Norte', 5, '04:10:00', '2023-04-15', 1, '/ruta/foto27.jpg'),
(28, 'Destellos de Esperanza', 1, '04:45:00', '2022-12-05', 1, '/ruta/foto28.jpg'),
(29, 'Rumbo a la Libertad', 7, '03:55:00', '2023-01-10', 1, '/ruta/foto29.jpg'),
(30, 'Susurros del Bosque', 6, '04:20:00', '2023-07-20', 1, '/ruta/foto30.jpg'),
(31, 'Amanecer en la Playa', 5, '03:30:00', '2022-09-30', 1, '/ruta/foto31.jpg'),
(32, 'Vuelo Nocturno', 2, '04:05:00', '2023-02-28', 1, '/ruta/foto32.jpg'),
(33, 'Ritmo del Verano', 8, '03:20:00', '2023-05-12', 1, '/ruta/foto33.jpg'),
(34, 'Canción del Viaje', 1, '04:40:00', '2022-11-15', 1, '/ruta/foto34.jpg'),
(35, 'Luces del Pasado', 3, '03:45:00', '2023-08-30', 1, '/ruta/foto35.jpg'),
(36, 'Aurora del Desierto', 4, '04:15:00', '2023-03-05', 1, '/ruta/foto36.jpg'),
(37, 'Ritmo del Alma', 8, '03:55:00', '2023-06-25', 1, '/ruta/foto37.jpg'),
(38, 'Suspiros del Mar', 5, '03:25:00', '2022-10-20', 1, '/ruta/foto38.jpg'),
(39, 'Brillo del Anochecer', 2, '04:30:00', '2023-01-22', 1, '/ruta/foto39.jpg'),
(40, 'Canción del Crepúsculo', 7, '04:05:00', '2023-09-05', 1, '/ruta/foto40.jpg'),
(41, 'Ritmo del Corazón', 8, '03:50:00', '2022-10-25', 1, '/ruta/foto41.jpg'),
(42, 'Melodía del Recuerdo', 1, '05:05:00', '2023-03-18', 1, '/ruta/foto42.jpg'),
(43, 'Estrellas Fugaces', 4, '03:40:00', '2023-06-08', 1, '/ruta/foto43.jpg'),
(44, 'Caminos del Alma', 6, '04:25:00', '2022-11-20', 1, '/ruta/foto44.jpg'),
(45, 'Luz de Luna', 3, '03:35:00', '2023-08-02', 1, '/ruta/foto45.jpg'),
(46, 'Vientos del Norte', 5, '04:10:00', '2023-04-15', 1, '/ruta/foto46.jpg'),
(47, 'Destellos de Esperanza', 1, '04:45:00', '2022-12-05', 1, '/ruta/foto47.jpg'),
(48, 'Rumbo a la Libertad', 7, '03:55:00', '2023-01-10', 1, '/ruta/foto48.jpg'),
(49, 'Susurros del Bosque', 6, '04:20:00', '2023-07-20', 1, '/ruta/foto49.jpg'),
(50, 'Amanecer en la Playa', 5, '03:30:00', '2022-09-30', 1, '/ruta/foto50.jpg'),
(51, 'Vuelo Nocturno', 2, '04:05:00', '2023-02-28', 1, '/ruta/foto51.jpg'),
(52, 'Ritmo del Verano', 8, '03:20:00', '2023-05-12', 1, '/ruta/foto52.jpg'),
(53, 'Canción del Viaje', 1, '04:40:00', '2022-11-15', 1, '/ruta/foto53.jpg'),
(54, 'Luces del Pasado', 3, '03:45:00', '2023-08-30', 1, '/ruta/foto54.jpg'),
(55, 'Aurora del Desierto', 4, '04:15:00', '2023-03-05', 1, '/ruta/foto55.jpg'),
(56, 'Ritmo del Alma', 8, '03:55:00', '2023-06-25', 1, '/ruta/foto56.jpg'),
(57, 'Suspiros del Mar', 5, '03:25:00', '2022-10-20', 1, '/ruta/foto57.jpg'),
(58, 'Brillo del Anochecer', 2, '04:30:00', '2023-01-22', 1, '/ruta/foto58.jpg'),
(59, 'Canción del Crepúsculo', 7, '04:05:00', '2023-09-05', 1, '/ruta/foto59.jpg'),
(60, 'Melodía del Atardecer', 1, '05:10:00', '2022-12-12', 1, '/ruta/foto60.jpg'),
(61, 'Susurros del Viento', 6, '04:15:00', '2023-07-30', 1, '/ruta/foto61.jpg'),
(62, 'Ritmo de la Selva', 2, '03:45:00', '2023-03-02', 1, '/ruta/foto62.jpg'),
(63, 'Canto de la Montaña', 3, '04:20:00', '2022-09-10', 1, '/ruta/foto63.jpg'),
(64, 'Estrellas en el Mar', 5, '03:55:00', '2023-04-18', 1, '/ruta/foto64.jpg'),
(65, 'Reflejos del Cielo', 4, '04:30:00', '2023-01-05', 1, '/ruta/foto65.jpg'),
(66, 'Amanecer en la Ciudad', 7, '03:40:00', '2023-08-15', 1, '/ruta/foto66.jpg'),
(67, 'Ritmo del Invierno', 8, '03:25:00', '2022-10-28', 1, '/ruta/foto67.jpg'),
(68, 'Canción del Otoño', 1, '04:50:00', '2023-05-22', 1, '/ruta/foto68.jpg'),
(69, 'Melodía del Río', 6, '04:05:00', '2022-11-28', 1, '/ruta/foto69.jpg'),
(70, 'Suspiros del Bosque', 3, '03:35:00', '2023-02-15', 1, '/ruta/foto70.jpg'),
(71, 'Aurora del Bosque', 4, '04:20:00', '2023-09-18', 1, '/ruta/foto71.jpg'),
(72, 'Luz de las Estrellas', 5, '03:45:00', '2022-12-30', 1, '/ruta/foto72.jpg'),
(73, 'Canto de la Libertad', 2, '04:10:00', '2023-07-02', 1, '/ruta/foto73.jpg'),
(74, 'Reflejos del Amanecer', 1, '04:25:00', '2023-04-05', 1, '/ruta/foto74.jpg'),
(75, 'Canción del Mar', 6, '03:55:00', '2022-08-20', 1, '/ruta/foto75.jpg'),
(76, 'Ritmo del Viento', 3, '03:40:00', '2023-01-25', 1, '/ruta/foto76.jpg'),
(77, 'Melodía del Amanecer', 4, '04:30:00', '2023-06-10', 1, '/ruta/foto77.jpg'),
(78, 'Sinfonía del Crepúsculo', 7, '03:45:00', '2022-11-08', 1, '/ruta/foto78.jpg'),
(79, 'Canción del Universo', 8, '04:20:00', '2023-03-20', 1, '/ruta/foto79.jpg'),
(80, 'Brillo de la Noche', 1, '03:35:00', '2022-09-15', 1, '/ruta/foto80.jpg'),
(81, 'Canto de las Estrellas', 5, '04:10:00', '2023-04-30', 1, '/ruta/foto81.jpg'),
(82, 'Ritmo del Cielo', 3, '03:55:00', '2022-11-05', 1, '/ruta/foto82.jpg'),
(83, 'Melodía del Viento', 6, '04:20:00', '2023-07-15', 1, '/ruta/foto83.jpg'),
(84, 'Suspiros del Océano', 4, '03:45:00', '2023-02-10', 1, '/ruta/foto84.jpg'),
(85, 'Aurora del Horizonte', 2, '04:30:00', '2023-09-30', 1, '/ruta/foto85.jpg'),
(86, 'Canción del Sol', 1, '03:40:00', '2022-10-12', 1, '/ruta/foto86.jpg'),
(87, 'Ritmo del Trópico', 8, '04:05:00', '2023-05-25', 1, '/ruta/foto87.jpg'),
(88, 'Melodía del Corazón', 7, '04:20:00', '2023-01-18', 1, '/ruta/foto88.jpg'),
(89, 'Estrellas en la Noche', 5, '03:55:00', '2022-12-05', 1, '/ruta/foto89.jpg'),
(90, 'Canción del Océano', 6, '04:10:00', '2023-06-20', 1, '/ruta/foto90.jpg'),
(91, 'Brillo del Día', 3, '03:35:00', '2022-11-18', 1, '/ruta/foto91.jpg'),
(92, 'Sinfonía del Bosque', 4, '04:30:00', '2023-04-02', 1, '/ruta/foto92.jpg'),
(93, 'Ritmo del Amanecer', 2, '03:45:00', '2023-08-28', 1, '/ruta/foto93.jpg'),
(94, 'Melodía del Río', 1, '04:20:00', '2022-09-15', 1, '/ruta/foto94.jpg'),
(95, 'Canto de la Noche', 7, '03:55:00', '2023-01-30', 1, '/ruta/foto95.jpg'),
(96, 'Susurros del Cielo', 6, '04:10:00', '2023-06-05', 1, '/ruta/foto96.jpg'),
(97, 'Aurora del Mar', 5, '03:35:00', '2022-10-20', 1, '/ruta/foto97.jpg'),
(98, 'Ritmo del Silencio', 3, '04:20:00', '2023-03-18', 1, '/ruta/foto98.jpg'),
(99, 'Melodía del Despertar', 4, '03:45:00', '2022-12-12', 1, '/ruta/foto99.jpg'),
(100, 'Canción de la Montaña', 1, '04:30:00', '2023-07-25', 1, '/ruta/foto100.jpg'),
(101, 'Suspiros del Horizonte', 2, '03:55:00', '2023-02-10', 1, '/ruta/foto101.jpg'),
(102, 'Aurora del Cielo', 4, '04:20:00', '2022-11-28', 1, '/ruta/foto102.jpg'),
(103, 'Canción del Viento', 6, '03:45:00', '2023-06-15', 1, '/ruta/foto103.jpg'),
(104, 'Ritmo del Atardecer', 8, '04:10:00', '2023-01-05', 1, '/ruta/foto104.jpg'),
(105, 'Melodía del Crepúsculo', 1, '03:35:00', '2022-10-20', 1, '/ruta/foto105.jpg'),
(106, 'Brillo de la Luna', 5, '04:20:00', '2023-07-02', 1, '/ruta/foto106.jpg'),
(107, 'Canción del Amanecer', 3, '03:45:00', '2023-02-28', 1, '/ruta/foto107.jpg'),
(108, 'Ritmo del Mar', 7, '04:30:00', '2022-12-15', 1, '/ruta/foto108.jpg'),
(109, 'Melodía del Océano', 2, '03:55:00', '2023-09-10', 1, '/ruta/foto109.jpg'),
(110, 'Aurora del Alma', 1, '04:20:00', '2022-11-30', 1, '/ruta/foto110.jpg'),
(111, 'Canción del Vuelo', 8, '03:45:00', '2023-06-25', 1, '/ruta/foto111.jpg'),
(112, 'Ritmo de las Olas', 4, '04:10:00', '2023-01-10', 1, '/ruta/foto112.jpg'),
(113, 'Melodía del Destino', 6, '03:35:00', '2022-10-18', 1, '/ruta/foto113.jpg'),
(114, 'Canto del Silencio', 2, '04:20:00', '2023-07-05', 1, '/ruta/foto114.jpg'),
(115, 'Susurros del Tiempo', 3, '03:45:00', '2023-02-20', 1, '/ruta/foto115.jpg'),
(116, 'Aurora del Horizonte', 5, '04:30:00', '2022-12-28', 1, '/ruta/foto116.jpg'),
(117, 'Canción del Bosque', 1, '03:55:00', '2023-09-15', 1, '/ruta/foto117.jpg'),
(118, 'Ritmo del Río', 7, '04:20:00', '2022-11-30', 1, '/ruta/foto118.jpg'),
(119, 'Melodía del Viaje', 8, '03:45:00', '2023-06-10', 1, '/ruta/foto119.jpg'),
(120, 'Brillo del Universo', 6, '04:10:00', '2023-01-25', 1, '/ruta/foto120.jpg'),
(121, 'Canción del Destino', 3, '03:35:00', '2022-10-18', 1, '/ruta/foto121.jpg'),
(122, 'Ritmo del Camino', 4, '04:20:00', '2023-07-05', 1, '/ruta/foto122.jpg'),
(123, 'Melodía de la Esperanza', 5, '03:45:00', '2023-02-20', 1, '/ruta/foto123.jpg'),
(124, 'Aurora del Sueño', 2, '04:30:00', '2022-12-28', 1, '/ruta/foto124.jpg'),
(125, 'Canción del Despertar', 1, '03:55:00', '2023-09-15', 1, '/ruta/foto125.jpg'),
(126, 'Ritmo del Corazón', 8, '04:20:00', '2022-11-30', 1, '/ruta/foto126.jpg'),
(127, 'Melodía de la Libertad', 6, '03:45:00', '2023-06-10', 1, '/ruta/foto127.jpg'),
(128, 'Brillo del Amor', 7, '04:10:00', '2023-01-25', 1, '/ruta/foto128.jpg'),
(129, 'Canción del Mar', 5, '03:35:00', '2022-10-18', 1, '/ruta/foto129.jpg'),
(130, 'Ritmo de la Vida', 4, '04:20:00', '2023-07-05', 1, '/ruta/foto130.jpg'),
(131, 'Melodía del Espíritu', 3, '03:45:00', '2023-02-20', 1, '/ruta/foto131.jpg'),
(132, 'Aurora de la Pasión', 2, '04:30:00', '2022-12-28', 1, '/ruta/foto132.jpg'),
(133, 'Canción de la Felicidad', 1, '03:55:00', '2023-09-15', 1, '/ruta/foto133.jpg'),
(134, 'Ritmo del Deseo', 8, '04:20:00', '2022-11-30', 1, '/ruta/foto134.jpg'),
(135, 'Melodía del Amor', 6, '03:45:00', '2023-06-10', 1, '/ruta/foto135.jpg'),
(136, 'Brillo del Corazón', 7, '04:10:00', '2023-01-25', 1, '/ruta/foto136.jpg'),
(137, 'Canción de la Noche', 5, '03:35:00', '2022-10-18', 1, '/ruta/foto137.jpg'),
(138, 'Ritmo de la Pasión', 4, '04:20:00', '2023-07-05', 1, '/ruta/foto138.jpg'),
(139, 'Melodía de la Vida', 3, '03:45:00', '2023-02-20', 1, '/ruta/foto139.jpg'),
(140, 'Aurora de la Alegría', 2, '04:30:00', '2022-12-28', 1, '/ruta/foto140.jpg'),
(141, 'Canción del Sueño', 1, '03:55:00', '2023-09-15', 1, '/ruta/foto141.jpg'),
(142, 'Ritmo de la Imaginación', 8, '04:20:00', '2022-11-30', 1, '/ruta/foto142.jpg'),
(143, 'Melodía del Silencio', 6, '03:45:00', '2023-06-10', 1, '/ruta/foto143.jpg'),
(144, 'Brillo del Pensamiento', 7, '04:10:00', '2023-01-25', 1, '/ruta/foto144.jpg'),
(145, 'Canción del Recuerdo', 5, '03:35:00', '2022-10-18', 1, '/ruta/foto145.jpg'),
(146, 'Ritmo de la Inspiración', 4, '04:20:00', '2023-07-05', 1, '/ruta/foto146.jpg'),
(147, 'Melodía de la Creatividad', 3, '03:45:00', '2023-02-20', 1, '/ruta/foto147.jpg'),
(148, 'Aurora del Conocimiento', 2, '04:30:00', '2022-12-28', 1, '/ruta/foto148.jpg'),
(149, 'Canción del Éxito', 1, '03:55:00', '2023-09-15', 1, '/ruta/foto149.jpg'),
(150, 'Ritmo de la Victoria', 8, '04:20:00', '2022-11-30', 1, '/ruta/foto150.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`ID`, `usuario_id`, `cancion_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 1, 11),
(12, 2, 12),
(13, 3, 13),
(14, 4, 14),
(15, 5, 15),
(16, 6, 16),
(17, 7, 17),
(18, 8, 18),
(19, 9, 19),
(20, 10, 20),
(21, 1, 21),
(22, 2, 22),
(23, 3, 23),
(24, 4, 24),
(25, 5, 25),
(26, 6, 26),
(27, 7, 27),
(28, 8, 28),
(29, 9, 29),
(30, 10, 30),
(31, 1, 31),
(32, 2, 32),
(33, 3, 33),
(34, 4, 34),
(35, 5, 35),
(36, 6, 36),
(37, 7, 37),
(38, 8, 38),
(39, 9, 39),
(40, 10, 40),
(41, 1, 41),
(42, 2, 42),
(43, 3, 43),
(44, 4, 44),
(45, 5, 45),
(46, 6, 46),
(47, 7, 47),
(48, 8, 48),
(49, 9, 49),
(50, 10, 50),
(51, 1, 51),
(52, 2, 52),
(53, 3, 53),
(54, 4, 54),
(55, 5, 55),
(56, 6, 56),
(57, 7, 57),
(58, 8, 58),
(59, 9, 59),
(60, 10, 60),
(61, 1, 61),
(62, 2, 62),
(63, 3, 63),
(64, 4, 64),
(65, 5, 65),
(66, 6, 66),
(67, 7, 67),
(68, 8, 68),
(69, 9, 69),
(70, 10, 70),
(71, 1, 71),
(72, 2, 72),
(73, 3, 73),
(74, 4, 74),
(75, 5, 75),
(76, 6, 76),
(77, 7, 77),
(78, 8, 78),
(79, 9, 79),
(80, 10, 80),
(81, 1, 81),
(82, 2, 82),
(83, 3, 83),
(84, 4, 84),
(85, 5, 85),
(86, 6, 86),
(87, 7, 87),
(88, 8, 88),
(89, 9, 89),
(90, 10, 90),
(91, 1, 91),
(92, 2, 92),
(93, 3, 93),
(94, 4, 94),
(95, 5, 95),
(96, 6, 96),
(97, 7, 97),
(98, 8, 98),
(99, 9, 99),
(100, 10, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`ID`, `nombre`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip Hop'),
(4, 'Jazz'),
(5, 'Reggae'),
(6, 'Blues'),
(7, 'Electronic'),
(8, 'Classical');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`ID`, `Nombre`, `precio`) VALUES
(1, 'Premium Plus', 9.99),
(2, 'Family Unlimited', 14.99),
(3, 'Ultimate Sound', 19.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`ID`, `nombre`, `duracion`, `total_canciones`, `descripcion`, `publico`) VALUES
(1, 'Lista de Éxitos', '02:30:00', 20, 'Las canciones más populares del momento', 1),
(2, 'Relax Total', '03:00:00', 15, 'Playlist perfecta para relajarse y desconectar', 1),
(3, 'Fiesta Latina', '01:45:00', 10, '¡La mejor música para bailar toda la noche!', 1),
(4, 'Canciones del Recuerdo', '02:15:00', 18, 'Clásicos que nunca pasan de moda', 1),
(5, 'Éxitos del Rock', '02:45:00', 25, 'Las mejores canciones de rock de todos los tiempos', 1),
(6, 'Viaje por el Mundo', '03:30:00', 30, 'Descubre música de diferentes culturas y países', 1),
(7, 'Electro House Party', '01:55:00', 12, '¡Prepárate para una fiesta llena de energía!', 1),
(8, 'Lista de Éxitos del Verano', '02:20:00', 22, 'Las canciones más pegajosas de la temporada', 1),
(9, 'Música Clásica Relajante', '03:45:00', 20, 'Perfecta para estudiar o meditar', 1),
(10, 'Jazz Nocturno', '02:00:00', 15, 'Disfruta de los mejores temas de jazz para la noche', 1),
(11, 'Pop en Español', '02:30:00', 20, 'Los éxitos más recientes de la música pop en español', 1),
(12, 'Retro Party Hits', '02:15:00', 18, 'Revive los mejores momentos con estos clásicos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `ID` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`ID`, `playlist_id`, `cancion_id`, `usuario_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 1),
(12, 12, 12, 2),
(13, 1, 13, 3),
(14, 2, 14, 4),
(15, 3, 15, 5),
(16, 4, 16, 6),
(17, 5, 17, 7),
(18, 6, 18, 8),
(19, 7, 19, 9),
(20, 8, 20, 10),
(21, 9, 21, 1),
(22, 10, 22, 2),
(23, 11, 23, 3),
(24, 12, 24, 4),
(25, 1, 25, 5),
(26, 2, 26, 6),
(27, 3, 27, 7),
(28, 4, 28, 8),
(29, 5, 29, 9),
(30, 6, 30, 10),
(31, 7, 31, 1),
(32, 8, 32, 2),
(33, 9, 33, 3),
(34, 10, 34, 4),
(35, 11, 35, 5),
(36, 12, 36, 6),
(37, 1, 37, 7),
(38, 2, 38, 8),
(39, 3, 39, 9),
(40, 4, 40, 10),
(41, 5, 41, 1),
(42, 6, 42, 2),
(43, 7, 43, 3),
(44, 8, 44, 4),
(45, 9, 45, 5),
(46, 10, 46, 6),
(47, 11, 47, 7),
(48, 12, 48, 8),
(49, 1, 49, 9),
(50, 2, 50, 10),
(51, 3, 51, 1),
(52, 4, 52, 2),
(53, 5, 53, 3),
(54, 6, 54, 4),
(55, 7, 55, 5),
(56, 8, 56, 6),
(57, 9, 57, 7),
(58, 10, 58, 8),
(59, 11, 59, 9),
(60, 12, 60, 10),
(61, 1, 61, 1),
(62, 2, 62, 2),
(63, 3, 63, 3),
(64, 4, 64, 4),
(65, 5, 65, 5),
(66, 6, 66, 6),
(67, 7, 67, 7),
(68, 8, 68, 8),
(69, 9, 69, 9),
(70, 10, 70, 10),
(71, 11, 71, 1),
(72, 12, 72, 2),
(73, 1, 73, 3),
(74, 2, 74, 4),
(75, 3, 75, 5),
(76, 4, 76, 6),
(77, 5, 77, 7),
(78, 6, 78, 8),
(79, 7, 79, 9),
(80, 8, 80, 10),
(81, 9, 81, 1),
(82, 10, 82, 2),
(83, 11, 83, 3),
(84, 12, 84, 4),
(85, 1, 85, 5),
(86, 2, 86, 6),
(87, 3, 87, 7),
(88, 4, 88, 8),
(89, 5, 89, 9),
(90, 6, 90, 10),
(91, 7, 91, 1),
(92, 8, 92, 2),
(93, 9, 93, 3),
(94, 10, 94, 4),
(95, 11, 95, 5),
(96, 12, 96, 6),
(97, 1, 97, 7),
(98, 2, 98, 8),
(99, 3, 99, 9),
(100, 4, 100, 10),
(101, 5, 101, 1),
(102, 6, 102, 2),
(103, 7, 103, 3),
(104, 8, 104, 4),
(105, 9, 105, 5),
(106, 10, 106, 6),
(107, 11, 107, 7),
(108, 12, 108, 8),
(109, 1, 109, 9),
(110, 2, 110, 10),
(111, 3, 111, 1),
(112, 4, 112, 2),
(113, 5, 113, 3),
(114, 6, 114, 4),
(115, 7, 115, 5),
(116, 8, 116, 6),
(117, 9, 117, 7),
(118, 10, 118, 8),
(119, 11, 119, 9),
(120, 12, 120, 10),
(121, 1, 121, 1),
(122, 2, 122, 2),
(123, 3, 123, 3),
(124, 4, 124, 4),
(125, 5, 125, 5),
(126, 6, 126, 6),
(127, 7, 127, 7),
(128, 8, 128, 8),
(129, 9, 129, 9),
(130, 10, 130, 10),
(131, 11, 131, 1),
(132, 12, 132, 2),
(133, 1, 133, 3),
(134, 2, 134, 4),
(135, 3, 135, 5),
(136, 4, 136, 6),
(137, 5, 137, 7),
(138, 6, 138, 8),
(139, 7, 139, 9),
(140, 8, 140, 10),
(141, 9, 141, 1),
(142, 10, 142, 2),
(143, 11, 143, 3),
(144, 12, 144, 4),
(145, 1, 145, 5),
(146, 2, 146, 6),
(147, 3, 147, 7),
(148, 4, 148, 8),
(149, 5, 149, 9),
(150, 6, 150, 10),
(151, 7, 1, 1),
(152, 8, 2, 2),
(153, 9, 3, 3),
(154, 10, 4, 4),
(155, 11, 5, 5),
(156, 12, 6, 6),
(157, 1, 7, 7),
(158, 2, 8, 8),
(159, 3, 9, 9),
(160, 4, 10, 10),
(161, 5, 11, 1),
(162, 6, 12, 2),
(163, 7, 13, 3),
(164, 8, 14, 4),
(165, 9, 15, 5),
(166, 10, 16, 6),
(167, 11, 17, 7),
(168, 12, 18, 8),
(169, 1, 19, 9),
(170, 2, 20, 10),
(171, 3, 21, 1),
(172, 4, 22, 2),
(173, 5, 23, 3),
(174, 6, 24, 4),
(175, 7, 25, 5),
(176, 8, 26, 6),
(177, 9, 27, 7),
(178, 10, 28, 8),
(179, 11, 29, 9),
(180, 12, 30, 10),
(181, 1, 31, 1),
(182, 2, 32, 2),
(183, 3, 33, 3),
(184, 4, 34, 4),
(185, 5, 35, 5),
(186, 6, 36, 6),
(187, 7, 37, 7),
(188, 8, 38, 8),
(189, 9, 39, 9),
(190, 10, 40, 10),
(191, 11, 41, 1),
(192, 12, 42, 2),
(193, 1, 43, 3),
(194, 2, 44, 4),
(195, 3, 45, 5),
(196, 4, 46, 6),
(197, 5, 47, 7),
(198, 6, 48, 8),
(199, 7, 49, 9),
(200, 8, 50, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', 2),
(2, 'María López', 'maria.lopez@example.com', 3),
(3, 'Carlos García', 'carlos.garcia@example.com', 1),
(4, 'Ana Martínez', 'ana.martinez@example.com', 2),
(5, 'Pedro Rodríguez', 'pedro.rodriguez@example.com', 3),
(6, 'Laura Sánchez', 'laura.sanchez@example.com', 1),
(7, 'Pablo González', 'pablo.gonzalez@example.com', 2),
(8, 'Sofía Ramírez', 'sofia.ramirez@example.com', 3),
(9, 'Luis Hernández', 'luis.hernandez@example.com', 1),
(10, 'Lucía Gómez', 'lucia.gomez@example.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`ID`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`ID`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`ID`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
