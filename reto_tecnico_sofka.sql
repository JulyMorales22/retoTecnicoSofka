-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-12-2021 a las 17:54:21
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reto_tecnico_sofka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `descripcion`) VALUES
(1, 'principiante'),
(2, 'intermedio'),
(3, 'avanzado'),
(4, 'experto'),
(5, 'pro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dificultad`
--

CREATE TABLE `dificultad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dificultad`
--

INSERT INTO `dificultad` (`id`, `descripcion`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id` int(11) NOT NULL,
  `premioAcumulado` int(11) NOT NULL,
  `ronda` int(20) NOT NULL,
  `id_jugador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id`, `premioAcumulado`, `ronda`, `id_jugador`) VALUES
(2, 1000000, 2, 7),
(3, 500000, 2, 9),
(4, 1000000, 3, 10),
(5, 500000, 1, 12),
(6, 500000, 2, 13),
(7, 1500000, 2, 13),
(8, 1500000, 3, 15),
(9, 3000000, 4, 16),
(10, 3000000, 4, 17),
(11, 500000, 2, 19),
(12, 500000, 2, 20),
(13, 1500000, 3, 21),
(14, 8000000, 6, 26),
(15, 0, 1, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `numeroIdentificacion` varchar(30) NOT NULL,
  `premioAcumulado` int(11) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id`, `nombres`, `numeroIdentificacion`, `premioAcumulado`, `id_pregunta`) VALUES
(1, 'July morales', '1038140021', NULL, NULL),
(2, 'JuanMorales', '12578', NULL, NULL),
(3, 'Teresa Muñoz', '56858', NULL, NULL),
(4, 'Andres Morales', '4521', NULL, NULL),
(5, 'Lolo', '54', NULL, NULL),
(6, 'lolito', '54', NULL, NULL),
(7, 'Lol', '254', NULL, NULL),
(8, 'ajahhs', '5464', NULL, NULL),
(9, 'ujssh', '488', NULL, NULL),
(10, 'poppj', '155478', NULL, NULL),
(11, 'ggdjourhebbe', '5778', NULL, NULL),
(12, 'hdgdh', 'haags', NULL, NULL),
(13, 'Albeiro', '1589', NULL, NULL),
(14, 'juancho', '48756', NULL, NULL),
(15, 'juancho', '1038140021', NULL, NULL),
(16, 'Aura', '12544', NULL, NULL),
(17, 'LP', '4155', NULL, NULL),
(18, 'PL', '5487', NULL, NULL),
(19, 'cualaqquie', 'ahs', NULL, NULL),
(20, 'pipe', '123', NULL, NULL),
(21, 'que', 'onda', NULL, NULL),
(22, 'gaagga', 'ajhagsud', NULL, NULL),
(23, 'lolita', 'ahshd', NULL, NULL),
(24, 'lelepe', 'hhgh', NULL, NULL),
(25, 'porfa', 'jhshs', NULL, NULL),
(26, 'pepe', 'ahags', NULL, NULL),
(27, 'a', 'b', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL,
  `opcionesRespuesta` varchar(800) NOT NULL,
  `id_pregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `opcionesRespuesta`, `id_pregunta`) VALUES
(1, 'Programación orientada a objetos ', 1),
(2, 'Programación operacional de objetivos', 1),
(3, 'Programación opcional de objetos ', 1),
(4, 'ninguna de las anteriores ', 1),
(5, 'Tienen inicio y fin', 2),
(6, 'esta compuesto por una serie de pasos ordenados', 2),
(7, 'Cada paso debe ser claro ', 2),
(8, 'todas las anteriores  ', 2),
(9, 'conjunto ordenado y finito de operaciones simples a través del cual podemos hallar la solución a un problema ', 3),
(10, 'Es un carácter ', 3),
(11, 'es una posición en memoria donde se puede almacenar un valor', 3),
(12, 'todas las anteriores', 3),
(13, 'conjunto ordenado y finito de operaciones simples a través del cual podemos hallar la solución a un problema', 4),
(14, 'es una representación narrativa de los pasos que debe seguir un algoritmo', 4),
(15, 'es una posición en memoria donde se puede almacenar un valor ', 4),
(16, 'ninguna de las anteriores', 4),
(17, 'darle un valor inicial después que se ha declarado y antes de que se ejecuten las sentencias en las que se emplean ', 5),
(18, 'agregarle al principio la palabra init', 5),
(19, 'darle un tipo de dato', 5),
(20, 'todas las anteriores', 5),
(21, 'Es darle un valor inicial al lenguaje que estas utilizando', 6),
(22, 'es una representación narrativa de los pasos que debe seguir un algoritmo', 6),
(23, 'son algunos tipo de datos', 6),
(24, 'Son una forma de clasificar los lenguaje de programación en función de sus caracteristicas ', 6),
(25, 'Orientado a objetos', 7),
(26, 'procedimental', 7),
(27, 'funcional', 7),
(28, 'todas las anteriores ', 7),
(29, '&', 8),
(30, '||', 8),
(31, '!=', 8),
(32, 'todas las anteriores ', 8),
(33, 'Comparación', 9),
(34, 'Asignar un valor ', 9),
(35, 'Concatenación ', 9),
(36, 'ninguna de las anteriores ', 9),
(37, 'es un conjunto de archivos que se utilizan para desarrollar software, contienen código y datos', 10),
(38, 'son símbolos que indican al compilador que realice operaciones lógicas o matemáticas', 10),
(39, 'se utilizan para formar expresiones en las que se asigna el valor de una expresión a un identificador ', 10),
(40, 'ninguna de las anteriores', 10),
(41, 'es una unidad que tiene un comportamiento y una identidad', 11),
(42, 'es un tipo o grupo de objetos donde se definen las caracteristicas y comportamientos que tienen en común, también se podría decir que es el molde o plantilla ', 11),
(43, 'es un conjunto de archivos que se utilizan para desarrollar software', 11),
(44, 'es un paquete donde hay símbolos de operadores lógicos ', 11),
(45, 'son operadores lógicos', 12),
(46, 'son operadores que utilizamos para asignar', 12),
(47, 'Es una unidad que tiene caracteristicas propias, un comportamiento y una identidad ', 12),
(48, 'todas las anteriores ', 12),
(49, 'boolean', 13),
(50, 'int', 13),
(51, 'float', 13),
(52, 'todas las anteriores ', 13),
(53, 'son los datos de un lenguaje', 14),
(54, 'es la definición de una característica de los objetos de una clase', 14),
(55, 'conjunto ordenado y finito de operaciones simples a través del cual podemos hallar la solución a un problema', 14),
(56, 'ninguna de las anteriores', 14),
(57, 'representan acciones, comportamientos o servicios de los objetos', 15),
(58, 'se deben tener en cuenta el nombre, si necesita parámetros, tipo de retorno ', 15),
(59, 'en la POO cada método no debe realizar muchas acciones, solo debe realizar una función concreta', 15),
(60, 'todas las anteriores ', 15),
(61, 'cuando se pide el mismo servicio a diferentes objetos y cada uno de ellos puede hacerlo de forma diferente', 16),
(62, 'se tiene un mismo método pero que cambia su comportamiento dependiendo de los parámetros que recibe ', 16),
(63, 'representan acciones, comportamientos o servicios de los objetos', 16),
(64, 'ninguna de las anteriores ', 16),
(65, 'Cuando se pide el mismo servicio a diferentes objetos y cada uno de ellos puede hacerlo de forma diferente, se comporta de forma diferente ', 17),
(66, 'se tiene un mismo método pero que cambia su comportamiento dependiendo de los parámetros que recibe', 17),
(67, 'crear una clase padre, la cual heredara tanto sus propiedades o atributos y sus métodos ', 17),
(68, 'todas las anteriores', 17),
(69, 'representación de  acciones, comportamientos o servicios de los objetos', 18),
(70, 'crear una clase padre, la cual heredara tanto sus propiedades o atributos y sus métodos ', 18),
(71, 'se tiene un mismo método pero que cambia su comportamiento dependiendo de los parámetros que recibe', 18),
(72, 'ninguna de las anteriores ', 18),
(73, 'es una colección donde los elementos están organizados uno detrás de otro (en secuencia)', 19),
(74, 'posiciones comienzan en 0', 19),
(75, 'podemos personalizar la colección definiendo el tipo de objeto que se almacenara', 19),
(76, 'todas las anteriores ', 19),
(77, 'DSL', 20),
(78, 'SQL', 20),
(79, 'PL', 20),
(80, 'Query', 20),
(81, 'API(Application programming interface )', 21),
(82, 'facilita el trabajo de los desarrolladores proporcionándoles clases que ya están construidas y que solo deben integrar en sus programas sin necesidad de programar todo su comportamiento', 21),
(83, 'se debe usar la sentencia import antes del encabezado de la clase para hacer uso de ellas ', 21),
(84, 'todas las anteriores ', 21),
(85, 'esta diseñado para equipos que dividen su trabajo que se pueden completar en iteracciones de tiempo llamadas sprints que no superan un mes ', 22),
(86, 'se manejan reuniones diarias de 15 minutos ', 22),
(87, 'se tienen  roles como: product owner, developers y scrum master', 22),
(88, 'todas las anteriores ', 22),
(89, 'Contiene toda la parte lógica del programa y se conecta con los servidores – la parte del programa que tiene interacción con el usuario ', 23),
(90, 'la parte del programa que tiene interacción con el usuario -  Contiene toda la parte lógica del programa y se conecta con los servidores', 23),
(91, 'podemos usar lenguajes como: Python,node.js, Go, Ruby – Html, css, JavaScript', 23),
(92, '1 Y 3 son correctas  ', 23),
(93, 'es un software de control de versiones', 24),
(94, 'su propósito es llevar registro de los cambios en archivos de computadora incluyendo coordinar el trabajo que varias personas realizan sobre archivos compartidos en un repositorio de código', 24),
(95, 'algunos de los comandos básicos son: git init, git add, git commit -m “mensaje”, git push origin <nombre de la rama>, git pull…', 24),
(96, 'todas las anteriores', 24),
(97, 'Es un esquema o marco de trabajo que ofrece una estructura base para elaborar un proyecto con objetivos específicos ', 25),
(98, 'simplifican las tareas y procesos', 25),
(99, 'permite agilizar procesos de desarrollo porque podemos reutilizar herramientas o modulos', 25),
(100, 'todas las anteriores ', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `valorPremio` int(11) NOT NULL,
  `id_dificultad` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `lista_opciones` int(11) DEFAULT NULL,
  `opcion_correcta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `descripcion`, `valorPremio`, `id_dificultad`, `id_categoria`, `lista_opciones`, `opcion_correcta`) VALUES
(1, '¿Que significa POO?', 500000, 1, 1, NULL, 1),
(2, 'Son caracteristicas de un buen algoritmo…', 500000, 1, 1, NULL, 8),
(3, '¿Que es un algoritmo?', 500000, 1, 1, NULL, 9),
(4, '¿Que es una variable?', 500000, 1, 1, NULL, 15),
(5, 'Para inicializar una variable se debe…', 500000, 1, 1, NULL, 17),
(6, '¿Que son los paradigmas de programación?', 1000000, 2, 2, NULL, 24),
(7, 'algunos de estos son paradigmas de programación…', 1000000, 2, 2, NULL, 28),
(8, 'Son operadores lógicos en java', 1000000, 2, 2, NULL, 32),
(9, '¿en java el operando = indica ?', 1000000, 2, 2, NULL, 34),
(10, '¿Que son las librerías?', 1000000, 2, 2, NULL, 37),
(11, '¿Que son clases en POO ?', 1500000, 3, 3, NULL, 42),
(12, '¿Que son objetos  en POO?', 1500000, 3, 3, NULL, 47),
(13, 'Algunos Tipos de datos primitivos son…', 1500000, 3, 3, NULL, 52),
(14, '¿Que son los atributos?', 1500000, 3, 3, NULL, 54),
(15, 'De los Métodos podemos decir que…', 1500000, 3, 3, NULL, 60),
(16, '¿polimorfismo por sobrecarga se presenta cuando?', 2000000, 4, 4, NULL, 62),
(17, '¿el polimorfismo por sobreescritura  es?', 2000000, 4, 4, NULL, 65),
(18, '¿que es herencia en POO?', 2000000, 4, 4, NULL, 70),
(19, 'de los ArrayList podemos decir que…', 2000000, 4, 4, NULL, 76),
(20, 'es un lenguaje que se utiliza para hacer consultas en una base de datos relacional', 2000000, 4, 4, NULL, 78),
(21, 'De las APIS de java podemos decir que...', 3000000, 5, 5, NULL, 84),
(22, 'de Scrum podemos decir que ', 3000000, 5, 5, NULL, 88),
(23, 'de backend  y frontend podemos decir respectivamente ', 3000000, 5, 5, NULL, 92),
(24, 'De git podemos decir que… ', 3000000, 5, 5, NULL, 96),
(25, 'De los frameworks podemos decir que ', 3000000, 5, 5, NULL, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premio`
--

CREATE TABLE `premio` (
  `id` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `premio`
--

INSERT INTO `premio` (`id`, `valor`) VALUES
(1, 500000),
(2, 1000000),
(3, 1500000),
(4, 2000000),
(5, 3000000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dificultad`
--
ALTER TABLE `dificultad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jugador` (`id_jugador`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dificultad` (`id_dificultad`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `dificultad`
--
ALTER TABLE `dificultad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `premio`
--
ALTER TABLE `premio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `fk_id_pregunta` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`id_dificultad`) REFERENCES `dificultad` (`id`),
  ADD CONSTRAINT `pregunta_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `pregunta_ibfk_3` FOREIGN KEY (`lista_opciones`) REFERENCES `opciones` (`id`),
  ADD CONSTRAINT `pregunta_ibfk_4` FOREIGN KEY (`opcion_correcta`) REFERENCES `opciones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
