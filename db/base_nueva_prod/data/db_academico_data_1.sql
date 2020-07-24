--
-- Base de datos: `db_academico`
--
USE `db_academico`;
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `nivel_instruccion`
--
INSERT INTO `nivel_instruccion` (`nins_id`,`nins_nombre`, `nins_descripcion`,`nins_estado`,`nins_estado_logico`) VALUES
(1,'Primarios','Primarios','1','1'),
(2,'Secundarios','Secundarios','1','1'),
(3,'Tercer Nivel','Tercer Nivel','1','1'),
(4,'Cuarto Nivel','Cuarto Nivel','1','1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `nivel_estudio`
--
 INSERT INTO `nivel_estudio` (`nest_id`, `nest_nombre`, `nest_descripcion`, `nest_usuario_ingreso`, `nest_estado`, `nest_estado_logico`) VALUES
(1, 'Nivel 0', 'Nivel 0 PreAcadémico', '1', '1', '1'),
(2, '1', 'Nivel 1', '1', '1', '1'),
(3, '2', 'Nivel 2', '1', '1', '1'),
(4, '3', 'Nivel 3', '1', '1', '1'),
(5, '4', 'Nivel 4', '1', '1', '1'),
(6, '5', 'Nivel 5', '1', '1', '1'),
(7, '6', 'Nivel 6', '1', '1', '1'),
(8, '7', 'Nivel 7', '1', '1', '1'),
(9, '8', 'Nivel 8', '1', '1', '1'),
(10, '9', 'Nivel 9', '1', '1', '1'),
(11, '10', 'Nivel 10', '1', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `tipo_institucion_aca`
--
INSERT INTO `tipo_institucion_aca` (`tiac_id`,`tiac_nombre`, `tiac_descripcion`,`tiac_estado`,`tiac_estado_logico`) VALUES
(1,'Fiscal','Fiscal','1','1'),
(2,'Privada','Privada','1','1'),
(3,'Fiscomisional','Fiscomisional','1','1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `tipo_estudio_academico`
--
INSERT INTO `tipo_estudio_academico` (`teac_id`, `teac_nombre`, `teac_descripcion`, `teac_usuario_ingreso`, `teac_estado`, `teac_estado_logico`) VALUES
(1,'Carrera','Carrera',1,'1','1'),
(2,'Programa','Programa',1,'1','1');
-- (3,'Diplomado','Diplomado',1,'1','1');

    -- --------------------------------------------------------
--
-- Volcado de datos para la tabla `unidad_academica` 
-- 
INSERT INTO `unidad_academica` (`uaca_id`, `uaca_nombre`, `uaca_descripcion`, `uaca_usuario_ingreso`, `uaca_inscripcion`, `uaca_estado`, `uaca_estado_logico`) VALUES
(1, 'Grado', 'Grado', 1, '1', '1', '1'),  
(2, 'Posgrado', 'Posgrado', 1, '1', '1', '1'), 
(3, 'Educación Continua', 'Educación Continua', 1, '0', '1', '1'), 
(4, 'Centro de Idiomas', 'Centro de Idiomas', 1, '0', '1', '1'); 

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `modalidad`
-- 
INSERT INTO `modalidad` (`mod_id`, `mod_nombre`,`mod_descripcion`, `mod_usuario_ingreso`, `mod_estado`, `mod_estado_logico`) VALUES
(1, 'Online', 'Online', 1, '1', '1'),
(2, 'Presencial', 'Presencial', 1, '1', '1'),
(3, 'Semipresencial', 'Semipresencial', 1 , '1', '1'),
(4, 'Distancia', 'Distancia', 1, '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `modalidad`
-- 
INSERT INTO `modalidad_centro_costo` (`mcco_id`, `mod_id`, `mcco_code`,`mcco_estado`, `mcco_fecha_creacion`, `mcco_usuario_modifica`, `mcco_estado_logico`) VALUES
(1, 1, 'G-004', 1, '2017-02-01 16:25:00', '1', '1'),
(2, 2, 'G-001', 1, '2017-02-01 16:25:00', '1', '1'),
(3, 3, 'G-002', 1 , '2017-02-01 16:25:00', '1', '1'),
(4, 4, 'G-003', 1, '2017-02-01 16:25:00', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `unidad_estudio`
--
INSERT INTO `unidad_estudio` (`uest_id`,`uest_nombre`,`uest_descripcion`,`uest_usuario_ingreso`,`uest_estado`,`uest_estado_logico`) VALUES
(1,'Ingreso', 'Ingreso', 1, '1', '1'),
(2,'Básica', 'Básica', 1, '1', '1'),
(3,'Profesional', 'Profesional', 1, '1', '1'),
(4,'Titulación', 'Titulación', '1', '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `estudio_academico`
--
INSERT INTO `estudio_academico` (`eaca_id`, `teac_id`, `eaca_nombre`, `eaca_descripcion`, `eaca_alias`, `eaca_usuario_ingreso`, `eaca_usuario_modifica`, `eaca_estado`, `eaca_fecha_creacion`, `eaca_fecha_modificacion`, `eaca_estado_logico`) VALUES
(1, 1, 'Licenciatura en Comercio Exterior', 'Licenciatura en Comercio Exterior', 'licenciatura_en_comercio_exterior', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(2, 1, 'Economía', 'Economia', 'economia', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(3, 1, 'Licenciatura en Finanzas', 'Licenciatura en Finanzas', 'licenciatura_en_finanzas', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(4, 1, 'Licenciatura en Mercadotecnia', 'Licenciatura en Mercadotecnia', 'licenciatura_en_mercadotecnia', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(5, 1, 'Licenciatura en Turismo', 'Licenciatura en Turismo', 'licenciatura_en_turismo', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(6, 1, 'Licenciatura en Administracion de Empresas', 'Licenciatura en Administracion de Empresas', 'licenciatura_en_administracion_de_empresas', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(7, 1, 'Ingenieria en Software', 'Ingenieria en Software', 'ingenieria_en_software', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(8, 1, 'Ingenieria en Telecomunicaciones', 'Ingenieria en Telecomunicaciones', 'ingenieria_en_telecomunicaciones', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(9, 1, 'Licenciatura en Contabilidad y Auditoria', 'Licenciatura en Contabilidad y Auditoria', 'licenciatura_en_contabilidad_y_auditoria', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(10, 1, 'Ingenieria en Tecnologias de La Información', 'Ingenieria en Tecnologias de La Informacion', 'Ingenieria_en_tecnologias_de_la_información', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(11, 1, 'Ingenieria en Logística y Transporte', 'Ingenieria en Logistica y Transporte', 'ingenieria_en_logística_y_transporte', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(12, 1, 'Licenciatura en Comunicación', 'Licenciatura en Comunicacion', 'licenciatura_en_comunicación', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(13, 1, 'Licenciatura en Gestión y Talento Humano', 'Licenciatura en Gestion y Talento Humano', 'licenciatura_en_gestión_y_talento_humano', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(14, 1, 'Licenciatura en Administración Portuaria y Aduanera', 'Licenciatura en Administracion Portuaria y Aduanera', 'licenciatura_en_administración_portuaria_y_aduanera', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(15, 2, 'Administración de Empresas', 'Administración de Empresas', 'administración_de_empresas', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(16, 2, 'Finanzas en con Mención en Tributación', 'Finanzas en con Mención en Tributacion', 'finanzas', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(17, 2, 'Marketing', 'Marketing', 'marketing', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(18, 2, 'Sistema de Información Gerencial', 'Sistema de Informacion Gerencial', 'sistema_de_información_gerencial', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(19, 2, 'Gestión de Empresas Turísticas', 'Gestión de Empresas Turisticas', 'turismo', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(20, 2, 'Gestión del Talento Humano', 'Gestion del Talento Humano', 'talento_humano', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(21, 2, 'Dirección Estratégica en Empresas Familiares', 'Direccion Estrategica en Empresas Familiares', 'empresas_familiares', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(22, 2, 'Gestión en Procesos Organizacionales', 'Gestion en Procesos Organizacionales', 'investigación', 1, NULL, '1', '2017-02-01 16:25:00', NULL, '1'),
(23, 2, 'Negocios Internacionales', 'Negocios Internacionales', 'negocios_internacionales', 1, NULL, '1', '2019-02-11 18:00:00', NULL, '1'),
(24,2, 'Educacion', 'Educacion', 'educacion', '1', NULL,'1', '2019-05-31 18:00:00',NULL, '1');

INSERT INTO db_academico.`estudio_academico` (`eaca_id`, `teac_id`, `eaca_nombre`, `eaca_descripcion`, `eaca_alias`, `eaca_usuario_ingreso`, `eaca_estado`, `eaca_estado_logico`) VALUES
(27, 1, 'Economía Mención Economía Empresarial y Negocios', 'Economía Mención Economía Empresarial y Negocios', '', 1,1,1),
(28, 1, 'Ingeniería en Comercio Exterior Mención Negocios Internacionales', 'Ingeniería en Comercio Exterior Mención Negocios Internacionales', '', 1,1,1),
(29, 1, 'Ingeniería en Contaduría Pública y Auditoría', 'Ingeniería en Contaduría Pública y Auditoría', '', 1,1,1),
(30, 1, 'Ingeniería en Gestión Empresarial Mención Finanzas y Auditoría', 'Ingeniería en Gestión Empresarial Mención Finanzas y Auditoría', '', 1,1,1),
(31, 1, 'Ingeniería en Gestión Empresarial Mención Marketing y Ventas', 'Ingeniería en Gestión Empresarial Mención Marketing y Ventas', '', 1,1,1),
(32, 1, 'Ingeniería en Sistemas Computacionales Mención Aplicaciones Web y Multimedia', 'Ingeniería en Sistemas Computacionales Mención Aplicaciones Web y Multimedia', '', 1,1,1),
(33, 1, 'Ingeniería en Sistemas Computacionales Mención Redes y Comunicaciones', 'Ingeniería en Sistemas Computacionales Mención Redes y Comunicaciones', '', 1,1,1),
(34, 1, 'Licenciatura en Comercio Exterior Mención Negocios Internacionales', 'Licenciatura en Comercio Exterior Mención Negocios Internacionales', '', 1,1,1),
(35, 1, 'Licenciatura en Contaduría Pública y Auditoría', 'Licenciatura en Contaduría Pública y Auditoría', '', 1,1,1),
(36, 1, 'Licenciatura en Gestión Empresarial Mención Marketing y Ventas', 'Licenciatura en Gestión Empresarial Mención Marketing y Ventas', '', 1,1,1),
(37, 1, 'Licenciatura en Gestión Empresarial Mención Finanzas y Auditoría', 'Licenciatura en Gestión Empresarial Mención Finanzas y Auditoría', '', 1,1,1),
(38, 1, 'Psicología Laboral y Empresarial', 'Psicología Laboral y Empresarial', '', 1,1,1);

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `modalidad_estudio_unidad`
--
INSERT INTO `modalidad_estudio_unidad` (`meun_id`, `uaca_id`, `mod_id`, `eaca_id`, `emp_id`, `meun_usuario_ingreso`, `meun_usuario_modifica`, `meun_estado`, `meun_fecha_creacion`, `meun_fecha_modificacion`, `meun_estado_logico`) VALUES
(1, 1, 1, 1, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(2, 1, 1, 2, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(3, 1, 1, 3, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(4, 1, 1, 4, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(5, 1, 1, 5, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(6, 1, 1, 6, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(7, 1, 2, 11, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(8, 1, 2, 8, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(9, 1, 2, 7, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(10, 1, 2, 10, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(11, 1, 2, 1, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(12, 1, 2, 5, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(13, 1, 2, 3, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(14, 1, 2, 9, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(15, 1, 2, 13, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(16, 1, 2, 6, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(17, 1, 2, 4, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(18, 1, 2, 14, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(19, 1, 2, 2, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(20, 1, 3, 12, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(21, 1, 4, 1, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(22, 1, 4, 3, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(23, 1, 4, 9, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(24, 1, 4, 13, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(25, 1, 4, 6, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(26, 1, 4, 4, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(27, 2, 3, 15, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(28, 2, 3, 16, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(29, 2, 3, 17, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(30, 2, 3, 18, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(31, 2, 3, 19, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(32, 2, 3, 20, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(33, 2, 3, 21, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(34, 2, 2, 22, 1, 1, NULL, '1', '2017-02-01 18:10:00', NULL, '1'),
(35, 2, 2, 23, 1, 1, NULL, '1', '2019-02-11 18:00:00', NULL, '1'),
(36, 2, 1, 24, 1, 1, NULL, '1', '2019-02-11 18:00:00', NULL, '1');




-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `modulo_estudio`
--
INSERT INTO `modulo_estudio` (`mest_id`, `uaca_id`, `mod_id`, `mest_codigo`, `mest_nombre`, `mest_descripcion`, `mest_alias`, `mest_usuario_ingreso`, `mest_usuario_modifica`, `mest_estado`, `mest_fecha_creacion`, `mest_fecha_modificacion`, `mest_estado_logico`) VALUES
(1, 3, 2, 'SM1-EMVE01', 'Emprendimiento y Ventas reales', 'Emprendimiento y Ventas reales', 'emprendimiento_y_ventas', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(2, 3, 2, 'SM2-EXAV01', 'Excel Avanzado', 'Excel Avanzado', 'excel_Avanzado', 1, NULL, '1', '2017-02-01 03:43:48', NULL, '1'),
(3, 3, 2, 'SM3-FOTO01', 'Fotografía', 'Fotografia', 'fotografia', 1, NULL, '1', '2017-02-01 03:43:48', NULL, '1'),
(4, 3, 2, 'SM4-EVPL01', 'Event Planner', 'Event Planner', 'event_planner', 1, NULL, '1', '2017-02-01 03:43:48', NULL, '1'),
(5, 3, 2, 'SM5-PGET01', 'Programa Gerencia Estratégica del TH (4 módulos)', 'Programa Gerencia Estrategica del TH 4 modulos', 'programa_gerencia_estratégica_del_th_(4_módulos)', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(6, 3, 2, 'SM6-PEDA01', 'Pedagogía', 'Pedagogia', 'pedagogia', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(7, 3, 2, 'SM7-RECI01', 'Programa para docentes:  Redacción Científica', 'Programa para docentes  Redaccion Cientifica', 'programa_para_docentes:_redacción_científica', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(8, 3, 2, 'SM8-DHCR01', 'Desarrollo Habilidades Comerciales para Retail', 'Desarrollo Habilidades Comerciales para Retail', 'desarrollo_habilidades_comerciales_para_retail', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(9, 3, 1, 'SM9-CUON01', 'Cursos Online', 'Cursos Online', 'cursos_online', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(10, 4, 2, 'SM10-IDIF01', 'Idioma Inglés, Francés', 'Idioma Ingles Frances', 'idioma_inglés,_francés', 1, NULL, '0', '2017-02-01 03:43:48', NULL, '1'),
(11, 3, 2, 'SM11-PTHA01', 'Programa de Talento Humano: Actualidad Laboral', 'Programa de Talento Humano Actualidad Laboral', 'programa_de_talento_humano:_actualidad_laboral', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(12, 3, 2, 'SM12-ESDI01', 'Programa de habilidades Gerenciales: Estrategias directivas', 'Programa de habilidades Gerenciales Estrategias directivas', 'programa_de_habilidades_gerenciales:_estrategias_directivas', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(13, 3, 2, 'SM13-IFIN01', 'Illustrator y fotoshop: intermedio', 'Illustrator y fotoshop intermedio', 'illustrator_y_fotoshop:_intermedio', 1, NULL, '1', '2017-02-01 15:15:00', NULL, '1'),
(14, 3, 2, 'SM14-TNCV01', 'Técnicas de negociación y cierre de ventas', 'Tecnicas de negociacion y cierre de ventas', 'técnicas_de_negociación_y_cierre_de_ventas', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(15, 3, 2, 'SM15-NEMA01', 'Neuromarketing', 'Neuromarketing', 'neuromarketing', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(16, 3, 2, 'SM16-DCYC01', 'Programa de Talento Humano: Descripción de cargos y selección por competencias (módulo 2)', 'Programa de Talento Humano Descripcion de cargos y seleccion por competencias modulo 2', 'programa_de_talento_humano:_descripción_de_cargos_y_selección_por_competencias_(módulo_2)', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(17, 3, 2, 'SM17-MCDI01', 'Técnicas de ventas:  Manejo de clientes difíciles', 'Tecnicas de ventas Manejo de clientes dificiles', 'técnicas_de_ventas:_manejo_de_clientes_difíciles', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(18, 3, 2, 'SM18-NEEF01', 'Programa de habilidades Gerenciales: Negociación efectiva', 'Programa de habilidades Gerenciales Negociacion efectiva', 'programa_de_habilidades_gerenciales:_negociación_efectiva', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(19, 3, 2, 'SM19-PYDI01', 'Dirección en Finanzas: Presupuesto y diferenciación de ingresos', 'Direccion en Finanzas Presupuesto y diferenciacion de ingresos', 'dirección_en_finanzas:_presupuesto_y_diferenciación_de_ingresos', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(20, 3, 2, 'SM20-VAEM01', 'Valoración aduanera para empresarios', 'Valoracion aduanera para empresarios', 'valoración_aduanera_para_empresarios', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(21, 3, 2, 'SM21-CUSE01', 'Curso de seguros', 'Curso de seguros', 'curso_de_seguros', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(22, 3, 2, 'SM22-PETH01', 'Programa de Talento Humano:  Plan estratégico del Talento Humano (módulo 3)', 'Programa de Talento Humano Plan estrategico del Talento Humano modulo 3', 'programa_de_talento_humano:_plan_estratégico_del_talento_humano_(módulo_3)', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(23, 3, 2, 'SM23-TLMC01', 'Taller de liderazgo y manejo de conflictos', 'Taller de liderazgo y manejo de conflictos', 'taller_de_liderazgo_y_manejo_de_conflictos', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(24, 3, 2, 'SM24-HAPE01', 'Programa para docentes: Habilidades pedagógicas', 'Programa para docentes Habilidades pedagogicas', 'programa_para_docentes:_habilidades _pedagógicas', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(25, 3, 2, 'SM25-PPTH01', 'Promoción programa talento humano', 'Promocion programa talento humano', 'promoción_programa_talento_humano', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),
(26, 3, 2, 'SM26-PPPD01', 'Promoción programa para docentes', 'Promocion programa para docentes', 'promoción_programa para_docentes', 1, NULL, '0', '2017-02-01 15:15:00', NULL, '1'),

-- NUEVOS DE SMART 23/07/2019
(27, 3, 2, 'SM27-EIEM01', 'Emprendimiento e Inovación Empresarial', 'Emprendimiento e Inovación Empresarial', 'emprendimiento_inovacion', 1, NULL, '1', '2019-07-23 11:11:11', NULL, '1'),
(28, 3, 2, 'SM28-MEON01', 'Marketing para Emprendedores Online', 'Marketing para Emprendedores Online', 'marketing_emprendedores', 1, NULL, '1', '2019-07-23 11:11:11', NULL, '1'),
(29, 3, 2, 'SM29-OESO01', 'Organización Eventos Sociales', 'Organización Eventos Sociales', 'organizacion_eventos', 1, NULL, '1', '2019-07-23 11:11:11', NULL, '1'),
(30, 3, 2, 'SM30-CMON01', 'Community Manager Online', 'Community Manager Online', 'community_manager', 1, NULL, '1', '2019-07-23 11:11:11', NULL, '1'),
(31, 3, 2, 'SM31-TERC01', 'Taller de Estrategias de Recuperación de Cartera', 'Taller de Estrategias de Recuperación de Cartera', 'taller_estrategia', 1, NULL, '1', '2019-07-23 11:11:11', NULL, '1'),
(32, 3, 1, 'SM32-PFDP01', 'Programa de Formación en Didáctica y Pedagogía para Directivos y Docentes del Magisterio', 'Programa de Formación en Didáctica y Pedagogía para Directivos y Docentes del Magisterio', 'programa_formacion_didactica', 1, NULL, '1', '2019-08-06 16:00:00', NULL, '1');


-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `formacion_malla_academica`
--
INSERT INTO `formacion_malla_academica` (`fmac_id`,`fmac_codigo`,`fmac_nombre`,`fmac_descripcion`, `fmac_usuario_ingreso`,  `fmac_estado`,`fmac_estado_logico`) VALUES
(1,'FT', 'Fundamentos Teóricos','Fundamentos Teóricos', 1, '1', '1'),
(2,'PP', 'Praxis Profesional', 'Praxis Profesional', 1, '1', '1'),
(3,'EMI', 'Epistemología y Metodología de la Investigación', 'Epistemología y Metodología de la Investigación', 1, '1', '1'),
(4,'ISSC', 'Integración de Saberes, Contexto y Cultura', 'Integración de Saberes, Contexto y Cultura', 1, '1', '1'),
(5,'CL', 'Comunicación y Lenguaje', 'Comunicación y Lenguaje', '1', '1', '1'),
(6,'CN', 'Can', 'Can', '1', '1', '1'); 

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `area_conocimiento`
--
INSERT INTO `area_conocimiento` (`acon_id`, `acon_nombre`, `acon_descripcion`, `acon_usuario_ingreso`, `acon_estado`, `acon_estado_logico`) VALUES
(1, 'Programas generales', 'Descripción de área de conocimiento', 1, '1', '1'),
(2, 'Educación', 'Descripción de área de conocimiento', 1, '1', '1'),
(3, 'Humanidades y artes', 'Descripción de área de conocimiento', 1, '1', '1'),
(4, 'Ciencias sociales, educación comercial y derecho', 'Descripción de área de conocimiento', 1, '1', '1'),
(5, 'Ciencias', 'Descripción de área de conocimiento', 1, '1', '1'),
(6, 'Ingeniería, industria y construcción', 'Descripción de área de conocimiento', 1, '1', '1'),
(7, 'Agricultura', 'Descripción de área de conocimiento', 1, '1', '1'),
(8, 'Salud y sociales servicios', 'Descripción de área de conocimiento', 1, '1', '1'),
(9, 'Servicios', 'Descripción de área de conocimiento', 1, '1', '1'),
(10, 'Sectores desconocidos no especificados', 'Descripción de área de conocimiento', 1, '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `subarea_conocimiento`
--
INSERT INTO `subarea_conocimiento` (`scon_id`, `acon_id`, `scon_nombre`, `scon_descripcion`, `scon_usuario_ingreso`, `scon_estado`, `scon_estado_logico`) VALUES
(1, 1, 'Programas básicos', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(2, 1, 'Programas de alfabetización y de aritmética', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(3, 1, 'Desarrollo personal', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(4, 2, 'Formación de personal docente y ciencias de la educación', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(5, 3, 'Artes', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(6, 3, 'Humanidades', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(7, 4, 'Ciencias sociales y del comportamiento', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(8, 4, 'Periodismo e información', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(9, 4, 'Educación comercial y administración', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(10, 4, 'Derecho', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(11, 5, 'Ciencias de la vida', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(12, 5, 'Ciencias físicas', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(13, 5, 'Matemáticas y estadística', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(14, 5, 'Informática', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(15, 6, 'Ingeniería y profesiones afines', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(16, 6, 'Industria y producción', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(17, 6, 'Arquitectura y construcción', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(18, 7, 'Agricultura, silvicultura y pesca', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(19, 7, 'Veterinaria', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(20, 8, 'Medicina', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(21, 8, 'Servicios sociales', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(22, 9, 'Servicios personales', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(23, 9, 'Servicios de transporte', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(24, 9, 'Protección del medio ambiente', 'Descripción de subárea de conocimiento', 1, '1', '1'),
(25, 9, 'Servicios de seguridad', 'Descripción de subárea de conocimiento', 1, '1', '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `asignatura` 
--
INSERT INTO `asignatura` (`asi_id`, `scon_id`, `uaca_id`, `asi_nombre`, `asi_descripcion`, `asi_usuario_ingreso`, `asi_usuario_modifica`, `asi_estado`, `asi_fecha_creacion`, `asi_fecha_modificacion`, `asi_estado_logico`) VALUES
(1, 1, 1, 'Matemáticas - CAN', 'Matemáticas - CAN', 1, NULL, '1', '2018-05-09 02:15:37', NULL, '1'),
(2, 1, 1, 'Contabilidad - CAN', 'Contabilidad - CAN', 1, NULL, '1', '2018-05-09 02:15:37', NULL, '1'),
(3, 1, 1, 'Técnicas de comunicación oral - CAN', 'Técnicas de comunicación oral - CAN', 1, NULL, '1', '2018-05-09 02:16:01', NULL, '1'),
(4, 1, 1, 'Desarrollo del Pensamiento - CAN', 'Desarrollo del Pensamiento - CAN', 1, NULL, '1', '2018-05-09 02:16:52', NULL, '1'),
(5, 1, 1, 'Emprendimiento - CAN', 'Emprendimiento - CAN', 1, NULL, '1', '2018-05-09 02:16:52', NULL, '1'),
(6, 1, 1, 'Física - CAN', 'Física - CAN', 1, NULL, '1', '2018-05-09 02:16:52', NULL, '1'),
(7, 1, 1, 'Actualidad Económica', 'Actualidad Económica', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(8, 1, 1, 'Administración de Centros De Cómputo', 'Administración de Centros De Cómputo', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(9, 1, 1, 'Administración de Recursos Humanos', 'Administración de Recursos Humanos', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(10, 1, 1, 'Administración de Redes', 'Administración de Redes', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(11, 1, 1, 'Administración de Ventas', 'Administración de Ventas', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(12, 1, 1, 'Algebra Lineal', 'Algebra Lineal', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(13, 1, 1, 'Análisis de Redes Eléctricas I', 'Análisis de Redes Eléctricas I', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(14, 1, 1, 'Auditoría de Calidad-2009', 'Auditoría de Calidad-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(15, 1, 1, 'Benchmarking', 'Benchmarking', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(16, 1, 1, 'Competitividad', 'Competitividad', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(17, 1, 1, 'Comportamiento Profesional y Ambiental 2009', 'Comportamiento Profesional y Ambiental 2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(18, 1, 1, 'Comunicación Oral y Escrita', 'Comunicación Oral y Escrita', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(19, 1, 1, 'Comunicación Profesional y Liderazgo', 'Comunicación Profesional y Liderazgo', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(20, 1, 1, 'Conducción de Grupos', 'Conducción de Grupos', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(21, 1, 1, 'Contabilidad General', 'Contabilidad General', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(22, 1, 1, 'Contabilidad Gerencial', 'Contabilidad Gerencial', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(23, 1, 1, 'Contabilidad para el Pre-Universitario', 'Contabilidad para el Pre-Universitario', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(24, 1, 1, 'Créditos Documentarios-2009', 'Créditos Documentarios-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(25, 1, 1, 'Derecho', 'Derecho', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(26, 1, 1, 'Derecho Constitucional – (FT)', 'Derecho Constitucional – (FT)', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(27, 1, 1, 'Derecho I-2009', 'Derecho I-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(28, 1, 1, 'Derecho Laboral', 'Derecho Laboral', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(29, 1, 1, 'Desarrollo del Pensamiento-Pre', 'Desarrollo del Pensamiento-Pre', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(30, 1, 1, 'Economía del Factor Humano-2009', 'Economía del Factor Humano-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(31, 1, 1, 'Elementary 1', 'Elementary 1', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(32, 1, 1, 'Emprendimiento', 'Emprendimiento', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(33, 1, 1, 'Empresas Multinacionales-2009', 'Empresas Multinacionales-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(34, 1, 1, 'Epistemología de las Ciencias', 'Epistemología de las Ciencias', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(35, 1, 1, 'Escuela y Enfoques de la Psicología Aplicada al TTHH', 'Escuela y Enfoques de la Psicología Aplicada al TTHH', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(36, 1, 1, 'Epistemología de la Contabilidad', 'Epistemología de la Contabilidad', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(37, 1, 1, 'Estadística Aplicada II', 'Estadística Aplicada II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(38, 1, 1, 'Estadística II', 'Estadística II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(39, 1, 1, 'Ética Profesional', 'Ética Profesional', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(40, 1, 1, 'Evaluación de Sistemas-2009', 'Evaluación de Sistemas-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(41, 1, 1, 'Evaluación Psicológica II', 'Evaluación Psicológica II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(42, 1, 1, 'Finanzas II', 'Finanzas II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(43, 1, 1, 'Finanzas Públicas', 'Finanzas Públicas', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(44, 1, 1, 'Física I', 'Física I', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(45, 1, 1, 'Física III', 'Física III', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(46, 1, 1, 'Física para el Pre', 'Física para el Pre', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(47, 1, 1, 'Francés II', 'Francés II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(48, 1, 1, 'Francés III', 'Francés III', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(49, 1, 1, 'Francés IV', 'Francés IV', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(50, 1, 1, 'Fundamentos de Administración', 'Fundamentos de Administración', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(51, 1, 1, 'Fundamentos de Economía', 'Fundamentos de Economía', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(52, 1, 1, 'Fundamentos de Mercadotecnia', 'Fundamentos de Mercadotecnia', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(53, 1, 1, 'Gerencia de Recursos Humanos', 'Gerencia de Recursos Humanos', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(54, 1, 1, 'Gestión de Abastecimiento (4C)', 'Gestión de Abastecimiento (4C)', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(55, 1, 1, 'Gestión del Alojamiento', 'Gestión del Alojamiento', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(56, 1, 1, 'Herramientas Informática Portuaria-2009', 'Herramientas Informática Portuaria-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(57, 1, 1, 'Higiene y Seguridad Laboral', 'Higiene y Seguridad Laboral', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(58, 1, 1, 'Ingeniería Económica (4C)', 'Ingeniería Económica (4C)', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(59, 1, 1, 'Inglés Técnico II-2009', 'Inglés Técnico II-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(60, 1, 1, 'Intermediate 1', 'Intermediate 1', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(61, 1, 1, 'Intermediate II', 'Intermediate II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(62, 1, 1, 'Internet y Herramientas Informáticas Básicas', 'Internet y Herramientas Informáticas Básicas', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(63, 1, 1, 'Legislación Aplicada-2009', 'Legislación Aplicada-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(64, 1, 1, 'Macroeconomía II', 'Macroeconomía II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(65, 1, 1, 'Marketing I', 'Marketing I', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(66, 1, 1, 'Marketing II', 'Marketing II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(67, 1, 1, 'Marketing Industrial y de Servicios-2009', 'Marketing Industrial y de Servicios-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(68, 1, 1, 'Matemáticas Aplicada a la Economía-2009', 'Matemáticas Aplicada a la Economía-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(69, 1, 1, 'Matemáticas Discretas', 'Matemáticas Discretas', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(70, 1, 1, 'Matemáticas Financiera', 'Matemáticas Financiera', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(71, 1, 1, 'Matemáticas I', 'Matemáticas I', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(72, 1, 1, 'Matemáticas II', 'Matemáticas II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(73, 1, 1, 'Matemáticas para el Pre-Universitario', 'Matemáticas para el Pre-Universitario', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(74, 1, 1, 'Medición y Evaluación del Recurso Humano', 'Medición y Evaluación del Recurso Humano', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(75, 1, 1, 'Métodos de Dirección y Management (4C)', 'Métodos de Dirección y Management (4C)', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(76, 1, 1, 'Microeconomía', 'Microeconomía', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(77, 1, 1, 'Monedas e Instituciones Financieras-2009', 'Monedas e Instituciones Financieras-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(78, 1, 1, 'Normas de Valoración-2009', 'Normas de Valoración-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(79, 1, 1, 'Normativa de Intercambio Comercial-2009', 'Normativa de Intercambio Comercial-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(80, 1, 1, 'Operaciones de Medios de Transporte-2009', 'Operaciones de Medios de Transporte-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(81, 1, 1, 'Operaciones Portuarias-2009', 'Operaciones Portuarias-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(82, 1, 1, 'Organización Empresarial', 'Organización Empresarial', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(83, 1, 1, 'Organización Marítima Intl. y Sistemas P', 'Organización Marítima Intl. y Sistemas P', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(84, 1, 1, 'Pastelería y Repostería', 'Pastelería y Repostería', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(85, 1, 1, 'Planta Externa-2009', 'Planta Externa-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(86, 1, 1, 'Pre-Intermediate 1', 'Pre-Intermediate 1', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(87, 1, 1, 'Pre-Intermediate II', 'Pre-Intermediate II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(88, 1, 1, 'Presupuesto', 'Presupuesto', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(89, 1, 1, 'Presupuesto I-2009', 'Presupuesto I-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(90, 1, 1, 'Presupuesto II', 'Presupuesto II', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(91, 1, 1, 'Proyecto Empresarial III', 'Proyecto Empresarial III', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(92, 1, 1, 'Psicología General', 'Psicología General', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(93, 1, 1, 'Psicología Organizacional I', 'Psicología Organizacional I', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(94, 1, 1, 'Psicopatología General', 'Psicopatología General', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(95, 1, 1, 'Public Choice-2009', 'Public Choice-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(96, 1, 1, 'Reclutamiento y Selección', 'Reclutamiento y Selección', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(97, 1, 1, 'Redes de Acceso I', 'Redes de Acceso I', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(98, 1, 1, 'Redes II-2009', 'Redes II-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(99, 1, 1, 'Sistemas Lineales', 'Sistemas Lineales', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(100, 1, 1, 'Taller II-2009', 'Taller II-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(101, 1, 1, 'Taller III-2009', 'Taller III-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(102, 1, 1, 'Técnicas de Comunicación Oral y Escrita', 'Técnicas de Comunicación Oral y Escrita', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(103, 1, 1, 'Técnicas de la Comunicación', 'Técnicas de la Comunicación', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(104, 1, 1, 'Técnicas de Negociación', 'Técnicas de Negociación', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(105, 1, 1, 'Técnicas de Ventas-2009', 'Técnicas de Ventas-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(106, 1, 1, 'Trámites Aduaneros-2009', 'Trámites Aduaneros-2009', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(107, 1, 1, 'Transportación Turística', 'Transportación Turística', 1, NULL, '1', '2019-02-12 21:00:00', NULL, '1'),
(108, 1, 1, 'Análisis del Entorno Político y Económico', 'Análisis del Entorno Político y Económico', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(109, 1, 1, 'Gerencia de Ventas', 'Gerencia de Ventas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(110, 1, 1, 'Derecho Empresarial', 'Derecho Empresarial', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(111, 1, 1, 'Estadística e Introducción a la Econometría', 'Estadística e Introducción a la Econometría', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(112, 1, 1, 'Estrategias Competitivas', 'Estrategias Competitivas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(113, 1, 1, 'Etica y Valores', 'Etica y Valores', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(114, 1, 1, 'Evaluación de Proyectos y Análisis de Riesgo', 'Evaluación de Proyectos y Análisis de Riesgo', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(115, 1, 1, 'Eventos y Publicaciones', 'Eventos y Publicaciones', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(116, 1, 1, 'Gerencia de Finanzas', 'Gerencia de Finanzas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(117, 1, 1, 'Gerencia de la Innovación Interna de la Empresa', 'Gerencia de la Innovación Interna de la Empresa', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(118, 1, 1, 'Gerencia de Marketing', 'Gerencia de Marketing', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(119, 1, 1, 'Gestión Estratégica del Talento Humano', 'Gestión Estratégica del Talento Humano', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(120, 1, 1, 'Liderazgo Transformacional', 'Liderazgo Transformacional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(121, 1, 1, 'Metodología de la Investigación', 'Metodología de la Investigación', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(122, 1, 1, 'Saberes y Cultura', 'Saberes y Cultura', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(123, 1, 1, 'Taller de Titulación I', 'Taller de Titulación I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(124, 1, 1, 'Taller de Titulación II', 'Taller de Titulación II', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(125, 1, 1, 'Taller de Titulacion III', 'Taller de Titulacion III', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(126, 1, 1, 'Teoría Fundamental de la Organización y Gestión de', 'Teoría Fundamental de la Organización y Gestión de', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(127, 1, 1, 'Trabajo de Titulación', 'Trabajo de Titulación', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(128, 1, 1, 'Administración Estratégica', 'Administración Estratégica', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(129, 1, 1, 'Administración Financiera', 'Administración Financiera', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(130, 1, 1, 'Análisis Financiero para la Toma de Decisiones', 'Análisis Financiero para la Toma de Decisiones', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(131, 1, 1, 'Clima y Cultura Organizacional en la Empresa Famil', 'Clima y Cultura Organizacional en la Empresa Famil', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(132, 1, 1, 'Dirección Estratégica del Marketing', 'Dirección Estratégica del Marketing', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(133, 1, 1, 'Dirección Estratégica del Talento Humano', 'Dirección Estratégica del Talento Humano', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(134, 1, 1, 'Epistemología de la Administración', 'Epistemología de la Administración', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(135, 1, 1, 'Estructura y Organos de Gobierno', 'Estructura y Organos de Gobierno', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(136, 1, 1, 'Etica y Responsabilidad Social Corporativa', 'Etica y Responsabilidad Social Corporativa', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(137, 1, 1, 'Gestión de la Propiedad en la Empresa Familiar', 'Gestión de la Propiedad en la Empresa Familiar', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(138, 1, 1, 'Innovación en la Empresa Familiar', 'Innovación en la Empresa Familiar', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(139, 1, 1, 'Interculturalidad y Saberes Ancestrales', 'Interculturalidad y Saberes Ancestrales', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(140, 1, 1, 'Metodología de la Investigación Científica', 'Metodología de la Investigación Científica', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(141, 1, 1, 'Suseción en la Continuidad de la Empresa Familiar', 'Suseción en la Continuidad de la Empresa Familiar', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(142, 1, 1, 'Taller de Tesis I', 'Taller de Tesis I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(143, 1, 1, 'Taller de Tesis II', 'Taller de Tesis II', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(144, 1, 1, 'Taller de Tesis III', 'Taller de Tesis III', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(145, 1, 1, 'Análisis del Entorno Financiero y Tributario', 'Análisis del Entorno Financiero y Tributario', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(146, 1, 1, 'Neuropsicología', 'Neuropsicología', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(147, 1, 1, 'Economía (4C)', 'Economía (4C)', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(148, 1, 1, 'Derecho Tributario', 'Derecho Tributario', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(149, 1, 1, 'Economía Empresarial', 'Economía Empresarial', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(150, 1, 1, 'Taller I-2009', 'Taller I-2009', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(151, 1, 1, 'Estudio y Análisis de IVA e ICE', 'Estudio y Análisis de IVA e ICE', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(152, 1, 1, 'Estudio y Análisis de otros Tributos', 'Estudio y Análisis de otros Tributos', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(153, 1, 1, 'Estudio y Análisis Impuesto a la Renta', 'Estudio y Análisis Impuesto a la Renta', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(154, 1, 1, 'Planeación y Dirección Estratégica', 'Planeación y Dirección Estratégica', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(155, 1, 1, 'Evaluación de Proyectos', 'Evaluación de Proyectos', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(156, 1, 1, 'Historia del Ecuador', 'Historia del Ecuador', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(157, 1, 1, 'Finanzas Corporativas', 'Finanzas Corporativas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(158, 1, 1, 'Francés I', 'Francés I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(159, 1, 1, 'Agencias de viajes I', 'Agencias de viajes I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(160, 1, 1, 'Planificación y Gestión Financiera y Tributaria', 'Planificación y Gestión Financiera y Tributaria', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(161, 1, 1, 'Presupuesto y Análisis Financiero', 'Presupuesto y Análisis Financiero', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(162, 1, 1, 'Top Notch 2', 'Top Notch 2', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(163, 1, 1, 'Taller de Titulación I', 'Taller de Titulación I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(164, 1, 1, 'Desarrollo de aplicaciones en redes II', 'Desarrollo de aplicaciones en redes II', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(165, 1, 1, 'Electrónica I', 'Electrónica I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(166, 1, 1, 'Teoría Financiera y Tributaria', 'Teoría Financiera y Tributaria', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(167, 1, 1, 'Fundamentos Hist. y Epist. del Talento Humano', 'Fundamentos Hist. y Epist. del Talento Humano', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(168, 1, 1, 'Análisis Cualitativo Aplicado Gestión de Emp Turis', 'Análisis Cualitativo Aplicado Gestión de Emp Turis', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(169, 1, 1, 'Comunicación Turística', 'Comunicación Turística', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(170, 1, 1, 'Desarrollo Turístico Sostenible', 'Desarrollo Turístico Sostenible', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(171, 1, 1, 'Dirección y Gestión de Empresas Turísticas', 'Dirección y Gestión de Empresas Turísticas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(172, 1, 1, 'Economía del Turismo', 'Economía del Turismo', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(173, 1, 1, 'Epistemología de la Administración del Turismo', 'Epistemología de la Administración del Turismo', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(174, 1, 1, 'Estadística Aplicada a Gestión Empresas Turísticas', 'Estadística Aplicada a Gestión Empresas Turísticas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(175, 1, 1, 'Fundamentos Dimensiones y Tendencias del Turismo', 'Fundamentos Dimensiones y Tendencias del Turismo', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(176, 1, 1, 'Gestión Ambiental del Turismo', 'Gestión Ambiental del Turismo', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(177, 1, 1, 'Gestión de Alojamiento', 'Gestión de Alojamiento', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(178, 1, 1, 'Gestión de Destinos Turísticos', 'Gestión de Destinos Turísticos', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(179, 1, 1, 'Gestión de la Calidad en Empresas Turísticas', 'Gestión de la Calidad en Empresas Turísticas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(180, 1, 1, 'Gestión de la Movilidad e Intermediación Turística', 'Gestión de la Movilidad e Intermediación Turística', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(181, 1, 1, 'Gestión de Recursos y Productos Turísticos', 'Gestión de Recursos y Productos Turísticos', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(182, 1, 1, 'Gestión de Restauración', 'Gestión de Restauración', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(183, 1, 1, 'Gestión del Talento Humano', 'Gestión del Talento Humano', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(184, 1, 1, 'Marketing Turístico', 'Marketing Turístico', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(185, 1, 1, 'Metodología Investigación Aplicada a Gestión Turis', 'Metodología Investigación Aplicada a Gestión Turis', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(186, 1, 1, 'Normativas Legales y Jurídicas del Turismo', 'Normativas Legales y Jurídicas del Turismo', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(187, 1, 1, 'Ocio y Entretenimiento', 'Ocio y Entretenimiento', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(188, 1, 1, 'Sociología del Turismo y el Ocio', 'Sociología del Turismo y el Ocio', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(189, 1, 1, 'Top Notch 3', 'Top Notch 3', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(190, 1, 1, 'Formación de Empresarios', 'Formación de Empresarios', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(191, 1, 1, 'Finanzas Internacionales', 'Finanzas Internacionales', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(192, 1, 1, 'Tendencias Teóricas y Meto. en Admin. Emp. Turi', 'Tendencias Teóricas y Meto. en Admin. Emp. Turi', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(193, 1, 1, 'Turismo y Patrimonio Cultural', 'Turismo y Patrimonio Cultural', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(194, 1, 1, 'Cultura, Clima y Cambio Organizacional', 'Cultura, Clima y Cambio Organizacional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(195, 1, 1, 'Diseño de Procesos y Puestos', 'Diseño de Procesos y Puestos', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(196, 1, 1, 'Estrategia Compensación Incentivos Políticas Salar', 'Estrategia Compensación Incentivos Políticas Salar', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(197, 1, 1, 'Finanzas para la Toma Decisiones', 'Finanzas para la Toma Decisiones', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(198, 1, 1, 'Gestión de la Seguridad y Salud Ocupacional', 'Gestión de la Seguridad y Salud Ocupacional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(199, 1, 1, 'Gestión del Desempeño y Efectividad Organizacional', 'Gestión del Desempeño y Efectividad Organizacional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(200, 1, 1, 'Habilidades Directivas', 'Habilidades Directivas', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(201, 1, 1, 'Legislación Laboral', 'Legislación Laboral', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(202, 1, 1, 'Método Cualitativos Cuantitativos de Investigación', 'Método Cualitativos Cuantitativos de Investigación', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(203, 1, 1, 'Método Invest Científica para Ciencias Sociales', 'Método Invest Científica para Ciencias Sociales', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(204, 1, 1, 'Modelo Gest Talento Humano y Competencia Laboral', 'Modelo Gest Talento Humano y Competencia Laboral', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(205, 1, 1, 'Planeamiento Estratégico y Gestión del Cambio', 'Planeamiento Estratégico y Gestión del Cambio', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(206, 1, 1, 'Reclutamiento y Selección de Personas', 'Reclutamiento y Selección de Personas', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(207, 1, 1, 'Responsabilidad Social Empresarial', 'Responsabilidad Social Empresarial', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(208, 1, 1, 'Taller de Trabajo de Titulación I', 'Taller de Trabajo de Titulación I', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(209, 1, 1, 'Taller de Trabajo de Titulación II', 'Taller de Trabajo de Titulación II', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(210, 1, 1, 'Taller de Trabajo de Titulación III', 'Taller de Trabajo de Titulación III', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(211, 1, 1, 'Análisis del Entorno para la Toma de Decisiones', 'Análisis del Entorno para la Toma de Decisiones', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(212, 1, 1, 'Comportamiento del Consumidor', 'Comportamiento del Consumidor', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(213, 1, 1, 'Comunicaciones Integradas a la Mercadotecnia', 'Comunicaciones Integradas a la Mercadotecnia', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(214, 1, 1, 'Costos para la Gestión', 'Costos para la Gestión', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(215, 1, 1, 'Economía Gerencial con Aplicación al Marketing', 'Economía Gerencial con Aplicación al Marketing', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(216, 1, 1, 'Epistemología de la Mercadotecnia', 'Epistemología de la Mercadotecnia', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(217, 1, 1, 'Estrategias de Distribución y Logística', 'Estrategias de Distribución y Logística', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(218, 1, 1, 'Elementary II', 'Elementary II', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(219, 1, 1, 'Gobierno Corporativo y Responsabilidad Social', 'Gobierno Corporativo y Responsabilidad Social', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(220, 1, 1, 'Marco Teórico - Conceptual', 'Marco Teórico - Conceptual', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(221, 1, 1, 'Marketing Estratégico', 'Marketing Estratégico', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(222, 1, 1, 'Marketing Internacional', 'Marketing Internacional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(223, 1, 1, 'Marketing Roi', 'Marketing Roi', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(224, 1, 1, 'Marketing Social y Político', 'Marketing Social y Político', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(225, 1, 1, 'Marketing Turístico y de Experiencia', 'Marketing Turístico y de Experiencia', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(226, 1, 1, 'Metodología de Investigación Cuantitativa Aplicada', 'Metodología de Investigación Cuantitativa Aplicada', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(227, 1, 1, 'Metodología de Investigación: Cualitativa Aplicad', 'Metodología de Investigación: Cualitativa Aplicad', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(228, 1, 1, 'Metodología de la Investigación Aplicada al Trabaj', 'Metodología de la Investigación Aplicada al Trabaj', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(229, 1, 1, 'Políticas de Productos y Servicios', 'Políticas de Productos y Servicios', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(230, 1, 1, 'Resultados- Propuesta - Conclusiones', 'Resultados- Propuesta - Conclusiones', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(231, 1, 1, 'Retailing y Merchandising', 'Retailing y Merchandising', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(232, 1, 1, 'Macroeconomía', 'Macroeconomía', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(233, 1, 1, 'Derecho Tributario y Financiero', 'Derecho Tributario y Financiero', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(234, 1, 1, 'Análisis Del Entorno', 'Análisis del Entorno', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(235, 1, 1, 'Comercio Electrónico', 'Comercio Electrónico', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(236, 1, 1, 'Transporte Internacional-2009', 'Transporte Internacional-2009', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(237, 1, 1, 'Derecho y Etica Profesional', 'Derecho y Etica Profesional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(238, 1, 1, 'Desarrollo de Habilidades Gerenciales', 'Desarrollo de Habilidades Gerenciales', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(239, 1, 1, 'Desarrollo Organizacional', 'Desarrollo Organizacional', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(240, 1, 1, 'Beginners (Pre-Elementary 1)', 'Beginners (Pre-Elementary 1)', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(241, 1, 1, 'Fundamentos Dimensiones Tendencias Innovación Tcnl', 'Fundamentos Dimensiones Tendencias Innovación Tcnl', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(242, 1, 1, 'Gobernanza de TI Riesgos y Cumplimiento Normativo', 'Gobernanza de TI Riesgos y Cumplimiento Normativo', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(243, 1, 1, 'Interculturalidad Saberes Ancestrales Estudio Gnro', 'Interculturalidad Saberes Ancestrales Estudio Gnro', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(244, 1, 1, 'Investigación Operaciones Aplicada a Toma Decisión', 'Investigación Operaciones Aplicada a Toma Decisión', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(245, 1, 1, 'Marketing y Redes Sociales', 'Marketing y Redes Sociales', 1, NULL, '1', '2018-02-22 16:30:00', NULL, '1'),
(246, 1, 1, 'Top Notch 1', 'Top Notch 1', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(247, 1, 1, 'Métodos Estadísticos', 'Métodos Estadísticos', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(248, 1, 1, 'Movilidad, Internet de las cosas y Big Data', 'Movilidad, Internet de las cosas y Big Data', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(249, 1, 1, 'Planeación Estratégica', 'Planeación Estratégica', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(250, 1, 1, 'Proyectos de Sistemas de Información', 'Proyectos de Sistemas de Información', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(251, 1, 1, 'Seguridad de la Información', 'Seguridad de la Información', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(252, 1, 1, 'Sistemas de Información Gerencial', 'Sistemas de Información Gerencial', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(253, 1, 1, 'Summit 1', 'Summit 1', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(254, 1, 1, 'Sistemas Operativos', 'Sistemas Operativos', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(255, 1, 1, 'Asistencia y guía a grupos turísticos', 'Asistencia y guía a grupos turísticos', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(256, 1, 1, 'Tecnologías Web y Software Libre', 'Tecnologías Web y Software Libre', 1, NULL, '1', '2019-02-22 16:30:00', NULL, '1'),
(257, 1, 1, 'Administración de Compensaciones (4C)', 'Administración de Compensaciones (4C)', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(258, 1, 1, 'Proyecto Empresarial II', 'Proyecto Empresarial II', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(259, 1, 1, 'Geografía Turística', 'Geografía Turística', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(260, 1, 1, 'Desarrollo Multimedia I', 'Desarrollo Multimedia I', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(261, 1, 1, 'Contabilidad II (4C)', 'Contabilidad II (4C)', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(262, 1, 1, 'Marketing Internacional-2009', 'Marketing Internacional-2009', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(263, 1, 1, 'Desarrollo Web II-2009', 'Desarrollo Web II-2009', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(264, 1, 1, 'Sociología del Talento Humano', 'Sociología del Talento Humano', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(265, 1, 1, 'Estadística I', 'Estadística I', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(266, 1, 1, 'Epistemología', 'Epistemología', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(267, 1, 1, 'Cálculo de Varias Variables', 'Cálculo de Varias Variables', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(268, 1, 1, 'Contabilidad I (4c)', 'Contabilidad I (4c)', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(269, 1, 1, 'Fundamentos de Comercio Exterior-2009', 'Fundamentos de Comercio Exterior-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(270, 1, 1, 'Gerencia Operativa (4c)', 'Gerencia Operativa (4c)', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(271, 1, 1, 'Proyecto Empresarial I-2009', 'Proyecto Empresarial I-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(272, 1, 1, 'Química General', 'Química General', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(273, 1, 1, 'Reingeniería en Ventas-2009', 'Reingeniería en Ventas-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(274, 1, 1, 'Agencia de Viajes I (4C)', 'Agencia de Viajes I (4C)', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(275, 1, 1, 'Animación y Recreación Turística (4C)', 'Animación y Recreación Turística (4C)', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(276, 1, 1, 'Auditoría Tributaria I-2009', 'Auditoría Tributaria I-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(277, 1, 1, 'Auditoría-2009', 'Auditoría-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(278, 1, 1, 'Coctelería y Bebidas (4C)', 'Coctelería y Bebidas (4C)', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(279, 1, 1, 'Contratación Internacional-2009', 'Contratación Internacional-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(280, 1, 1, 'Cultura Organizacional', 'Cultura Organizacional', 1, NULL, '1', '2019-09-08 15:30:00', NULL, '1'),
(281, 1, 1, 'Distribución Física Internacional I-2009', 'Distribución Física Internacional I-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(282, 1, 1, 'Finanzas I', 'Finanzas I', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(283, 1, 1, 'Investigación de Mercados', 'Investigación de Mercados', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(284, 1, 1, 'Fundamentals', 'Fundamentals', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(285, 1, 1, 'Procesos Psicológicos', 'Procesos Psicológicos', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(286, 1, 1, 'Preparación de Alimentos', 'Preparación de Alimentos', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(287, 1, 1, 'Programación Visual', 'Programación Visual', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(288, 1, 1, 'Psicosociología del Turismo (4C)', 'Psicosociología del Turismo (4C)', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(289, 1, 1, 'Seguridad en Redes de Informática-2009', 'Seguridad en Redes de Informática-2009', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(290, 1, 1, 'Fundamentos de Software Especializados', 'Fundamentos de Software Especializados', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(291, 1, 1, 'Teoría Electromagnética', 'Teoría Electromagnética', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(292, 1, 1, 'Tributación I', 'Tributación I', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(293, 1, 1, 'Tributación II', 'Tributación II', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(294, 1, 1, 'Fundamentos de Programación', 'Fundamentos de Programación', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(295, 1, 1, 'Elaboración de Proyectos de Factibilidad', 'Elaboración de Proyectos de Factibilidad', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(296, 1, 1, 'Legislación y Derecho Aduanero', 'Legislación y Derecho Aduanero', 1, NULL, '1', '2019-04-12 15:30:00', NULL, '1'),
(297, 1, 1, 'Optativa II: Circuitos Turísticos', 'Optativa II: Circuitos Turísticos', 1, NULL, '1', '2019-07-10 16:30:00', NULL, '1'),
(298, 1, 1, 'Auditoría Tributaria II', 'Auditoría Tributaria II', 1, NULL, '1', '2019-07-10 16:30:00', NULL, '1'),
(299, 1, 1, 'Contabilidad de Costos', 'Contabilidad de Costos', 1, NULL, '1', '2019-07-10 16:30:00', NULL, '1'),
(300, 1, 1, 'Procesos Estocásticos', 'Procesos Estocásticos', 1, NULL, '1', '2019-07-10 16:30:00', NULL, '1'),
(301, 1, 1, 'Prácticas Pre-Profesionales I', 'Prácticas Pre-Profesionales I', 1, NULL, '1', '2019-07-10 16:30:00', NULL, '1'),
(302, 1, 1, 'Agencia de viajes II', 'Agencia de viajes II', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(303, 1, 1, 'Contabilidad IV', 'CONTABILIDAD IV', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(304, 1, 1, 'Tecnología del medio del Transporte', 'Tecnología del medio del Transporte', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(305, 1, 1, 'Administración de Empresas Turísticas', 'Administración de Empresas Turísticas', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(306, 1, 1, 'Nomenclatura Arancelaria', 'Nomenclatura Arancelaria', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(307, 1, 1, 'Contabilidad VI', 'Contabilidad VI', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(308, 1, 1, 'Gestión de calidad y estandarización', 'Gestión de calidad y estandarización', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(309, 1, 1, 'Tecnología de la carga', 'Tecnología de la carga', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(310, 1, 1, 'Gestión ambiental', 'Gestión ambiental', 1, NULL, '1', '2019-07-11 17:30:00', NULL, '1'),
(311, 1, 1, 'Upper-Intermediate 1', 'Upper-Intermediate 1', 1, NULL, '1', '2019-07-11 18:30:00', NULL, '1'),
(312, 1, 1, 'Estrategia de Oferta de Productos y Servicios', 'Estrategia de Oferta de Productos y Servicios', 1, NULL, '1', '2019-08-13 18:40:00', NULL, '1');

INSERT INTO `estudio_acad_area_con` (`eaac_id`, `eaca_id`, `mest_id`, `acon_id`, `eaac_estado`, `eaac_fecha_creacion`, `eaac_fecha_modificacion`, `eaac_estado_logico`) VALUES
(1, 1, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(2, 2, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(3, 3, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(4, 4, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(5, 5, NULL, 9, '1', '2019-01-16 06:22:45', NULL, '1'),
(6, 6, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(7, 7, NULL, 5, '1', '2019-01-16 06:22:45', NULL, '1'),
(8, 8, NULL, 6, '1', '2019-01-16 06:22:45', NULL, '1'),
(9, 9, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(10, 10, NULL, 5, '1', '2019-01-16 06:22:45', NULL, '1'),
(11, 11, NULL, 9, '1', '2019-01-16 06:22:45', NULL, '1'),
(12, 13, NULL, 4, '1', '2019-01-16 06:22:45', NULL, '1'),
(13, 12, NULL, 4, '1', '2019-03-27 14:20:45', NULL, '1'),
(14, 14, NULL, 6, '1', '2019-03-27 14:20:45', NULL, '1'),
(15, 15, NULL, 4, '1', '2019-03-27 14:20:45', NULL, '1'),
(16, 16, NULL, 4, '1', '2019-03-27 14:20:45', NULL, '1'),
(17, 17, NULL, 4, '1', '2019-03-27 14:20:45', NULL, '1'),
(18, 18, NULL, 5, '1', '2019-03-27 14:20:45', NULL, '1'),
(19, 19, NULL, 8, '1', '2019-03-27 14:20:45', NULL, '1'),
(20, 20, NULL, 3, '1', '2019-03-27 14:20:45', NULL, '1'),
(21, 21, NULL, 9, '1', '2019-03-27 14:20:45', NULL, '1'),
(22, 22, NULL, 4, '1', '2019-03-27 14:20:45', NULL, '1'),
(23, 23, NULL, 10, '1', '2019-03-27 14:20:45', NULL, '1'),
(24, 24, NULL, 2, '1', '2019-05-27 16:20:45', NULL, '1');


 