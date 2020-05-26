--
-- Base de datos: `db_academico`
--
USE `db_academico`;

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `tipo_evaluacion`
-- 
INSERT INTO `tipo_evaluacion` (`teva_id`, `teva_nombre`,  `teva_estado`, `teva_estado_logico`) VALUES 
(1, 'Docencia', '1', '1'),
(2, 'Investigación', '1', '1'),
(3, 'Dirección y Gestión Académica', '1', '1');

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `tipo_distributivo`
-- 
INSERT INTO `tipo_distributivo` (`tdis_id`, `tdis_nombre`, `tdis_estado`, `tdis_estado_logico`) VALUES
(1, 'Docencia', '1', '1'),
(2, 'Tutorías', '1', '1'),
(3, 'Investigación', '1', '1'),
(4, 'Vinculación', '1', '1'),
(5, 'Administrativas', '1', '1'),
(6, 'Otras Actividades', '1', '1');

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `actividad_evaluacion`
-- -- ------------------------ ------------------------------
INSERT INTO `actividad_evaluacion` (`aeva_id`, `aeva_descripcion`, `aeva_nombre`, `aeva_estado`, `aeva_estado_logico`) VALUES
(1, 'Asistido por el docente', 'Asistido por el docente', '1', '1'),
(2, 'ABP', 'ABP', '1', '1'),
(3, 'ABI', 'ABI', '1', '1'),
(4, 'Trabajo colaborativo', 'Trabajo colaborativo', '1', '1'),
(5, 'Debates/Foros', 'Debates/Foros', '1', '1'),
(6, 'Análisis de casos', 'Análisis de casos', '1', '1'),
(7, 'Exposición de temas', 'Exposición de temas', '1', '1'),
(8, 'Talleres prácticos', 'Talleres prácticos', '1', '1'),
(9, 'Otros', 'Otros', '1', '1');

-- -- ------------------------ ------------------------------
--
-- Volcado de datos para la tabla `valor_desarrollo`
-- -- ------------------------ ------------------------------
INSERT INTO `valor_desarrollo` (`vdes_id`, `vdes_descripcion`, `vdes_nombre`, `vdes_estado`, `vdes_estado_logico`) VALUES
(1, 'Lealtad', 'Lealtad', '1', '1'),
(2, 'Compromiso', 'Compromiso', '1', '1'),
(3, 'Disciplina', 'Disciplina', '1', '1'),
(4, 'Solidaridad', 'Solidaridad', '1', '1'),
(5, 'Integridad', 'Integridad', '1', '1'),
(6, 'Puntualidad', 'Puntualidad', '1', '1'),
(7, 'Responsabilidad Social', 'Resp. Social', '1', '1'),
(8, 'Responsabilidad Ambiental', 'Resp. Ambiental', '1', '1'),
(9, 'Otros', 'Otros', '1', '1');


-- Especies Valoradas 
INSERT INTO `responsable_especie` (`resp_id`, `resp_nombre`, `resp_titulo`, `resp_cargo`, `uaca_id`, `mod_id`, `resp_usuario_ingreso`, `resp_estado`, `resp_estado_logico`) VALUES 
(1,'Diego Aguirre','Msc','',1,1,1,'1','1'),
(2,'Xavier Mosquera','Phd','',1,2,1,'1','1'),
(3,'Francisco Cedeño','Msc','',1,3,1,'1','1'),
(4,'Francisco Cedeño','Msc','',1,4,1,'1','1'),
(5,'Olmedo Farfán','Phd','',2,1,1,'1','1'),
(6,'Olmedo Farfán','Phd','',2,2,1,'1','1'),
(7,'Olmedo Farfán','Phd','',2,3,1,'1','1');


