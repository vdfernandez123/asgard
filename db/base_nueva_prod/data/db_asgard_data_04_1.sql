--
-- Base de datos: `db_asgard`
--
USE `db_asgard`;
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `ACCION`
--
INSERT INTO `accion` (`acc_id`, `acc_nombre`, `acc_url_accion`, `acc_tipo`, `acc_descripcion`, `acc_lang_file`, `acc_dir_imagen`, `acc_estado`, `acc_estado_logico`) VALUES
(1, 'Create', 'Create', 'General', 'Create', 'accion', 'glyphicon glyphicon-file', '1', '1'),
(2, 'Update', 'Update', 'General', 'Update', 'accion', 'glyphicon glyphicon-floppy-disk', '1', '1'),
(3, 'Delete', 'Delete', 'General', 'Delete', 'accion', 'glyphicon glyphicon-trash', '1', '1'),
(4, 'Save', 'Save', 'General', 'Save', 'accion', 'glyphicon glyphicon-floppy-disk', '1', '1'),
(5, 'Search', 'Search', 'General', 'Search', 'accion', 'glyphicon glyphicon-search', '1', '1'),
(6, 'Print', 'Print', 'General', 'Print', 'accion', 'glyphicon glyphicon-print', '1', '1'),
(7, 'Import', 'Import', 'General', 'Import', 'accion', 'glyphicon glyphicon-import', '1', '1'),
(8, 'Export', 'Export', 'General', 'Export', 'accion', 'glyphicon glyphicon-export', '1', '1'),
(9, 'Back', 'Back', 'General', 'Back', 'accion', 'glyphicon glyphicon-triangle-right', '1', '1'),
(10, 'Next', 'Next', 'General', 'Next', 'accion', 'glyphicon glyphicon-triangle-left', '1', '1'),
(11, 'Clear', 'Clear', 'General', 'Clear', 'accion', 'glyphicon glyphicon-leaf', '1', '1'),
(12, 'Edit', 'Edit', 'General', 'Edit', 'accion', 'glyphicon glyphicon-pencil', '1', '1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `tipo_empresa`
--
INSERT INTO `tipo_empresa` (`temp_id`, `temp_nombre`, `temp_descripcion`, `temp_estado`, `temp_estado_logico`) VALUES
(1, 'Empresa Pública', 'Empresa Pública', '1', '1'),
(2, 'Empresa Privada', 'Empresa Privada', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `EMPRESA`
--
INSERT INTO `empresa` (`emp_id`, `temp_id`, `emp_razon_social`, `emp_nombre_comercial`, `emp_alias`, `emp_ruc`, `emp_dominio`, `emp_imap_domain`, `emp_imap_port`, `emp_imap_user`, `emp_imap_pass`, `emp_direccion`, `emp_telefono`, `emp_descripcion`, `emp_estado`, `emp_fecha_creacion`, `emp_fecha_modificacion`, `emp_estado_logico`) VALUES
(1, 2, 'UTEG', 'UTEG', 'UTEG', '', 'www.uteg.edu.ec', 'www.uteg.edu.ec', '587', '', '', NULL, NULL, NULL, '1', CURRENT_TIMESTAMP, NULL, '1'),
(2, 2, 'ulink', 'ulink', 'ulink', '', 'www.ccc.com', 'www.ccc.com', '587', '', '', NULL, NULL, NULL, '1', CURRENT_TIMESTAMP, NULL, '1'),
(3, 2, 'smart', 'smart', 'smart', '', 'www.ccc.com', 'www.ccc.com', '587', '', '', NULL, NULL, NULL, '1', CURRENT_TIMESTAMP, NULL, '1');


-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `ETNIA`
--
INSERT INTO `etnia` (`etn_id`, `etn_nombre`, `etn_descripcion`, `etn_estado`, `etn_estado_logico`) VALUES
(1, 'Afroecuatoriano/a', 'Afroecuatoriano/a', '1', '1'),
(2, 'Blanco/a', 'Blanco/a', '1', '1'),
(3, 'Indígena', 'Indígena', '1', '1'),
(4, 'Mestizo/a', 'Mestizo/a', '1', '1'),
(5, 'Montubio/a', 'Montubio/a', '1', '1'),
(6, 'Otro', 'Otro', '1', '1'),
(7, 'Negro/a', 'Negro/a', '1', '1'),
(8, 'Mulato/a', 'Mulato/a', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `ESTADO_CIVIL`
--
INSERT INTO `estado_civil` (`eciv_id`, `eciv_nombre`, `eciv_descripcion`, `eciv_estado`, `eciv_estado_logico`) VALUES
(1, 'Soltero', 'Soltero', '1', '1'),
(2, 'Casado', 'Casado', '1', '1'),
(3, 'Viudo', 'Viudo', '1', '1'),
(4, 'Divorciado', 'Divorciado', '1', '1'),
(5, 'Unión de hecho', 'Unión de hecho', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `TIPO_PARENTESCO`
--
INSERT INTO `tipo_parentesco` (`tpar_id`, `tpar_nombre`, `tpar_descripcion`, `tpar_grado`, `tpar_estado`, `tpar_estado_logico`) VALUES
(1, 'Esposo', 'descripción de parentesco', '1', '1', '1'),
(2, 'Esposa', 'descripción de parentesco', '1', '1', '1'),
(3, 'Hijo', 'descripción de parentesco', '1', '1', '1'),
(4, 'Hija', 'descripción de parentesco', '1', '1', '1'),
(5, 'Padre', 'descripción de parentesco', '1', '1', '1'),
(6, 'Madre', 'descripción de parentesco', '1', '1', '1'),
(7, 'Abuelo', 'descripción de parentesco', '0', '1', '1'),
(8, 'Abuela', 'descripción de parentesco', '0', '1', '1'),
(9, 'Hermano', 'descripción de parentesco', '0', '1', '1'),
(10, 'Hermana', 'descripción de parentesco', '0', '1', '1'),
(11, 'Tío', 'descripción de parentesco', '0', '1', '1'),
(12, 'Tía', 'descripción de parentesco', '0', '1', '1');

-- --------------------------------------------------------
--
-- Tabla `tipo_identificacion`
--
INSERT INTO `tipo_identificacion` (`tide_id`, `tide_nombre`, `tide_descripcion`, `tide_numero_caracteres`, `tide_estado`, `tide_estado_logico`) VALUES
(1, 'Cedula', 'Cedula', '10', '1', '1'),
(2, 'RUC', 'RUC', '13', '1','1'),
(3, 'Pasaporte','Pasaporte', NULL, '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `TIPO_PASSWORD`
--
INSERT INTO `tipo_password` (`tpas_id`, `tpas_descripcion`, `tpas_validacion`, `tpas_observacion`, `tpas_estado`, `tpas_estado_logico`) VALUES
(1, 'Simples', '/^(?=.*[a-z])(?=.*[A-Z]).{VAR,}$/', 'Las claves simples deben cumplir con lo mínimo: Caracteres alfabéticos (Mayúsculas y minúsculas).', '1', '1'),
(2, 'Semicomplejas', '/^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{VAR,}$/', 'Las claves semicomplejas deben cumplir con lo mínimo: Caracteres alfabéticos (Mayúsculas y minúsculas). ', '1', '1'),
(3, 'Complejas', '/^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\\,\\;#¿\\?\\}\\{\\]\\[\\-_¡!\\=&\\^:<>\\.\\+\\*\\/\\$\\(\\)]).{VAR,}$/', 'Las claves complejas deben cumplir con lo mínimo: Caracteres alfabéticos (Mayúsculas y minúsculas).\nSímbolos: @ , ; # ¿ ? } { ] [ - _ ¡ ! = & ^ : < > . + * / ( )', '1', '1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `TIPO_PERSONA`
--
INSERT INTO `tipo_persona` (`tper_id`, `tper_nombre`, `tper_estado`,`tper_estado_logico`) VALUES
(1, 'Natural', '1', '1'),
(2, 'Jurídica', '1', '1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `TIPO_SANGRE`
--
INSERT INTO `tipo_sangre` (`tsan_id`, `tsan_nombre`, `tsan_descripcion`, `tsan_estado`, `tsan_estado_logico`) VALUES
(1, 'AB +', 'descripción de tipo de sangre', '1', '1'),
(2, 'AB -', 'descripción de tipo de sangre', '1', '1'),
(3, 'A +', 'descripción de tipo de sangre', '1', '1'),
(4, 'A -', 'descripción de tipo de sangre', '1', '1'),
(5, 'B +', 'descripción de tipo de sangre', '1', '1'),
(6, 'B -', 'descripción de tipo de sangre', '1', '1'),
(7, 'O+', 'descripción de tipo de sangre', '1', '1'),
(8, 'O -', 'descripción de tipo de sangre', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `TIPO_DISCAPACIDAD`
--
INSERT INTO `tipo_discapacidad` (`tdis_id`,`tdis_nombre`, `tdis_descripcion`,`tdis_estado`,`tdis_estado_logico`) VALUES
(1,'Auditiva','Auditiva','1','1'),
(2,'Física Motora','Física Motora','1','1'),
(3,'Intelectual','Intelectual','1','1'),
(4,'Lenguaje','Lenguaje','1','1'),
(5,'Mental Psicosocial','Mental Psicosocial','1','1'),
(6,'Visual','Visual','1','1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `APLICACION`
--
INSERT INTO `aplicacion` (`apl_id`, `apl_nombre`, `apl_tipo`,`apl_estado`, `apl_estado_logico`) VALUES
(1, 'Framework', 'General', '1', '1');

--
-- Volcado de datos para la tabla `IDIOMA`
--
INSERT INTO `idioma` (`idi_id`, `idi_nombre`, `idi_tipo`,`idi_estado`, `idi_estado_logico`) VALUES
(1, 'Español', 'General', '1','1'),
(2, 'Ingles', 'General', '1','1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `PLANTILLA`
--
INSERT INTO `plantilla` (`pla_id`, `pla_nombre`, `pla_tipo`, `pla_estado`, `pla_estado_logico`) VALUES
(1, 'Asgard', 'General', '1', '1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `CONFIGURACION_SEGURIDAD`
--
INSERT INTO `configuracion_seguridad` (`cseg_id`, `tpas_id`, `cseg_long_pass`, `cseg_expiracion`, `cseg_descripcion`, `cseg_observacion`, `cseg_estado`, `cseg_estado_logico`) VALUES
(1, 1, '5', 0, 'Claves Simples min 5 caracteres. No tiene caducidad.', 'observación seguridad', '1','1'),
(2, 2, '6', 30, 'Claves SemiComplejas min 6 caracteres. Caducidad 30 dias.', 'observación seguridad','1', '1'),
(3, 3, '7', 60, 'Claves Complejas min 7 caracteres. Caducidad 60 dias.', 'observación seguirdad','1', '1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `GRUPO`
--
INSERT INTO `grupo` (`gru_id`, `cseg_id`, `gru_nombre`, `gru_descripcion`, `gru_observacion`, `gru_estado`, `gru_estado_logico`) VALUES
(1, 3, 'Super Admin',  'Super Admin', NULL, '1', '1'),
(2, 3, 'Sistemas', 'Sistemas', NULL, '1', '1'),
(3, 2, 'Admisiones', 'Admisiones', NULL, '1', '1'),
(4, 2, 'Financiero', 'Financiero', NULL, '1', '1'),
(5, 2, 'Colecturia', 'Colecturia', NULL, '1', '1'),
(6, 2, 'Online', 'Online', NULL, '1', '1'),
(7, 2, 'Grado', 'Grado', NULL, '1', '1'),
(8, 2, 'Posgrado', 'Grado', NULL, '1', '1'),
(9, 1, 'Interesado', 'Interesado', NULL, '1', '1'),
(10, 1, 'Aspirante', 'Aspirante', NULL, '1', '1'),
(11, 1, 'Estudiante', 'Estudiante', NULL, '1', '1'),
(12, 2, 'Docente', 'Docente', NULL, '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `ROL`
--
INSERT INTO `rol` (`rol_id`, `rol_nombre`, `rol_descripcion`, `rol_estado`, `rol_estado_logico`) VALUES
(1, 'Super Administrador', 'Super Administrador', '1', '1'),
(2, 'Admin Sistemas', 'Admin Sistemas', '1', '1'),
(3, 'Admin Administrativo', 'Admin Administrativo', '1', '1'),
(4, 'Gerente', 'Docente', '1', '1'),
(5, 'Director', 'Director', '1', '1'),
(6, 'Jefe', 'Jefe', '1', '1'),
(7, 'Coordinador', 'Coordinador Senior', '1', '1'),
(8, 'Supervisor', 'Supervisor Senior', '1', '1'),
(9, 'Analista', 'Analista Senior', '1', '1'),
(10, 'Asistente', 'Asistente Senior', '1', '1'),
(11, 'Lider', 'Lider', '1', '1'),
(12, 'Agente', 'Ejecutivo Comercial', '1', '1'),
(13, 'Secretaria', 'Secretaria', '1', '1'),
(14, 'Interesado', 'Interesado', '1', '1'),
(15, 'Aspirante', 'Aspirante', '1', '1'),
(16, 'Estudiante', 'Estudiante', '1', '1'),
(17, 'Docente', 'Docente', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `GRUP_ROL`
--
INSERT INTO `grup_rol` (`grol_id`, `gru_id`, `rol_id`, `grol_estado`, `grol_estado_logico`) VALUES
(1, 1, 1, '1', '1'),
(2, 2, 2, '1', '1'),

(3, 3, 6, '1', '1'),
(4, 3, 11, '1', '1'),
(5, 3, 12, '1', '1'),

(6, 4, 6, '1', '1'),
(7, 4, 8, '1', '1'),
(8, 4, 9, '1', '1'),
(9, 4, 10, '1', '1'),

(10, 5, 6, '1', '1'),
(11, 5, 8, '1', '1'),
(12, 5, 9, '1', '1'),
(13, 5, 10, '1', '1'),

(14, 6, 2, '1', '1'),
(15, 6, 6, '1', '1'),
(16, 6, 7, '1', '1'),
(17, 6, 9, '1', '1'),
(18, 6, 10, '1', '1'),

(19, 7, 6, '1', '1'),
(20, 7, 7, '1', '1'),
(21, 7, 9, '1', '1'),
(22, 7, 10, '1', '1'),

(23, 8, 6, '1', '1'),
(24, 8, 7, '1', '1'),
(25, 8, 9, '1', '1'),
(26, 8, 10, '1', '1'),


(27, 9, 14, '1', '1'),
(28, 10, 15, '1', '1'),
(29, 11, 16, '1', '1'),
(30, 12, 17, '1', '1');


