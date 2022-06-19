-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2022 a las 23:03:01
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wisp_bd`
--
CREATE DATABASE IF NOT EXISTS `wisp_bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wisp_bd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `direccion`, `telefono`, `fecha_registro`, `updated_at`) VALUES
(1, 'Acopa y Colorado', '5 de Mayo', '9371041526', '2022-03-01', '2022-05-31'),
(2, 'Antonio Montejo Sanchez (Tigre Wachi)', 'Calzada', '', '2022-03-04', NULL),
(3, 'Roberto Carlos Solis Escobar (Tarra Mango)', 'Mantilla', '9371203525', '2022-03-04', NULL),
(4, 'Amelia Ramos', 'Calzada', '9935172335', '2022-03-04', NULL),
(5, 'Eliseo Mondragón Peralta (Maria Reyes)', 'Calzada', '9371225946', '2022-03-04', NULL),
(6, 'Rafael Garcia Lopez (Electricita)', 'Calzada', '9371686154', '2022-03-04', NULL),
(7, 'Aurelio Ramírez León', '5 de Mayo', '9371265469', '2022-03-04', NULL),
(8, 'Enrrique', '2da del 11', '', '2022-03-04', NULL),
(9, 'Esmeralda Cano Alcocer', 'Calzada', '9372724000', '2022-03-04', NULL),
(10, 'Gollo Gomez', 'Mantilla', '', '2022-03-04', NULL),
(11, 'Veronica Lopez Ramoz', '5 de Mayo', '9982056545', '2022-03-04', NULL),
(12, 'Virginia', 'Mantilla', '9379996115', '2022-03-04', NULL),
(13, 'Gilberto Palma Dominguez (Carpintero)', 'Calzada', '9371420115', '2022-03-04', NULL),
(14, 'Oscar Lopez', 'Mantilla', '9341291602', '2022-03-04', NULL),
(15, 'Imelda Mendosa Montejo', 'Calzada', '9996363437', '2022-03-04', NULL),
(16, 'Noe ', '5 de Mayo', '5548336317', '2022-03-04', NULL),
(17, 'Jocabel Burelo Rodriguez', '2da del 11', '', '2022-03-04', NULL),
(18, 'Leopoldo Rivera Sanchez (Cañal)', 'Mantilla', '4441199994', '2022-03-04', NULL),
(19, 'Wiliams Chimo', '5 de Mayo', '', '2022-03-04', NULL),
(20, 'Eliana (Gorgojo)', 'Calzada', '9371100065', '2022-03-04', NULL),
(21, 'Fam. Hernandez Lopez', '5 de Mayo', '', '2022-03-04', NULL),
(22, 'Profe Raul de Jesus Hernandez Alvarez', '2da del 11', '9371362118', '2022-03-04', NULL),
(23, 'Neyli Lopez Lopez', '2da del 11', '', '2022-03-04', NULL),
(24, 'Sheyla Sanchez de Dios', '2da del 11', '9371391481', '2022-03-04', NULL),
(25, 'Jane Burelo Reinaga (Tienda', '2da del 11', '9371411051', '2022-03-04', NULL),
(26, 'Gloria Cano Alcocer', '5 de Mayo', '9371660864', '2022-03-04', NULL),
(27, 'Jacobino Gongora Cordoba', '2da del 11', '9373776168', '2022-03-04', NULL),
(28, 'Moises Garcia Martinez (Diana', '2da del 11', '', '2022-03-04', NULL),
(29, 'Antonio Naranjo (Toño Danilo)', 'Mantilla', '', '2022-03-04', NULL),
(30, 'Jose Alberto Gomez (Beto Gomez)', 'Mantilla', '9371200650', '2022-03-04', NULL),
(31, 'Olga Lopez Gomez', '2da del 11', '9371040906', '2022-03-04', NULL),
(32, 'Sandy Ocaña entrada', 'Calzada', '9371400927', '2022-03-04', NULL),
(33, 'Selene Ponce', 'Calzada', '9371278886', '2022-03-04', NULL),
(34, 'Alejandra del Carmen Sánchez Colorado', '5 de Mayo', '9371285207', '2022-03-04', NULL),
(35, 'Viviana Cano', 'Mantilla', '9372300150', '2022-03-04', NULL),
(36, 'Yazlin Hernandez (Celso)', '5 de Mayo', '', '2022-03-04', NULL),
(37, 'Randolfo Solis', 'Mantilla', '9371343759', '2022-03-04', NULL),
(38, 'Jhony Gómez Cano', '2da del 11', '9141213360', '2022-03-04', NULL),
(39, 'William Calix Burelo', '2da del 11', '9371668347', '2022-03-04', NULL),
(40, 'Cocina Deysi', 'Mantilla', '', '2022-03-04', NULL),
(41, 'Kevin Lopez Olan', 'Mantilla', '9371185134', '2022-03-04', NULL),
(42, 'Janis Irina Naranjo Garcia', 'Calzada', '9371715186', '2022-03-04', NULL),
(43, 'Versain Ocaña Solis (Tapicero)', 'Mantilla', '', '2022-03-04', NULL),
(44, 'Alejandra Martinez Hernandez puente', '5 de Mayo', '', '2022-03-04', NULL),
(45, 'Luis Enrrique Colorado', 'Mantilla', '', '2022-03-04', NULL),
(46, 'Irene Castellano de la Cruz', '2da del 11', '9371199834', '2022-03-04', NULL),
(47, 'Venao ', '5 de Mayo', '', '2022-03-04', NULL),
(48, 'Alejandro de la Cruz (Choya)', 'Mantilla', '', '2022-03-04', NULL),
(49, 'Margarito Jimenez Hernandez', 'Calzada', '9373772449', '2022-03-04', NULL),
(50, 'Adriana Silva (Luis Silva)', '5 de Mayo', '9371199945', '2022-03-04', NULL),
(51, 'Carlos Manuel Juarez Vazques (Colchon)', '2da del 11', '9371624212', '2022-03-04', NULL),
(52, 'Viki Jiménez Hernandez', 'Mantilla', '9371231132', '2022-03-04', NULL),
(53, 'Juan Diego Lazaro Jimenez', 'Calzada', '9171427492', '2022-03-04', NULL),
(54, 'Juan Moralez (Gordis)', '5 de Mayo', '9371181983', '2022-03-04', NULL),
(55, 'Jose Morales Panadero', 'Calzada', '9371208077', '2022-03-04', NULL),
(56, 'Maria del Rosario Hernández Garcia', 'Calzada', '9842387410', '2022-03-04', NULL),
(57, 'José Alfredo Jimenez', 'Mantilla', '9371187960', '2022-03-04', NULL),
(58, 'Laura Cristel López Marín (Roy)', '5 de Mayo', '9371531995', '2022-03-04', NULL),
(59, 'José Alberto Hernández Rodríguez (dos plantas)', 'Calzada', '9372727457', '2022-03-04', NULL),
(60, 'Marina Gonzalez Dominguez', 'Calzada', '9372274646', '2022-03-04', NULL),
(61, 'Tomasa Hernandez San.', '5 de Mayo', '9992736741', '2022-03-04', NULL),
(62, 'Linda Gomez (Rosario Jimenez)', 'Mantilla', '9372833065', '2022-03-04', NULL),
(63, 'Maria Edith Jiménez Acopa', 'Mantilla', '9371245086', '2022-03-04', NULL),
(64, 'Porfirio Moreno Ramos Tienda', 'Calzada', '9372295772', '2022-03-04', NULL),
(65, 'Miguel Flores Ramos (Braulia)', '5 de Mayo', '9371008913', '2022-03-04', NULL),
(66, 'Devora González González', '5 de Mayo', '9934367874', '2022-03-04', NULL),
(67, 'Adid Gonzalez (Patitos)', 'Mantilla', '9371311969', '2022-03-04', NULL),
(68, 'Yoli Sanchez - Carlos Ivan Hernadez Sanchez', 'Mantilla', '9371396684', '2022-03-04', NULL),
(69, 'Don Pancho', 'Mantilla', '', '2022-03-04', NULL),
(70, 'Sergio Bautista', 'Mantilla', '9372833151', '2022-03-04', NULL),
(71, 'Gabriela Dominguez Cano', '2da del 11', '9371394767', '2022-03-04', NULL),
(72, 'Yesenia Hernandez (Hija de Güero)', 'Mantilla', '9984824594', '2022-03-04', NULL),
(73, 'Magnerio Alberto Hernandez', 'Mantilla', '9371441483', '2022-03-04', NULL),
(74, 'Jose Eduardo Solis', 'Calzada', '9371684781', '2022-03-04', NULL),
(75, 'Nelson Escobar', '5 de Mayo', '9371531974', '2022-03-04', NULL),
(76, 'Nallyve Colorado Calix (Abimelet)', '5 de Mayo', '9371005720', '2022-03-04', NULL),
(77, 'Juan Manuel Ramos de Dios', 'Calzada', '9371622417', '2022-03-04', NULL),
(78, 'Karen Lisseth Escobar Jiménez', 'Calzada', '8671487164', '2022-03-04', NULL),
(79, 'Joselin Hernandez Muñeco', 'Calzada', '', '2022-03-04', NULL),
(80, 'Natanael Hernández Ramírez  (Musicos)', 'Calzada', '9373743217', '2022-03-04', NULL),
(81, 'Graciela Carreta (Casa 100 Ame.', 'Calzada', '', '2022-03-04', NULL),
(82, 'Luz del Alba Ramos de Dios', 'Calzada', '9371757319', '2022-03-04', NULL),
(83, 'Rafael Cano', 'Mantilla', '', '2022-03-04', NULL),
(84, 'Fredy Hernandez L. (Maria Reyes)', 'Mantilla', '', '2022-03-04', NULL),
(85, 'Andres Josue Cano Gomez', '2da del 11', '9371667013', '2022-03-04', NULL),
(86, 'Ismael Aguirre Morales', '2da del 11', '9141220077', '2022-03-04', NULL),
(87, 'Jorge Luis Bautista Chable', 'Mantilla', '', '2022-03-04', NULL),
(88, 'Nancy de la Cruz ', 'Mantilla', '', '2022-03-04', NULL),
(89, 'Alex Rodriguez Ana Maria Lopez', '2da del 11', '9372701771', '2022-03-04', NULL),
(90, 'Cindy Cristel Balladares Carreta', 'Calzada', '9141192096', '2022-03-04', NULL),
(91, 'Fam. Acosta', 'Calzada', '', '2022-03-04', NULL),
(92, 'Carmita Perez Gomez', 'Calzada', '9371716779', '2022-03-04', NULL),
(93, 'Jesus Jimenez - Kareli Ocaña', 'Calzada', '9371064104', '2022-03-04', NULL),
(94, 'Elizabeth Landero Alcocer (E. Chucho)', 'Calzada', '9371031776', '2022-03-04', NULL),
(95, 'Licho Montejo', 'Calzada', '', '2022-03-04', NULL),
(96, 'Alejandra Colorado', '2da del 11', '9372712836', '2022-03-04', NULL),
(97, 'Sheyla Karen Arias Garcia', '2da del 11', '9373788537', '2022-03-04', NULL),
(98, 'Leticia del Carmen Sanchez Gomez', 'Calzada', '9372701413', '2022-03-04', NULL),
(99, 'Ramon Lopez Peludo', 'Mantilla', '', '2022-03-04', NULL),
(100, 'Fernando Jose Montejo', '5 de Mayo', '9371178612', '2022-03-04', NULL),
(101, 'Jose Manuel Moreno Arpaiz (Marciano)', 'Calzada', '9371302267', '2022-03-04', NULL),
(102, 'Cristian Miguel E.Lety', 'Calzada', '', '2022-03-04', NULL),
(103, 'Ana Lilia Dominguez Dominguez ', 'Calzada', '9341277322', '2022-03-04', NULL),
(104, 'ESCUELA MI PATRIA', 'Calzada', '', '2022-03-04', NULL),
(105, 'Laura Perez Javier E. Checame', 'Calzada', '9371192050', '2022-03-04', NULL),
(106, 'Anita Hernandez', 'Mantilla', '9371672349', '2022-03-04', NULL),
(107, 'Erik Tejeda Zapata', 'Mantilla', '9371267953', '2022-03-04', NULL),
(108, 'Iracema Colorado R.', '5 de Mayo', '9371263080', '2022-03-04', NULL),
(109, 'Guadalupe Burelo Ocaña', 'Calzada', '', '2022-03-04', NULL),
(110, 'Maria Montejo (Tigre Viejo)', 'Calzada', '9371392333', '2022-03-04', NULL),
(111, 'Monica Ocaña', 'Calzada', '9371426846', '2022-03-04', NULL),
(112, 'Rosa María Díaz Álvarez (Chiapas)', 'Mantilla', '9371052779', '2022-03-04', NULL),
(113, 'Osvaldo Garcia Hernandez ( Perrera)', 'Calzada', '9371628323', '2022-03-04', NULL),
(114, 'Jesus Solis Perez (Mago)', 'Calzada', '9371644765', '2022-03-04', NULL),
(115, 'Dorca Ramirez', 'Mantilla', '9371252942', '2022-03-04', NULL),
(116, 'Doraliz Solis Hernandez (Angel Mena)', 'Calzada', '9371685798', '2022-03-04', NULL),
(117, 'Benito Hernandez Mondragon (Chivo)', '5 de Mayo', '9371597210', '2022-03-04', NULL),
(118, 'Fabiola Rodriguez', '2da del 11', '9371839893', '2022-03-04', NULL),
(119, 'Liliana Lopez Ocaña', 'Mantilla', '', '2022-03-04', NULL),
(120, 'Gabriela Sánchez Perez (Cholo', '2da del 11', '9375932150', '2022-03-04', NULL),
(121, 'Ana Lilia Rodriguez', '2da del 11', '9373784946', '2022-03-04', NULL),
(122, 'Carlos Javier Hernandez Hernandez', '2da del 11', '9371623250', '2022-03-04', NULL),
(123, 'Anahí Palma García', '2da del 11', '9371193613', '2022-03-04', NULL),
(124, 'Pablo Ramirez (Eudaldo)', 'Mantilla', '9371081890', '2022-03-04', NULL),
(125, 'Sergio Militar E.', 'Calzada', '9171353628', '2022-03-04', NULL),
(126, 'Magdalena Ocaña Murillo', 'Calzada', '9371650878', '2022-03-04', NULL),
(127, 'Erika Cordoba Broca (Papeleria)', 'Mantilla', '9371158278', '2022-03-04', NULL),
(128, 'Lidia Janet Correa', 'Calzada', '9371376411', '2022-03-04', NULL),
(129, 'Kevin Baranda Hernandez', 'Mantilla', '9371396302', '2022-03-04', NULL),
(130, 'Fito Colorado', '2da del 11', '', '2022-03-04', NULL),
(131, 'Horacio Villaruiz', '5 de Mayo', '', '2022-03-04', NULL),
(132, 'Sunny de Jesús Solis Gonzales', 'Calzada', '9372722852', '2022-03-04', NULL),
(133, 'Carla Rodriguez', '2da del 11', '9142795127', '2022-03-04', NULL),
(134, 'Yarisbeis Castillo Hernandez', '2da del 11', '9371267066', '2022-03-04', NULL),
(135, 'Yari Lopez Marin (Esposa de Daniel Charmin)', 'Mantilla', '', '2022-03-04', NULL),
(136, 'Mary del Carmen Vasques Lopez', 'Calzada', '9343480583', '2022-03-04', NULL),
(137, 'Jesus del Carmen (Checame)', 'Calzada', '9371211075', '2022-03-04', NULL),
(138, 'NURI DOMINGUEZ', 'Calzada', '9371059000', '2022-03-04', NULL),
(139, 'Pancha Pan', 'Calzada', '9371204004', '2022-03-04', NULL),
(140, 'Norberto Gomez Garcia (Beto Panadero)', 'Calzada', '9371212961', '2022-03-04', NULL),
(141, 'Deysi Lopez Burelo', '5 de Mayo', '9373770805', '2022-03-04', NULL),
(142, 'Dulce Rosario Lopez Martinez', '5 de Mayo', '9381846393', '2022-03-04', NULL),
(143, 'Eliseo Hernandez Vazquez', 'Mantilla', '9371769382', '2022-03-04', NULL),
(144, 'Ariana Colorado', '5 de Mayo', '9371642171', '2022-03-04', NULL),
(145, 'Carlos Hernandez Hernandez (Carlon)', '5 de Mayo', '', '2022-03-04', NULL),
(146, 'Amayrani Coy', '5 de Mayo', '9371252292', '2022-03-04', NULL),
(147, 'Ronaldo Ramirez F', 'Mantilla', '9141275296', '2022-03-04', NULL),
(148, 'POLLO SINALOENSE Gar Miguel', 'Mantilla', '', '2022-03-04', NULL),
(149, 'Eden (Manolo Alcocer)', 'Calzada', '', '2022-03-04', NULL),
(150, 'Samuel (CARNICERIA NINON)', 'Mantilla', '9371239418', '2022-03-04', NULL),
(151, 'Angel Gabriel Morales Jimenez', 'Mantilla', '', '2022-03-04', NULL),
(152, 'Cinthia de la Cruz', 'Mantilla', '', '2022-03-04', NULL),
(153, 'Elias Gamas Jimenez (Romana)', 'Mantilla', '9371632741', '2022-03-04', NULL),
(154, 'Rafael Hernandez Gusano', 'Mantilla', '', '2022-03-04', NULL),
(155, 'Jose Eliseo Leon Lopez', 'Mantilla', '', '2022-03-04', NULL),
(156, 'Omar Hernandez', 'Mantilla', '8123973545', '2022-03-04', NULL),
(157, 'Lorena del Carmen Hernandez Sanchez (Pato)', 'Mantilla', '9371684759', '2022-03-04', NULL),
(158, 'Salvador Barra', 'Mantilla', '', '2022-03-04', NULL),
(159, 'Leticia Rodríguez González', '2da del 11', '9371680278', '2022-03-04', NULL),
(160, 'Sergio Colorado Colorado (Yuridia', '2da del 11', '', '2022-03-04', NULL),
(161, 'Ramon Jimenez', 'Mantilla', '9141110458', '2022-03-04', NULL),
(162, 'Christian Alexander de la Cruz Hernandez (Hijo de ', 'Calzada', '9371027517', '2022-03-04', NULL),
(163, 'Manuel Enrique Castro Ipolita', '5 de Mayo', '9141313312', '2022-03-04', NULL),
(164, 'Carlos Javier Tienda', 'Calzada', '9371541074', '2022-03-04', NULL),
(165, 'Beatriz Castellano Lopez', 'Calzada', '', '2022-03-04', NULL),
(166, 'Maria Martinez (Nero)', 'Mantilla', '9371003811', '2022-03-04', NULL),
(167, 'Doraliz Lopez Fuentes', '2da del 11', '9371217373', '2022-03-04', NULL),
(168, 'Pedro de la Cruz', 'Mantilla', '9371436590', '2022-03-04', NULL),
(169, 'Alonso Alexander Perez', 'Calzada', '9371550747', '2022-03-04', NULL),
(170, 'Jose Colorado', '2da del 11', '9371710606', '2022-03-04', NULL),
(171, 'Mercedez Acopa Gomez', '5 de Mayo', '9371651557', '2022-03-04', NULL),
(172, 'Heberto Hernandez Colorado', '5 de Mayo', '9371678856', '2022-03-04', NULL),
(173, 'Juan Gabriel Acopa', 'Calzada', '9371308195', '2022-03-04', NULL),
(174, 'Rocio Andy', 'Mantilla', '9141212429', '2022-03-04', NULL),
(175, 'Karina Irene Jimenez Lopez Cruz', 'Calzada', '9372296434', '2022-03-04', NULL),
(176, 'Cristian Colorado Cano (11 Final', '2da del 11', '9371207976', '2022-03-04', NULL),
(177, 'Jose de Dios (E. Mangos)', 'Mantilla', '', '2022-03-04', NULL),
(178, 'Israel Perez Montejo', 'Calzada', '9371430482', '2022-03-04', NULL),
(179, 'Margarita Montejo Burelo (Mama de Daniel)', 'Calzada', '', '2022-03-04', NULL),
(180, 'Valentin Sanchez Carnicero', 'Mantilla', '', '2022-03-04', NULL),
(181, 'Jorge Leonardo Jimenez Castillo', 'Mantilla', '', '2022-03-04', NULL),
(182, 'Magdalena López Sánchez (Deposito)', 'Calzada', '9371647361', '2022-03-04', NULL),
(183, 'Raul Jimenez', 'Mantilla', '9371370474', '2022-03-04', NULL),
(184, 'Carlos Arturo Montejo Ocaña (Misha)', 'Calzada', '6341122850', '2022-03-04', NULL),
(185, 'Erika de la Cruz Lopez', 'Calzada', '9371233291', '2022-03-04', NULL),
(186, 'Elizabeth Torres Cano', '2da del 11', '9371719131', '2022-03-04', NULL),
(187, 'Tito Libio Alejo Luna', 'Calzada', '9331254193', '2022-03-04', NULL),
(188, 'Fredy Ocaña Gomez', 'Mantilla', '9371203614', '2022-03-04', NULL),
(189, 'Cristina Colorado Ramos', 'Mantilla', '9371237839', '2022-03-04', NULL),
(190, 'Yosy Rodriguez', '2da del 11', '9141204083', '2022-03-04', NULL),
(191, 'Yesica Jiménez Pérez', 'Calzada', '9371695535', '2022-03-04', NULL),
(192, 'Marcelino Hernández Perez', 'Calzada', '9371546559', '2022-03-04', NULL),
(193, 'Karina Colorado Jimenez', '5 de Mayo', '9371652640', '2022-03-04', NULL),
(194, 'Adilene Colorado Lopez', '2da del 11', '9141328143', '2022-03-04', NULL),
(195, 'Carlos Burelo', 'Mantilla', '9371197006', '2022-03-04', NULL),
(196, 'Oscar Hernandez Gutierrez (Gallo)', 'Mantilla', '9371692591', '2022-03-04', NULL),
(197, 'Mario Lopez (Granja)', '5 de Mayo', '', '2022-03-04', NULL),
(198, 'Jose Jimenez (Antonia)', 'Mantilla', '9372703604', '2022-03-04', NULL),
(199, 'Sabina Montejo Burelo (Tia de Daniel) ', 'Calzada', '9372368190', '2022-03-04', NULL),
(200, 'Maestra Anabella', 'Mantilla', '9373697105', '2022-03-04', NULL),
(201, 'Marcos Perez Garcia (Taxista)', 'Mantilla', '9372303723', '2022-03-04', NULL),
(202, 'Lazaro Sanchez (Lacho Entrada)', 'Mantilla', '9371675819', '2022-03-04', NULL),
(203, 'Yuyi Hernandez Lopez', '5 de Mayo', '9371541367', '2022-03-04', NULL),
(204, 'Jovany Alexander Hernandez Hernandez', 'Mantilla', '9932908195', '2022-03-04', NULL),
(205, 'Leticia Jimenez Luna', '5 de Mayo', '9371651693', '2022-03-04', NULL),
(206, 'Jaime (Granja)', '5 de Mayo', '', '2022-03-04', NULL),
(207, 'Dario Burelo Jimenez', 'Mantilla', '9371247560', '2022-03-04', NULL),
(208, 'Benjamin Hernandez Jimenez', '5 de Mayo', '9371418765', '2022-03-04', NULL),
(209, 'Yelmi Torrez Naranjo', 'Mantilla', '9371406231', '2022-03-04', NULL),
(210, 'Javier Yesenia', 'Mantilla', '9371329510', '2022-03-04', NULL),
(211, 'Jesus Antonio Broca Almeida (Suegra de Karla)', 'Calzada', '9371054909', '2022-03-04', NULL),
(212, 'Yari Deisy Burelo Ocaña (Pollo)', 'Calzada', '', '2022-03-04', NULL),
(213, 'Urania Alcocer Ocaña', 'Calzada', '9371202017', '2022-03-04', NULL),
(214, 'Josue Manuel Vazques', 'Calzada', '9371222003', '2022-03-04', NULL),
(215, 'Miriam Garcia Lopez', 'Calzada', '9371531890', '2022-03-04', NULL),
(216, 'Cresefora Ocaña Dominguez (Choja)', 'Calzada', '9372277036', '2022-03-04', NULL),
(217, 'Adriana Hernandez de la Cruz (Renta sillas)', 'Mantilla', '9371289175', '2022-03-04', NULL),
(218, 'Nero Lopez', 'Mantilla', '9371003811', '2022-03-04', NULL),
(219, 'Edrey Torres Bautista (Vecina Enrrique)', 'Mantilla', '9372708659', '2022-03-04', NULL),
(220, 'Dario Jimenez de Dios', 'Mantilla', '', '2022-03-04', NULL),
(221, 'Candelaria Sanchez Marin', 'Calzada', '9371378824', '2022-03-04', NULL),
(222, 'Karla Quetchum (Mamá de Karla)', 'Calzada', '9371097539', '2022-03-04', NULL),
(223, 'Yadira Hernandez Colorado', '2da del 11', '9371238934', '2022-03-04', NULL),
(224, 'Josue Torres Alamilla', 'Calzada', '9934600295', '2022-03-04', NULL),
(225, 'Marisol Montejo Colorado ', '5 de Mayo', '9932882609', '2022-03-04', NULL),
(226, 'Leonardo Perez Acopa', 'Calzada', '9341170678', '2022-03-04', NULL),
(227, 'Yeni del Carmen Acopa', 'Mantilla', '9984862205', '2022-03-04', NULL),
(228, 'Greicy Cristel Hernandez Rodriguez', '2da del 11', '9372709253', '2022-03-04', NULL),
(229, 'Fabiola Dominguez', 'Calzada', '9371627769', '2022-03-04', NULL),
(230, 'Feliciano Hernandez', 'Mantilla', '9371288284', '2022-03-04', NULL),
(231, 'Enrique Hernandez Hernandez', 'Mantilla', '9373744128', '2022-03-04', NULL),
(232, 'Luis Fernando Cano Naranjo', '2da del 11', '9141398566', '2022-03-04', NULL),
(233, 'Samuel Dominguez', 'Calzada', '9371056997', '2022-03-04', NULL),
(234, 'Zorayda jimenez Hernandez', 'Mantilla', '9371623946', '2022-03-04', NULL),
(235, 'María Guadalupe Burelo Naranjo', 'Calzada', '9371894634', '2022-04-03', NULL),
(236, 'Nanci López Solís', 'Calzada', '9372279575', '2022-04-03', NULL),
(237, 'Natividad López Velázquez', 'Calzada', '9373770519', '2022-04-03', NULL),
(239, 'Octabio Gonzalez', 'Calzada', '9381864523', '2022-03-09', NULL),
(240, 'Estela Zamora Garcia', 'Calzada', '9371627238', '2022-03-07', NULL),
(241, 'Lucero Hernandez', 'Mantilla', '9381204795', '2022-03-08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `mac` varchar(20) NOT NULL,
  `serie` varchar(15) NOT NULL,
  `corte` int(3) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`id`, `tipo`, `id_cliente`, `id_plan`, `ip`, `mac`, `serie`, `corte`, `details`, `create_at`, `updated_at`) VALUES
