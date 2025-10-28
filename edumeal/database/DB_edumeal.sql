-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-10-2025 a las 16:50:57
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `edumeal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Usuario`, `Contraseña`) VALUES
('Admin', 'ID4L3CI0v4asquez#01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `Id_Curso` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Grado` int(11) NOT NULL,
  PRIMARY KEY (`Id_Curso`),
  KEY `Id_Grado` (`Id_Grado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1103 ;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Id_Curso`, `Id_Grado`) VALUES
(601, 6),
(602, 6),
(701, 7),
(702, 7),
(801, 8),
(802, 8),
(901, 9),
(902, 9),
(1001, 10),
(1002, 10),
(1101, 11),
(1102, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
  `Id_estudiantes` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Curso` int(11) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Huella` longblob NOT NULL,
  PRIMARY KEY (`Id_estudiantes`),
  KEY `Id_Curso` (`Id_Curso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1206213208 ;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`Id_estudiantes`, `Id_Curso`, `Apellidos`, `Nombres`, `Huella`) VALUES
(1007420494, 901, 'Herrera Rodriguez', 'Angela Mayerli', ''),
(1011207203, 902, 'Ramirez Galeano', 'Melanny Jhoanna', ''),
(1011209368, 801, 'Espinosa Martinez', 'Jorge Esteban', ''),
(1011230137, 602, 'Moreno Ardila', 'Alison Carina', ''),
(1012381240, 1002, 'Jimenez Fuquen', 'Ailyn Vanessa', ''),
(1013268406, 1001, 'Daza Joya', 'David Alejandro', ''),
(1013270165, 1001, 'Martinez Maldonado', 'Jerly Camila', ''),
(1014482980, 1002, 'Ruiz Lopez', 'Laura Sofia', ''),
(1014671124, 1002, 'Ramirez Galeano', 'Valeryn Estrella', ''),
(1015434609, 902, 'Camargo Maldonado', 'Luis Carlos', ''),
(1016722621, 902, 'Gracia Amado', 'Yojan Steven', ''),
(1016727407, 701, 'Gracia Amado', 'Sharik Sofia', ''),
(1016731449, 602, 'Gracia Amado', 'Kevin Smith', ''),
(1016959839, 702, 'Herrera Tibocha', 'Veronica Liseth', ''),
(1019074734, 901, 'Ramirez Ramirez', 'Maria Jose', ''),
(1019107197, 702, 'Ferrucho Herrera', 'Yina Isabela', ''),
(1020303976, 1002, 'Giraldo Bedoya', 'Ana Isabel', ''),
(1021688403, 601, 'Espitia Marroquin', 'Andres Camilo', ''),
(1022974252, 801, 'Mejia Rojano', 'Maicol Andres', ''),
(1023386129, 902, 'Torres Guerrero', 'Kevin Alejandro', ''),
(1025539943, 1101, 'Torres Zorro', 'Jose Luis', ''),
(1026583726, 602, 'Cortes Pacheco', 'Erik Sebastian', ''),
(1027402774, 1001, 'Herrera Tibocha', 'Carlos Alberto', ''),
(1028401833, 1002, 'Leon Chaparro', 'Emily Julieth', ''),
(1028404276, 702, 'Rodriguez Cruz', 'Maria Salome', ''),
(1028682085, 1002, 'Lemus Camargo', 'Adaluz Yurany', ''),
(1028891344, 802, 'Lopez Español', 'Smith Bresney', ''),
(1028951974, 601, 'Nova Chaparro', 'Alison Daniela', ''),
(1029665716, 901, 'Robles Guais', 'Thaliana Gishell', ''),
(1030621097, 902, 'Garzon Gracia', 'Joseph Camilo', ''),
(1031653475, 1102, 'Puentes Sanabria', 'Claudia Valentina', ''),
(1031821045, 801, 'Ceron Joya', 'Angie Lizeth', ''),
(1031826387, 802, 'Puentes Sanabria', 'Karen Lorena', ''),
(1031826392, 802, 'Plazas Vargas', 'Valerieen Dayana', ''),
(1032942210, 1102, 'Velandia Rodriguez', 'Laura Camila', ''),
(1034663926, 1102, 'Quesada Amaya', 'William Esteban', ''),
(1051069545, 1001, 'Urian Arce', 'Haslyn Mariana', ''),
(1051476373, 701, 'Munevar Moreno', 'Carlos David', ''),
(1051542278, 1001, 'Reatiga Molina', 'Laura Daniela', ''),
(1051589099, 1102, 'Rosas Vargas', 'Jhon Alexander', ''),
(1051589214, 1001, 'Avella Moreno', 'Yulieth Vanesa', ''),
(1051589967, 702, 'Gonzalez Vargas', 'Haroll Nikolas', ''),
(1051589978, 702, 'Niño Fuentes', 'Karol Yisel', ''),
(1051590003, 701, 'Prieto Torres', 'Ivan Camilo', ''),
(1051590201, 602, 'Prieto Herrera', 'Andrea Milena', ''),
(1053538384, 701, 'Diaz Torres', 'Juan Esteban', ''),
(1053684305, 901, 'Riativa Carabuena', 'Jose Faustino', ''),
(1054283926, 1101, 'Maldonado Limas', 'Santiago Alexander', ''),
(1054285105, 1102, 'Daza Murcia', 'Vanesa Alexandra', ''),
(1054285911, 1102, 'Perez Ochoa', 'Zara Viviana', ''),
(1054286117, 1102, 'Rodriguez Diaz', 'Angie Vanesa', ''),
(1054286372, 1002, 'Vargas Cardozo', 'Cristian Daniel', ''),
(1054286535, 1102, 'Camargo Rodriguez', 'Andres Esteban', ''),
(1054286709, 902, 'Herrera Pacheco', 'Astrid Valentina', ''),
(1054287654, 901, 'Gutierrez Camargo', 'Yeferson Alejandro', ''),
(1054288294, 802, 'Daza Lemus', 'Karen Yineth', ''),
(1054288808, 601, 'Ojeda Moreno', 'Sara Valentina', ''),
(1054288880, 702, 'Vargas Cardozo', 'Jhojan Steven', ''),
(1055226194, 1101, 'Martinez Molano', 'Yeimy Catherine', ''),
(1055226391, 1001, 'Maldonado Herrera', 'Brayan Yesid', ''),
(1055226411, 1001, 'Herrera Ramirez', 'Edicson Rodrigo', ''),
(1055226720, 1102, 'Vargas Bolivar', 'Oscar Alfredo', ''),
(1055226739, 1001, 'Herrera Parada', 'David Stivens', ''),
(1055226886, 1101, 'Sanchez Gutierrez', 'Franklin Dildardo', ''),
(1055226923, 1101, 'Tambo Soraca', 'Angye Daniela', ''),
(1055226944, 1101, 'Español Patiño', 'Nancy Tatiana', ''),
(1055226974, 1101, 'Moreno Herrera', 'Angel Fabian', ''),
(1055226998, 1101, 'Sanchez Adan', 'Derly Yulieth', ''),
(1055227008, 1001, 'Rodriguez Rico', 'Yuliana Michelle', ''),
(1055227038, 1102, 'Bautista Cruz', 'Laura Vanessa', ''),
(1055227108, 1102, 'Camargo Malaver', 'Diana Carolina', ''),
(1055227138, 1101, 'Soraca Rivera', 'Elkin Estanly', ''),
(1055227184, 1101, 'Tenjo Bolivar', 'Erika Sofia', ''),
(1055227189, 1101, 'Chaparro Rodriguez', 'Zaida Nicoll', ''),
(1055227266, 1001, 'Pacheco Tenjo', 'Angie Vanesa', ''),
(1055227283, 1102, 'Cordoba Chaparro', 'Erika Alejandra', ''),
(1055227312, 1102, 'Perez Vargas', 'Andres Joel', ''),
(1055227328, 1101, 'Estupiñan Albarracin', 'Maria Del Pilar', ''),
(1055227344, 1101, 'Lemus Daza', 'Edicson Fabian', ''),
(1055227347, 1101, 'Daza Aguilar', 'Juan Andrey', ''),
(1055227348, 1102, 'Bolivar Sanchez', 'Yohan Alejandro', ''),
(1055227350, 1002, 'Bayona Barrera', 'Andres Felipe', ''),
(1055227354, 901, 'Camero Tambo', 'Yeimy Liceth', ''),
(1055227389, 901, 'Perez Talero', 'Laura Victoria', ''),
(1055227411, 1002, 'Camargo Camargo', 'Diego Alejandro', ''),
(1055227412, 1101, 'Camargo Camargo', 'Juan David', ''),
(1055227422, 1102, 'Camargo Herrera', 'Laura Sofia', ''),
(1055227430, 1102, 'Morales Cubides', 'Julian Andres', ''),
(1055227431, 1002, 'Vargas Tambo', 'Karen Dayana', ''),
(1055227433, 1101, 'Rodriguez Rodriguez', 'Laura Valentina', ''),
(1055227436, 1001, 'Bautista Sanchez', 'Yeimy Natalia', ''),
(1055227444, 1102, 'Rincon Africano', 'Fredy Santiago', ''),
(1055227448, 902, 'Bautista Sanchez', 'Wilmar Agustin', ''),
(1055227474, 1101, 'Patiño Tambo', 'Danna Valentina', ''),
(1055227477, 1101, 'Riaño Talero', 'Maria Paula', ''),
(1055227493, 902, 'Quevedo Rivera', 'Sonia Jimena', ''),
(1055227494, 1102, 'Nieto Rodriguez', 'Samanta ', ''),
(1055227515, 902, 'Rodriguez Herrera', 'Leidy Carolina', ''),
(1055227535, 901, 'Calixto Holguin', 'Juan Fernando', ''),
(1055227547, 1101, 'Soraca Quevedo', 'Yennifer Daniela', ''),
(1055227549, 1102, 'Moreno Camero', 'Yeimy Tatiana', ''),
(1055227565, 1001, 'Tambo Vargas', 'Emerson Fabian', ''),
(1055227566, 902, 'Pedroza Mogollon', 'Harold German', ''),
(1055227572, 1002, 'Merchan Camargo', 'Adriana Lucia', ''),
(1055227578, 1002, 'Pacheco Bautista', 'Ana Yulieth', ''),
(1055227580, 1102, 'Moreno Boyaca', 'Deisy Paola', ''),
(1055227587, 901, 'Camargo Colmenares', 'Fabian Andres', ''),
(1055227601, 902, 'Ferrucho Malaver', 'Sara Valentina', ''),
(1055227603, 1002, 'Tibocha Pacheco', 'Yohann Julian', ''),
(1055227616, 1102, 'Pacheco Lopez', 'Juan Esteban', ''),
(1055227619, 1002, 'Cordoba Bolivar', 'Diana Maria', ''),
(1055227622, 1001, 'Vargas Vasquez', 'Erika Mayerly', ''),
(1055227627, 1001, 'Vega Vargas', 'Andres Santiago', ''),
(1055227632, 1001, 'Tenjo Moreno', 'Kely Yojana', ''),
(1055227633, 1002, 'Camargo Camargo', 'Gladys Marinela', ''),
(1055227638, 802, 'Camargo Camargo', 'Juan Daniel', ''),
(1055227644, 1002, 'Silva Martinez', 'Cristian Alejandro', ''),
(1055227654, 1002, 'Martinez Rincon', 'Karol Dayanna', ''),
(1055227673, 1001, 'Ferrucho Rivera', 'Yerik Yalith', ''),
(1055227677, 1002, 'Vacca Tambo', 'Yeison Arley', ''),
(1055227679, 701, 'Gutierrez Vargas', 'Cesar Julian', ''),
(1055227683, 902, 'Herrera Ramirez', 'Claudia Jimena', ''),
(1055227691, 1002, 'Perez Vargas', 'Samuel Felipe', ''),
(1055227694, 1001, 'Camargo Bolivar', 'Dairon Andres', ''),
(1055227709, 902, 'Camargo Hurtado', 'Pablo ', ''),
(1055227714, 902, 'Castañeda Martinez', 'Jaider Sebastian', ''),
(1055227715, 602, 'Alba Ortega', 'Lina Maria', ''),
(1055227754, 902, 'Vargas Martinez', 'Kelin Yadira', ''),
(1055227755, 801, 'Rivas Pulido', 'Luis Gabriel', ''),
(1055227795, 1001, 'Tenjo Chaparro', 'Nicoll Dayanna', ''),
(1055227811, 1001, 'Sanchez Bautista', 'Luis Miguel', ''),
(1055227820, 702, 'Herrera Martinez', 'Edicson Daniel', ''),
(1055227822, 1001, 'Diaz Ferrucho', 'Laura Tatiana', ''),
(1055227835, 1002, 'Lagos Pacheco', 'Jose Alejandro', ''),
(1055227836, 901, 'Español Patiño', 'Deisy Yuliana', ''),
(1055227837, 802, 'Gutierrez Ferrucho', 'Jonathan Stivens', ''),
(1055227850, 901, 'Herrera Rodriguez', 'Paula Valentina', ''),
(1055227857, 901, 'Cruz Cruz', 'Kevin Stivens', ''),
(1055227872, 902, 'Munevar Moreno', 'Lohana Valentina', ''),
(1055227877, 901, 'Pacheco Gonzalez', 'Laura Jimena', ''),
(1055227883, 1002, 'Tenjo Malaver', 'Edwar Leonardo', ''),
(1055227900, 702, 'Ferrucho Herrera', 'Diana Sofia', ''),
(1055227902, 1002, 'Malaver Lopez', 'Karen Natalia', ''),
(1055227910, 902, 'Martinez Avendaño', 'Jorge Armando', ''),
(1055227918, 801, 'Gutierrez Talero', 'Diland Josepth', ''),
(1055227924, 902, 'Bocachica Benavides', 'Karol Natalia', ''),
(1055227927, 802, 'Bautista Sanchez', 'Mary Stella', ''),
(1055227939, 802, 'Patiño Tenjo', 'Jeisson Stiven', ''),
(1055227941, 901, 'Rodriguez Tenjo', 'Luz Jimena', ''),
(1055227954, 902, 'Pedroza Mogollon', 'Juan Manuel', ''),
(1055227957, 1002, 'Montaña Osma', 'Valerie Sofia', ''),
(1055227969, 702, 'Bautista Tibocha', 'Kevin Sneider', ''),
(1055227970, 901, 'Camargo Camargo', 'Paula Andrea', ''),
(1055227972, 901, 'Moreno Malaver', 'Sirley Sofia', ''),
(1055227981, 802, 'Chaparro Gutierrez', 'Angie Liseth', ''),
(1055227983, 801, 'Ferrucho Malaver', 'Ana Maria', ''),
(1055227984, 901, 'Limas Talero', 'Brayan Andrey', ''),
(1055227997, 901, 'Vargas Camargo', 'Zaira Brigit', ''),
(1055228010, 602, 'Daza Africano', 'Jhon Breydy', ''),
(1055228012, 802, 'Pirajan Pirajan', 'Brayan Daniel', ''),
(1055228023, 802, 'Moreno Herrera', 'Kevin Santiago', ''),
(1055228046, 902, 'Boyaca Maldonado', 'Adrian Fernando', ''),
(1055228064, 802, 'Vargas Cardozo', 'Gissell Taliana', ''),
(1055228069, 901, 'Camargo Plazas', 'Jhon Henry', ''),
(1055228070, 801, 'Moreno Vargas', 'Adrian Camilo', ''),
(1055228074, 701, 'Moreno Joya', 'Jhon Fredy', ''),
(1055228082, 802, 'Pineda Ripe', 'Karoll Julieth', ''),
(1055228084, 602, 'Gutierrez Vargas', 'Marisol ', ''),
(1055228085, 901, 'Camargo Herrera', 'Sara Valentina', ''),
(1055228089, 902, 'Lopez Ramirez', 'Sara Sofia', ''),
(1055228090, 702, 'Vargas Vasquez', 'Edgar Duvan', ''),
(1055228105, 902, 'Bocachica Pacheco', 'Angela Yurany', ''),
(1055228107, 802, 'Rivera Ripe', 'Tania Liseth', ''),
(1055228116, 801, 'Herrera Pacheco', 'Sara Yulieth', ''),
(1055228136, 801, 'Limas Martinez', 'Daniel Felipe', ''),
(1055228138, 702, 'Soraca Paez', 'Brayan Sebastian', ''),
(1055228151, 702, 'Español Soraca', 'Sara Natalia', ''),
(1055228154, 601, 'Sanchez Bayona', 'Miguel Stivens', ''),
(1055228156, 802, 'Infante Pirajan', 'Yenny Fernanda', ''),
(1055228165, 701, 'Cruz Ceron', 'Paula Liseth', ''),
(1055228171, 801, 'Camargo Bolivar', 'Andrea Liliana', ''),
(1055228177, 602, 'Otalora Camargo', 'Anderson Yamith', ''),
(1055228179, 602, 'Patarroyo Bolivar', 'Angela Rocio', ''),
(1055228180, 801, 'Lopez Vargas', 'Laura Dayana', ''),
(1055228186, 801, 'Vargas Rico', 'Juan Sebastian', ''),
(1055228191, 801, 'Perez Vargas', 'Andres Felipe', ''),
(1055228193, 801, 'Maldonado Herrera', 'Cindy Sofia', ''),
(1055228196, 801, 'Vargas Tenjo', 'Edwin Yamid', ''),
(1055228199, 601, 'Rodriguez Torres', 'Danna Valentina', ''),
(1055228203, 701, 'Rodriguez Herrera', 'Jhon Alex', ''),
(1055228213, 802, 'Camargo Maestre', 'Sara Daniela', ''),
(1055228215, 701, 'Camero Tambo', 'Shaida Jineth', ''),
(1055228217, 802, 'Patiño Tambo', 'Sofia Victoria', ''),
(1055228221, 701, 'Martinez Martinez', 'Yeison Andres', ''),
(1055228231, 801, 'Cruz Pacheco', 'Yuly Alexandra', ''),
(1055228236, 802, 'Camargo Camargo', 'Laura Valentina', ''),
(1055228239, 802, 'Daza Ferrucho', 'Andres Esteban', ''),
(1055228250, 802, 'Lemus Camargo', 'Luis Fernando', ''),
(1055228260, 801, 'Albarracin Daza', 'Karol Mariana', ''),
(1055228261, 802, 'Ramirez Camargo', 'Joel Mateo', ''),
(1055228263, 802, 'Cordoba Vergara', 'Luisa Fernanda', ''),
(1055228264, 802, 'Calixto Holguin', 'Adriana Lucia', ''),
(1055228282, 801, 'Vargas Ocampo', 'Laura Sofia', ''),
(1055228320, 801, 'Cordoba Bolivar', 'Miguel Angel', ''),
(1055228332, 801, 'Camargo Plazas', 'Edicson David', ''),
(1055228336, 801, 'Sanchez Madero', 'Yeny Nataly', ''),
(1055228343, 802, 'Rodriguez Munevar', 'Brayan Alonso', ''),
(1055228351, 702, 'Ferrucho Ferrucho', 'Jimena Rocio', ''),
(1055228352, 702, 'Diaz Bautista', 'Andrea Yurany', ''),
(1055228368, 701, 'Camargo Soler', 'Kevin Duvan', ''),
(1055228370, 702, 'Guerrero Maldonado', 'Diego Alejandro', ''),
(1055228373, 701, 'Gutierrez Tirano', 'Joel Yanick', ''),
(1055228375, 702, 'Soraca Paez', 'Yuly Tatiana', ''),
(1055228376, 602, 'Quevedo Gutierrez', 'Jorge Damian', ''),
(1055228378, 702, 'Joya Sanabria', 'Sara Sofia', ''),
(1055228379, 702, 'Parada Moreno', 'Daniel Stivens', ''),
(1055228393, 701, 'Avila Maldonado', 'Fabian Stivens', ''),
(1055228409, 702, 'Merchan Camargo', 'Andres Santiago', ''),
(1055228413, 701, 'Limas Moreno', 'Sharith Valentina', ''),
(1055228421, 702, 'Maldonado Bolivar', 'Wilmer Alonso', ''),
(1055228424, 701, 'Daza Malaver', 'Maria Jose', ''),
(1055228449, 702, 'Gutierrez Ferrucho', 'Diego Alejandro', ''),
(1055228460, 701, 'Gamez Colmenares', 'Sebastian ', ''),
(1055228463, 701, 'Lagos Pacheco', 'Angie Dayana', ''),
(1055228465, 602, 'Bautista Sanchez', 'Brayan Santiago', ''),
(1055228477, 701, 'Vargas Vela', 'Linda Ximena', ''),
(1055228487, 601, 'Rodriguez Español', 'Milan Sneider', ''),
(1055228489, 701, 'Sanabria Castiblanco', 'Diana Valentina', ''),
(1055228494, 701, 'Soraca Quevedo', 'Angelo Javier', ''),
(1055228495, 702, 'Camargo Hurtado', 'Laura Tatiana', ''),
(1055228498, 602, 'Vela Mogollon', 'Dennis Sofia', ''),
(1055228503, 601, 'Diaz Paez', 'Wilson David', ''),
(1055228510, 702, 'Vega Chaparro', 'Yohan Felipe', ''),
(1055228517, 702, 'Vargas Plazas', 'Yised Lorena', ''),
(1055228523, 701, 'Maldonado Limas', 'Kevin Javier', ''),
(1055228531, 601, 'Castañeda Martinez', 'Liseth Brigith', ''),
(1055228536, 601, 'Tambo Rodriguez', 'Ronal Smith', ''),
(1055228537, 601, 'Tenjo Chaparro', 'Daniel Felipe', ''),
(1055228540, 701, 'Moreno Lagos', 'Tania Michell', ''),
(1055228544, 601, 'Quevedo Rivera', 'Victor Alfredo', ''),
(1055228576, 601, 'Zambrano Lopez', 'Cristian Felipe', ''),
(1055228579, 601, 'Chaparro Perez', 'Stefany Yulieth', ''),
(1055228587, 601, 'Pacheco Martinez', 'Alison Yurany', ''),
(1055228590, 701, 'Tenjo Bolivar', 'Liseth Yuliana', ''),
(1055228592, 601, 'Perez Rodriguez', 'Danna Sofia', ''),
(1055228596, 601, 'Rodriguez Herrera', 'Jose Luis', ''),
(1055228597, 601, 'Melo Pineda', 'Johan Arbey', ''),
(1055228614, 601, 'Tambo Vargas', 'Mariana ', ''),
(1055228617, 602, 'Gutierrez Talero', 'Erick Emmanuel', ''),
(1055228626, 601, 'Rodriguez Moyano', 'Jhon Andrey', ''),
(1055228635, 602, 'Cordoba Bolivar', 'Sara Sofia', ''),
(1055228639, 602, 'Ferrucho Rivera', 'Helixon Wilfren', ''),
(1055228640, 602, 'Camargo Hurtado', 'Diego Ernesto', ''),
(1055228670, 602, 'Quevedo Melo', 'Martin Leandro', ''),
(1055228677, 601, 'Tambo Sanchez', 'Brayan Camilo', ''),
(1055228679, 601, 'Rodriguez Zambrano', 'Sara Daniela', ''),
(1055228709, 601, 'Vargas Vasquez', 'Danna Valentina', ''),
(1055228711, 602, 'Lopez Maldonado', 'Derly Vanesa', ''),
(1055228722, 601, 'Español Camero', 'Jhoan Santiago', ''),
(1055228747, 602, 'Joya Sanabria', 'Miguel Andres', ''),
(1055228749, 601, 'Español Soraca', 'Andrea Yisela', ''),
(1055228750, 602, 'Parada Moreno', 'Daniel Felipe', ''),
(1055228753, 602, 'Herrera Malaver', 'Sara Yuliana', ''),
(1055228768, 601, 'Camargo Maestre', 'Samuel Alejandro', ''),
(1055228774, 601, 'Chaparro Rico', 'Jerson Ricardo', ''),
(1055228804, 601, 'Martinez Camero', 'Sandy Ximena', ''),
(1055228812, 601, 'Mena Vargas', 'Juliana Alexandra', ''),
(1055314490, 602, 'Pineda Melo', 'Camilo Andres', ''),
(1055314853, 601, 'Pineda Arevalo', 'Karen Sofia', ''),
(1057580227, 1102, 'Joya Lopez', 'Karen Dayana', ''),
(1057581909, 1102, 'Bolivar Bolivar', 'Luz Mery', ''),
(1057586003, 902, 'Diaz Beltran', 'Katerin Cesilia', ''),
(1057586558, 901, 'Salcedo Parada', 'Santiago ', ''),
(1057586659, 1102, 'Pacheco Cepeda', 'Diana Ximena', ''),
(1057591641, 901, 'Sanchez Adan', 'Jennifer Alejandra', ''),
(1057593234, 802, 'Torres Camargo', 'Maria Valentina', ''),
(1057593557, 801, 'Ferrucho Herrera', 'Cristian David', ''),
(1057598984, 601, 'Moreno Torres', 'Alexandra ', ''),
(1057599523, 602, 'Cordoba Vergara', 'Jessica Paola', ''),
(1057600028, 601, 'Vargas Tambo', 'Maria Fernanda', ''),
(1057842616, 901, 'Garcia Espejo', 'Dayana Camila', ''),
(1057981152, 1102, 'Herrera Rincon', 'Laura Ximena', ''),
(1057981912, 1002, 'Pirachican Sanabria', 'Sara Valentina', ''),
(1057982167, 902, 'Camargo Martinez', 'Sara Valentina', ''),
(1057982247, 902, 'Vargas Martinez', 'Laura Sofia', ''),
(1057982457, 802, 'Cristancho Rincon', 'Marcos Arley', ''),
(1057982470, 901, 'Vargas Malaver', 'Sneijder Santiago', ''),
(1057982942, 901, 'Motavita Lemus', 'Edison Andrey', ''),
(1057983580, 802, 'Silva Pirajan', 'Alexis Daniel', ''),
(1057983614, 701, 'Hernandez Ferrucho', 'Juan David', ''),
(1057984327, 602, 'Martinez Mateus', 'Sara Valentina', ''),
(1058353013, 1101, 'Gutierrez Melo', 'Bayron Andres', ''),
(1058355169, 1001, 'Santiago Quintero', 'Luz Stella', ''),
(1058355274, 1002, 'Camargo Malaver', 'Angela Rocio', ''),
(1058355291, 1001, 'Español Soraca', 'Lina Esperanza', ''),
(1058355779, 902, 'Ferrucho Sanchez', 'Ronald Smith', ''),
(1058356192, 801, 'Vacca Tambo', 'Juan David', ''),
(1058357440, 702, 'Ferrucho Tenjo', 'Laura Sofia', ''),
(1058357923, 601, 'Martinez Simbaqueba', 'Johan David', ''),
(1058357988, 602, 'Perez Talero', 'Liliana ', ''),
(1058357992, 702, 'Prieto Valencia', 'Jhennifer ', ''),
(1058460357, 1101, 'Talero Martinez', 'Leydi Dayana', ''),
(1068817344, 601, 'Hoyos Oviedo', 'Jonatan ', ''),
(1069647882, 701, 'Lemus Parada', 'Danny Esteban', ''),
(1071941060, 602, 'Amaya Ahumada', 'Diana Ximena', ''),
(1073159290, 1002, 'Velasquez Garcia', 'David Santiago', ''),
(1073161982, 1001, 'Castillo Bolivar', 'Amisarai ', ''),
(1073163689, 602, 'Bolivar Velasquez', 'Frank Sebastian', ''),
(1073510271, 1002, 'Lemus Parada', 'Kelin Michel', ''),
(1075665399, 1002, 'Gutierrez Acosta', 'Mildred Eliette', ''),
(1075667975, 601, 'Gonzalez Hernandez', 'Maria Valentina', ''),
(1075681041, 602, 'Gutierrez Acosta', 'Angel Josue', ''),
(1076740904, 1102, 'Rojas Cruz', 'Karen Valentina', ''),
(1090252338, 901, 'Araque Lagos', 'Yamid Leonardo', ''),
(1111782280, 901, 'Avila Cano', 'Jaime ', ''),
(1115859019, 801, 'Tumay Zorro', 'Yaneth Lucia', ''),
(1115860984, 702, 'Tumay Zorro', 'Luis Alberto', ''),
(1141126907, 601, 'Villalobos Herrera', 'Juan Sebastian', ''),
(1141137962, 901, 'Villalobos Herrera', 'Luisa Fernanda', ''),
(1145225721, 902, 'Lemus Camargo', 'Maria Jose', ''),
(1145424433, 902, 'Sanchez Nieto', 'Samuel Esteban', ''),
(1145424550, 901, 'Prieto Herrera', 'Leidy Lorena', ''),
(1145424572, 801, 'Talero Bernal', 'Cristian Alexander', ''),
(1145424592, 1002, 'Tequia Montaña', 'Angela Marcela', ''),
(1145424651, 1001, 'Chaparro Soraca', 'Juan David', ''),
(1145424858, 902, 'Duquino Vargas', 'Maria Fernanda', ''),
(1145425093, 702, 'Talero Martinez', 'Carlos Eduardo', ''),
(1145425255, 902, 'Barrera Murcia', 'Luisa Fernanda', ''),
(1145425401, 901, 'Vargas Vargas', 'Sebastian Yesid', ''),
(1145425477, 802, 'Martinez Lemus', 'Andrey Duvan', ''),
(1145425538, 602, 'Talero Bernal', 'Eileen Valentina', ''),
(1145425542, 702, 'Gama Camargo', 'Laura Ximena', ''),
(1145425546, 701, 'Joya Lopez', 'Kevin Andrey', ''),
(1145425604, 602, 'Perez Vargas', 'Liliana Sofia', ''),
(1145425630, 801, 'Perez Perez', 'Jireh Sofia', ''),
(1145425748, 801, 'Nieto Rodriguez', 'Arianna ', ''),
(1145425820, 701, 'Ballesteros Colmenares', 'Heidy Yuliana', ''),
(1145425848, 802, 'Melo Martinez', 'Gabriel Andres', ''),
(1145425920, 601, 'Gutierrez Vargas', 'Jhon Sebastian', ''),
(1145426044, 701, 'Abril Farias', 'Valentina', ''),
(1145426045, 701, 'Abril Farias', 'Natalia', ''),
(1145426112, 602, 'Maldonado Aguilar', 'Johan Daniel', ''),
(1145426267, 701, 'Sanchez Tibocha', 'Nicolas Fernando', ''),
(1145426367, 602, 'Orduz Herrera', 'Paula Andrea', ''),
(1145426533, 602, 'Tibocha Pacheco', 'Michael Santiago', ''),
(1145426608, 602, 'Zorro Gonzalez', 'Angie Nicole', ''),
(1145828585, 601, 'Casas Pulido', 'Paula Alexandra', ''),
(1146684707, 1002, 'Rodriguez Camargo', 'Sara Benilda', ''),
(1147488483, 602, 'Ramirez Cruz', 'Sofia Isabel', ''),
(1206213207, 1001, 'Salamanca Vargas', 'Nicol Dayana', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE IF NOT EXISTS `grado` (
  `Id_Grado` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Grado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`Id_Grado`) VALUES
(6),
(7),
(8),
(9),
(10),
(11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE IF NOT EXISTS `ingreso` (
  `Id_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `Id_estudiantes` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`Id_ingreso`),
  KEY `Id_estudiantes` (`Id_estudiantes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`Id_Grado`) REFERENCES `grado` (`Id_Grado`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_Curso`);

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `ingreso_ibfk_1` FOREIGN KEY (`Id_estudiantes`) REFERENCES `estudiantes` (`Id_estudiantes`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
