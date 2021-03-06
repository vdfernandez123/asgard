--
-- Base de datos: `db_asgard`
--
USE `db_asgard`;

INSERT INTO `persona` (`per_id`, `per_pri_nombre`, `per_seg_nombre`, `per_pri_apellido`, `per_seg_apellido`,
 `per_cedula`, `per_ruc`, `per_pasaporte`, `etn_id`, `eciv_id`, `per_genero`, `per_nacionalidad`,
 `pai_id_nacimiento`, `pro_id_nacimiento`, `can_id_nacimiento`, `per_nac_ecuatoriano`, `per_fecha_nacimiento`, `per_celular`, `per_correo`,
 `per_foto`, `tsan_id`, `per_domicilio_sector`, `per_domicilio_cpri`, `per_domicilio_csec`, `per_domicilio_num`, `per_domicilio_ref`, 
`per_domicilio_telefono`, `per_domicilio_celular2`, `pai_id_domicilio`, `pro_id_domicilio`, `can_id_domicilio`, `per_trabajo_nombre`, `per_trabajo_direccion`,
 `per_trabajo_telefono`, `per_trabajo_ext`, `pai_id_trabajo`, `pro_id_trabajo`, `can_id_trabajo`, `per_estado`,
 `per_fecha_creacion`, `per_fecha_modificacion`, `per_estado_logico`) VALUES