(504, 'Fibra', 1, 2, '192.168.5.195', 'FC:EC:DA:CA:74:16', '', 1, NULL, '2022-04-01', '2022-05-31'),
(505, 'Fibra', 67, 2, '192.168.6.130', 'C8:A7:76:BF:E4:98', 'HWTC5947D09F', 1, NULL, '2022-04-01', '2022-04-01'),
(506, 'Fibra', 194, 2, '192.168.6.99', '90:17:3F:5D:2E:57', 'HWTCF21E9FA4', 1, NULL, '2022-04-01', '2022-04-01'),
(507, 'Fibra', 217, 2, '192.168.6.243', 'F4:B7:8D:30:B4:95', 'HWTC58E153A4', 1, NULL, '2022-04-01', '2022-04-01'),
(508, 'Fibra', 50, 2, '192.168.6.107', '30:E9:8E:F0:5E:CF', 'HWTC270632A1', 1, NULL, '2022-04-01', '2022-04-01'),
(509, 'Fibra', 96, 2, '192.168.6.162', 'F4:A4:D6:CC:F7:41', 'HWTC230D5AA4', 1, NULL, '2022-04-01', '2022-04-01'),
(510, 'Fibra', 34, 2, '192.168.6.64', 'F4:B7:8D:40:22:DC', 'HWTC59D68CA4', 15, NULL, '2022-04-01', '2022-04-01'),
(511, 'Wireless', 44, 2, '192.168.5.93', 'F4:92:BF:32:3A:90', '', 1, NULL, '2022-04-01', '2022-04-01'),
(512, 'Wireless', 48, 2, '192.168.5.98', 'E0:63:DA:FC:0F:AD', '', 1, NULL, '2022-04-01', '2022-04-01'),
(513, 'Fibra', 89, 2, '192.168.6.155', '78:57:73:F6:75:28', 'HWTCDA203AA4', 15, NULL, '2022-04-01', '2022-04-01'),
(514, 'Wireless', 169, 2, '192.168.5.147', 'FC:EC:DA:CA:BA:B9', '', 1, NULL, '2022-04-01', '2022-04-01'),
(515, 'Fibra', 146, 2, '192.168.6.233', '78:57:73:90:D0:78', 'HWTCD262E4A4', 1, NULL, '2022-04-01', '2022-04-01'),
(516, 'Fibra', 4, 2, '192.168.6.89', '90:17:3F:5D:2D:25', 'HWTCF21E8DA4', 1, NULL, '2022-04-01', '2022-04-01'),
(517, 'Fibra', 103, 2, '192.168.6.171', 'F4:B7:8D:3F:82:B0', 'HWTC59CD20A4', 1, NULL, '2022-04-01', '2022-04-01'),
(518, 'Fibra', 121, 2, '192.168.6.191', '20:3D:B2:98:55:49', 'HWTC98554881', 1, NULL, '2022-04-01', '2022-04-01'),
(519, 'Fibra', 123, 2, '192.168.6.193', 'AC:61:75:F2:8C:B1', 'HWTCF28CB07D', 1, NULL, '2022-04-01', '2022-04-01'),
(520, 'Fibra', 85, 2, '192.168.6.151', 'C4:A4:02:55:85:5E', 'HWTC5CA9E7A5', 1, NULL, '2022-04-01', '2022-04-01'),
(521, 'Fibra', 151, 2, '192.168.6.242', '78:57:73:8F:18:FE', 'HWTCD2490AA4', 15, NULL, '2022-04-01', '2022-04-01'),
(522, 'Fibra', 106, 2, '192.168.6.174', 'F4:B7:8D:49:CA:6F', 'HWTC5A7A31A4', 1, NULL, '2022-04-01', '2022-04-01'),
(523, 'Wireless', 2, 2, '192.168.5.196', 'FC:EC:DA:5A:D0:1F', '', 1, NULL, '2022-04-01', '2022-04-01'),
(524, 'Wireless', 29, 2, '192.168.5.35', 'FC:EC:DA:9C:47:04', '', 1, NULL, '2022-04-01', '2022-04-01'),
(525, 'Fibra', 144, 2, '192.168.6.230', '78:57:73:90:D1:55', 'HWTCD262F1A4', 15, NULL, '2022-04-01', '2022-04-01'),
(526, 'Fibra', 7, 2, '192.168.6.93', 'FC:EC:DA:9C:D7:48', 'HWTCF21EAAA4', 1, NULL, '2022-04-01', '2022-04-01'),
(527, 'Wireless', 165, 2, '192.168.5.117', '68:72:51:6C:59:DC', '', 1, NULL, '2022-04-01', '2022-04-01'),
(528, 'Fibra', 117, 2, '192.168.6.185', 'A4:BE:2B:46:02:C5', 'HWTCE2FA379C', 15, NULL, '2022-04-01', '2022-04-01'),
(529, 'Fibra', 208, 2, '192.168.6.197', 'A4:BE:2B:85:38:6C', 'HWTCE7A53F9C', 1, NULL, '2022-04-01', '2022-04-01'),
(530, 'Fibra', 140, 2, '192.168.6.223', '70:C7:F2:4F:52:03', 'HWTC4EA9EC9E', 15, NULL, '2022-04-01', '2022-04-01'),
(531, 'Fibra', 221, 2, '192.168.6.90', '90:17:3F:5D:2E:35', 'HWTCF21E9DA4', 1, NULL, '2022-04-01', '2022-04-01'),
(532, 'Fibra', 133, 2, '192.168.6.212', '34:6A:C2:6A:7E:61', 'HWTC6A7E607B', 15, NULL, '2022-04-01', '2022-04-01'),
(533, 'Fibra', 184, 2, '192.168.6.221', 'F4:B7:8D:49:D9:71', 'HWTC5A7B13A4', 1, NULL, '2022-04-01', '2022-04-01'),
(534, 'Wireless', 195, 2, '192.168.5.84', '74:83:C2:EE:40:FD', '', 1, NULL, '2022-04-01', '2022-04-01'),
(535, 'Fibra', 145, 2, '192.168.6.232', '78:57:73:90:D2:21', 'HWTCD262FDA4', 1, NULL, '2022-04-01', '2022-04-01'),
(536, 'Fibra', 122, 2, '192.168.6.192', '8C:FD:18:E7:8E:ED', 'HWTC72B7EF9E', 1, NULL, '2022-04-01', '2022-04-01'),
(537, 'Fibra', 164, 2, '192.168.6.81', '44:67:47:23:9F:99', 'HWTCFAD8759F', 1, NULL, '2022-04-01', '2022-04-01'),
(538, 'Fibra', 51, 2, '192.168.6.109', 'D0:C6:5B:23:4A:33', 'HWTC8BDBB49F', 1, NULL, '2022-04-01', '2022-04-01'),
(539, 'Fibra', 92, 2, '192.168.6.158', 'C4:A4:02:55:E7:C8', 'HWTC5CAFB1A5', 1, NULL, '2022-04-01', '2022-04-01'),
(540, 'Wireless', 162, 2, '192.168.5.103', 'E0:63:DA:92:2C:C6', '', 1, NULL, '2022-04-01', '2022-04-01'),
(541, 'Fibra', 90, 2, '192.168.6.156', '78:57:73:F6:8A:35', 'HWTCDA2177A4', 15, NULL, '2022-04-01', '2022-04-01'),
(542, 'Fibra', 152, 2, '192.168.6.246', '78:57:73:8F:10:18', 'HWTCD24884A4', 1, NULL, '2022-04-01', '2022-04-01'),
(543, 'Fibra', 40, 2, '192.168.6.54', 'D4:3D:F3:90:6B:33', 'ZXYG152A0B17', 1, NULL, '2022-04-01', '2022-04-01'),
(544, 'Fibra', 216, 2, '192.168.6.238', '78:57:73:8C:8A:C2', 'HWTCD2228EA4', 1, NULL, '2022-04-01', '2022-04-01'),
(545, 'Wireless', 176, 2, '192.168.5.175', 'B4:FB:E4:30:60:BC', '', 1, NULL, '2022-04-01', '2022-04-01'),
(546, 'Fibra', 102, 2, '192.168.6.170', 'C4:A4:02:55:84:A3', 'HWTC5CA9DCA5', 1, NULL, '2022-04-01', '2022-04-01'),
(547, 'Fibra', 189, 2, '192.168.6.103', '90:17:3F:5D:2F:EF', 'HWTCF21EB7A4', 15, NULL, '2022-04-01', '2022-04-01'),
(548, 'Fibra', 207, 2, '192.168.6.208', '48:43:5A:71:90:9C', 'HWTC71909B79', 1, NULL, '2022-04-01', '2022-04-01'),
(549, '0', 220, 2, '', '', '', 1, NULL, '2022-04-01', '2022-04-01'),
(550, 'Fibra', 66, 2, '192.168.6.129', 'D0:C6:5B:24:6F:A6', 'HWTC8BECF79F', 1, NULL, '2022-04-01', '2022-04-01'),
(551, 'Fibra', 141, 2, '192.168.6.225', '70:C7:F2:4F:58:76', 'HWTC4EAA6B9E', 1, NULL, '2022-04-01', '2022-04-01'),
(552, 'Fibra', 69, 2, '192.168.6.132', '5C:E8:83:A8:2C:CB', 'HWTCB092299F', 1, NULL, '2022-04-01', '2022-04-01'),
(553, 'Fibra', 167, 2, '192.168.6.8', 'B8:DD:71:F3:9A:02', 'ZTEG212849DC', 1, NULL, '2022-04-01', '2022-04-01'),
(554, 'Fibra', 116, 2, '192.168.6.184', 'EC:38:8F:E3:97:7D', 'HWTCE3977C54', 15, NULL, '2022-04-01', '2022-04-01'),
(555, 'Fibra', 115, 2, '192.168.6.183', 'F4:B7:8D:3F:6A:62', 'HWTC59CBB2A4', 1, NULL, '2022-04-01', '2022-04-01'),
(556, 'Fibra', 142, 2, '192.168.6.227', '70:C7:F2:4F:57:65', 'HWTC4EAA569E', 1, NULL, '2022-04-01', '2022-04-01'),
(557, 'Fibra', 149, 2, '192.168.6.237', '78:57:73:90:CC:6B', 'HWTCD262A7A4', 15, NULL, '2022-04-01', '2022-04-01'),
(558, 'Fibra', 219, 2, '192.168.6.94', '90:17:3F:5D:2B:38', 'HWTCF21E70A4', 15, NULL, '2022-04-01', '2022-04-01'),
(559, 'Wireless', 20, 2, '192.168.5.230', '00:27:22:1E:63:04', '', 1, NULL, '2022-04-01', '2022-04-01'),
(560, 'Fibra', 153, 2, '192.168.6.248', 'F4:B7:8D:30:8B:47', 'HWTC58DEE5A4', 1, NULL, '2022-04-01', '2022-04-01'),
(561, 'Fibra', 143, 2, '192.168.6.228', '78:57:73:90:D1:BB', 'HWTCD262F7A4', 1, NULL, '2022-04-01', '2022-04-01'),
(562, 'Wireless', 5, 2, '192.168.5.202', '58:D9:D5:34:1B:E0', '', 15, NULL, '2022-04-01', '2022-04-01'),
(563, 'Fibra', 94, 2, '192.168.6.160', 'F4:A4:D6:CC:E9:93', 'HWTC230C8CA4', 15, NULL, '2022-04-01', '2022-04-01'),
(564, 'Fibra', 186, 2, '192.168.6.53', 'F4:A4:D6:62:56:DB', 'HWTC1B2BDFA4', 15, NULL, '2022-04-01', '2022-04-01'),
(565, 'Fibra', 231, 2, '192.168.6.57', 'DC:99:14:C4:B0:45', 'HTWC1658C09D', 15, NULL, '2022-04-01', '2022-04-01'),
(566, 'Wireless', 8, 2, '192.168.5.209', '74:83:C2:AE:C9:B5', '', 15, NULL, '2022-04-01', '2022-04-01'),
(567, 'Fibra', 107, 2, '192.168.6.175', 'F4:A4:D6:CC:E9:82', 'HWTC230C8BA4', 1, NULL, '2022-04-01', '2022-04-01'),
(568, 'Fibra', 127, 2, '192.168.6.201', '48:AD:08:8F:EB:A5', 'HWTC8FEBA457', 1, NULL, '2022-04-01', '2022-04-01'),
(569, 'Fibra', 185, 2, '192.168.6.105', '90:17:3F:5D:29:A0', 'HWTCF21E58A4', 1, NULL, '2022-04-01', '2022-04-01'),
(570, 'Fibra', 104, 2, '192.168.6.172', 'F4:A4:D6:CC:D8:71', 'HWTC230B8AA4', 15, NULL, '2022-04-01', '2022-04-01'),
(571, 'Wireless', 9, 2, '192.168.5.216', '74:83:C2:56:E7:C2', '', 15, NULL, '2022-04-01', '2022-04-01'),
(572, 'Fibra', 229, 2, '192.168.6.59', 'B8:DD:71:FC:C9:3C', 'ZTEG21293E28', 15, NULL, '2022-04-01', '2022-04-01'),
(573, 'Fibra', 118, 2, '192.168.6.186', 'AC:61:75:1A:2F:FA', 'HWTC1A2FF97D', 15, NULL, '2022-04-01', '2022-04-01'),
(574, 'Fibra', 91, 2, '192.168.6.157', 'F4:A4:D6:CC:F7:85', 'HWTC230D5EA4', 15, NULL, '2022-04-01', '2022-04-01'),
(575, 'Wireless', 21, 2, '192.168.5.231', '74:83:C2:EC:4D:FA', '', 1, NULL, '2022-04-01', '2022-04-01'),
(576, 'Fibra', 230, 2, '192.168.6.52', '78:57:73:D6:63:27', 'HWTCD7880AA4', 15, NULL, '2022-04-01', '2022-04-01'),
(577, 'Fibra', 100, 2, '192.168.6.166', 'F4:A4:D6:CC:F7:74', 'HWTC230D5DA4', 1, NULL, '2022-04-01', '2022-04-01'),
(578, 'Fibra', 130, 2, '192.168.6.210', '34:6A:C2:D3:70:17', 'HWTCD370167B', 1, NULL, '2022-04-01', '2022-04-01'),
(579, 'Fibra', 84, 2, '192.168.6.150', '80:38:BC:DB:48:43', 'HWTCDB483B3D', 1, NULL, '2022-04-01', '2022-04-01'),
(580, 'Fibra', 188, 2, '192.168.6.134', '90:17:3F:F5:00:2C', 'HWTCFB2AC9A4', 15, NULL, '2022-04-01', '2022-04-01'),
(581, 'Fibra', 71, 2, '192.168.6.135', '90:17:3F:F4:ED:1D', 'HWTCFB29AAA4', 15, NULL, '2022-04-01', '2022-04-01'),
(582, 'Fibra', 120, 2, '192.168.6.189', '68:CC:6E:A6:E5:B0', 'HWTC61446E9A', 15, NULL, '2022-04-01', '2022-04-01'),
(583, 'Fibra', 13, 2, '192.168.6.78', '1C:AE:CB:98:22:E6', 'HWTCBCCA48A0', 15, NULL, '2022-04-01', '2022-04-01'),
(584, 'Wireless', 26, 2, '192.168.5.240', '74:AC:B9:7E:28:CF', '', 1, NULL, '2022-04-01', '2022-04-01'),
(585, 'Wireless', 10, 2, '192.168.5.218', '74:83:C2:EC:87:9C', '', 0, NULL, '2022-04-01', '2022-04-01'),
(586, 'Fibra', 81, 2, '192.168.6.147', '34:6A:C2:D0:51:74', 'HWTCD051737B', 15, NULL, '2022-04-01', '2022-04-01'),
(587, 'Fibra', 228, 2, '192.168.6.62', 'CC:05:77:9A:D3:E2', 'HWTCE324C29F', 15, NULL, '2022-04-01', '2022-04-01'),
(588, 'Fibra', 109, 2, '192.168.6.177', 'F4:B7:8D:3F:6E:4D', 'HWTC59CBEDA4', 1, NULL, '2022-04-01', '2022-04-01'),
(589, 'Fibra', 172, 2, '192.168.6.66', 'F4:A4:D6:71:EC:BE', 'HWTC1C1692A4', 15, NULL, '2022-04-01', '2022-04-01'),
(590, 'Fibra', 131, 2, '192.168.6.210', '48:AD:08:8E:3C:78', 'HWTC8E3C7757', 15, NULL, '2022-04-01', '2022-04-01'),
(591, 'Wireless', 15, 2, '192.168.5.223', '74:83:C2:AE:B4:3F', '', 1, NULL, '2022-04-01', '2022-04-01'),
(592, 'Fibra', 108, 2, '192.168.6.58', '68:CC:6E:63:7B:80', 'HWTC5B96109A', 15, NULL, '2022-04-01', '2022-04-01'),
(593, 'Wireless', 46, 2, '192.168.5.95', '74:AC:B9:0C:6A:56', '', 1, NULL, '2022-04-01', '2022-04-01'),
(594, 'Fibra', 86, 2, '192.168.6.152', '78:57:73:F6:BD:57', 'HWTCDA2479A4', 15, NULL, '2022-04-01', '2022-04-01'),
(595, 'Fibra', 178, 2, '192.168.6.98', '90:17:3F:5D:2E:F0', 'HWTCF21EA8A4', 15, NULL, '2022-04-01', '2022-04-01'),
(596, 'Wireless', 27, 2, '192.168.5.241', '74:AC:B9:7E:2F:69', '', 1, NULL, '2022-04-01', '2022-04-01'),
(597, 'Fibra', 206, 2, '192.168.6.203', '04:9F:CA:CC:B5:03', 'HWTCCCB5027C', 1, NULL, '2022-04-01', '2022-04-01'),
(598, 'Fibra', 25, 2, '192.168.6.72', '28:11:EC:9B:4F:C5', 'HWTC397318A4', 1, NULL, '2022-04-01', '2022-04-01'),
(599, 'Fibra', 42, 2, '192.168.6.61', 'F0:3F:95:A1:C5:FB', 'HWTC45AA38A1', 1, NULL, '2022-04-01', '2022-04-01'),
(600, 'Fibra', 210, 2, '192.168.6.240', '78:57:73:90:CC:F3', 'HWTCD262AFA4', 1, NULL, '2022-04-01', '2022-04-01'),
(601, 'Fibra', 211, 2, '192.168.6.205', '60:7E:CD:14:8A:03', 'HWTCFD696CA4', 1, NULL, '2022-04-01', '2022-04-01'),
(602, 'Fibra', 137, 2, '192.168.6.219', 'F4:B7:8D:49:B4:30', 'HWTC5A78E2A4', 1, NULL, '2022-04-01', '2022-04-01'),
(603, 'Fibra', 93, 2, '192.168.6.159', '48:AD:08:8F:40:B7', 'HWTC8F40B657', 1, NULL, '2022-04-01', '2022-04-01'),
(604, 'Fibra', 114, 2, '192.168.6.182', 'F4:B7:8D:40:1A:8F', 'HWTC59D60FA4', 1, NULL, '2022-04-01', '2022-04-01'),
(605, 'Fibra', 38, 2, '192.168.6.65', 'C4:A4:02:1F:06:9A', 'HWTC56BBB1A5', 1, NULL, '2022-04-01', '2022-04-01'),
(606, 'Wireless', 17, 2, '192.168.5.227', 'E0:63:DA:F2:CF:4A', '', 1, NULL, '2022-04-01', '2022-04-01'),
(607, 'Fibra', 181, 2, '192.168.6.77', '44:A1:91:D1:AD:4C', 'HWTCF77C359F', 15, NULL, '2022-04-01', '2022-04-01'),
(608, 'Fibra', 87, 2, '192.168.6.153', 'C4:A4:02:55:8E:00', 'HWTC5CAA69A5', 15, NULL, '2022-04-01', '2022-04-01'),
(609, 'Wireless', 30, 2, '192.168.5.38', 'F4:92:BF:E2:11:46', '', 1, NULL, '2022-04-01', '2022-04-01'),
(610, 'Fibra', 59, 2, '192.168.6.106', 'C8:A7:76:BF:A6:F8', 'HWTC5944309F', 1, NULL, '2022-04-01', '2022-04-01'),
(611, 'Fibra', 57, 2, '192.168.6.118', 'C8:A7:76:BF:91:96', 'HWTC5942EE9F', 15, NULL, '2022-04-01', '2022-04-01'),
(612, 'Wireless', 170, 2, '192.168.5.149', 'FC:EC:DA:0A:91:46', '', 1, NULL, '2022-04-01', '2022-04-01'),
(613, 'Wireless', 177, 2, '192.168.5.177', 'FC:EC:DA:C6:66:EA', '', 1, NULL, '2022-04-01', '2022-04-01'),
(614, 'Fibra', 74, 2, '192.168.6.139', '90:17:3F:F4:E6:F0', 'HWTCFB294DA4', 1, NULL, '2022-04-01', '2022-04-01'),
(615, 'Fibra', 155, 2, '192.168.6.250', 'F4:B7:8D:30:99:06', 'HWTC58DFB4A4', 1, NULL, '2022-04-01', '2022-04-01'),
(616, 'Fibra', 198, 2, '192.168.6.239', '78:57:73:90:D1:11', 'HWTCD262EDA4', 15, NULL, '2022-04-01', '2022-04-01'),
(617, 'Fibra', 101, 2, '192.168.6.169', 'F4:A4:D6:CA:E1:D0', 'HWTC22EDF9A4', 1, NULL, '2022-04-01', '2022-04-01'),
(618, 'Fibra', 55, 2, '192.168.6.116', '5C:E8:83:28:D4:44', 'HWTCA7FF6F9F', 15, NULL, '2022-04-01', '2022-04-01'),
(619, 'Fibra', 79, 2, '192.168.6.145', 'AC:61:75:CE:47:A8', 'HWTCCE47A77D', 1, NULL, '2022-04-01', '2022-04-01'),
(620, 'Fibra', 214, 2, '192.168.6.119', 'EC:38:8F:E2:BB:8D', 'HWTCE2BB8C54', 15, NULL, '2022-04-01', '2022-04-01'),
(621, 'Fibra', 224, 2, '192.168.6.83', 'F0:3F:95:A1:4F:DA', 'HWTC45A351A1', 1, NULL, '2022-04-01', '2022-04-01'),
(622, 'Fibra', 204, 2, '192.168.6.214', '44:82:E5:1A:14:DC', 'HWTCA0DD329E', 0, NULL, '2022-04-01', '2022-04-01'),
(623, 'Fibra', 53, 2, '192.168.6.114', '30:E9:8E:C1:06:66', 'HWTC245C97A1', 15, NULL, '2022-04-01', '2022-04-01'),
(624, 'Wireless', 173, 2, '192.168.5.159', '78:8A:20:A6:59:04', '', 1, NULL, '2022-04-01', '2022-04-01'),
(625, 'Fibra', 77, 2, '192.168.6.142', 'BC:3F:8F:67:64:DB', 'HWTC6B923C9A', 1, NULL, '2022-04-01', '2022-04-01'),
(626, 'Fibra', 54, 2, '192.168.6.115', '30:E9:8E:F1:8A:D5', 'HWTC2717D8A1', 1, NULL, '2022-04-01', '2022-04-01'),
(627, 'Fibra', 78, 2, '192.168.6.144', '80:38:BC:DA:87:5A', 'HWTCDA87523D', 15, NULL, '2022-04-01', '2022-04-01'),
(628, 'Fibra', 193, 2, '192.168.6.231', '78:57:73:8C:89:3B', 'HWTCD22277A4', 1, NULL, '2022-04-01', '2022-04-01'),
(629, 'Wireless', 175, 2, '192.168.5.170', 'FC:EC:DA:9A:B3:14', '', 1, NULL, '2022-04-01', '2022-04-01'),
(630, 'Fibra', 222, 2, '192.168.6.206', '80:38:BC:63:15:BC', 'HWTC6315B43D', 1, NULL, '2022-04-01', '2022-04-01'),
(631, 'Fibra', 129, 2, '192.168.6.207', 'AC:61:75:1A:D5:54', 'HWTC1AD5537D', 1, NULL, '2022-04-01', '2022-04-01'),
(632, 'Fibra', 41, 2, '192.168.6.88', '74:AC:B9:F6:50:B7', 'HWTCF21EB1A4', 1, NULL, '2022-04-01', '2022-04-01'),
(633, 'Fibra', 58, 2, '192.168.6.120', 'A4:00:E2:CE:C1:B2', 'HWTC6F145A9F', 15, NULL, '2022-04-01', '2022-04-01'),
(634, 'Fibra', 105, 2, '192.168.6.173', 'F4:A4:D6:CC:F6:EC', 'HWTC230D55A4', 1, NULL, '2022-04-01', '2022-04-01'),
(635, 'Fibra', 202, 2, '192.168.6.224', 'F4:B7:8D:49:E3:EF', 'HWTC5A7BB1A4', 1, NULL, '2022-04-01', '2022-04-01'),
(636, 'Fibra', 226, 2, '192.168.6.75', '60:D7:55:87:75:31', 'HWTCACB817A0', 1, NULL, '2022-04-01', '2022-04-01'),
(637, 'Fibra', 18, 2, '192.168.6.74', '44:A1:91:CE:89:62', 'HWTCF74CF69F', 1, NULL, '2022-04-01', '2022-04-01'),
(638, 'Fibra', 98, 2, '192.168.6.164', 'F4:A4:D6:CC:E9:71', 'HWTC230C8AA4', 15, NULL, '2022-04-01', '2022-04-01'),
(639, 'Fibra', 205, 2, '192.168.6.67', '54:13:10:B6:76:86', 'HWTC5A5A53A2', 1, NULL, '2022-04-01', '2022-04-01'),
(640, 'Fibra', 159, 2, '192.168.6.110', '7C:1C:F1:6D:B0:7F', 'HWTCCB53A29E', 15, NULL, '2022-04-01', '2022-04-01'),
(641, 'Fibra', 95, 2, '192.168.6.161', 'F4:A4:D6:CC:D7:72', 'HWTC230B7BA4', 0, NULL, '2022-04-01', '2022-04-01'),
(642, 'Fibra', 128, 2, '192.168.6.204', '34:6A:C2:B3:CB:AD', 'HWTCB3CBAC7B', 1, NULL, '2022-04-01', '2022-04-01'),
(643, 'Fibra', 119, 2, '192.168.6.187', 'AC:61:75:EF:00:B6', 'HWTCEF00B57D', 15, NULL, '2022-04-01', '2022-04-01'),
(644, 'Fibra', 62, 2, '192.168.6.124', '7C:1C:F1:78:69:C9', 'HWTCCBF4949E', 1, NULL, '2022-04-01', '2022-04-01'),
(645, 'Fibra', 157, 2, '192.168.6.252', 'F4:B7:8D:30:98:4B', 'HWTC58DFA9A4', 1, NULL, '2022-04-01', '2022-04-01'),
(646, 'Wireless', 45, 2, '192.168.5.94', 'FC:EC:DA:CA:D8:15', '', 1, NULL, '2022-04-01', '2022-04-01'),
(647, 'Fibra', 232, 2, '192.168.6.56', '80:69:33:AC:DA:13', 'HWTCF8F0319D', 15, NULL, '2022-04-01', '2022-04-01'),
(648, 'Fibra', 82, 2, '192.168.6.148', '48:43:5A:70:BD:92', 'HWTC70BD9179', 1, NULL, '2022-04-01', '2022-04-01'),
(649, 'Fibra', 200, 2, '192.168.6.234', '70:79:90:9B:E0:D9', 'HWTC9BE0D88D', 15, NULL, '2022-04-01', '2022-04-01'),
(650, 'Fibra', 182, 2, '192.168.6.70', '44:A1:91:CF:76:41', 'HWTCF75ADA9F', 15, NULL, '2022-04-01', '2022-04-01'),
(651, 'Fibra', 126, 2, '192.168.6.199', '60:FA:9D:D8:EF:6C', 'HWTC9DAEB49E', 1, NULL, '2022-04-01', '2022-04-01'),
(652, 'Fibra', 73, 2, '192.168.6.137', '90:17:3F:F5:01:B3', 'HWTCFB2AE0A4', 15, NULL, '2022-04-01', '2022-04-01'),
(653, 'Fibra', 163, 2, '192.168.6.91', '90:17:3F:5D:30:00', 'HWTCF21EB8A4', 1, NULL, '2022-04-01', '2022-04-01'),
(654, 'Fibra', 192, 2, '192.168.6.101', '90:17:3F:5D:2D:F1', 'HWTCF21E99A4', 15, NULL, '2022-04-01', '2022-04-01'),
(655, 'Fibra', 201, 2, '192.168.6.226', '78:57:73:93:91:2C', 'HWTCD28C58A4', 1, NULL, '2022-04-01', '2022-04-01'),
(656, 'Wireless', 179, 2, '192.168.5.180', 'FC:EC:DA:92:25:93', '', 15, NULL, '2022-04-01', '2022-04-01'),
(657, 'Wireless', 49, 2, '192.168.5.99', 'F0:9F:C2:92:EC:23', '', 1, NULL, '2022-04-01', '2022-04-01'),
(658, 'Fibra', 56, 2, '192.168.6.117', 'C8:A7:76:BF:6E:31', 'HWTC5940D99F', 1, NULL, '2022-04-01', '2022-04-01'),
(659, 'Fibra', 63, 2, '192.168.6.126', 'C8:A7:76:BE:79:49', 'HWTC5932719F', 15, NULL, '2022-04-01', '2022-04-01'),
(660, 'Fibra', 166, 2, '192.168.6.79', '6C:EB:B6:43:2A:09', 'HWTCDE2561A2', 1, NULL, '2022-04-01', '2022-04-01'),
(661, 'Fibra', 110, 2, '192.168.6.178', 'F4:B7:8D:3F:82:4A', 'HWTC59CD1AA4', 15, NULL, '2022-04-01', '2022-04-01'),
(662, 'Fibra', 60, 2, '192.168.6.122', 'C8:A7:76:BF:25:7A', 'HWTC593C929F', 15, NULL, '2022-04-01', '2022-04-01'),
(663, '0', 197, 2, '', '', '', 1, NULL, '2022-04-01', '2022-04-01'),
(664, 'Fibra', 225, 2, '192.168.6.82', '30:FD:65:62:9C:DA', 'HWTC5AB1E7A2', 15, NULL, '2022-04-01', '2022-04-01'),
(665, 'Fibra', 136, 2, '192.168.6.218', 'F4:B7:8D:49:C8:4F', 'HWTC5A7A11A4', 1, NULL, '2022-04-01', '2022-04-01'),
(666, 'Wireless', 171, 2, '192.168.5.155', 'FC:EC:DA:0A:C9:D2', '', 1, NULL, '2022-04-01', '2022-04-01'),
(667, 'Fibra', 65, 2, '192.168.6.128', '1C:20:DB:52:CF:0B', 'HWTC71D1919F', 1, NULL, '2022-04-01', '2022-04-01'),
(668, 'Wireless', 215, 2, '192.168.5.167', '68:72:51:84:AE:6A', '', 15, NULL, '2022-04-01', '2022-04-01'),
(669, 'Wireless', 28, 2, '192.168.5.242', '78:8A:20:CE:73:00', '', 1, NULL, '2022-04-01', '2022-04-01'),
(670, 'Fibra', 111, 2, '192.168.6.179', 'F4:B7:8D:4A:33:9F', 'HWTC5A8061A4', 1, NULL, '2022-04-01', '2022-04-01'),
(671, 'Fibra', 76, 2, '192.168.6.141', '34:6A:C2:1F:1E:04', 'HWTC1F1E037B', 15, NULL, '2022-04-01', '2022-04-01'),
(672, 'Fibra', 88, 2, '192.168.6.154', 'C4:A4:02:19:20:DB', 'HWTC55822EA5', 1, NULL, '2022-04-01', '2022-04-01'),
(673, 'Fibra', 80, 2, '192.168.6.146', 'A4:BE:2B:A7:BD:E1', 'HWTCEA00AF9C', 15, NULL, '2022-04-01', '2022-04-01'),
(674, 'Fibra', 75, 2, '192.168.6.140', '90:17:3F:F4:DC:0C', 'HTWCFB28A9A4', 15, NULL, '2022-04-01', '2022-04-01'),
(675, 'Fibra', 218, 2, '192.168.6.244', '78:57:73:8F:19:64', 'HWTCD24910A4', 15, NULL, '2022-04-01', '2022-04-01'),
(676, 'Wireless', 23, 2, '192.168.5.233', 'E0:63:DA:F6:C5:D2', '', 1, NULL, '2022-04-01', '2022-04-01'),
(677, 'Fibra', 16, 2, '192.168.6.63', 'F0:3F:95:A1:6C:8A', 'HWTC45A501A1', 1, NULL, '2022-04-01', '2022-04-01'),
(678, 'Fibra', 138, 2, '192.168.6.220', '60:7E:CD:14:9D:67', 'HWTCFD6B80A4', 1, NULL, '2022-04-01', '2022-04-01'),
(679, 'Fibra', 31, 2, '192.168.6.96', '90:17:3F:5D:2D:AE', 'HWTCF21E95A4', 15, NULL, '2022-04-01', '2022-04-01'),
(680, 'Fibra', 156, 2, '192.168.6.251', 'F4:B7:8D:30:A7:09', 'HWTC58E087A4', 15, NULL, '2022-04-01', '2022-04-01'),
(681, 'Fibra', 196, 2, '192.168.6.196', 'C0:BF:C0:05:33:53', 'HWTC0533528F', 1, NULL, '2022-04-01', '2022-04-01'),
(682, 'Wireless', 14, 2, '192.168.5.222', '74:83:C2:E0:C7:C0', '', 1, NULL, '2022-04-01', '2022-04-01'),
(683, 'Fibra', 113, 2, '192.168.6.181', 'F4:B7:8D:49:C3:BA', 'HWTC5A79CCA4', 1, NULL, '2022-04-01', '2022-04-01'),
(684, 'Fibra', 124, 2, '192.168.6.195', 'F4:1D:6B:E7:11:A0', 'HWTC8DED549E', 1, NULL, '2022-04-01', '2022-04-01'),
(685, 'Fibra', 139, 2, '192.168.6.222', 'F4:B7:8D:49:C3:98', 'HWTC5A79CAA4', 1, NULL, '2022-04-01', '2022-04-01'),
(686, 'Fibra', 168, 2, '192.168.6.80', '4C:F5:5B:50:82:5B', 'HWTC09EE5BA3', 15, NULL, '2022-04-01', '2022-04-01'),
(687, 'Fibra', 148, 2, '192.168.6.236', '78:57:73:90:BC:E1', 'HWTCD261BDA4', 1, NULL, '2022-04-01', '2022-04-01'),
(688, 'Fibra', 64, 2, '192.168.6.127', 'C8:A7:76:65:A0:92', 'HWTC54D20A9F', 1, NULL, '2022-04-01', '2022-04-01'),
(689, 'Fibra', 22, 2, '192.168.6.100', '90:17:3F:5D:2F:45', 'HWTCF21EADA4', 1, NULL, '2022-04-01', '2022-04-01'),
(690, 'Fibra', 83, 2, '192.168.6.149', '4C:F5:5B:4C:02:63', 'HWTC0952B7A3', 1, NULL, '2022-04-01', '2022-04-01'),
(691, 'Wireless', 6, 2, '192.168.5.205', 'FC:EC:DA:CA:D8:7D', '', 15, NULL, '2022-04-01', '2022-04-01'),
(692, 'Fibra', 154, 2, '192.168.6.249', '78:57:73:8F:0B:50', 'HWTCD2483CA4', 1, NULL, '2022-04-01', '2022-04-01'),
(693, 'Fibra', 161, 2, '192.168.5.100', '74:AC:B9:7E:33:93', '', 15, NULL, '2022-04-01', '2022-04-01'),
(694, 'Fibra', 99, 2, '192.168.6.165', 'F4:A4:D6:CC:F7:30', 'HWTC230D59A4', 1, NULL, '2022-04-01', '2022-04-01'),
(695, 'Wireless', 37, 2, '192.168.5.77', 'F4:92:BF:38:78:4F', '', 1, NULL, '2022-04-01', '2022-04-01'),
(696, 'Fibra', 183, 2, '192.168.6.87', '90:17:3F:5D:2F:01', 'HWTCF21EA9A4', 15, NULL, '2022-04-01', '2022-04-01'),
(697, 'Wireless', 3, 2, '192.168.5.199', '80:2A:A8:76:7E:1F', '', 15, NULL, '2022-04-01', '2022-04-01'),
(698, 'Wireless', 174, 2, '192.168.5.161', 'E0:63:DA:42:E3:57', '', 1, NULL, '2022-04-01', '2022-04-01'),
(699, 'Fibra', 147, 2, '192.168.6.235', '78:57:73:90:C1:A9', 'HWTCD26205A4', 1, NULL, '2022-04-01', '2022-04-01'),
(700, 'Fibra', 112, 2, '192.168.6.180', 'F4:B7:8D:40:DD:A9', 'HWTC59E189A4', 15, NULL, '2022-04-01', '2022-04-01'),
(701, 'Fibra', 199, 2, '192.168.6.216', 'F4:B7:8D:49:C3:A9', 'HWTC5A79CBA4', 1, NULL, '2022-04-01', '2022-04-01'),
(702, 'Fibra', 158, 2, '192.168.6.254', 'C4:FF:1F:33:1E:45', 'HWTCF9F5BD9A', 1, NULL, '2022-04-01', '2022-04-01'),
(703, 'Fibra', 150, 2, '192.168.6.241', '78:57:73:8E:F9:D9', 'HWTCD24735A4', 15, NULL, '2022-04-01', '2022-04-01'),
(704, 'Fibra', 233, 2, '192.168.6.55', '34:0A:98:03:FD:80', 'HWTC1AA72E9D', 1, NULL, '2022-04-01', '2022-04-01'),
(705, 'Fibra', 32, 2, '192.168.6.69', '90:17:3F:5D:2E:DF', 'HWTCF21EA7A4', 1, NULL, '2022-04-01', '2022-04-01'),
(706, 'Wireless', 33, 2, '192.168.5.50', '74:AC:B9:7C:AA:29', '', 15, NULL, '2022-04-01', '2022-04-01'),
(707, 'Fibra', 70, 2, '192.168.6.133', '5C:E8:83:26:0B:65', 'HWTCA7D5809F', 15, NULL, '2022-04-01', '2022-04-01'),
(708, 'Fibra', 160, 2, '192.168.6.111', 'A4:00:E2:BE:9B:29', 'HWTC6E2CA19F', 1, NULL, '2022-04-01', '2022-04-01'),
(709, 'Fibra', 125, 2, '192.168.6.198', 'A4:BE:2B:44:AA:73', 'HWTCE2E6459C', 15, NULL, '2022-04-01', '2022-04-01'),
(710, 'Fibra', 97, 2, '192.168.6.163', 'F4:A4:D6:CC:D6:A6', 'HWTC230B6FA4', 1, NULL, '2022-04-01', '2022-04-01'),
(711, 'Wireless', 24, 2, '192.168.5.235', '74:AC:B9:7E:27:D1', '', 1, NULL, '2022-04-01', '2022-04-01'),
(712, 'Fibra', 132, 2, '192.168.6.211', 'F4:1D:6B:81:92:2A', 'HWTC87B5B49E', 1, NULL, '2022-04-01', '2022-04-01'),
(713, 'Fibra', 187, 1, '192.168.6.104', '90:17:3F:5D:2F:56', 'HWTCF21EAEA4', 15, NULL, '2022-04-01', '2022-05-31'),
(714, 'Fibra', 61, 2, '192.168.6.123', 'C8:A7:76:BF:D8:60', 'HWTC5947189F', 15, NULL, '2022-04-01', '2022-04-01'),
(715, 'Fibra', 213, 2, '192.168.6.188', 'F4:1D:6B:82:C0:C4', 'HWTC87CB2E9E', 15, NULL, '2022-04-01', '2022-04-01'),
(716, 'Fibra', 180, 2, '192.168.6.97', '90:17:3F:5D:30:44', 'HWTCF21EBCA4', 15, NULL, '2022-04-01', '2022-04-01'),
(717, 'Wireless', 47, 2, '192.168.5.97', 'F4:92:BF:32:3A:A6', '', 15, NULL, '2022-04-01', '2022-04-01'),
(718, 'Wireless', 11, 2, '192.168.5.219', '74:83:C2:EC:71:FD', '', 1, NULL, '2022-04-01', '2022-04-01'),
(719, 'Wireless', 43, 2, '192.168.5.90', '74:AC:B9:F6:4C:65', '', 1, NULL, '2022-04-01', '2022-04-01'),
(720, 'Fibra', 52, 2, '192.168.6.113', 'A4:00:E2:BE:7C:BF', 'HWTC6E2AD79F', 0, NULL, '2022-04-01', '2022-04-01'),
(721, 'Wireless', 12, 2, '192.168.5.220', '74:83:C2:AC:E9:CB', '', 1, NULL, '2022-04-01', '2022-04-01'),
(722, 'Fibra', 35, 2, '192.168.6.73', '4C:F5:5B:1E:B6:A5', 'HWTCFECE3EA2', 15, NULL, '2022-04-01', '2022-04-01'),
(723, 'Wireless', 19, 2, '192.168.5.229', '18:E8:29:D0:17:F5', '', 15, NULL, '2022-04-01', '2022-04-01'),
(724, 'Fibra', 39, 2, '192.168.6.95', '90:17:3F:5D:29:5D', 'HWTCF21E54A4', 1, NULL, '2022-04-01', '2022-04-01'),
(725, 'Fibra', 223, 2, '192.168.6.84', '90:17:3F:5D:2F:DE', 'HWTCF21EB6A4', 15, NULL, '2022-04-01', '2022-04-01'),
(726, 'Fibra', 212, 2, '192.168.6.190', 'EC:4D:47:7C:FA:9B', 'HWTC7CFA9A56', 15, NULL, '2022-04-01', '2022-04-01'),
(727, 'Fibra', 135, 2, '192.168.6.215', '78:57:73:8F:18:ED', 'HWTCD24909A4', 15, NULL, '2022-04-01', '2022-04-01'),
(728, 'Fibra', 134, 2, '192.168.6.213', 'D0:D0:4B:D4:C3:EF', 'HWTCD4C3EE64', 1, NULL, '2022-04-01', '2022-04-01'),
(729, 'Wireless', 36, 2, '192.168.5.73', 'B4:FB:E4:DE:96:19', '', 15, NULL, '2022-04-01', '2022-04-01'),
(730, 'Fibra', 209, 2, '192.168.6.202', '54:51:1B:A6:41:65', 'HWTCA6416468', 1, NULL, '2022-04-01', '2022-04-01'),
(731, 'Fibra', 227, 2, '198.168.6.68', '30:FD:65:5D:D3:E7', 'HWTC59BC37A2', 1, NULL, '2022-04-01', '2022-04-01'),
(732, 'Fibra', 72, 2, '192.168.6.136', '90:17:3F:F5:00:C5', 'HWTCFB2AD2A4', 1, NULL, '2022-04-01', '2022-04-01'),
(733, 'Fibra', 191, 2, '192.168.6.102', '90:17:3F:5D:2F:CD', 'HWTCF21EB5A4', 15, NULL, '2022-04-01', '2022-04-01'),
(734, 'Fibra', 68, 2, '192.168.6.131', 'C8:A7:76:BF:94:F9', 'HWTC5943219F', 1, NULL, '2022-04-01', '2022-04-01'),
(735, 'Fibra', 190, 2, '192.168.6.194', 'AC:61:75:CF:6F:4D', 'HWTCCF6F4C7D', 15, NULL, '2022-04-01', '2022-04-01'),
(736, 'Fibra', 203, 2, '192.168.6.217', 'F4:B7:8D:4A:00:B0', 'HWTC5A7D62A4', 1, NULL, '2022-04-01', '2022-04-01'),
(737, 'Fibra', 234, 2, '192.168.6.48', '70:C7:F2:B4:15:66', 'HTWC580A769E', 1, NULL, '2022-04-01', '2022-04-01'),
(738, 'Fibra', 235, 2, '192.168.6.47', '60:2E:20:01:45:77', 'HWTC08DF3B9B', 1, NULL, '2022-04-01', '2022-04-01'),
(739, 'Fibra', 236, 2, '192.168.6.45', '80:69:33:B6:B1:29', 'HTWCF924169D', 1, NULL, '2022-04-01', '2022-04-01'),
(740, 'Fibra', 237, 2, '192.168.6.44', '58:F9:87:43:D7:35', '', 1, NULL, '2022-04-01', '2022-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `primer_vencimiento` date NOT NULL,
  `segundo_vencimiento` date NOT NULL,
  `estado` varchar(10) NOT NULL,
  `cantidad` float(8,2) NOT NULL,
  `creacion` date NOT NULL,
  `emision` date NOT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `ingreso` float(8,2) NOT NULL,
  `egreso` float(8,2) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `carga` float NOT NULL,
  `descarga` float NOT NULL,
  `mensualidad` float(8,2) NOT NULL,
  `instalacion` float(8,2) NOT NULL,
  `fecha_registro` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `nombre`, `carga`, `descarga`, `mensualidad`, `instalacion`, `fecha_registro`, `updated_at`) VALUES
