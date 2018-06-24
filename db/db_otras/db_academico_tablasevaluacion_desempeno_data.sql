--
-- Base de datos: `db_academico`
--
USE `db_academico` ;

GRANT ALL PRIVILEGES ON `db_academico`.* TO 'uteg'@'localhost' IDENTIFIED BY 'sistemas1707';

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `asignatura`
--
INSERT INTO `asignatura` (`asi_id`, `asi_nombre`, `asi_descripcion`, `asi_estado_asignatura`, `asi_estado`, `asi_estado_logico`) VALUES
(1, 'Can', 'Can', 'A', '1', '1'),
(2, 'Matemáticas I', 'Matemáticas I', 'A', '1', '1'),
(3, 'Fundamentos de Economia', 'Fundamentos de Economia', 'A', '1', '1'),
(4, 'Derecho Constitucional', 'Derecho Constitucional', 'A', '1', '1'),
(5, 'Fundamentos de Administración', 'Fundamentos de Administración', 'A', '1', '1'),
(6, 'Matemáticas II', 'Matemáticas II', 'A', '1', '1'),
(7, 'Microeconomia', 'Microeconomia', 'A', '1', '1'),
(8, 'Fundamentos de Mercadotecnia', 'Fundamentos de Mercadotecnia', 'A', '1', '1'),
(9, 'Contabilidad General', 'Contabilidad General', 'A', '1', '1'),
(10, 'Matemáticas Financieras', 'Matemáticas Financieras', 'A', '1', '1'),
(11, 'Macroeconomia', 'Macroeconomia', 'A', '1', '1'),
(12, 'Planeacion y Direccion Estrategica', 'Planeacion y Direccion Estrategica', 'A', '1', '1'),
(13, 'Contabilidad Gerencial', 'Contabilidad Gerencial','A', '1', '1'),
(14, 'Actualidad Economica', 'Actualidad Economica', 'A', '1', '1'),
(15, 'Administración Financiera', 'Administración Financiera', 'A', '1', '1'),
(16, 'Presupuesto', 'Presupuesto', 'A', '1', '1'),
(17, 'Gestion del Talento Humano', 'Gestion del Talento Humano', 'A', '1', '1'),
(18, 'Liderazgo y Habilidad Gerencial', 'Liderazgo y Habilidad Gerencial', 'A', '1', '1'),
(19, 'Etica Profesional', 'Etica Profesional', 'A', '1', '1'),
(20, 'Marco Legal de la Mercadotecnia', 'Marco Legal de la Mercadotecnia', 'A', '1', '1'),
(21, 'Marketing Estrategico', 'Marketing Estrategico', 'A', '1', '1'),
(22, 'Practicas Pre Profesionales I', 'Practicas Pre Profesionales I', 'A', '1', '1'),
(23, 'Investigación de Operaciones', 'Investigación de Operaciones', 'A', '1', '1'),
(24, 'Investigación de Mercados', 'Investigación de Mercados', 'A', '1', '1'),
(25, 'Plan de Marketing', 'Plan de Marketing', 'A', '1', '1'),
(26, 'Comercio Electronico', 'Comercio Electronico', 'A', '1', '1'),
(27, 'Comportamiento del Consumidor', 'Comportamiento del Consumidor', 'A', '1', '1'),
(28, 'Marketing Digital', 'Marketing Digital', 'A', '1', '1'),
(29, 'Diseño Gráfico Publicitario', 'Diseño Gráfico Publicitario', 'A', '1', '1'),
(30, 'Políticas de Precio y Producto', 'Políticas de Precio y Producto', 'A', '1', '1'),
(31, 'Logística y Distribucción', 'Logística y Distribucción',  'A', '1', '1'),
(32, 'Publicidad y Promoción', 'Publicidad y Promoción', 'A', '1', '1'),
(33, 'Emprendimiento', 'Emprendimiento', 'A', '1', '1'),
(34, 'Marketing de Servicios', 'Marketing de Servicios', 'A', '1', '1'),
(35, 'Practicas Pre Profesionales II (Vinculación)', 'Practicas Pre Profesionales II (Vinculación)', 'A', '1', '1'),
(36, 'Retailing', 'Retailing', 'A', '1', '1'),
(37, 'Formulación y Evaluación de Proyectos', 'Formulación y Evaluación de Proyectos', 'A', '1', '1'),
(38, 'Gerencia de Marketing', 'Gerencia de Marketing', 'A', '1', '1'),
(39, 'Practicas Pre Profesionales III', 'Practicas Pre Profesionales III', 'A', '1', '1'),
(40, 'Desarrollo y Administración de Nuevos Productos', 'Desarrollo y Administración de Nuevos Productos', 'A', '1', '1'),
(41, 'Relaciones Públicas y Marketing Directo', 'Relaciones Públicas y Marketing Directo', 'A', '1', '1'),
(42, 'Marketing Internacional', 'Marketing Internacional', 'A', '1', '1'),
(43, 'Epistemología', 'Epistemología', 'A', '1', '1'),
(44, 'Estadística I', 'Estadística I', 'A', '1', '1'),
(45, 'Estadística II', 'Estadística II', 'A', '1', '1'),
(46, 'Metodologia de Investigación', 'Metodologia de Investigación', 'A', '1', '1'),
(47, 'Introducción al Trabajo de Titulación', 'Introducción al Trabajo de Titulación', 'A', '1', '1'),
(48, 'Trabajo de titulación I', 'Trabajo de titulación I', 'A', '1', '1'),
(49, 'Trabajo de titulación II', 'Trabajo de titulación II', 'A', '1', '1'),
(50, 'Gestión Ambiental', 'Gestión Ambiental', 'A', '1', '1'),
(51, 'Creatividad e Innovación', 'Creatividad e Innovación', 'A', '1', '1'),
(52, 'Responsabilidad Social y Empresarial', 'Responsabilidad Social y Empresarial', 'A', '1', '1'),
(53, 'Intercultoralidad D. Culturas Ancentrales y Género', 'Intercultoralidad D. Culturas Ancentrales y Género', 'A', '1', '1'),
(54, 'Técnicas de Documentación Oral y Escrita', 'Técnicas de Documentación Oral y Escrita', 'A', '1', '1'),
(55, 'Fundamentos Para Software Especialisados', 'Fundamentos Para Software Especialisados', 'A', '1', '1'),
(56, 'Contabilidad', 'Contabilidad', 'A', '1', '1'),
(57, 'Matemáticas', 'Matemáticas', 'A', '1', '1'),
(58, 'Desarrollo del Pensamiento', 'Desarrollo del Pensamiento', 'A', '1', '1'),
(59, 'Técnicas de Exp. Oral y Escrita', 'Técnicas de Exp. Oral y Escrita', 'A', '1', '1');