(1, 'Admin', NULL, 'UTEG', NULL, '01', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(2, 'Diana', 'Nathaly', 'López', 'Armendáriz', '0923531792', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, '1984-10-07', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(3, 'Grace', 'Katiuska', 'Viteri', 'Guzmán', '0916704828', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(4, 'Giovanni', 'Antonio', 'Vergara', 'Zarate', '0917552564', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(5, 'Kleber', 'Andres', 'Loaiza', 'Castro', '0704987114', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, '1986-11-29', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(6, 'Andrea', 'Rebeca', 'Bejarano', 'Macias', '0924239494', NULL, NULL, 1, 1, 'F', 'Ecuatoriano', 57, 10, 87, '0', '1984-09-02', '992144238', 'andreita.rebe@gmail.com', '', 5, 'Santorini Dpto A2', 'Av Del Santuario', 'Juan Tanca Marengo', '2', 'Subiendo Hacia Jardines De La Esperanza', '6027452', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', '2014-03-19 00:59:00', '1'),

(7, 'Admisiones', '', 'Ulink 01', '', '0901', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(8, 'Admisiones', '', 'Smart 01', '', '0902', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(9, 'Admisiones', 'Uteg', 'Grado 01', '', '0903', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(10, 'Admisiones', 'Uteg', 'Grado 02', '', '0904', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(11, 'Admisiones', 'Uteg', 'Grado 03', '', '0905', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(12, 'Admisiones', 'Uteg', 'Grado 04', '', '0906', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(13, 'Admisiones', 'Uteg', 'Posgrado 01', '', '0907', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(14, 'Admisiones', 'Uteg', 'Posgrado 02', '', '0908', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(15, 'Admisiones', 'Uteg', 'Posgrado 03', '', '0909', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(16, 'Lider', 'Contact', 'Center 01', '', '000', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(17, 'Contact', NULL, 'Center 01', '', '011', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(18, 'Contact', NULL, 'Center 02', '', '021', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(19, 'Contact', NULL, 'Center 03', '', '031', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(20, 'Contact', NULL, 'Center 04', '', '041', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(21, 'Supervisor', NULL, 'Colecturia', '', '051', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(22, 'Caja', NULL, '01', '', '061', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(23, 'Ana', 'María', 'Alcívar', 'Alcívar', '0923382717', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, '1986-12-11', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(24, 'Xavier', 'Antonio', 'Mosquera', 'Rodríguez', '0909267338', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(25, 'Diana', 'Carolina', 'Pineda', 'Arenas', '73941725', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, '1986-10-23', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(26, 'Olmedo', '', 'Farfan', '', '090202020', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(27, 'Priscilla', NULL, 'Recalde', NULL, '0921156683', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(28, 'Andrés', 'Enrique', 'Hernández', 'Lavayen', '0914338793', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(29, 'David', 'Roberto', 'Castro', 'Rivera', '0922513619', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),


(30, 'Diego', 'Francisco','Aguirre', 'Gonzalez', '0703473454', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(31, 'Carlos', 'Xavier', 'Veléz', 'León', '0913898987', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(32, 'Carlos', '', 'Barros', 'Bastidas', '0916878150', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(33, 'Karina', '', 'Muñoz', 'Loor', '0924334618', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, '2017-05-02', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(34, 'Gustavo', '', 'Morán', 'Bastidas', '0914968565', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, '1975-09-20', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(35, 'Jorge', 'Roberto' , 'Hoyos', 'Zavala', '0910926443', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(36, 'María', 'Del Pilar' , 'Viteri', 'Vera', '0909646358', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, '1975-06-13', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(37, 'Sandra', 'Mirella' , 'García', 'Paredes', '0918745837', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, '2016-05-13', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(38, 'Alfredo', 'Javier' , 'Leyton', 'Castillo', '0930128384', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(39, 'Community', '' , '1', '', '0161', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(40, 'Community', '' , '2', '', '0171', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(41, 'Mercedes', 'Clemencia' , 'Conforme', 'Salazar', '0911101434', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, '1966-10-24', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),
(42, 'Marco', '' , 'Subía', '', '0172', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2017-09-01 02:53:00', NULL, '1'),

(43, 'Yolanda', 'Stefanía' , 'Bustos', 'Guamán', '0923343644', NULL, NULL, 1, 1, 'F', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2018-11-22 13:45:00', NULL, '1'),

(44, 'José', 'Manuel' , 'Sarabia', 'Quintero', '0926976572', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2018-12-20 10:30:00', NULL, '1'),
(45, 'Félix', 'Xavier' , 'Calderón', 'Mora', '0951537455', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2018-12-20 10:30:00', NULL, '1'),

(46, 'Tito', 'Damián' , 'Cadena', 'Estrella', '0922888722', NULL, NULL, 1, 1, 'M', NULL, 1, 10, 87, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, '1', '2019-02-09 11:30:00', NULL, '1'),

/* Profesores */ 
(47, 'Francisco', 'Hilario', 'Cedeño', 'Troya', '0926060385', NULL, NULL, NULL, NULL, 'M', NULL, 1, 10, 87, NULL, '1987-08-21', NULL, 'fcedeno@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-02-12 13:40:00', NULL, 1),
(48, 'José', 'Vicente', 'Bohórquez', 'Zavala', '0908457443', NULL, NULL, NULL, NULL, 'F', NULL, 1, 10, 87, NULL, '1963-04-02', NULL, 'jbohorquez@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-04-11 12:00:00', NULL, 1),
(49, 'Gustavo', 'Antonio', 'La Mota', 'Terranova', '0930782172', NULL, NULL, NULL, NULL, 'M', NULL, 1, 10, 87, NULL, '2018-04-14', NULL, 'glamota@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-04-11 12:00:00', NULL, 1),
(50, 'Elizabeth', 'Margarita', 'Salinas', 'Narea', '0922332218', NULL, NULL, NULL, NULL, 'M', NULL, 1, 10, 87, NULL, '1986-06-04', NULL, 'esalinas@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-04-11 12:00:00', NULL, 1),
(51, 'Yasmila', 'Verónica', 'Samaniego', 'Merino', '0913922043', NULL, NULL, NULL, NULL, 'F', NULL, 1, 10, 87, NULL, '2017-06-20', NULL, 'directortalento@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-04-11 12:00:00', NULL, 1),
(52, 'Marjorie', 'Sofía', 'San Andrés', 'Samaniego', '0923008262', NULL, NULL, NULL, NULL, 'F', NULL, 1, 10, 87, NULL, '1983-02-02', NULL, 'msanandres@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-04-11 12:00:00', NULL, 1),
(53, 'Felipe', 'Santiago', 'Sojos', 'Jara', '0703602656', NULL, NULL, NULL, NULL, 'F', NULL, 1, 10, 87, NULL, '2018-01-05', NULL, 'fsojos@uteg.edu.ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 87, NULL, NULL, NULL, NULL, 1, 10, 87, 1, '2019-04-11 12:00:00', NULL, 1);
