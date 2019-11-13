--
-- Base de datos: `db_documental`
--
USE `db_documental`;

INSERT INTO `departamento` (`dep_id`,`dep_nombre`,`dep_cod`,`dep_estado`,`dep_estado_logico`) VALUES
(1,'Administrativo','ADM','1','1'),
(2,'Admisiones','ADS','1','1'),
(3,'Archivo','ARC','1','1'),
(4,'Bienestar universitario','BIU','1','1'),
(5,'Centro de Documentación e Investigación Empresarial','CENDIE','1','1'),
(6,'Centro de Idiomas','CEI','1','1'),
(7,'Colecturía','COL','1','1'),
(8,'Contabilidad','CON','1','1'),
(9,'Desarrollo','DES','1','1'),
(10,'Investigación','INV','1','1'),
(11,'Medico','MED','1','1'),
(12,'Financiero','FIN','1','1'),
(13,'Grado Presencial','GRP','1','1'),
(14,'Grado Semipresencial y Distancia','GSD','1','1'),
(15,'Grado Online','ONL','1','1'),
(16,'Planificación','PLA','1','1'),
(17,'Posgrado','POS','1','1'),
(18,'Procesos','PRO','1','1'),
(19,'Producción','PRD','1','1'),
(20,'Rectorado','REC','1','1'),
(21,'Relaciones internacionales','REI','1','1'),
(22,'Secretaria General','SEG','1','1'),
(23,'Seguridad','SGD','1','1'),
(24,'Servicios generales','SEV','1','1'),
(25,'Sistemas','SIS','1','1'),
(26,'Talento humano','TAH','1','1'),
(27,'Vinculación sociedad','VS','1','1'),
(28,'Vicerrectorado','VIC','1','1');

INSERT INTO `clase` (`cla_id`, `cla_nombre`, `cla_cod`, `cla_estado`,`cla_estado_logico`) VALUES
(1, 'Gestión Estratégica Desarrollo Institucional','A','1','1'),
(2, 'Gestión de la Imagen Institucional','B','1','1'),
(3, 'Gestión del Soporte Académico y Estudiantil','C','1','1'),
(4, 'Secretaría General Administración General y Organización','D','1','1'),
(5, 'Gestión de la Docencia','E','1','1'),
(6, 'Gestión de la Investigación','F','1','1'),
(7, 'Gestión de Vinculación con la Sociedad','G','1','1'),
(8, 'Gestión de Bienestar Universitario','H','1','1'),
(9, 'Gestión de Representación y Relaciones Públicas','I','1','1'),
(10, 'Gestión del Talento Humano','J','1','1'),
(11, 'Gestión de los Recursos Económicos','K','1','1'),
(12, 'Gestión de la Información y de las Comunicaciones','L','1','1'),
(13, 'Gestión Administrativa','M','1','1'),
(14, 'Seguridad del Entorno Universitario','N','1','1');

