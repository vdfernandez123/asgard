INSERT INTO `db_academico`.`planificacion` (`pla_id`, `mod_id`, `per_id`, `pla_fecha_inicio`, `pla_fecha_fin`, `pla_periodo_academico`, `pla_path`, `pla_estado`, `pla_fecha_creacion`, `pla_usuario_modifica`, `pla_fecha_modificacion`, `pla_estado_logico`) VALUES ('1', '1', '1', '2020-04-06 00:00:00', '2020-06-20 00:00:00', 'Abril-Agosto 2020', 'planificacion/planificacion-1-jefedesarrollo@uteg.edu.ec-1585678774.xlsx', '1', '2020-03-31 13:39:57', NULL, NULL, '1');
INSERT INTO `db_academico`.`planificacion` (`pla_id`, `mod_id`, `per_id`, `pla_fecha_inicio`, `pla_fecha_fin`, `pla_periodo_academico`, `pla_path`, `pla_estado`, `pla_fecha_creacion`, `pla_usuario_modifica`, `pla_fecha_modificacion`, `pla_estado_logico`) VALUES ('2', '2', '1', '2020-04-06 00:00:00', '2020-06-18 00:00:00', 'Abril-Agosto 2020', 'planificacion/planificacion-2-jefedesarrollo@uteg.edu.ec-1585678774.xlsx', '1', '2020-03-31 13:50:00', NULL, NULL, '1');
INSERT INTO `db_academico`.`planificacion` (`pla_id`, `mod_id`, `per_id`, `pla_fecha_inicio`, `pla_fecha_fin`, `pla_periodo_academico`, `pla_path`, `pla_estado`, `pla_fecha_creacion`, `pla_usuario_modifica`, `pla_fecha_modificacion`, `pla_estado_logico`) VALUES ('3', '3', '1', '2020-04-04 00:00:00', '2020-06-20 00:00:00', 'Abril-Agosto 2020', 'planificacion/planificacion-3-jefedesarrollo@uteg.edu.ec-1585678774.xlsx', '1', '2020-03-31 13:51:29', NULL, NULL, '1');
INSERT INTO `db_academico`.`planificacion` (`pla_id`, `mod_id`, `per_id`, `pla_fecha_inicio`, `pla_fecha_fin`, `pla_periodo_academico`, `pla_path`, `pla_estado`, `pla_fecha_creacion`, `pla_usuario_modifica`, `pla_fecha_modificacion`, `pla_estado_logico`) VALUES ('4', '4', '1', '2020-04-04 00:00:00', '2020-06-20 00:00:00', 'Abril-Agosto 2020', 'planificacion/planificacion-4-jefedesarrollo@uteg.edu.ec-1585678774.xlsx', '1', '2020-03-31 14:01:35', NULL, NULL, '1');

insert into db_academico.registro_configuracion (rco_id, pla_id, rco_fecha_inicio, rco_fecha_fin, rco_num_bloques, rco_estado, rco_estado_logico) values
(1, 1, '2020-03-25 00:00:00', '2020-06-20 23:59:59', 1, 1, 1),
(2, 2, '2020-03-25 00:00:00', '2020-06-18 23:59:59', 1, 1, 1),
(3, 3, '2020-03-25 00:00:00', '2020-06-20 23:59:59', 1, 1, 1),
(4, 4, '2020-03-25 00:00:00', '2020-06-20 23:59:59', 1, 1, 1);