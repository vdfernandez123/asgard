--
-- Base de datos: `db_academico`
--
USE `db_academico`;

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `semestre`
-- 
INSERT INTO `semestre_academico` (`saca_id`, `saca_nombre`, `saca_descripcion`, `saca_fecha_registro`, `saca_usuario_ingreso`, `saca_usuario_modifica`, `saca_estado`, `saca_estado_logico`) VALUES 
(1, 'Abril - Agosto', 'Abril - Agosto', NULL, '1', '1', '1', '1'),
(2, 'Octubre - Febrero', 'Octubre - Febrero', NULL, '1', '1', '1', '1');

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `bloque`
--
INSERT INTO `bloque_academico` (`baca_id`,`baca_nombre`, `baca_descripcion`, `baca_usuario_ingreso`, `baca_estado`, `baca_estado_logico`) VALUES 
(1, 'Abril - Junio', 'Abril - Junio', 1, '1', '1'),
(2, 'Julio - Agosto', 'Julio - Agosto', 1,  '1', '1'),
(3, 'Enero - Febrero', 'Enero - Febrero', 1, '1', '1'),
(4, 'Octubre - Diciembre', 'Octubre - Diciembre', 1, '1', '1'),
(5, 'Enero', 'Enero', 1, '1', '1'),
(6, 'Febrero', 'Febrero', 1, '1', '1'),
(7, 'Marzo', 'Marzo', 1, '1', '1'),
(8, 'Abril', 'Abril', 1, '1', '1'),
(9, 'Mayo', 'Mayo', 1, '1', '1'),
(10, 'Junio', 'Junio', 1, '1', '1'),
(11, 'Julio', 'Julio', 1, '1', '1'),
(12, 'Agosto', 'Agosto', 1, '1', '1'),
(13, 'Septiembre', 'Septiembre', 1, '1', '1'),
(14, 'Octubre', 'Octubre', 1, '1', '1'),
(15, 'Noviembre', 'Noviembre', 1, '1', '1'),
(16, 'Diciembre', 'Diciembre', 1, '1', '1');

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `periodo_academico`
--

