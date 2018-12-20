-- Base de datos: `db_asgard`
--
USE `db_asgard`;

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `MODULO`
--
INSERT INTO `modulo` (`mod_id`, `apl_id`, `mod_nombre`, `mod_tipo`, `mod_dir_imagen`, `mod_url`, `mod_orden`, `mod_lang_file`, `mod_estado_visible`, `mod_estado`, `mod_fecha_creacion`, `mod_fecha_actualizacion`, `mod_estado_logico`) VALUES
(1, 1, 'Configuraciones', 'Configuraciones', 'glyphicon glyphicon-cog', 'grupo/index', 1, 'menu', '1', '1', '2018-09-16 08:44:54', NULL, '1'),
(2, 1, 'Admisiones', 'Admisiones', 'glyphicon glyphicon-cog', 'admision/contactos/index', 2, 'menu', '1', '1', '2018-09-16 08:44:54', NULL, '1'),
(3, 1, 'Financiero', 'Financiero', 'glyphicon glyphicon-cog', 'financiero/pagos/index', 3, 'menu', '1', '1', '2018-09-18 05:06:44', NULL, '1'),
(4, 1, 'Academico', 'Academico', 'glyphicon glyphicon-cog', 'academico/admitidos/index', 4, 'menu', '1', '1', '2018-09-18 05:06:58', NULL, '1'),
(5, 1, 'Reportes', 'Academico', 'glyphicon glyphicon-cog', 'academico/admitidos/index', 5, 'menu', '1', '1', '2018-09-18 05:06:58', NULL, '1'),
(6, 1, 'Marketing', 'Marketing', 'glyphicon glyphicon-envelope', 'academico/admitidos/index', 6, 'menu', '1', '1', '2018-09-18 05:06:58', NULL, '1');