INSERT INTO `serie` (`ser_id`,`cla_id`,`ser_nombre`,`ser_cod`,`ser_estado`,`ser_estado_logico`) VALUES
(1,1,'Planificación Estratégica del Desarrollo Institucional','001',1,1),
(2,1,'Evaluación Institucional','002',1,1),
(3,1,'Gestión de Convenios Nacionales','003',1,1),
(4,1,'Internacionalización','004',1,1),
(5,1,'Gestión y Aseguramiento de la Calidad Institucional','005',1,1),
(6,2,'Gestión de la Imagen Institucional','001',1,1),
(7,3,'Admisiones Grado (Presencial, Semipresencial, A distancia)','001',1,1),
(8,3,'Homologación Grado (Presencial, Semipresencial, A distancia)','002',1,1),
(9,3,'Servicio Estudiantil Grado','003',1,1),
(10,3,'Seguimiento académico','004',1,1),
(11,3,'Gestión Online','004',1,1),
(12,3,'Gestión Admisiones Posgrado','005',1,1),
(13,3,'Gestión Homologación Posgrado','006',1,1),
(14,3,'Servicio Estudiantil Posgrado','007',1,1),
(15,3,'Seguimiento académico Posgrado','008',1,1),
(16,4,'Gestión de la Secretaría General','001',1,1),
(17,4,'Gestión Documental y Archivo','002',1,1),
(18,4,'Rectorado','003',1,1),
(19,5,'Docencia Grado Presencial, Semipresencial y A Distancia','001',1,1),
(20,5,'Docencia Grado Online','004',1,1),
(21,5,'Docencia Posgrado','005',1,1),
(22,5,'Docencia Posgrado Online','006',1,1),
(23,5,'Docencia Centro de Idiomas','006',1,1),
(24,6,'Gestión del Conocimiento','001',1,1),
(25,6,'Producción científica','002',1,1),
(26,7,'Vinculación con la Sociedad','001',1,1),
(27,8,'Gestión del Bienestar Universitario','001',1,1),
(28,8,'Gestión de Biblioteca','002',1,1),
(29,8,'Gestión de Dispensario Médico','003',1,1),
(30,8,'Igualdad de oportunidades','004',1,1),
(31,10,'Reclutamiento y Selección del Profesorado','001',1,1),
(32,10,'Gestión del Talento Humano (Personal Administrativo)','002',1,1),
(33,10,'Remuneraciones y Beneficios','003',1,1),
(34,10,'Formación y Capacitación','004',1,1),
(35,10,'Desarrollo y Formación','005',1,1),
(36,10,'Evaluación de Desempeño','006',1,1),
(37,11,'Compras','001',1,1),
(38,11,'Proceso específico','002',1,1),
(39,11,'Canciller','003',1,1),
(40,11,'Gestión Colecturía y Cobranzas','004',1,1),
(41,11,'Gestion contable y tributaria','005',1,1),
(42,12,'Admisión','001',1,1),
(43,12,'Desarrollo','002',1,1),
(44,12,'Sistemas','003',1,1),
(45,13,'Administración','001',1,1),
(46,14,'Gestión de la Seguridad del entorno universitario','001',1,1),
(47,14,'Servicio general','002',1,1);