INSERT INTO `periodo_academico` (`paca_id`,`saca_id`, `baca_id`, `paca_anio_academico`, `paca_activo`, `paca_usuario_ingreso`, `paca_estado`, `paca_estado_logico`) VALUES 
(1, 2, 3, '2019', 'A', 1, '1', '1'),
(2, 2, 6, '2019', 'A', 1, '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `profesor`
--
INSERT INTO `profesor` (`pro_id`,`per_id`,`pro_usuario_ingreso`, `pro_estado`,`pro_estado_logico`) VALUES
(1, 2, 1, 1, 1),
(2, 3, 1, 1, 1),
(3, 5, 1, 1, 1),
(4, 23, 1, 1, 1),
(5, 24, 1, 1, 1),
(6, 25, 1, 1, 1),
(7, 26, 1, 1, 1),
(8, 28, 1, 1, 1),
(9, 30, 1, 1, 1),
(10, 33, 1, 1, 1),
(11, 34, 1, 1, 1),
(12, 36, 1, 1, 1),
(13, 37, 1, 1, 1),
(14, 41, 1, 1, 1),
(15, 47, 1, 1, 1),
(16, 48, 1, 1, 1),
(17, 49, 1, 1, 1),
(18, 50, 1, 1, 1),
(19, 51, 1, 1, 1),
(20, 52, 1, 1, 1),
(21, 53, 1, 1, 1),
(22, 54, 1, 1, 1),
(23, 55, 1, 1, 1),
(24, 56, 1, 1, 1),
(25, 57, 1, 1, 1),
(26, 58, 1, 1, 1),
(27, 59, 1, 1, 1),
(28, 60, 1, 1, 1),
(29, 61, 1, 1, 1),
(30, 62, 1, 1, 1),
(31, 63, 1, 1, 1),
(32, 64, 1, 1, 1),
(33, 65, 1, 1, 1),
(34, 66, 1, 1, 1),
(35, 67, 1, 1, 1),
(36, 68, 1, 1, 1),
(37, 69, 1, 1, 1),
(38, 70, 1, 1, 1),
(39, 71, 1, 1, 1),
(40, 72, 1, 1, 1),
(41, 73, 1, 1, 1),
(42, 74, 1, 1, 1),
(43, 75, 1, 1, 1),
(44, 76, 1, 1, 1),
(45, 77, 1, 1, 1),
(46, 78, 1, 1, 1),
(47, 79, 1, 1, 1),
(48, 80, 1, 1, 1),
(49, 81, 1, 1, 1),
(50, 82, 1, 1, 1),
(51, 83, 1, 1, 1),
(52, 84, 1, 1, 1),
(53, 85, 1, 1, 1),
(54, 86, 1, 1, 1),
(55, 87, 1, 1, 1),
(56, 88, 1, 1, 1),
(57, 89, 1, 1, 1),
(58, 90, 1, 1, 1),
(59, 91, 1, 1, 1),
(60, 92, 1, 1, 1),
(61, 93, 1, 1, 1),
(62, 94, 1, 1, 1),
(63, 95, 1, 1, 1),
(64, 96, 1, 1, 1),
(65, 97, 1, 1, 1),
(66, 98, 1, 1, 1),
(67, 99, 1, 1, 1),
(68, 100, 1, 1, 1),
(69, 101, 1, 1, 1),
(70, 102, 1, 1, 1),
(71, 103, 1, 1, 1),
(72, 104, 1, 1, 1),
(73, 105, 1, 1, 1),
(74, 106, 1, 1, 1),
(75, 107, 1, 1, 1),
(76, 108, 1, 1, 1),
(77, 109, 1, 1, 1),
(78, 110, 1, 1, 1),
(79, 111, 1, 1, 1),
(80, 112, 1, 1, 1),
(81, 113, 1, 1, 1),
(82, 114, 1, 1, 1),
(83, 115, 1, 1, 1),
(84, 116, 1, 1, 1),
(85, 117, 1, 1, 1),
(86, 118, 1, 1, 1),
(87, 119, 1, 1, 1),
(88, 120, 1, 1, 1),
(89, 121, 1, 1, 1),
(90, 122, 1, 1, 1),
(91, 123, 1, 1, 1),
(92, 124, 1, 1, 1),
(93, 125, 1, 1, 1),
(94, 126, 1, 1, 1),
(95, 127, 1, 1, 1),
(96, 128, 1, 1, 1),
(97, 129, 1, 1, 1),
(98, 130, 1, 1, 1),
(99, 131, 1, 1, 1),
(100, 132, 1, 1, 1),
(101, 133, 1, 1, 1),
(102, 134, 1, 1, 1),
(103, 135, 1, 1, 1),
(104, 136, 1, 1, 1),
(105, 137, 1, 1, 1),
(106, 138, 1, 1, 1),
(107, 139, 1, 1, 1),
(108, 140, 1, 1, 1),
(109, 141, 1, 1, 1),
(110, 142, 1, 1, 1),
(111, 143, 1, 1, 1),
(112, 144, 1, 1, 1),
(113, 145, 1, 1, 1),
(114, 146, 1, 1, 1),
(115, 147, 1, 1, 1),
(116, 148, 1, 1, 1),
(117, 149, 1, 1, 1),
(118, 150, 1, 1, 1),
(119, 151, 1, 1, 1),
(120, 152, 1, 1, 1),
(121, 153, 1, 1, 1),
(122, 154, 1, 1, 1),
(123, 155, 1, 1, 1),
(124, 156, 1, 1, 1),
(125, 157, 1, 1, 1),
(126, 158, 1, 1, 1),
(127, 159, 1, 1, 1),
(128, 160, 1, 1, 1),
(129, 161, 1, 1, 1),
(130, 162, 1, 1, 1),
(131, 163, 1, 1, 1),
(132, 164, 1, 1, 1),
(133, 165, 1, 1, 1),
(134, 166, 1, 1, 1),
(135, 167, 1, 1, 1),
(136, 168, 1, 1, 1),
(137, 169, 1, 1, 1),
(138, 170, 1, 1, 1),
(139, 171, 1, 1, 1),
(140, 172, 1, 1, 1),
(141, 173, 1, 1, 1),
(142, 174, 1, 1, 1),
(143, 175, 1, 1, 1),
(144, 176, 1, 1, 1),
(145, 177, 1, 1, 1),
(146, 178, 1, 1, 1),
(147, 179, 1, 1, 1),
(148, 180, 1, 1, 1),
(149, 181, 1, 1, 1),
(150, 182, 1, 1, 1),
(151, 183, 1, 1, 1),
(152, 184, 1, 1, 1),
(153, 185, 1, 1, 1),
(154, 186, 1, 1, 1),
(155, 187, 1, 1, 1),
(156, 188, 1, 1, 1),
(157, 189, 1, 1, 1),
(158, 190, 1, 1, 1),
(159, 191, 1, 1, 1),
(160, 192, 1, 1, 1),
(161, 193, 1, 1, 1),
(162, 194, 1, 1, 1),
(163, 195, 1, 1, 1),
(164, 196, 1, 1, 1),
(165, 197, 1, 1, 1),
(166, 198, 1, 1, 1),
(167, 199, 1, 1, 1),
(168, 200, 1, 1, 1),
(169, 201, 1, 1, 1),
(170, 202, 1, 1, 1),
(171, 203, 1, 1, 1),
(172, 204, 1, 1, 1),
(173, 205, 1, 1, 1);


INSERT INTO `malla_academica` (`maca_id`,`eaca_id`,`uaca_id`,`mod_id`, `maca_tipo`, `maca_nombre`,`maca_fecha_vigencia_inicio`,`maca_fecha_vigencia_fin`,`maca_usuario_ingreso`,`maca_estado`,`maca_estado_logico`) VALUES 
-- Online 
(1,1,1,1,'1','Curso de Admisión y Nivelación - Licenciatura en Comercio Exterior - Online','2018-07-01','2018-09-30',1,1,1),
(2,2,1,1,'1','Curso de Admisión y Nivelación - Economía - Online','2018-07-01','2018-09-30',1,1,1),
(3,3,1,1,'1','Curso de Admisión y Nivelación - Licenciatura en Finanzas - Online','2018-07-01','2018-09-30',1,1,1),
(4,4,1,1,'1','Curso de Admisión y Nivelación - Licenciatura en Mercadotecnia - Online','2018-07-01','2018-09-30',1,1,1),
(5,5,1,1,'1','Curso de Admisión y Nivelación - Licenciatura en Turismo - Online','2018-07-01','2018-09-30',1,1,1),
(6,6,1,1,'1','Curso de Admisión y Nivelación - Licenciatura en Administración de Empresas - Online','2018-07-01','2018-09-30',1,1,1),

-- Presencial

(7,11,1,2,'1','Curso de Admisión y Nivelación - Ingenieria en Logística y Transporte - Presencial','2018-07-01','2018-09-30',1,1,1),
(8,8,1,2,'1','Curso de Admisión y Nivelación - Ingenieria en Telecomunicaciones - Presencial' ,'2018-07-01','2018-09-30',1,1,1),
(9,7,1,2,'1','Curso de Admisión y Nivelación - Ingenieria en Software - Presencial','2018-07-01','2018-09-30',1,1,1),
(10,10,1,2,'1','Curso de Admisión y Nivelación - Ingenieria en Tecnologias de la Información - Presencial','2018-07-01','2018-09-30',1,1,1),
(11,1,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Comercio Exterior - Presencial','2018-07-01','2018-09-30',1,1,1),
(12,5,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Turismo - Presencial','2018-07-01','2018-09-30',1,1,1),
(13,3,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Finanza - Presencials','2018-07-01','2018-09-30',1,1,1),
(14,9,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Contabilidad y Auditoria - Presencial','2018-07-01','2018-09-30',1,1,1),
(15,13,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Gestión y Talento Humano - Presencial','2018-07-01','2018-09-30',1,1,1),
(16,6,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Administracion de Empresas - Presencial','2018-07-01','2018-09-30',1,1,1),
(17,4,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Mercadotecnia - Presencial','2018-07-01','2018-09-30',1,1,1),
(18,14,1,2,'1','Curso de Admisión y Nivelación - Licenciatura en Administración Portuaria y Aduanera - Presencial','2018-07-01','2018-09-30',1,1,1),

-- Semi-Presencial

(19,12,1,3,'1','Curso de Admisión y Nivelación - Licenciatura en Comunicación - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(20,15,2,3,'1','Curso de Admisión y Nivelación - Administración de Empresas - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(21,16,2,3,'1','Curso de Admisión y Nivelación - Finanzas - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(22,17,2,3,'1','Curso de Admisión y Nivelación - Marketing - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(23,18,2,3,'1','Curso de Admisión y Nivelación - Sistema de Información Gerencial - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(24,19,2,3,'1','Curso de Admisión y Nivelación - Turismo - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(25,20,2,3,'1','Curso de Admisión y Nivelación - Talento Humano - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(26,21,2,3,'1','Curso de Admisión y Nivelación - Empresas Familiares - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
(27,22,2,3,'1','Curso de Admisión y Nivelación - Investigación - Semi - Presencial','2018-07-01','2018-09-30',1,1,1),
-- Distancia
(28,1,1,4,'1','Curso de Admisión y Nivelación - Licenciatura en Comercio Exterior - Distancia','2018-07-01','2018-09-30',1,1,1),
(29,3,1,4,'1','Curso de Admisión y Nivelación - Licenciatura en Finanzas - Distancia','2018-07-01','2018-09-30',1,1,1),
(30,4,1,4,'1','Curso de Admisión y Nivelación - Licenciatura en Mercadotecnia - DIstancia','2018-07-01','2018-09-30',1,1,1),
(31,6,1,4,'1','Curso de Admisión y Nivelación - Licenciatura en Administración de Empresas - Distancia','2018-07-01','2018-09-30',1,1,1),
(32,9,1,4,'1','Curso de Admisión y Nivelación - Licenciatura en Contabilidad y Auditoria - Ditancia','2018-07-01','2018-09-30',1,1,1),
(33,13,1,4,'1','Curso de Admisión y Nivelación - Licenciatura en Gestión y Talento Humano - Distancia','2018-07-01','2018-09-30',1,1,1);

INSERT INTO `malla_academica_detalle` (`made_id`,`maca_id`,`asi_id`,`uest_id`,`nest_id`,`fmac_id`,`made_codigo_asignatura`,`made_usuario_ingreso`,`made_estado`,`made_estado_logico`) VALUES 
-- -----------------------
-- Comercio Exterior - online
-- -----------------------
(1,1,1,1,1,6,'',1,1,1),
(2,1,2,1,1,6,'',1,1,1),
(3,1,3,1,1,6,'',1,1,1),
(4,1,4,1,1,6,'',1,1,1),
(5,1,5,1,1,6,'',1,1,1),
-- -----------------------
-- Economía - online
-- -----------------------
(6,2,1,1,1,6,'',1,1,1),
(7,2,2,1,1,6,'',1,1,1),
(8,2,3,1,1,6,'',1,1,1),
(9,2,4,1,1,6,'',1,1,1),
(10,2,5,1,1,6,'',1,1,1),
-- -----------------------
-- Licenciatura en Finanzas - online
-- -----------------------
(11,3,1,1,1,6,'',1,1,1),
(12,3,2,1,1,6,'',1,1,1),
(13,3,3,1,1,6,'',1,1,1),
(14,3,4,1,1,6,'',1,1,1),
(15,3,5,1,1,6,'',1,1,1),
-- -----------------------
-- Licenciatura en Mercadotecnia - online
-- -----------------------
(16,4,1,1,1,6,'',1,1,1),
(17,4,2,1,1,6,'',1,1,1),
(18,4,3,1,1,6,'',1,1,1),
(19,4,4,1,1,6,'',1,1,1),
(20,4,5,1,1,6,'',1,1,1),
-- -----------------------
-- Licenciatura en Turismo - online
-- -----------------------
(21,5,1,1,1,6,'',1,1,1),
(22,5,2,1,1,6,'',1,1,1),
(23,5,3,1,1,6,'',1,1,1),
(24,5,4,1,1,6,'',1,1,1),
(25,5,5,1,1,6,'',1,1,1),
-- -----------------------
-- Licenciatura en Administración de Empresas - online
-- -----------------------
(26,6,1,1,1,6,'',1,1,1),
(27,6,2,1,1,6,'',1,1,1),
(28,6,3,1,1,6,'',1,1,1),
(29,6,4,1,1,6,'',1,1,1),
(30,6,5,1,1,6,'',1,1,1),
-- -----------------------
-- Ingenieria en Logística y Transporte - presencial
-- -----------------------
(31,7,1,1,1,6,'',1,1,1),
(32,7,6,1,1,6,'',1,1,1),
(33,7,3,1,1,6,'',1,1,1),
(34,7,4,1,1,6,'',1,1,1),
(35,7,5,1,1,6,'',1,1,1),
-- ----------------------
-- Ingenieria en Telecomunicaciones - presencial
-- -----------------------
(36,8,1,1,1,6,'',1,1,1),
(37,8,6,1,1,6,'',1,1,1),
(38,8,3,1,1,6,'',1,1,1),
(39,8,4,1,1,6,'',1,1,1),
(40,8,5,1,1,6,'',1,1,1),
-- ----------------------
-- Ingenieria en Software - presencial
-- -----------------------
(41,9,1,1,1,6,'',1,1,1),
(42,9,6,1,1,6,'',1,1,1),
(43,9,3,1,1,6,'',1,1,1),
(44,9,4,1,1,6,'',1,1,1),
(45,9,5,1,1,6,'',1,1,1),
-- ----------------------
-- Ingenieria en Tecnologias de la Información - presencial
-- -----------------------
(46,10,1,1,1,6,'',1,1,1),
(47,10,6,1,1,6,'',1,1,1),
(48,10,3,1,1,6,'',1,1,1),
(49,10,4,1,1,6,'',1,1,1),
(50,10,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Comercio Exterior - presencial
-- -----------------------
(51,11,1,1,1,6,'',1,1,1),
(52,11,2,1,1,6,'',1,1,1),
(53,11,3,1,1,6,'',1,1,1),
(54,11,4,1,1,6,'',1,1,1),
(55,11,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Turismo - presencial
-- -----------------------
(56,12,1,1,1,6,'',1,1,1),
(57,12,2,1,1,6,'',1,1,1),
(58,12,3,1,1,6,'',1,1,1),
(59,12,4,1,1,6,'',1,1,1),
(60,12,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Finanzas - presencial
-- -----------------------
(61,13,1,1,1,6,'',1,1,1),
(62,13,2,1,1,6,'',1,1,1),
(63,13,3,1,1,6,'',1,1,1),
(64,13,4,1,1,6,'',1,1,1),
(65,13,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Contabilidad y Auditoria - presencial
-- -----------------------
(66,14,1,1,1,6,'',1,1,1),
(67,14,2,1,1,6,'',1,1,1),
(68,14,3,1,1,6,'',1,1,1),
(69,14,4,1,1,6,'',1,1,1),
(70,14,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Gestión y Talento Humano - presencial
-- -----------------------
(71,15,1,1,1,6,'',1,1,1),
(72,15,2,1,1,6,'',1,1,1),
(73,15,3,1,1,6,'',1,1,1),
(74,15,4,1,1,6,'',1,1,1),
(75,15,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Administración de Empresas - presencial
-- -----------------------
(76,16,1,1,1,6,'',1,1,1),
(77,16,2,1,1,6,'',1,1,1),
(78,16,3,1,1,6,'',1,1,1),
(79,16,4,1,1,6,'',1,1,1),
(80,16,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Mercadotecnia - presencial
-- -----------------------
(81,17,1,1,1,6,'',1,1,1),
(82,17,2,1,1,6,'',1,1,1),
(83,17,3,1,1,6,'',1,1,1),
(84,17,4,1,1,6,'',1,1,1),
(85,17,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Administración Portuaria y Aduanera - presencial
-- -----------------------
(86,18,1,1,1,6,'',1,1,1),
(87,18,2,1,1,6,'',1,1,1),
(88,18,3,1,1,6,'',1,1,1),
(89,18,4,1,1,6,'',1,1,1),
(90,18,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Comunicación - semipresencial
-- -----------------------
(91,19,1,1,1,6,'',1,1,1),
(92,19,2,1,1,6,'',1,1,1),
(93,19,3,1,1,6,'',1,1,1),
(94,19,4,1,1,6,'',1,1,1),
(95,19,5,1,1,6,'',1,1,1),
-- ----------------------
-- Administración de Empresas - semipresencial
-- -----------------------
(96,20,1,1,1,6,'',1,1,1),
(97,20,2,1,1,6,'',1,1,1),
(98,20,3,1,1,6,'',1,1,1),
(99,20,4,1,1,6,'',1,1,1),
(100,20,5,1,1,6,'',1,1,1),
-- ----------------------
-- Finanzas - semipresencial
-- -----------------------
(101,21,1,1,1,6,'',1,1,1),
(102,21,2,1,1,6,'',1,1,1),
(103,21,3,1,1,6,'',1,1,1),
(104,21,4,1,1,6,'',1,1,1),
(105,21,5,1,1,6,'',1,1,1),
-- ----------------------
-- Marketing - semipresencial
-- -----------------------
(106,22,1,1,1,6,'',1,1,1),
(107,22,2,1,1,6,'',1,1,1),
(108,22,3,1,1,6,'',1,1,1),
(109,22,4,1,1,6,'',1,1,1),
(110,22,5,1,1,6,'',1,1,1),
-- ----------------------
-- Sistema de Información Gerencial - semipresencial
-- -----------------------
(111,23,1,1,1,6,'',1,1,1),
(112,23,2,1,1,6,'',1,1,1),
(113,23,3,1,1,6,'',1,1,1),
(114,23,4,1,1,6,'',1,1,1),
(115,23,5,1,1,6,'',1,1,1),
-- ----------------------
-- Turismo - semipresencial
-- -----------------------
(116,24,1,1,1,6,'',1,1,1),
(117,24,2,1,1,6,'',1,1,1),
(118,24,3,1,1,6,'',1,1,1),
(119,24,4,1,1,6,'',1,1,1),
(120,24,5,1,1,6,'',1,1,1),
-- ----------------------
-- Talento Humano - semipresencial
-- -----------------------
(121,25,1,1,1,6,'',1,1,1),
(122,25,2,1,1,6,'',1,1,1),
(123,25,3,1,1,6,'',1,1,1),
(124,25,4,1,1,6,'',1,1,1),
(125,25,5,1,1,6,'',1,1,1),
-- ----------------------
-- Empresas Familiares - semipresencial
-- -----------------------
(126,26,1,1,1,6,'',1,1,1),
(127,26,2,1,1,6,'',1,1,1),
(128,26,3,1,1,6,'',1,1,1),
(129,26,4,1,1,6,'',1,1,1),
(130,26,5,1,1,6,'',1,1,1),
-- ----------------------
-- Investigación - semipresencial
-- -----------------------
(131,27,1,1,1,6,'',1,1,1),
(132,27,2,1,1,6,'',1,1,1),
(133,27,3,1,1,6,'',1,1,1),
(134,27,4,1,1,6,'',1,1,1),
(135,27,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Comercio Exterior - distancia
-- -----------------------
(136,28,1,1,1,6,'',1,1,1),
(137,28,2,1,1,6,'',1,1,1),
(138,28,3,1,1,6,'',1,1,1),
(139,28,4,1,1,6,'',1,1,1),
(140,28,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Finanzas - distancia
-- -----------------------
(141,29,1,1,1,6,'',1,1,1),
(142,29,2,1,1,6,'',1,1,1),
(143,29,3,1,1,6,'',1,1,1),
(144,29,4,1,1,6,'',1,1,1),
(145,29,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Mercadotecnia - distancia
-- -----------------------
(146,30,1,1,1,6,'',1,1,1),
(147,30,2,1,1,6,'',1,1,1),
(148,30,3,1,1,6,'',1,1,1),
(149,30,4,1,1,6,'',1,1,1),
(150,30,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Administración de Empresas - distancia
-- -----------------------
(151,31,1,1,1,6,'',1,1,1),
(152,31,2,1,1,6,'',1,1,1),
(153,31,3,1,1,6,'',1,1,1),
(154,31,4,1,1,6,'',1,1,1),
(155,31,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Contabilidad y Auditoria - distancia
-- ----------------------
(156,32,1,1,1,6,'',1,1,1),
(157,32,2,1,1,6,'',1,1,1),
(158,32,3,1,1,6,'',1,1,1),
(159,32,4,1,1,6,'',1,1,1),
(160,32,5,1,1,6,'',1,1,1),
-- ----------------------
-- Licenciatura en Gestión y Talento Humano - distancia
-- -----------------------
(161,33,1,1,1,6,'',1,1,1),
(162,33,2,1,1,6,'',1,1,1),
(163,33,3,1,1,6,'',1,1,1),
(164,33,4,1,1,6,'',1,1,1),
(165,33,5,1,1,6,'',1,1,1);

INSERT INTO `distributivo_horario` (`dhor_id`,`dia_id`,`dhor_hora_inicio`,`dhor_hora_fin`, `dhor_descripcion`, `dhor_usuario_ingreso`, `dhor_estado`,`dhor_estado_logico`) VALUES 
(1,1,'07:00','13:00','Matutino',1,1,1),
(2,1,'13:20','18:00','Vespertino',1,1,1),
(3,1,'18:20','22:20','Nocturno',1,1,1),
(4,1,'10:00','17:00','Intensivo',1,1,1);


INSERT INTO `horario_asignatura_periodo` (`hape_id`, `asi_id`, `paca_id`, `pro_id`, `uaca_id`, `mod_id`, `dia_id`, `hape_hora_entrada`, `hape_hora_salida`, `hape_estado`, `hape_estado_logico`) VALUES
(1, 51, 1, 62, 1, 3, 6, '10:30:00', '12:30:00', 1, 1),
(2, 39, 1, 10, 1, 3, 6, '13:30:00', '15:30:00', 1, 1),
(3, 92, 1, 145, 1, 3, 6, '08:15:00', '10:15:00', 1, 1),
(4, 26, 1, 15, 1, 2, 3, '09:00:00', '12:00:00', 1, 1),
(5, 13, 1, 9, 1, 2, 1, '11:00:00', '13:00:00', 1, 1),
(6, 13, 1, 9, 1, 2, 2, '11:00:00', '13:00:00', 1, 1),
(7, 13, 1, 9, 1, 2, 4, '11:00:00', '13:00:00', 1, 1),
(8, 52, 1, 4, 1, 2, 1, '13:30:00', '15:30:00', 1, 1),
(9, 52, 1, 4, 1, 2, 2, '13:30:00', '15:30:00', 1, 1),
(10, 52, 1, 4, 1, 2, 4, '13:30:00', '15:30:00', 1, 1),
(11, 91, 1, 16, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(12, 91, 1, 16, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(13, 91, 1, 16, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(14, 64, 1, 25, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(15, 64, 1, 25, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(16, 64, 1, 25, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(17, 70, 1, 28, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(18, 70, 1, 28, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(19, 79, 1, 30, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(20, 79, 1, 30, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(21, 79, 1, 30, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(22, 71, 1, 32, 1, 2, 1, '13:30:00', '15:30:00', 1, 1),
(23, 71, 1, 32, 1, 2, 2, '13:30:00', '15:30:00', 1, 1),
(24, 71, 1, 32, 1, 2, 4, '13:30:00', '15:30:00', 1, 1),
(25, 72, 1, 40, 1, 2, 1, '11:00:00', '13:00:00', 1, 1),
(26, 72, 1, 40, 1, 2, 2, '11:00:00', '13:00:00', 1, 1),
(27, 72, 1, 40, 1, 2, 4, '11:00:00', '13:00:00', 1, 1),
(28, 80, 1, 41, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(29, 80, 1, 41, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(30, 18, 1, 48, 1, 2, 1, '09:00:00', '11:00:00', 1, 1),
(31, 18, 1, 48, 1, 2, 2, '09:00:00', '11:00:00', 1, 1),
(32, 18, 1, 48, 1, 2, 4, '09:00:00', '11:00:00', 1, 1),
(33, 102, 1, 48, 1, 2, 1, '11:00:00', '13:00:00', 1, 1),
(34, 102, 1, 48, 1, 2, 2, '11:00:00', '13:00:00', 1, 1),
(35, 102, 1, 48, 1, 2, 4, '11:00:00', '13:00:00', 1, 1),
(36, 7, 1, 14, 1, 2, 1, '13:00:00', '15:30:00', 1, 1),
(37, 7, 1, 14, 1, 2, 3, '13:00:00', '15:30:00', 1, 1),
(38, 71, 1, 49, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(39, 71, 1, 49, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(40, 63, 1, 55, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(41, 28, 1, 55, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(42, 95, 1, 60, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(43, 7, 1, 61, 1, 2, 1, '20:20:00', '22:20:00', 1, 1),
(44, 7, 1, 61, 1, 2, 2, '20:20:00', '22:20:00', 1, 1),
(45, 7, 1, 61, 1, 2, 4, '20:20:00', '22:20:00', 1, 1),
(46, 50, 1, 61, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(47, 50, 1, 61, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(48, 50, 1, 61, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(49, 7, 1, 61, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(50, 7, 1, 61, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(51, 7, 1, 61, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(52, 18, 1, 13, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(53, 18, 1, 13, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(54, 18, 1, 13, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(55, 55, 1, 69, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(56, 55, 1, 69, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(57, 55, 1, 69, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(58, 107, 1, 69, 1, 2, 1, '20:20:00', '22:20:00', 1, 1),
(59, 107, 1, 69, 1, 2, 2, '20:20:00', '22:20:00', 1, 1),
(60, 107, 1, 69, 1, 2, 4, '20:20:00', '22:20:00', 1, 1),
(61, 56, 1, 71, 1, 2, 1, '20:20:00', '22:20:00', 1, 1),
(62, 56, 1, 71, 1, 2, 2, '20:20:00', '22:20:00', 1, 1),
(63, 56, 1, 71, 1, 2, 4, '20:20:00', '22:20:00', 1, 1),
(64, 66, 1, 8, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(65, 66, 1, 8, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(66, 66, 1, 86, 1, 2, 1, '13:30:00', '15:30:00', 1, 1),
(67, 66, 1, 86, 1, 2, 2, '13:30:00', '15:30:00', 1, 1),
(68, 66, 1, 86, 1, 2, 4, '13:30:00', '15:30:00', 1, 1),
(69, 22, 1, 87, 1, 2, 1, '20:20:00', '22:20:00', 1, 1),
(70, 22, 1, 87, 1, 2, 2, '20:20:00', '22:20:00', 1, 1),
(71, 22, 1, 87, 1, 2, 4, '20:20:00', '22:20:00', 1, 1),
(72, 69, 1, 3, 1, 2, 1, '09:00:00', '11:00:00', 1, 1),
(73, 69, 1, 3, 1, 2, 2, '09:00:00', '11:00:00', 1, 1),
(74, 69, 1, 3, 1, 2, 4, '09:00:00', '11:00:00', 1, 1),
(75, 99, 1, 1, 1, 2, 1, '13:30:00', '15:30:00', 1, 1),
(76, 99, 1, 1, 1, 2, 2, '13:30:00', '15:30:00', 1, 1),
(77, 99, 1, 1, 1, 2, 4, '13:30:00', '15:30:00', 1, 1),
(78, 9, 1, 102, 1, 2, 1, '18:20:00', '20:20:00', 1, 1),
(79, 9, 1, 102, 1, 2, 2, '18:20:00', '20:20:00', 1, 1),
(80, 9, 1, 102, 1, 2, 4, '18:20:00', '20:20:00', 1, 1),
(81, 63, 1, 103, 1, 2, 3, '09:00:00', '12:00:00', 1, 1),
(82, 28, 1, 103, 1, 2, 3, '09:00:00', '12:00:00', 1, 1),
(83, 65, 1, 11, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(84, 65, 1, 11, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(85, 45, 1, 104, 1, 2, 1, '11:00:00', '13:00:00', 1, 1),
(86, 45, 1, 104, 1, 2, 2, '11:00:00', '13:00:00', 1, 1),
(87, 9, 1, 145, 1, 2, 1, '09:00:00', '11:00:00', 1, 1),
(88, 9, 1, 145, 1, 2, 2, '09:00:00', '11:00:00', 1, 1),
(89, 9, 1, 145, 1, 2, 4, '09:00:00', '11:00:00', 1, 1),
(90, 10, 1, 151, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(91, 10, 1, 151, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(92, 97, 1, 151, 1, 2, 3, '18:20:00', '21:20:00', 1, 1),
(93, 97, 1, 151, 1, 2, 5, '18:20:00', '21:20:00', 1, 1),
(94, 44, 1, 151, 1, 2, 1, '13:30:00', '15:30:00', 1, 1),
(95, 44, 1, 151, 1, 2, 2, '13:30:00', '15:30:00', 1, 1),
(96, 44, 1, 151, 1, 2, 4, '13:30:00', '15:30:00', 1, 1),
(97, 21, 1, 158, 1, 2, 1, '20:20:00', '22:20:00', 1, 1),
(98, 21, 1, 158, 1, 2, 2, '20:20:00', '22:20:00', 1, 1),
(99, 21, 1, 158, 1, 2, 4, '20:20:00', '22:20:00', 1, 1);