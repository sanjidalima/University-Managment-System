-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2025 a las 03:38:24
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ums`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attn`
--

CREATE TABLE `attn` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `attn`
--

INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(206, 12103072, 'absent', '2021-04-11'),
(207, 13103072, '', '0000-00-00'),
(208, 13203072, '', '0000-00-00'),
(209, 14103053, '', '0000-00-00'),
(210, 14203072, '', '0000-00-00'),
(211, 12103072, 'absent', '2021-06-05'),
(212, 13103072, 'absent', '2021-06-05'),
(213, 13203072, 'absent', '2021-06-05'),
(214, 14103053, 'present', '2021-06-05'),
(215, 14203072, 'absent', '2021-06-05'),
(216, 1454540, '', '0000-00-00'),
(217, 17699619, '', '0000-00-00'),
(218, 12103072, 'present', '2021-06-06'),
(219, 13103072, 'present', '2021-06-06'),
(220, 13203072, 'present', '2021-06-06'),
(221, 14103053, 'absent', '2021-06-06'),
(222, 14203072, 'absent', '2021-06-06'),
(223, 1454540, 'present', '2021-06-06'),
(224, 17699619, 'present', '2021-06-06'),
(225, 12103072, 'present', '2025-05-06'),
(226, 13103072, 'absent', '2025-05-06'),
(227, 13203072, 'absent', '2025-05-06'),
(228, 14103053, 'present', '2025-05-06'),
(229, 14203072, 'absent', '2025-05-06'),
(230, 1454540, 'present', '2025-05-06'),
(231, 17699619, 'absent', '2025-05-06'),
(232, 12103072, 'present', '2026-03-06'),
(233, 13103072, 'absent', '2026-03-06'),
(234, 13203072, 'absent', '2026-03-06'),
(235, 14103053, 'present', '2026-03-06'),
(236, 14203072, 'absent', '2026-03-06'),
(237, 1454540, 'absent', '2026-03-06'),
(238, 17699619, 'absent', '2026-03-06'),
(239, 12103072, 'present', '2026-03-03'),
(240, 13103072, 'absent', '2026-03-03'),
(241, 13203072, 'present', '2026-03-03'),
(242, 14103053, 'absent', '2026-03-03'),
(243, 14203072, 'present', '2026-03-03'),
(244, 1454540, 'present', '2026-03-03'),
(245, 17699619, 'absent', '2026-03-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `at_student`
--

CREATE TABLE `at_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `st_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `at_student`
--

INSERT INTO `at_student` (`id`, `name`, `st_id`) VALUES
(29, 'Hrithik Devnath', 12103072),
(30, 'Nabila Jannath', 13103072),
(31, 'Kushal Panthodash', 13203072),
(32, 'Rohit', 14103053),
(33, 'Halima Sadia Tabassum', 14203072),
(34, 'Chironto Rudro', 1454540),
(35, 'Sanjida Khanom', 17699619);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` int(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(1, 'Shathe', '202cb962ac59075b964b07152d234b70', 'Shathe', 'Shathe@gmail.com', '1986-04-01', 'Female', 'BIT, MIT', 900248750, 'Sylhet,Telihaor'),
(14, 'Lima', '202cb962ac59075b964b07152d234b70', 'Lima', 'lima@gmai.com', '2003-01-02', 'Female', 'BSc in CSE from NEUB', 1345765358, 'Sylhet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `result`
--

INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(28, 12103072, 95, 'DBMS', '1st'),
(29, 12103072, 92, 'DBMS Lab', '1st'),
(30, 12103072, 90, 'Mathematics', '1st'),
(31, 12103072, 80, 'Programming', '1st'),
(32, 12103072, 90, 'Programming Lab', '1st'),
(35, 12103072, 95, 'Physics', '2nd'),
(36, 12103072, 96, 'Mathematics', '2nd'),
(37, 12103072, 85, 'Chemistry', '2nd'),
(38, 12103072, 78, 'Psychology', '2nd'),
(39, 15103058, 96, 'DBMS', '1st'),
(40, 15103058, 98, 'DBMS Lab', '1st'),
(41, 15103058, 65, 'Mathematics', '1st'),
(42, 15103058, 90, 'Programming', '1st'),
(43, 15103058, 92, 'Programming Lab', '1st'),
(44, 15103058, 95, 'English', '2nd'),
(45, 15103058, 50, 'Physics', '2nd'),
(46, 15103058, 68, 'Chemistry', '2nd'),
(47, 15103058, 92, 'Psychology', '2nd'),
(48, 15103157, 89, 'DBMS', '1st'),
(49, 15103157, 90, 'DBMS Lab', '1st'),
(50, 15103157, 80, 'Mathematics', '1st'),
(51, 15103157, 95, 'English', '1st'),
(52, 16303053, 85, 'DBMS', '1st'),
(53, 15103053, 75, 'DBMS Lab', '1st'),
(54, 15103053, 40, 'Mathematics', '1st'),
(55, 15103053, 85, 'Programming', '1st'),
(56, 15103053, 90, 'Programming Lab', '1st'),
(57, 15103053, 87, 'English', '1st'),
(58, 15103053, 60, 'Physics', '1st'),
(59, 15103053, 65, 'Chemistry', '1st'),
(60, 15103053, 69, 'Psychology', '1st'),
(61, 17699619, 71, 'DBMS', '1st'),
(62, 17699619, 82, 'DBMS Lab', '1st'),
(63, 17699619, 65, 'Mathematics', '1st'),
(64, 17699619, 85, 'Programming', '1st'),
(65, 17699619, 86, 'Programming Lab', '1st'),
(66, 17699619, 87, 'English', '1st'),
(67, 17699619, 70, 'Physics', '1st'),
(68, 17699619, 75, 'Chemistry', '1st'),
(69, 17699619, 70, 'Psychology', '1st'),
(70, 123, 0, 'Mathematics', '1st'),
(71, 2147483647, 35, 'DBMS', '1st'),
(72, 2147483647, 70, 'Mathematics', '1st'),
(73, 2147483647, 81, 'Programming', '1st'),
(74, 2147483647, 76, 'Programming Lab', '1st');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `st_info`
--

CREATE TABLE `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(123, 'trina', '202cb962ac59075b964b07152d234b70', 'trina@gmail.com', '2003-01-02', 'cse', '01567545678', 'Female', 'poiy', NULL),
(12103072, 'Rana Mia', '250cf8b51c773f3f8dc8b4be867a9a02', 'Rana Mia@gmail.com', '1995-10-10', 'BIT', '7548884541', 'male', 'sylhet', 'F34FEDE2-0BE0-400A-82CC-2FCC984A21C4.png'),
(13103072, 'Tahia', '123', 'tahia@mail.com', '1995-10-10', 'BIT', '2457778450', 'female', 'sylhet', '7E230FB0-C157-4544-B270-97F3C8FDB1AA.png'),
(13203072, 'Tania', '123', 'tania@mail.com', '1995-10-10', 'MsCIT', '4570002480', 'female', 'Sylhet', '20DE853C-35DC-4D91-BB0F-BBAEB2388294.png'),
(14103053, 'Nayef', '202cb962ac59075b964b07152d234b70', 'nayef@mail.com', '1996-08-09', 'MIT', '97410000002', 'Male', 'Sylhet', 'FB637BF3-101A-4B7F-B365-5645CDF14AE4.png'),
(14203072, 'tabassum Sadia', '123', 'sadia@mail.com', '1995-10-10', 'BCSE', '3457854445', 'female', 'Sylhet', 'A048670B-178D-4D31-B802-B5B7DBF00E78.png'),
(15103023, 'Hrithik', '202cb962ac59075b964b07152d234b70', 'Hrithik@mail.com', '1996-08-09', 'DBMS', '7541112450', 'Male', '3444  Tree Top Lane', 'FFE697B5-F021-41FA-8267-53496890A002.png'),
(15103052, 'Chironto Rudro', '123', 'Chironto@mail.com', '1995-10-10', 'BCSE', '8542145780', 'Male', 'Sylhet', 'C9E6BD3E-8306-4385-BFE1-517DF1ACC505.png'),
(2147483647, 'Sanjida Khanom', '501cc81c72e68c7d13d7e06d84130d81', 'sanjida@gmail.com', '2003-01-02', 'CSE', '01732543568', 'Female', 'Varthokhola', '5BCCFF8A-DA47-5630-C756-B42616A49CDC.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `attn`
--
ALTER TABLE `attn`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `at_student`
--
ALTER TABLE `at_student`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `attn`
--
ALTER TABLE `attn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT de la tabla `at_student`
--
ALTER TABLE `at_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