INSERT INTO `tramite` (`tra_id`, `uaca_id`, `tra_nombre`, `tra_nomenclatura`, `tra_descripcion`, `tra_usuario_ingreso`, `tra_estado`, `tra_estado_logico`) VALUES 
(1,1,'Académicos','ACA',null,1,'1','1'),
(2,1,'Graduación','GRA',null,1,'1','1'),
(3,1,'Secretaría General','SEC',null,1,'1','1'),
(4,1,'Financiero','FIN',null,1,'1','1'),
(5,2,'Académicos','ACA',null,1,'1','1'),
(6,2,'Graduación','GRA',null,1,'1','1'),
(7,2,'Examen Complexivo','EXA',null,1,'1','1'),
(8,2,'Secretaría General','SEC',null,1,'1','1'),
(9,2,'Financiero','FIN',null,1,'1','1');


INSERT INTO `especies` (`esp_id`,`tra_id`,`esp_codigo`,`esp_rubro`,`esp_valor`,`esp_emision_certificado`,`esp_departamento`,`esp_dia_vigencia`,`esp_numero`,`esp_usuario_ingreso`,`esp_usuario_modifica`,`esp_estado`,`esp_fecha_creacion`,`esp_fecha_modificacion`,`esp_estado_logico`) VALUES 
(1,1,1,'Exámenes supletorios',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:19:41',NULL,'1'),
(2,1,2,'Exámenes mejoramiento',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(3,1,3,'Exámenes atrasado',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(4,1,4,'Examen Adelantado',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(5,1,5,'Cambio de Carrera',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(6,1,6,'Cambio de Horario de materias',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(7,1,7,'Cambio de Paralelo',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(8,1,8,'Homologación por reingreso y cambio de malla antigua a vigente',120.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(9,1,9,'Cambio de Modalidad',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(10,1,10,'Certificado de asistencia/estudios simple',10.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(11,1,11,'Certificado de conducta',5.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(12,1,12,'Certificado de estudios para Consulados',20.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(13,1,13,'Certificado de materias aprobadas con notas/completo y/o IECE',50.00,'SI','SECRETARIA GENERAL/FACULTAD/FINANCIERO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(14,1,14,'Certificado de materias/módulos aprobados para IECE 2da vez',20.00,'SI','SECRETARIA GENERAL/FACULTAD/FINANCIERO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(15,1,15,'Certificado de matrícula',10.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(16,1,16,'Justificación de faltas',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(17,1,17,'Extensión del Trabajo de Titulación',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:10',NULL,'1'),
(18,1,18,'Promedio de Graduación',20.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(19,1,19,'Recalificación de examen',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(20,1,20,'Reingreso a colegiatura',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(21,1,21,'Resciliación de materias',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(22,1,22,'Cambio de materia',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(23,1,23,'Retiro de Universidad y Documentos',100.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(24,1,24,'Retiro de Universidad',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(25,1,25,'Solicitud de materia en Modular o Tutoría',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(26,1,26,'Solicitud de camibio de modalidad de Trabajo de Titulación',50.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(27,1,27,'Traducción de Documentos',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(28,1,28,'Extensión de Beca',10.00,'NO','BIENESTAR UNIVERSITARIO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(29,1,29,'Pensión Diferenciada',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(30,1,30,'Solicitud de Beca',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(31,1,31,'Solicitud de Inicio de Pasantías',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(32,1,32,'Solicitud de Finalización de Pasantías',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:11',NULL,'1'),
(33,1,33,'Solicitud de Inicio de Vinculación con la Sociedad',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(34,1,34,'Solicitud de Finalización de Vinculación con la Sociedad',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(35,1,35,'Emisión de carnets (segunda emisión)',5.00,'NO','BIENESTAR UNIVERSITARIO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(36,1,36,'Solicitud de cambio de Tema de Trabajo de Titulación',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(37,1,37,'Homologación',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(38,1,38,'Validación de Conocimientos',20.00,'NO','Materias aprobadas mayor a cinco años',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(39,1,39,'Certificado de suficiencia de idioma extranjero',5.00,'SI','SECRETARIA GENERAL/RELACIONES INTERNACIONALES',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(40,1,40,'Trámites Generales',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(41,2,1,'Certificado de haber culminado malla curricular',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(42,2,2,'Solicitud para registrarse en Trabajo de Titulación',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(43,2,3,'Solicitud para presentar Tema de Trabajo de Titulación',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(44,2,4,'Solicitud de informe favorable del Trabajo de Titulación',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(45,2,5,'Certificado de aprobación de segundo idioma',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(46,2,6,'Certificado de no adeudar dinero a la UTEG',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(47,2,7,'Certificado de no adeudar material bibliográfico de la UTEG',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(48,2,8,'Certificado de haber cumplido las horas de vinculación',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(49,2,9,'Certificado de haber cumplido con las prácticas  Pre-Profesionales',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(50,2,10,'Constancia de haber entregado documentos actualizados',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(51,2,11,'Certificado de Sistema de Similitud',30.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(52,2,12,'Solicitud de entrega de ejemplares y conformación de tribunal',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(53,2,13,'Constancia de haber entregado los ejemplares del trabajo de titulación empastados y CD',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(54,2,14,'Constancia de haber cancelado alquiler de toga y birrete ',30.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:12',NULL,'1'),
(55,2,15,'Constancia de haber entregado los formularios de Seguimiento de Graduados y Firma de Acta',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(56,3,1,'Certificación de copia de Acta de Grado',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(57,3,2,'Certificación de copia de título',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(58,3,3,'Certificado de Graduado',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(59,3,4,'Certificado de notas y carga horaria Graduados',50.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(60,3,5,'Reposición de Título',210.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(61,3,6,'Certificado de Carrera válida para Maestría',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(62,3,7,'Reposición de Acta de Grado',100.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(63,3,8,'Certificado de Malla Curricular ',20.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(64,4,1,'Autorización para matricula extemporánea',10.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(65,4,2,'Autorización de traspaso de saldo a favor',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(66,4,3,'Condonación de Deuda',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(67,4,4,'Devolución de valores',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(68,4,5,'Prórroga de pagos',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(69,5,1,'Cambio de cohorte',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(70,5,2,'Cambio de tema de tesis o investigación',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(71,5,3,'Cambio de tutor',20.00,'SI','FACULTAD',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(72,5,4,'Certificado de culminación de malla curricular',10.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(73,5,5,'Certificado de estudios para Consulados',20.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(74,5,6,'Certificado de materias/módulos aprobados con notas completas y/o IECE',50.00,'SI','SECRETARIA GENERAL/FACULTAD/FINANCIER',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(75,5,7,'Certificado de matrícula',5.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(76,5,8,'Certificado de Cronograma de estudios',5.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(77,5,9,'Entrega de anteproyecto de Tesis/ Investigación',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(78,5,10,'Entrega de Tesis/ Investigación',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(79,5,11,'Justificación de faltas',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:13',NULL,'1'),
(80,5,12,'Autorización de examen adelantado',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(81,5,13,'Pensum Académico - POSGRADO',20.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(82,5,14,'Defensa de Tesis/ Investigación',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(83,5,15,'Reingreso a maestría',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(84,5,16,'Renuncia de Tema de Tesis/ Investigación',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(85,5,17,'Retiro de Universidad',10.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(86,5,18,'Retiro de Universidad con documentación',100.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(87,5,19,'Solicitud de repetición de Módulo',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(88,5,20,'Traducción de Documentos',30.00,'SI','SECRETARIA GENERAL/RELACIONES INTERNACIONALES',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(89,5,21,'Solicitud de Inicio de Vinculación con la Sociedad',5.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(90,5,22,'Solicitud de Fin de Vinculación con la Sociedad',5.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(91,5,23,'Trámites Generales',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(92,5,24,'Certificado de suficiencia de idioma extranjero',5.00,'SI','SECRETARIA GENERAL/RELACIONES INTERNACIONALES',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(93,5,25,'Homologación de módulos',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(94,6,1,'Presentación de Anteproyecto de Tesis / Investigación',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(95,6,2,'Certificado de aprobación Tema de tesis ',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(96,6,3,'Solicitud de informe de tutores para tesis/investigación',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(97,6,4,'Certificado de haber culminado su pensum de estudios',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(98,6,5,'Certificado de no adeudar dinero en la UTEG',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(99,6,6,'Certificado de no adeudar material bibliográfico en la UTEG',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(100,6,7,'Constancia de haber entregado los documentos actualizados',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(101,6,8,'Análisis de Sistema de Similitud',50.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(102,6,9,'Asignación de tribunal y entrega de anillados para sustentación de Tesis/Investigación',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(103,6,10,'Constancia de haber entregado las dos tesis empastadas y CD',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(104,6,11,'Constancia de haber cancelado alquiler de toga y birrete',30.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(105,6,12,'Constancia de haber entregado los formularios de seguimiento de graduados y firma del acta',30.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(106,7,1,'Solicitud dirigida a Decanato para realizar el examen complexivo',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(107,7,2,'Certificado de aprobación del examen complexivo',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(108,7,3,'Certificado de haber cumplido con su pensum de estudios',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:14',NULL,'1'),
(109,7,4,'Certificado de no adeudar dinero a la UTEG ',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(110,7,5,'Constancia de no adeudar libros o material bibliográfico de la biblioteca UTEG',10.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(111,7,6,'Constancia de haber entregado los documentos actualizados',20.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(112,7,7,'Constancia de haber cancelado el alquiler de la toga y birrete',30.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(113,7,8,'Constancia de haber entregado los formularios de seguimiento de graduados y firma de acta. ',30.00,'SI','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(114,8,1,'Certificación de copia de Acta de Grado',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(115,8,2,'Certificación de copia de título',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(116,8,3,'Certificado de Graduado',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(117,8,4,'Certificado de notas y carga horaria Graduados',50.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(118,8,5,'Reposición de Título',210.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(119,8,6,'Certificado de Maestría válida para Doctorado',30.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(120,8,7,'Certificado de Malla Curricular ',20.00,'NO','',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(121,8,8,'Trámites Varios',20.00,'SI','SECRETARIA GENERAL',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(122,9,1,'Autorización para inscripción extemporánea',10.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(123,9,2,'Traspaso de Saldo a favor',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(124,9,3,'Condonación de Deuda',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(125,9,4,'Devolución de valores',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(126,9,5,'Prórroga de pagos',20.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1'),
(127,9,6,'Cambio de Compromiso de Pago',10.00,'NO','INTERNO',30,'000000001',NULL,NULL,'1','2020-03-25 02:24:15',NULL,'1');


INSERT INTO `distributivo_academico_horario` (`daho_id`, `uaca_id`, `mod_id`, `daho_jornada`, `daho_horario`, `daho_hora_inicio`, `daho_hora_fin`,  `daho_lunes`, `daho_martes`, `daho_miercoles`, `daho_jueves`, `daho_viernes`, `daho_sabado`, `daho_domingo`, `daho_estado`, `daho_estado_logico`) VALUES
(1, 1, 2, '1', '1H', '09:00', '11:00', '1', '1', '0', '1', '0', '0', '0', '1', '1'),
(2, 1, 2, '1', '2H', '11:00', '13:00', '1', '1', '0', '1', '0', '0', '0', '1', '1'),
(3, 1, 2, '1', '3H', '13:30', '15:30', '1', '1', '0', '1', '0', '0', '0', '1', '1'),
(4, 1, 2, '1', '4H', '09:00', '12:00', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(5, 1, 2, '1', '5H', '09:00', '12:00', '0', '0', '0', '0', '1', '0', '0', '1', '1'),
(6, 1, 2, '2', '1H', '18:20', '20:20', '1', '1', '0', '1', '0', '0', '0', '1', '1'),
(7, 1, 2, '2', '2H', '20:20', '22:20', '1', '1', '0', '1', '0', '0', '0', '1', '1'),
(8, 1, 2, '2', '3H', '18:20', '21:20', '0', '0', '1', '0', '1', '0', '0', '1', '1'),
(9, 1, 2, '2', '4H', '18:20', '21:20', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(10, 1, 2, '2', '5H', '18:20', '21:20', '0', '0', '0', '0', '1', '0', '0', '1', '1'),
(11, 1, 2, '2', '6H', null, null, '0', '0', '0', '0', '0', '1', '0', '1', '1'),

(12, 1, 3, '3', '1H', '07:15', '10:15', '0', '0', '0', '0', '0', '1', '0', '1', '1'),
(13, 1, 3, '3', '2H', '10:30', '13:30', '0', '0', '0', '0', '0', '1', '0', '1', '1'),
(14, 1, 3, '3', '3H', '14:30', '17:30', '0', '0', '0', '0', '0', '1', '0', '1', '1'),

(15, 1, 4, '4', '1H', '08:15', '10:15', '0', '0', '0', '0', '0', '1', '0', '1', '1'),
(16, 1, 4, '4', '2H', '10:30', '12:30', '0', '0', '0', '0', '0', '1', '0', '1', '1'),
(17, 1, 4, '4', '3H', '13:30', '15:30', '0', '0', '0', '0', '0', '1', '0', '1', '1'),

(18, 1, 1, '2', 'LU1H', '19:00', '20:00', '1', '0', '0', '0', '0', '0', '0', '1', '1'),
(19, 1, 1, '2', 'LU2H', '20:00', '21:00', '1', '0', '0', '0', '0', '0', '0', '1', '1'),
(20, 1, 1, '2', 'LU3H', '21:00', '22:00', '1', '0', '0', '0', '0', '0', '0', '1', '1'),
(21, 1, 1, '2', 'LU4H', '19:00', '20:30', '1', '0', '0', '0', '0', '0', '0', '1', '1'),
(22, 1, 1, '2', 'LU5H', '20:00', '21:30', '1', '0', '0', '0', '0', '0', '0', '1', '1'),
(23, 1, 1, '2', 'MA1H', '19:00', '20:00', '0', '1', '0', '0', '0', '0', '0', '1', '1'),
(24, 1, 1, '2', 'MA2H', '20:00', '21:00', '0', '1', '0', '0', '0', '0', '0', '1', '1'),
(25, 1, 1, '2', 'MA3H', '21:00', '22:00', '0', '1', '0', '0', '0', '0', '0', '1', '1'),
(26, 1, 1, '2', 'MA4H', '19:00', '20:30', '0', '1', '0', '0', '0', '0', '0', '1', '1'),
(27, 1, 1, '2', 'MA5H', '20:00', '21:30', '0', '1', '0', '0', '0', '0', '0', '1', '1'),
(28, 1, 1, '2', 'MI1H', '19:00', '20:00', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(29, 1, 1, '2', 'MI2H', '20:00', '21:00', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(30, 1, 1, '2', 'MI3H', '21:00', '22:00', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(31, 1, 1, '2', 'MI4H', '19:00', '20:30', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(32, 1, 1, '2', 'MI5H', '20:00', '21:30', '0', '0', '1', '0', '0', '0', '0', '1', '1'),
(33, 1, 1, '2', 'JU1H', '19:00', '20:00', '0', '0', '0', '1', '0', '0', '0', '1', '1'),
(34, 1, 1, '2', 'JU2H', '20:00', '21:00', '0', '0', '0', '1', '0', '0', '0', '1', '1'),
(35, 1, 1, '2', 'JU3H', '21:00', '22:00', '0', '0', '0', '1', '0', '0', '0', '1', '1'),
(36, 1, 1, '2', 'JU4H', '19:00', '20:30', '0', '0', '0', '1', '0', '0', '0', '1', '1'),
(37, 1, 1, '2', 'JU5H', '20:00', '21:30', '0', '0', '0', '1', '0', '0', '0', '1', '1'),
(38, 1, 1, '2', 'VI1H', '19:00', '20:00', '0', '0', '0', '0', '1', '0', '0', '1', '1'),
(39, 1, 1, '2', 'VI2H', '20:00', '21:00', '0', '0', '0', '0', '1', '0', '0', '1', '1'),
(40, 1, 1, '2', 'VI3H', '21:00', '22:00', '0', '0', '0', '0', '1', '0', '0', '1', '1'),
(41, 1, 1, '2', 'VI4H', '19:00', '20:30', '0', '0', '0', '0', '1', '0', '0', '1', '1'),
(42, 1, 1, '2', 'VI5H', '20:00', '21:30', '0', '0', '0', '0', '1', '0', '0', '1', '1');	