INSERT INTO `subserie` (`sub_id`,`ser_id`,`sub_nombre`,`sub_cod`,`sub_cod_total`,`sub_estado`,`sub_estado_logico`) VALUES
(1,1,'001','A-001-001','',1,1),
(2,2,'001','A-002-001','',1,1),
(3,3,'001','A-003-001','',1,1),
(4,4,'001','A-004-001','Convenios IES extranjeras',1,1),
(5,4,'002','A-004-002','Convenios Interinstitucionales',1,1),
(6,4,'003','A-004-003','Reglamentación',1,1),
(7,4,'004','A-004-004','Programa MBA Burdeos',1,1),
(8,4,'005','A-004-005','Documentación recibida y enviada',1,1),
(9,4,'006','A-004-006','Documentos de Respaldo RRII',1,1),
(10,4,'007','A-004-007','Comunicados Universidades Extranjeras',1,1),
(11,4,'008','A-004-008','Estudiantes de Intercambio',1,1),
(12,5,'001','A-005-001','Gestión de los Procesos Institucionales',1,1),
(13,5,'002','A-005-002','Gestión de la Calidad Institucional',1,1),
(14,6,'001','B-001-001','',1,1),
(15,7,'001','C-001-001','Inscripción y registro de un aspirante al proceso admisiones Grado P SP AD',1,1),
(16,7,'002','C-001-002','Ejecución de Sistema de Admisión y nivelación de Grado P SP AD',1,1),
(17,8,'001','C-002-001','Homologación Facultad de Grado UTEG. Modalidades: Presencial, Semipresencial y A distancia.',1,1),
(18,9,'001','C-003-001','Emisión de certificados estudiantiles',1,1),
(19,10,'001','C-004-001','Seguimiento al desempeño académico del Estudiante. Modalidad Presencial',1,1),
(20,10,'002','C-004-002','Seguimiento al desempeño académico del Estudiante. Modalidad Semipresencial',1,1),
(21,10,'003','C-004-003','Seguimiento al desempeño académico del Estudiante. Modalidad A distancia',1,1),
(22,11,'001','C-004-001','Admisiones',1,1),
(23,11,'002','C-004-002','Homologacion',1,1),
(24,11,'003','C-004-003','Distributivo',1,1),
(25,11,'004','C-004-004','Carta de asignación de materias',1,1),
(26,11,'005','C-004-005','Seguimiento Académico',1,1),
(27,12,'','C-005-','',1,1),
(28,13,'','C-006-','',1,1),
(29,14,'','C-007-','',1,1),
(30,15,'','C-008-','',1,1),
(31,16,'001','D-001-001','Gestion de Graduados',1,1),
(32,16,'002','D-001-002','Gestión de Sistemas, Políticas e Instructivos',1,1),
(33,16,'003','D-001-003','Gestión de Reglamentos',1,1),
(34,16,'004','D-001-004','Gestión de Consejo Universitario',1,1),
(35,16,'005','D-001-005','Gestión de Comités Académicos',1,1),
(36,16,'006','D-001-006','Gestión de Comités de Investigación',1,1),
(37,16,'007','D-001-007','Gestión de Comités Administrativos',1,1),
(38,16,'008','D-001-008','Actas de Becas',1,1),
(39,16,'009','D-001-009','Expedientes de graduados',1,1),
(40,16,'010','D-001-010','Designaciones',1,1),
(41,16,'','','Convenios',1,1),
(42,17,'001','D-002-001','Manual gestión documental',1,1),
(43,17,'002','D-002-002','Directrices gestión documental',1,1),
(44,17,'003','D-002-003','Tabla plazo de conservación documental',1,1),
(45,17,'004','D-002-004','Transferencia documental',1,1),
(46,17,'005','D-002-005','Recepción documental',1,1),
(47,17,'006','D-002-006','Prestamo Documental',1,1),
(48,17,'007','D-002-007','Registro de documentos',1,1),
(49,17,'008','D-002-008','Eliminación Documental',1,1),
(50,18,'001','D-003-001','Emisión de Designaciones de personal',1,1),
(51,18,'002','D-003-002','Elaboración de oficios',1,1),
(52,18,'003','D-003-003','Actas de Organos Colegiados',1,1),
(53,18,'004','D-003-004','Organización de graduación',1,1),
(54,19,'001','E-001-001','Formulación, reformulación y aprobación de oferta académica',1,1),
(55,19,'002','E-001-002','Syllabus por carreras',1,1),
(56,19,'003','E-001-003','Labor Tutorial del personal académico en las carreras de grado ',1,1),
(57,19,'004','E-001-004','Tutorías de trabajo de titulación ',1,1),
(58,19,'005','E-001-005','Definición de temas de trabajos de titulación de Grado',1,1),
(59,19,'006','E-001-006','Aseguramiento de la Calidad de las carreras de Grado',1,1),
(60,19,'007','E-001-007','Gestión Académica',1,1),
(61,19,'008','E-001-008','Trayectoria Académica del Estudiante',1,1),
(62,19,'009','E-001-009','Evaluación integral del desempeño docente',1,1),
(63,20,'001','E-004-001','Syllabus por carreras',1,1),
(64,20,'002','E-004-002','Trayectoria Académica',1,1),
(65,20,'003','E-004-003','Aseguramiento de la Calidad',1,1),
(66,20,'004','E-004-004','Gestión Académica',1,1),
(67,20,'005','E-004-005','Evaluación integral del desempeño docente',1,1),
(68,20,'006','E-004-006','Formulación, reformulación y aprobación de oferta académica',1,1),
(69,20,'007','E-004-007','Labor Tutorial del personal académico en las carreras de grado ',1,1),
(70,20,'008','E-004-008','Tutorías de trabajo de titulación ',1,1),
(71,20,'009','E-004-009','Definición de temas de trabajos de titulación de Grado',1,1),
(72,20,'010','E-004-010','',1,1),
(73,21,'001','E-005-001','Creación de Porgramas de Posgrado',1,1),
(74,21,'002','E-005-002','Elaboración de cronograma de clases de Posgrado',1,1),
(75,21,'003','E-005-003','Expediente de actas de notas. Facultad de Estudios de Posgrado',1,1),
(76,21,'004','E-005-004','Definición y selección de temas de trabajos de titulación de Posgrado',1,1),
(77,21,'005','E-005-005','Expediente de Profesores. Facultad de Estudios de Posgrado',1,1),
(78,21,'006','E-005-006','Expediente de Estudiantes admitidos a la Facultad de Estudios de Posgrado',1,1),
(79,21,'007','E-005-007','Presentación de trabajo de titulación. Facultad de Estudios de Posgrado',1,1),
(80,21,'008','E-005-008','Aseguramiento de la Calidad de los Programas de Posgrado',1,1),
(81,21,'009','E-005-009','Labor Tutorial del personal académico en los programas de Posgrado',1,1),
(82,21,'010','E-005-010','Evaluación integral del desempeño docente',1,1),
(83,22,'','E-001-005','',1,1),
(84,23,'001','E-006-001','Evaluaciones Periodo 2019 IDM',1,1),
(85,23,'002','E-006-002','Exámenes de ubicación',1,1),
(86,23,'003','E-006-003','Firmas y Carpetas de Docentes',1,1),
(87,23,'004','E-006-004','Factura de Docentes',1,1),
(88,23,'005','E-006-005','Tutorías',1,1),
(89,23,'006','E-006-006','Aprobación Examenes de Suficiencia Inglés - Maestrías',1,1),
(90,23,'007','E-006-007','Certificados Internacional Recibido para suficiencia en inglés - Grado/Posgrado',1,1),
(91,23,'008','E-006-008','Memorandos',1,1),
(92,23,'009','E-006-009','Reporte de calificaciones -  Online',1,1),
(93,23,'010','E-006-010','Asistencia a Reuniones y Capacitaciones - Online',1,1),
(94,23,'011','E-006-011','Exámenes de ubicación - Online',1,1),
(95,23,'012','E-006-012','Formularios de Inscripción - Online',1,1),
(96,23,'013','E-006-013','Apertura de cursos de idiomas',1,1),
(97,23,'014','E-006-014','Exámenes Finales',1,1),
(98,23,'015','E-006-015','Documentación de Solicitudes e Inscripciones Internas',1,1),
(99,23,'016','E-006-016','Proceso Disciplinario',1,1),
(100,23,'017','E-006-017','Recepción de Documentos Posgrado',1,1),
(101,24,'001','F-001-001','Lanzamiento de proyectos de investigación con financiamiento',1,1),
(102,24,'002','F-001-002','Seguimiento de proyectos de investigación',1,1),
(103,25,'001','F-002-001','Producción científica',1,1),
(104,25,'002','F-002-002','Registro final de producción científica',1,1),
(105,26,'001','G-001-001','Planificación de programas y proyectos de Vinculación con la Sociedad',1,1),
(106,26,'002','G-001-002','Financiamiento de los Proyectos de Vinculación con la Sociedad',1,1),
(107,26,'003','G-001-003','Ejecución del plan de Vinculación con la Sociedad',1,1),
(108,26,'004','G-001-004','Monitoreo y evaluación del impacto de los proyectos de Vinculación con la Sociedad',1,1),
(109,26,'005','G-001-005','Prácticas Pre-profesionales',1,1),
(110,26,'006','G-001-006','Seguimiento a graduados',1,1),
(111,27,'001','H-001-001','Pensión diferenciada',1,1),
(112,27,'002','H-001-002','Becas',1,1),
(113,27,'003','H-001-003','Atención a requerimientos de la comunidad universitaria',1,1),
(114,27,'004','H-001-004','Buzón UTEG',1,1),
(115,27,'005','H-001-005','Difusión de servicios de Bienestar Universitario',1,1),
(116,27,'006','H-001-006','Bolsa de Trabajo',1,1),
(117,27,'007','H-001-007','Actividades sociales, culturales y deportivas',1,1),
(118,28,'001','H-001-008','Verificación del inventario del acervo bibliográfico',1,1),
(119,28,'002','H-001-009','Control de préstamos de libros',1,1),
(120,28,'003','H-002-003','Ingreso de Adquisiciones de Libros Fisicos en Acervo Bibliografico',1,1),
(121,28,'004','H-002-004','Utilización de Biblioteca física',1,1),
(122,28,'005','H-002-005','Utilización de Biblioteca virtual',1,1),
(123,28,'006','H-002-006','Catálogo de Libros por Carrera y Línea de Investigación',1,1),
(124,28,'007','H-002-007','Comunicados del Departamento de Biblioteca',1,1),
(125,28,'008','H-002-008','Normativa e Informes del Departamento de Biblioteca',1,1),
(126,28,'009','H-002-009','Entrega de Credenciales a Estudiantes y Colaboradores',1,1),
(127,28,'010','H-002-010','Certificado de no adeudar libros',1,1),
(128,28,'011','H-002-011','Uso de Espacios de Sala de Lectura',1,1),
(129,28,'012','H-002-012','Listado de Tesis Uteg',1,1),
(130,28,'013','H-002-013','Donación de Libros a UTEG',1,1),
(131,28,'014','H-002-014','Descartes de Libros UTEG',1,1),
(132,29,'001','H-003-001','Gestion del dispensario medico',1,1),
(133,29,'002','H-003-002','Elaboracion de fichas medicas',1,1),
(134,29,'003','H-003-003','Atencion medica a la comunidad universitaria',1,1),
(135,29,'004','H-003-004','Realizacion de charlas',1,1),
(136,30,'001','H-004-001','Identidad y/o Condición de Miembros UTEG',1,1),
(137,30,'002','H-004-002','Asignación de Becas y Ayudas Económicas',1,1),
(138,30,'003','H-004-003','Seguimientos',1,1),
(139,30,'001','','',1,1),
(140,31,'001','J-001-001','Banco de Hojas de Vida de Elegibles',1,1),
(141,31,'002','J-001-002','Carpeta de Profesores Tiempo Completo',1,1),
(142,31,'003','J-001-006','Expedientes de procesos de selección',1,1),
(143,31,'004','J-001-007','Proceso de Concurso de Méritos y Oposición',1,1),
(144,32,'001','J-002-001','Candidatos a Procesos de Selección',1,1),
(145,32,'002','J-002-002','Carpetas Personal Administrativo',1,1),
(146,32,'003','J-002-003','Encargos Administrativos del Personal',1,1),
(147,32,'004','J-002-004','Manuales de Funciones Personal',1,1),
(148,32,'005','J-002-005','Acuerdos de Seguridad de Uso de La Información',1,1),
(149,32,'006','J-002-006','Reglamento de Salud y Seguridad en el Trabajo',1,1),
(150,32,'007','J-002-007','Entrega de Credenciales de Acceso',1,1),
(151,33,'001','J-003-001','Expedientes de Solicitudes de Beca Profesores',1,1),
(152,33,'002','J-003-002','Planes de Formación Doctoral Docentes',1,1),
(153,33,'003','J-003-003','Solicitudes de Vacaciones',1,1),
(154,33,'004','J-003-004','Solicitudes de Permisos Y Licencias',1,1),
(155,34,'001','J-004-001','Informes de Cumplimiento de Formación Doctoral',1,1),
(156,34,'002','J-004-002','Cartas de Aceptación de Estudio Posgrado',1,1),
(157,34,'003','J-004-003','Solicitudes de Beca y Licencias de Profesores',1,1),
(158,34,'004','J-004-004','Listados de Asistencia a Capacitación',1,1),
(159,34,'005','J-004-005','Diplomas de Capacitación',1,1),
(160,34,'007','J-004-007','Informes de Cumplimiento del Plan de Capacitación',1,1),
(161,35,'001','J-005-001','Concurso para Promoción y escalafonamiento de profesores',1,1),
(162,35,'002','J-005-002','Nombramientos y Designaciones de Profesores Promovidos',1,1),
(163,35,'003','J-005-003','Normativas y Reglamentos de Promoción y Titularidad',1,1),
(164,36,'001','J-006-001','Evaluaciones Integrales de Desempeño',1,1),
(165,36,'002','J-006-002','Informes de Evaluación Integral de Desempeño',1,1),
(166,37,'001','J-001-001','',1,1),
(167,38,'001','J-002-001','Emisión de Comprobantes de Pago',1,1),
(168,39,'','-003-','',1,1),
(169,40,'001','K-004-001','Elaboracion de Compromiso de Pagos Maestria en Burdeos - 2017',1,1),
(170,40,'002','K-004-002','Elaboracion de Compromiso de Pagos Maestria en Burdeos - 2018',1,1),
(171,40,'003','K-004-003','Cheques Protestados Bancos (2016 - 2019)',1,1),
(172,40,'004','K-004-004','Documentos Varios (Prorroga de pago, condonación de deuda, retiros, autorizacion de PPP, IECE tabla, Certificado de no Adeudar, Traspaso de Saldo, Cruces) 2017 - 2018',1,1),
(173,40,'005','K-004-005','Documentos Varios (Prorroga de pago, condonación de deuda, retiros, autorizacion de PPP, IECE tabla, Certificado de no Adeudar, Traspaso de Saldo, Cruces) 2018 - 2019',1,1),
(174,40,'006','K-004-006','Elaboracion de Convenios de Pagos de Maestrias Enero a Junio 2017',1,1),
(175,40,'007','K-004-007','Elaboracion de Convenios de Pagos de Maestrias Julio a Diciembre 2017',1,1),
(176,40,'008','K-004-008','Elaboracion de Convenios de Pagos de Maestrias Enero a Junio 2018',1,1),
(177,40,'009','K-004-009','Elaboracion de Convenios de Pagos de Maestrias Julio a Diciembre 2018',1,1),
(178,40,'010','K-004-010','Elaboracion de Convenios de Pagos de Maestrias Enero a Junio 2019',1,1),
(179,40,'011','K-004-011','',1,1),
(180,40,'012','K-004-012','',1,1),
(181,40,'013','K-004-013','',1,1),
(182,40,'014','K-004-014','',1,1),
(183,40,'015','K-004-015','',1,1),
(184,40,'016','K-004-016','',1,1),
(185,40,'017','K-004-017','',1,1),
(186,40,'018','K-004-018','',1,1),
(187,40,'019','K-004-019','Convenios de Pagos Maestria en Educacion  Grupo 1.1 (Paralelo del 1 al 3)',1,1),
(188,40,'020','K-004-020','Convenios de Pagos Maestria en Educacion  Grupo 1.2 (Paralelo del 4 al 5)',1,1),
(189,40,'021','K-004-021','Convenios de Pagos Maestria en Educacion  Grupo 1.3 (Paralelo del 6 al 8)',1,1),
(190,40,'022','K-004-022','Convenios de Pagos Maestria en Educacion  Grupo 1.4 (Paralelo del 9 al 10)',1,1),
(191,40,'023','K-004-023','Convenios de Pagos Maestria en Educacion  Grupo 1.5 (Paralelo 11 al 13)',1,1),
(192,40,'024','K-004-024','Convenios de Pagos Maestria en Educacion  Grupo 1.6 (Paralelo del 11 al 15)',1,1),
(193,40,'025','K-004-025','Convenios de Pagos Maestria en Educacion  Grupo 1.7 (Paralelo del 16 al 17)',1,1),
(194,40,'026','K-004-026','Convenios de Pagos Maestria en Educacion  Grupo 1.8 (Paralelo del 18 al 19)',1,1),
(195,40,'027','K-004-027','Convenios de Pagos Maestria en Educacion  Grupo 2.1 (Paralelo del 20 al 22',1,1),
(196,40,'028','K-004-028','Convenios de Pagos Maestria en Educacion  Grupo 2.2 (Paralelo del 23 al 25)',1,1),
(197,40,'029','K-004-029','Convenios de Pagos Maestria en Educacion  Grupo 2.3 (Paralelo del 26 al 28)',1,1),
(198,40,'030','K-004-030','Convenios de Pagos Maestria en Educacion  Grupo 2.4 (Paralelo del 29 al 31)',1,1),
(199,40,'031','K-004-031','Convenios de Pagos Maestria en Educacion  Grupo 2.5 (Paralelo 32 al 33)',1,1),
(200,40,'032','K-004-032','Convenios de Pagos Maestria en Educacion  Grupo 2.6 (Paralelo del 34 al 36)',1,1),
(201,40,'033','','',1,1),
(202,40,'034','','',1,1),
(203,40,'035','','',1,1),
(204,40,'036','','',1,1),
(205,40,'037','','',1,1),
(206,40,'038','','',1,1),
(207,40,'039','','',1,1),
(208,40,'040','','',1,1),
(209,40,'041','','',1,1),
(210,40,'042','','',1,1),
(211,41,'001','K-005-001','Conciliación bancaria',1,1),
(212,41,'002','K-005-002','Soportes de consumos de tarjetas de crédito',1,1),
(213,41,'003','k-005-003','Soportes de avances en efectivo',1,1),
(214,41,'004','K-005-004','Soportes de liquidación caja chica',1,1),
(215,41,'005','K-005-005','Notificaciones recibidas Servicios Rentas Internas',1,1),
(216,41,'006','K-005-006','Oficios enviados Servicios Rentas Internas',1,1),
(217,41,'007','K-005-007','Declaración de impuestos',1,1),
(218,41,'008','K-005-008','Reportes de Estados Financieros',1,1),
(219,41,'009','K-005-009','Comprobantes de venta por mantenimientos y reparaciones',1,1),
(220,42,'001','L-001-001','Formulario de Inscripción Grado',1,1),
(221,42,'002','L-001-002','Formulario de Inscripción Posgrado',1,1),
(222,42,'003','L-001-003','Formulario de Inscripción Educación Continua',1,1),
(223,42,'004','L-001-004','Traslado de Homologaciones',1,1),
(224,42,'005','L-001-005','Actas de Recepción',1,1),
(225,42,'006','L-001-006','Actas de Entrega',1,1),
(226,43,'001','L-002-001','DDF',1,1),
(227,43,'002','L-002-002','Dercas',1,1),
(228,43,'003','L-002-003','Acta de Reunión',1,1),
(229,43,'004','L-002-004','Plan de Pruebas Internas',1,1),
(230,43,'005','L-002-005','Plan de Pruebas Con Usuarios',1,1),
(231,43,'006','L-002-006','Acta de Aceptación Capacitación',1,1),
(232,43,'007','L-002-007','Acta de Entrega',1,1),
(233,43,'008','L-002-008','Manual de Procesos Críticos',1,1),
(234,43,'009','L-002-009','Manual de Usuarios',1,1),
(235,43,'010','L-002-010','Plan de Puesta A Producción',1,1),
(236,43,'011','L-002-011','Informes',1,1),
(237,44,'001','L-003-001','PLAN DE PRUEBAS',1,1),
(238,44,'002','L--002','PLAN DE CAPACITACIÓN',1,1),
(239,44,'003','L--003','ACTA DE ENTREGA',1,1),
(241,46,'','','',1,1),
(242,47,'','','',1,1);