(1, 'Básico 10M', 6, 10, 350.00, 800.00, '2022-03-04', NULL),
(2, 'Plan Basico 350', 7, 15, 350.00, 1200.00, '2022-03-09', NULL),
(3, 'Plan Basico 300', 4, 8, 300.00, 800.00, '2022-03-09', NULL),
(4, 'Plan Normal 400', 10, 15, 400.00, 1200.00, '2022-03-09', NULL),
(5, 'Plan Normal 450', 10, 15, 450.00, 1200.00, '2022-03-09', NULL),
(6, 'Plan Familia', 2, 4, 250.00, 0.00, '2022-03-09', NULL),
(7, 'Plan Normal 500', 10, 15, 500.00, 1200.00, '2022-03-09', NULL),
(8, 'Wireless', 50, 150, 400.00, 0.00, '2022-03-09', '2022-05-31'),
(9, 'Plan 700', 10, 30, 700.00, 1200.00, '2022-03-09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promesa_pago`
--

CREATE TABLE `promesa_pago` (
  `id` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha_creacion` date NOT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contrato` (`id_contrato`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promesa_pago`
--
ALTER TABLE `promesa_pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contrato` (`id_contrato`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=741;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `promesa_pago`
--
ALTER TABLE `promesa_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD CONSTRAINT `cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `planes` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contratos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `promesa_pago`
--
ALTER TABLE `promesa_pago`
  ADD CONSTRAINT `promesa_pago_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contratos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