--
-- Volcado de datos para la tabla `objeto_modulo`
--
INSERT INTO `objeto_modulo` (`omod_id`, `mod_id`, `omod_padre_id`, `omod_nombre`, `omod_tipo`, `omod_tipo_boton`, `omod_accion`, `omod_function`, `omod_dir_imagen`, `omod_entidad`, `omod_orden`, `omod_estado_visible`, `omod_lang_file`, `omod_estado`, `omod_fecha_creacion`, `omod_fecha_actualizacion`, `omod_estado_logico`) VALUES
(1, 1, 1, 'Grupos y Permisos', 'P', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(2, 1, 1, 'Grupo', 'S', '0', '', '', '', 'grupo/index', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(3, 1, 2, 'Crear Grupo', 'S', '0', '', '', '', 'grupo/new', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(4, 1, 2, 'Crear Grupo', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(5, 1, 3, 'Guardar Grupo', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(6, 1, 2, 'Ver Grupo', 'S', '0', '', '', '', 'grupo/view', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(7, 1, 6, 'Editar Grupo', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(8, 1, 2, 'Editar Grupo', 'S', '0', '', '', '', 'grupo/edit', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(9, 1, 8, 'Update Grupo', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(10, 1, 1, 'Rol', 'S', '0', '', '', '', 'rol/index', 2, '1', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(11, 1, 10, 'Crear Rol', 'S', '0', '', '', '', 'rol/new', 1, '0', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(12, 1, 10, 'Crear Rol', 'A', '0', '', '', '', '', 1, '1', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(13, 1, 11, 'Guardar Rol', 'A', '0', '', '', '', '', 1, '1', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(14, 1, 10, 'Ver Rol', 'S', '0', '', '', '', 'rol/view', 1, '0', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(15, 1, 10, 'Editar Rol', 'S', '0', '', '', '', 'rol/edit', 1, '0', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(16, 1, 14, 'Editar Rol', 'A', '0', '', '', '', 'rol/edit', 1, '1', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(17, 1, 15, 'Update Rol', 'A', '0', '', '', '', '', 1, '1', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(18, 1, 1, 'Permisos', 'S', '0', '', '', '', 'permisos/index', 3, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(19, 1, 18, 'Crear Permiso', 'S', '0', '', '', '', 'permisos/new', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(20, 1, 18, 'Crear Permiso', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(21, 1, 19, 'Guardar Permiso', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(22, 1, 18, 'Ver Permiso', 'S', '0', '', '', '', 'permisos/view', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(23, 1, 18, 'Editar Permiso', 'S', '0', '', '', '', 'permisos/edit', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(24, 1, 22, 'Editar Permiso', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(25, 1, 23, 'Update Permiso', 'A', '0', '', '', '', '', 1, '1', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(26, 1, 1, 'Acciones', 'S', '0', '', '', '', 'acciones/index', 4, '1', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(27, 1, 26, 'Crear Accion', 'S', '0', '', '', '', 'acciones/new', 1, '0', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(28, 1, 26, 'Crear Accion', 'A', '0', '', '', '', '', 1, '1', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(29, 1, 27, 'Guardar Accion', 'A', '0', '', '', '', '', 1, '1', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(30, 1, 26, 'Ver Accion', 'S', '0', '', '', '', 'acciones/view', 1, '0', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(31, 1, 26, 'Editar Accion', 'S', '0', '', '', '', 'acciones/edit', 1, '0', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(32, 1, 30, 'Editar Accion', 'A', '0', '', '', '', '', 1, '1', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(33, 1, 31, 'Update Accion', 'A', '0', '', '', '', '', 1, '1', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(34, 1, 34, 'Modulos y SubModulos', 'P', '0', '', '', '', '', 3, '1', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(35, 1, 34, 'Modulos', 'S', '0', '', '', '', 'modulos/index', 1, '1', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(36, 1, 35, 'Crear Modulo', 'S', '0', '', '', '', 'modulos/new', 1, '0', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(37, 1, 35, 'Crear Modulo', 'A', '0', '', '', '', '', 1, '1', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(38, 1, 36, 'Guardar Modulo', 'A', '0', '', '', '', '', 1, '1', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(39, 1, 35, 'Ver Modulo', 'S', '0', '', '', '', 'modulos/view', 1, '0', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(40, 1, 35, 'Editar Modulo', 'S', '0', '', '', '', 'modulos/edit', 1, '0', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(41, 1, 39, 'Editar Modulo', 'A', '0', '', '', '', '', 1, '1', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(42, 1, 40, 'Update Modulo', 'A', '0', '', '', '', '', 1, '1', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(43, 1, 34, 'SubModulos', 'S', '0', '', '', '', 'objetomodulos/index', 2, '1', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(44, 1, 43, 'Crear SubModulo', 'S', '0', '', '', '', 'objetomodulos/new', 1, '0', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(45, 1, 43, 'Crear SubModulo', 'A', '0', '', '', '', '', 1, '1', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(46, 1, 44, 'Guardar SubModulo', 'A', '0', '', '', '', '', 1, '1', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(47, 1, 43, 'Ver SubModulo', 'S', '0', '', '', '', 'objetomodulos/view', 1, '0', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(48, 1, 43, 'Editar Submodulo', 'S', '0', '', '', '', 'objetomodulos/edit', 1, '0', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(49, 1, 47, 'Editar SubModulo', 'A', '0', '', '', '', '', 1, '1', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(50, 1, 48, 'Update SubModulo', 'A', '0', '', '', '', '', 1, '1', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(51, 1, 2, 'Eliminar Grupo', 'S', '0', '', '', '', 'grupo/delete', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(52, 1, 10, 'Eliminar Rol', 'S', '0', '', '', '', 'rol/delete', 1, '0', 'rol', '1', '2018-09-16 08:48:06', NULL, '1'),
(53, 1, 26, 'Eliminar Accion', 'S', '0', '', '', '', 'acciones/delete', 1, '0', 'accion', '1', '2018-09-16 08:48:06', NULL, '1'),
(54, 1, 18, 'Eliminar Permiso', 'S', '0', '', '', '', 'permisos/delete', 1, '0', 'grupo', '1', '2018-09-16 08:48:06', NULL, '1'),
(55, 1, 35, 'Eliminar Modulo', 'S', '0', '', '', '', 'modulos/delete', 1, '0', 'modulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(56, 1, 43, 'Eliminar SubModulo', 'S', '0', '', '', '', 'objetomodulos/delete', 1, '0', 'objetomodulo', '1', '2018-09-16 08:48:06', NULL, '1'),
(57, 2, 57, 'Contactos', 'P', '0', '', '', '', 'admision/contactos/index', 1, '1', 'contacto', '1', '2018-09-18 10:29:05', NULL, '1'),
(58, 2, 57, 'Nuevo Contacto', 'S', '0', '', '', '', 'admision/contactos/new', 1, '0', 'contacto', '1', '2018-09-18 11:00:12', NULL, '1'),
(59, 2, 57, 'Nuevo Contacto', 'A', '0', '', '', '', 'admision/contactos/new', 1, '1', 'contacto', '1', '2018-09-18 11:03:59', NULL, '1'),
(60, 2, 58, 'Guardar Contacto', 'A', '0', '', '', '', 'admision/contactos/save', 1, '1', 'contacto', '1', '2018-09-18 11:08:29', NULL, '1'),
(61, 2, 57, 'Ver Contacto', 'S', '0', '', '', '', 'admision/contactos/view', 1, '0', 'contacto', '1', '2018-09-18 11:10:55', NULL, '1'),
(62, 2, 57, 'Editar Contacto', 'S', '0', '', '', '', 'admision/contactos/edit', 1, '0', 'contacto', '1', '2018-09-18 11:13:20', NULL, '1'),
(63, 2, 61, 'Editar Contacto', 'A', '0', '', '', '', 'admision/contactos/edit', 1, '1', 'contacto', '1', '2018-09-18 11:15:00', NULL, '1'),
(64, 2, 62, 'Actualizar Contacto', 'A', '0', '', '', '', 'admision/contactos/update', 1, '1', 'contacto', '1', '2018-09-18 11:16:57', NULL, '1'),
(65, 2, 65, 'Oportunidades', 'P', '0', '', '', '', 'admision/oportunidades/index', 2, '1', 'oportunidad', '1', '2018-09-18 10:29:05', NULL, '1'),
(66, 2, 57, 'Listar Oportunidad por Contacto', 'S', '0', '', '', '', 'admision/contactos/listaroportunidad', 1, '0', 'contacto', '1', '2018-09-16 13:48:06', NULL, '1'),
(67, 2, 66, 'Nuevo Oportunidad', 'S', '0', '', '', '', 'admision/oportunidades/newoportunidadxcontacto', 1, '0', 'oportunidad', '1', '2018-09-18 11:00:12', NULL, '1'),
(68, 2, 66, 'Nuevo Oportunidad', 'A', '0', '', '', '', 'admision/oportunidades/newoportunidadxcontacto', 1, '1', 'oportunidad', '1', '2018-09-18 11:03:59', NULL, '1'),
(69, 2, 67, 'Guardar Oportunidad', 'A', '0', '', '', '', 'admision/oportunidades/save', 1, '1', 'oportunidad', '1', '2018-09-18 11:08:29', NULL, '1'),
(70, 2, 65, 'Ver Oportunidad', 'S', '0', '', '', '', 'admision/oportunidades/view', 1, '0', 'oportunidad', '1', '2018-09-18 11:10:55', NULL, '1'),
(71, 2, 70, 'Editar Oportunidad', 'S', '0', '', '', '', 'admision/oportunidades/edit', 1, '0', 'oportunidad', '1', '2018-09-18 11:13:20', NULL, '1'),
(72, 2, 70, 'Editar Oportunidad', 'A', '0', '', '', '', 'admision/oportunidades/edit', 1, '1', 'oportunidad', '1', '2018-09-18 11:15:00', NULL, '1'),
(73, 2, 71, 'Actualizar Oportunidad', 'A', '0', '', '', '', 'admision/oportunidades/update', 1, '1', 'oportunidad', '1', '2018-09-18 11:16:57', NULL, '1'),
(74, 2, 66, 'Actividades por Oportunidad', 'S', '0', '', '', '', 'admision/actividades/listaractividadxoportunidad', 1, '0', 'contacto', '1', '2018-09-21 10:00:30', NULL, '1'),
(75, 2, 74, 'Crear Actividad', 'S', '0', '', '', '', 'admision/actividades/newactividad', 1, '0', 'contacto', '1', '2018-09-21 10:03:04', NULL, '1'),
(76, 2, 74, 'Crear Actividad', 'A', '0', '', '', '', 'admision/actividades/listaractividadxoportunidad', 1, '1', 'contacto', '1', '2018-09-21 10:10:53', NULL, '1'),
(77, 2, 75, 'Guardar Actividad', 'A', '0', '', '', '', 'admision/actividades/newactividad', 1, '1', 'contacto', '1', '2018-09-21 10:15:13', NULL, '1'),
(78, 2, 74, 'Ver Actividad', 'S', '0', '', '', '', 'admision/actividades/view', 1, '1', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(79, 2, 78, 'Edicion Actividad', 'A', '0', '', '', '', 'admision/actividades/view', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(80, 2, 78, 'Editar Actividad', 'S', '0', '', '', '', 'admision/actividades/edit', 1, '1', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(81, 2, 80, 'Guardar Edicion Actividad', 'A', '0', '', '', '', 'admision/actividades/edit', 1, '1', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(82, 2, 82, 'Aspirantes', 'P', '0', '', '', '', 'admision/interesados/index', 3, '1', 'Solicitudes', '1', '2018-09-22 10:05:23', NULL, '1'),
(83, 2, 82, 'Solicitudes por Aspirante', 'S', '0', '', '', '', 'admision/solicitudes/listarsolicitudxinteresado', 1, '0', 'Solicitudes', '1', '2018-09-22 10:35:31', NULL, '1'),
(84, 2, 83, 'Solicitud por Aspirante', 'A', '0', '', '', '', 'admision/solicitudes/listarsolicitudxinteresado', 1, '1', 'Solicitudes', '1', '2018-09-23 00:07:01', NULL, '1'),
(85, 2, 85, 'Solicitudes', 'P', '0', '', '', '', 'admision/solicitudes/index', 4, '1', 'Solicitudes', '1', '2018-09-23 00:07:01', NULL, '1'),
(86, 2, 85, 'Crear Solicitud de Inscripcion', 'S', '0', '', '', '', 'admision/solicitudes/new', 1, '0', 'Solicitudes', '1', '2018-09-22 10:47:12', NULL, '1'),
(87, 2, 86, 'Guardar Solicitud Inscripcion', 'A', '0', '', '', '', 'admision/solicitudes/new', 1, '1', 'Solicitudes', '1', '2018-09-23 00:07:01', NULL, '1'),
(88, 2, 85, 'Ver Solicitud', 'S', '0', '', '', '', 'admision/solicitudes/view', 1, '0', 'Solicitudes', '1', '2018-09-23 00:07:01', NULL, '1'),
(89, 2, 85, 'Subir Documentos Solicitud', 'S', '0', '', '', '', 'admision/solicitudes/subirDocumentos', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(90, 2, 88, 'Enviar Solicitud', 'A', '0', '', '', '', 'admision/solicitudes/view', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(91, 2, 89, 'Guardar Documentos Solicitud', 'A', '0', '', '', '', 'admision/solicitudes/subirDocumentos', 1, '1', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(92, 2, 85, 'Actualizar Documentos', 'S', '0', '', '', '', 'admision/solicitudes/actualizardocumentos', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(93, 2, 92, 'Guardar Actualizar Documentos', 'A', '0', '', '', '', 'admision/solicitudes/actualizardocumentos', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(94, 3, 94, 'Listar Pagos', 'P', '0', '', '', '', 'financiero/pagos/index', 1, '1', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(95, 3, 95, 'Registro Pagos por Colecturia', 'P', '0', '', '', '', 'financiero/pagos/indexadm', 1, '1', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(96, 3, 96, 'Listar Pagos Cargados', 'P', '0', '', '', '', 'financiero/pagos/listarpagoscargados', 1, '1', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(97, 3, 96, 'Listar Pagos Solicitud', 'S', '0', '', '', '', 'financiero/pagos/listarpagosolicitud', 1, '0', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(98, 3, 94, 'Validar Pago Carga', 'S', '0', '', '', '', 'financiero/pagos/validarpagocarga', 1, '0', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(99, 3, 94, 'Cargar Documentos Pagos', 'S', '0', '', '', '', 'financiero/pagos/cargardocpagos', 1, '0', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(100, 3, 99, 'Guardar Cargar Documento Pago', 'A', '0', '', '', '', 'financiero/pagos/cargardocpagos', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(101, 4, 101, 'Listar Inscritos', 'P', '0', '', '', '', 'academico/admitidos/index', 1, '1', 'Academico', '1', '2018-09-23 00:07:01', NULL, '1'),
(102, 4, 101, 'Homologacion', 'S', '0', '', '', '', 'academico/matriculacion/newhomologacion', 1, '0', 'Solicitudes', '1', '2018-09-23 00:07:01', NULL, '1'),
(103, 4, 101, 'Metodo de Ingreso', 'S', '0', '', '', '', 'academico/matriculacion/newmetodoingreso', 1, '0', 'Solicitudes', '1', '2018-09-23 00:07:01', NULL, '1'),
(104, 4, 103, 'Guardar Metodo Ingreso', 'A', '0', '', '', '', 'academico/matriculacion/newmetodoingreso', 1, '1', 'Academico', '1', '2018-09-23 00:07:01', NULL, '1'),
(105, 2, 65, 'Reasignar Agente', 'S', '0', '', '', '', 'admision/agentes/reasignagente', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(106, 2, 105, 'Guardar Reasignar Agente', 'A', '0', '', '', '', 'admision/agentes/reasignagente', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(107, 2, 57, 'Cargar Leads', 'S', '0', '', '', '', 'admision/contactos/cargarleads', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(108, 2, 57, 'Cargar Leads', 'A', '0', '', '', '', 'admision/contactos/cargarleads', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(109, 2, 107, 'Cargar Leads Redes Sociales', 'A', '0', '', '', '', 'admision/contactos/cargarleads', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(110, 2, 107, 'Cargar Leads Call Center', 'A', '0', '', '', '', 'admision/contactos/cargarleads', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(111, 3, 94, 'Cargar Factura', 'S', '0', '', '', '', 'financiero/pagos/cargardocfact', 1, '0', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(112, 3, 111, 'Guardar Cargar Factura', 'A', '0', '', '', '', 'financiero/pagos/cargardocfact', 1, '0', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(113, 2, 113, 'Solicitudes', 'P', '0', '', '', '', 'admision/solicitudes/listarsolicitudxinteresado', 1, '1', 'Solicitudes', '1', '2018-09-22 10:05:23', NULL, '1'),
(114, 3, 114, 'Pagos Realizados', 'P', '0', '', '', '', 'financiero/pagos/listarpagosolicitud', 1, '1', 'Pagos', '1', '2018-09-23 00:07:01', NULL, '1'),
(115, 5, 115, 'Reportes', 'P', '0', '', '', '', 'reportes/index', 1, '1', 'contacto', '1', '2018-09-18 10:29:05', NULL, '1'),
(116, 5, 115, 'Exportar Contactos por Estado', 'A', '0', '', '', '', 'reportes/index', 1, '0', 'Admision', '0', '2018-09-23 00:07:01', NULL, '1'),
(117, 5, 115, 'Exportar Contactos Perdidos', 'A', '0', '', '', '', 'reportes/index', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(118, 5, 115, 'Documentos Pendientes Aspirantes', 'A', '0', '', '', '', 'reportes/index', 1, '0', 'Admision', '1', '2018-09-23 00:07:01', NULL, '1'),
(119, 4, 119, 'Matriculados Método Ingreso', 'P', '0', '', '', '', 'academico/matriculadosreprobados/index', 1, '1', 'Academico', '1', '2018-11-06 23:39:15', NULL, '1'),
(120, 4, 119, 'Nuevo Matriculado Método Ingreso', 'A', '0', '', '', '', 'academico/matriculadosreprobados/newreprobado', 1, '1', 'Academico', '1', '2018-11-07 14:52:28', NULL, '1'),
(121, 4, 119, 'Inscrito Pendiente', 'A', '0', '', '', '', 'academico/matriculadosreprobados/new', 1, '1', 'Academico', '1', '2018-11-07 19:10:30', NULL, '1'),
(122, 4, 82, 'Ficha Aspirante', 'S', '0', '', '', '', 'academico/ficha/update', 1, '1', 'Academico', '1', '2018-11-09 15:16:38', NULL, '1'),
(123, 4, 122, 'GuardarFichaAspirante', 'A', '0', '', '', '', 'academico/ficha/update', 1, '1', 'Academico', '1', '2018-11-09 15:22:14', NULL, '1'),
(124, 4, 124, 'Período Método Ingreso', 'P', '0', '', '', '', 'academico/adminmetodoingreso/index', 3, '1', 'academico', '1', '2018-11-12 22:21:54', NULL, '1'),
(125, 4, 124, 'Crear Período Método Ingreso', 'A', '0', '', '', '', 'academico/adminmetodoingreso/newperiodo', 1, '1', 'academico', '1', '2018-11-12 22:22:24', NULL, '1'),
(126, 4, 125, 'Ingresar período método ingreso', 'A', '0', '', '', '', 'academico/adminmetodoingreso/newperiodo', 1, '0', 'academico', '1', '2018-11-12 22:47:47', NULL, '1'),
(127, 4, 124, 'Crear Paralelo', 'S', '0', '', '', '', 'academico/adminmetodoingreso/newparalelo', 1, '0', 'academico', '1', '2018-11-12 22:53:20', NULL, '1'),
(128, 4, 127, 'Ingresar Paralelo', 'A', '0', '', '', '', 'academico/adminmetodoingreso/newparalelo', 1, '1', 'academico', '1', '2018-11-12 22:56:47', NULL, '1'),
(129, 4, 124, 'Modificar período método de ingreso', 'S', '0', '', '', '', 'academico/adminmetodoingreso/update', 1, '0', 'academico', '1', '2018-11-12 22:58:22', NULL, '1'),
(130, 4, 129, 'Actualiza período método ingreso', 'A', '0', '', '', '', 'academico/adminmetodoingreso/update', 1, '1', 'academico', '1', '2018-11-12 23:00:23', NULL, '1'),
(131, 4, 124, 'Listar Paralelos', 'S', '0', '', '', '', 'academico/adminmetodoingreso/listarparalelo', 1, '0', 'academico', '1', '2018-11-12 23:02:19', NULL, '1'),
(132, 4, 120, 'Guardar Nuevo Matriculado', 'A', '0', '', '', '', 'academico/matriculadosreprobados/newreprobado', 1, '1', 'Academico', '1', '2018-11-15 15:26:23', NULL, '1'),
(133, 6, 133, 'Email Marketing', 'P', '0', '', '', '', 'marketing/email/index', 1, '1', 'Marketing', '1', '2018-11-15 15:26:23', NULL, '1'),
(134, 6, 134, 'Whatsapp Marketing', 'P', '0', '', '', '', 'marketing/whatsapp/index', 2, '1', 'Marketing', '1', '2018-11-15 15:26:23', NULL, '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `OBMO_ACCI`
--
INSERT INTO `obmo_acci` (`oacc_id`, `omod_id`, `acc_id`, `oacc_tipo_boton`, `oacc_cont_accion`, `oacc_function`, `oacc_estado`, `oacc_fecha_creacion`, `oacc_fecha_modificacion`, `oacc_estado_logico`) VALUES
(1, 4, 1, '0', 'grupo/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(2, 5, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(3, 7, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(4, 9, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(5, 12, 1, '0', 'rol/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(6, 13, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(7, 16, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(8, 17, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(9, 20, 1, '0', 'permisos/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(10, 21, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(11, 24, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(12, 25, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(13, 28, 1, '0', 'acciones/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(14, 29, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(15, 32, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(16, 33, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(17, 37, 1, '0', 'modulos/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(18, 38, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(19, 41, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(20, 42, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(21, 45, 1, '0', 'objetomodulos/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(22, 46, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(23, 49, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(24, 50, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(25, 59, 1, '0', 'admision/contactos/new', '', '1', '2018-10-08 22:59:43', NULL, '1'),
(26, 60, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(27, 63, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(28, 64, 2, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(29, 68, 1, '1', '', 'newOportunidadXContacto', '1', '2018-10-08 22:59:43', NULL, '1'),
(30, 69, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(31, 72, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(32, 73, 2, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(33, 76, 1, '1', '', 'newItem', '1', '2018-10-08 22:59:43', NULL, '1'),
(34, 77, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(35, 84, 1, '1', '', 'NewSolicitud', '1', '2018-10-08 22:59:43', NULL, '1'),
(36, 87, 4, '1', '', 'save', '1', '2018-10-08 22:59:43', NULL, '1'),
(37, 104, 4, '1', '', 'savemethod', '1', '2018-10-08 22:59:43', NULL, '1'),
(38, 79, 12, '1', '', 'edit', '1', '2018-10-08 22:59:43', NULL, '1'),
(39, 81, 4, '1', '', 'update', '1', '2018-10-08 22:59:43', NULL, '1'),
(40, 99, 13, '1', '', 'Approve', '1', '2018-10-08 22:59:43', NULL, '1'),
(41, 91, 4, '1', '', 'SaveDocumentos', '1', '2018-10-08 22:59:43', NULL, '1'),
(42, 100, 4, '1', '', 'enviardata', '1', '2018-10-08 22:59:43', NULL, '1'),
(43, 93, 4, '1', '', 'UpdateDocumentos', '1', '2018-10-08 22:59:43', NULL, '1'),
(44, 106, 4, '1', '', 'guardarAgente', '1', '2018-10-08 22:59:43', NULL, '1'),
(45, 109, 14, '1', '', 'loadFile', '1', '2018-10-08 22:59:43', NULL, '1'),
(46, 110, 15, '1', '', 'loadCall', '1', '2018-10-08 22:59:43', NULL, '1'),
(47, 108, 16, '1', '', 'loadLeads', '1', '2018-10-08 22:59:43', NULL, '1'),
(48, 112, 4, '1', '', 'saveBills', '1', '2018-10-08 22:59:43', NULL, '1'),
(49, 90, 4, '1', '', 'Approve', '1', '2018-10-08 22:59:43', NULL, '1'),
(50, 116, 17, '1', '', 'exportStatContact', '1', '2018-10-08 22:59:43', NULL, '1'),
(51, 117, 18, '1', '', 'exportLostContact', '1', '2018-10-08 22:59:43', NULL, '1'),
(52, 118, 19, '1', '', 'pendingApplicants', '1', '2018-10-08 22:59:43', NULL, '1'),
(53, 120, 20, '1', '', 'newReprobado', '0', '2018-11-07 14:52:28', NULL, '1'),
(54, 121, 21, '1', '', 'newReprobadoPend', '1', '2018-11-07 19:10:30', NULL, '1'),
(55, 123, 4, '1', '', 'guardarFichaAspirante', '1', '2018-11-09 15:22:14', NULL, '1'),
(56, 126, 4, '1', '', 'grabarPeriodo', '1', '2018-11-12 22:47:47', NULL, '1'),
(57, 125, 1, '0', 'academico/adminmetodoingreso/newperiodo', '', '0', '2018-11-12 22:54:48', NULL, '1'),
(58, 128, 4, '1', '', 'grabarParalelo', '1', '2018-11-12 22:56:47', NULL, '1'),
(59, 130, 1, '1', '', 'modificarPeriodo', '1', '2018-11-12 23:00:23', NULL, '1'),
(60, 125, 1, '0', 'academico/adminmetodoingreso/newperiodo', '', '1', '2018-11-12 23:12:53', NULL, '1'),
(61, 132, 4, '1', '', 'guardarAdmiMateriarep', '1', '2018-11-15 15:26:23', NULL, '1'),
(62, 120, 20, '0', 'academico/matriculadosreprobados/newreprobado', '', '1', '2018-11-15 15:30:56', NULL, '1');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `grup_obmo`
--
INSERT INTO `grup_obmo` (`gmod_id`, `gru_id`, `omod_id`, `gmod_estado`,  `gmod_estado_logico`) VALUES
(1, 1, 1, '1', '1'),
(2, 1, 2, '1', '1'),
(3, 1, 3, '1', '1'),
(4, 1, 4, '1', '1'),
(5, 1, 5, '1', '1'),
(6, 1, 6, '1', '1'),
(7, 1, 7, '1', '1'),
(8, 1, 8, '1', '1'),
(9, 1, 9, '1', '1'),
(10, 1, 10, '1', '1'),
(11, 1, 11, '1', '1'),
(12, 1, 12, '1', '1'),
(13, 1, 13, '1', '1'),
(14, 1, 14, '1', '1'),
(15, 1, 15, '1', '1'),
(16, 1, 16, '1', '1'),
(17, 1, 17, '1', '1'),
(18, 1, 18, '1', '1'),
(19, 1, 19, '1', '1'),
(20, 1, 20, '1', '1'),
(21, 1, 21, '1', '1'),
(22, 1, 22, '1', '1'),
(23, 1, 23, '1', '1'),
(24, 1, 24, '1', '1'),
(25, 1, 25, '1', '1'),
(26, 1, 26, '1', '1'),
(27, 1, 27, '1', '1'),
(28, 1, 28, '1', '1'),
(29, 1, 29, '1', '1'),
(30, 1, 30, '1', '1'),
(31, 1, 31, '1', '1'),
(32, 1, 32, '1', '1'),
(33, 1, 33, '1', '1'),
(34, 1, 34, '1', '1'),
(35, 1, 35, '1', '1'),
(36, 1, 36, '1', '1'),
(37, 1, 37, '1', '1'),
(38, 1, 38, '1', '1'),
(39, 1, 39, '1', '1'),
(40, 1, 40, '1', '1'),
(41, 1, 41, '1', '1'),
(42, 1, 42, '1', '1'),
(43, 1, 43, '1', '1'),
(44, 1, 44, '1', '1'),
(45, 1, 45, '1', '1'),
(46, 1, 46, '1', '1'),
(47, 1, 47, '1', '1'),
(48, 1, 48, '1', '1'),
(49, 1, 49, '1', '1'),
(50, 1, 50, '1', '1'),
(51, 1, 51, '1', '1'),
(52, 1, 52, '1', '1'),
(53, 1, 53, '1', '1'),
(54, 1, 54, '1', '1'),
(55, 1, 55, '1', '1'),
(56, 1, 56, '1', '1'),
(57, 1, 57, '1', '1'),
(58, 1, 58, '1', '1'),
(59, 1, 59, '1', '1'),
(60, 1, 60, '1', '1'),
(61, 1, 61, '1', '1'),
(62, 1, 62, '1', '1'),
(63, 1, 63, '1', '1'),
(64, 1, 64, '1', '1'),
(65, 1, 65, '1', '1'),
(66, 1, 66, '1', '1'),
(67, 1, 67, '1', '1'),
(68, 1, 68, '1', '1'),
(69, 1, 69, '1', '1'),
(70, 1, 70, '1', '1'),
(71, 1, 71, '1', '1'),
(72, 1, 72, '1', '1'),
(73, 1, 73, '1', '1'),
(74, 1, 74, '1', '1'),
(75, 1, 75, '1', '1'),
(76, 1, 76, '1', '1'),
(77, 1, 77, '1', '1'),
(78, 1, 78, '1', '1'),
(79, 1, 79, '1', '1'),
(80, 1, 80, '1', '1'),
(81, 1, 81, '1', '1'),
(82, 1, 82, '1', '1'),
(83, 1, 83, '1', '1'),
(84, 1, 84, '1', '1'),
(85, 1, 85, '1', '1'),
(86, 1, 86, '1', '1'),
(87, 1, 87, '1', '1'),
(88, 1, 88, '1', '1'),
(89, 1, 89, '1', '1'),
(90, 1, 90, '1', '1'),
(91, 1, 91, '1', '1'),
(92, 1, 92, '1', '1'),
(93, 1, 93, '1', '1'),
(94, 1, 94, '1', '1'),
(95, 1, 95, '1', '1'),
(96, 1, 96, '1', '1'),
(97, 1, 97, '1', '1'),
(98, 1, 98, '1', '1'),
(99, 1, 99, '1', '1'),
(100, 1, 100, '1', '1'),
(101, 1, 101, '1', '1'),
(102, 1, 102, '1', '1'),
(103, 1, 103, '1', '1'),
(104, 1, 104, '1', '1'),
(105, 1, 105, '1', '1'),
(106, 1, 106, '1', '1'),
(107, 1, 107, '1', '1'),
(108, 1, 108, '1', '1'),
(109, 1, 109, '1', '1'),
(110, 1, 110, '1', '1'),
(111, 1, 111, '1', '1'),
(112, 1, 112, '1', '1'),
(113, 1, 113, '1', '1'),
(114, 1, 114, '1', '1'),
(115, 1, 115, '1', '1'),
(116, 1, 116, '1', '1'),
(117, 1, 117, '1', '1'),
(118, 1, 118, '1', '1'),
(133, 1, 133, '1', '1'),
(134, 1, 134, '1', '1');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `GRUP_OBMO_GRUP_ROL`
--
INSERT INTO `grup_obmo_grup_rol` (`gogr_id`, `grol_id`, `gmod_id`, `gogr_estado`, `gogr_estado_logico`) VALUES
(1, 1, 1, '1', '1'),
(2, 1, 2, '1', '1'),
(3, 1, 3, '1', '1'),
(4, 1, 4, '1', '1'),
(5, 1, 5, '1', '1'),
(6, 1, 6, '1', '1'),
(7, 1, 7, '1', '1'),
(8, 1, 8, '1', '1'),
(9, 1, 9, '1', '1'),
(10, 1, 10, '1', '1'),
(11, 1, 11, '1', '1'),
(12, 1, 12, '1', '1'),
(13, 1, 13, '1', '1'),
(14, 1, 14, '1', '1'),
(15, 1, 15, '1', '1'),
(16, 1, 16, '1', '1'),
(17, 1, 17, '1', '1'),
(18, 1, 18, '1', '1'),
(19, 1, 19, '1', '1'),
(20, 1, 20, '1', '1'),
(21, 1, 21, '1', '1'),
(22, 1, 22, '1', '1'),
(23, 1, 23, '1', '1'),
(24, 1, 24, '1', '1'),
(25, 1, 25, '1', '1'),
(26, 1, 26, '1', '1'),
(27, 1, 27, '1', '1'),
(28, 1, 28, '1', '1'),
(29, 1, 29, '1', '1'),
(30, 1, 30, '1', '1'),
(31, 1, 31, '1', '1'),
(32, 1, 32, '1', '1'),
(33, 1, 33, '1', '1'),
(34, 1, 34, '1', '1'),
(35, 1, 35, '1', '1'),
(36, 1, 36, '1', '1'),
(37, 1, 37, '1', '1'),
(38, 1, 38, '1', '1'),
(39, 1, 39, '1', '1'),
(40, 1, 40, '1', '1'),
(41, 1, 41, '1', '1'),
(42, 1, 42, '1', '1'),
(43, 1, 43, '1', '1'),
(44, 1, 44, '1', '1'),
(45, 1, 45, '1', '1'),
(46, 1, 46, '1', '1'),
(47, 1, 47, '1', '1'),
(48, 1, 48, '1', '1'),
(49, 1, 49, '1', '1'),
(50, 1, 50, '1', '1'),
(51, 1, 51, '1', '1'),
(52, 1, 52, '1', '1'),
(53, 1, 53, '1', '1'),
(54, 1, 54, '1', '1'),
(55, 1, 55, '1', '1'),
(56, 1, 56, '1', '1'),
(57, 1, 57, '1', '1'),
(58, 1, 58, '1', '1'),
(59, 1, 59, '1', '1'),
(60, 1, 60, '1', '1'),
(61, 1, 61, '1', '1'),
(62, 1, 62, '1', '1'),
(63, 1, 63, '1', '1'),
(64, 1, 64, '1', '1'),
(65, 1, 65, '1', '1'),
(66, 1, 66, '1', '1'),
(67, 1, 67, '1', '1'),
(68, 1, 68, '1', '1'),
(69, 1, 69, '1', '1'),
(70, 1, 70, '1', '1'),
(71, 1, 71, '1', '1'),
(72, 1, 72, '1', '1'),
(73, 1, 73, '1', '1'),
(74, 1, 74, '1', '1'),
(75, 1, 75, '1', '1'),
(76, 1, 76, '1', '1'),
(77, 1, 77, '1', '1'),
(78, 1, 78, '1', '1'),
(79, 1, 79, '1', '1'),
(80, 1, 80, '1', '1'),
(81, 1, 81, '1', '1'),
(82, 1, 82, '1', '1'),
(83, 1, 83, '1', '1'),
(84, 1, 84, '1', '1'),
(85, 1, 85, '1', '1'),
(86, 1, 86, '1', '1'),
(87, 1, 87, '1', '1'),
(88, 1, 88, '1', '1'),
(89, 1, 89, '1', '1'),
(90, 1, 90, '1', '1'),
(91, 1, 91, '1', '1'),
(92, 1, 92, '1', '1'),
(93, 1, 93, '1', '1'),
(94, 1, 94, '1', '1'),
(95, 1, 95, '1', '1'),
(96, 1, 96, '1', '1'),
(97, 1, 97, '1', '1'),
(98, 1, 98, '1', '1'),
(99, 1, 99, '1', '1'),
(100, 1, 100, '1', '1'),
(101, 1, 101, '1', '1'),
(102, 1, 102, '1', '1'),
(103, 1, 103, '1', '1'),
(104, 1, 104, '1', '1'),
(105, 1, 105, '1', '1'),
(106, 1, 106, '1', '1'),
(107, 1, 107, '1', '1'),
(108, 1, 108, '1', '1'),
(109, 1, 109, '1', '1'),
(110, 1, 110, '1', '1'),
(111, 1, 111, '1', '1'),
(112, 1, 112, '1', '1'),
(113, 1, 113, '1', '1'),
(114, 1, 114, '1', '1'),
(115, 1, 115, '1', '1'),
(116, 1, 116, '1', '1'),
(117, 1, 117, '1', '1'),
(118, 1, 118, '1', '1'),
(133, 1, 133, '1', '1'),
(134, 1, 134, '1', '1');