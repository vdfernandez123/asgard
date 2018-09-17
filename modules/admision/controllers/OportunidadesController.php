<?php

namespace app\modules\admision\controllers;

use Yii;
use app\modules\admision\models\Oportunidad;
use app\modules\admision\models\EstadoOportunidad;
use app\modules\admision\models\PersonaGestion;
use app\modules\admision\models\TipoOportunidadVenta;
use app\modules\academico\models\Modalidad;
use app\modules\academico\models\ModuloEstudio;
use app\modules\academico\models\UnidadAcademica;
use app\models\Empresa;
use app\models\Utilities;
use yii\helpers\ArrayHelper;

class OportunidadesController extends \app\components\CController
{
    public function actionIndex(){
        $per_id = @Yii::$app->session->get("PB_iduser");
        $modoportunidad = new Oportunidad();
        $modEstOport = new EstadoOportunidad();
        $estado_oportunidad = $modEstOport->consultarEstadOportunidad();

        $data = Yii::$app->request->get();

        if ($data['PBgetFilter']) {
            $arrSearch["agente"] = $data['agente'];
            $arrSearch["interesado"] = $data['interesado'];
            // $arrSearch["f_atencion"] = $data['f_atencion'];
            $arrSearch["estado"] = $data['estado'];
            $mod_gestion = $modoportunidad->consultarOportunidad($arrSearch, 2);
        } else {
            $mod_gestion = $modoportunidad->consultarOportunidad($arrSearch, 2);
        }
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
        }
        return $this->render('index', [
            'model' => $mod_gestion,
            'arr_estgestion' => ArrayHelper::map(array_merge([["id" => "0", "name" => "Todas"]], $estado_oportunidad), "id", "name"),
        ]);
    }

    public function actionView()
    {
        //$per_id = @Yii::$app->session->get("PB_perid");
        $pges_id = base64_decode($_GET["pges_id"]);
        $opor_id = base64_decode($_GET["opor_id"]);
        $persges_mod = new PersonaGestion();
        $modoportunidad = new Oportunidad();
        $modestudio = new ModuloEstudio();
        $respOportunidad = $modoportunidad->consultarOportunidadById($opor_id);
        $resptipocarrera = $modoportunidad->consultarNombreCarrera($respOportunidad["subcarera_id"]);
        $arr_carrerra1 = $modestudio->consultarEstudioEmpresa($respOportunidad["empresa"]); // tomar id de impresa        
        $contactManage = $persges_mod->consultarPersonaGestion($pges_id);
        $uni_aca_model = new UnidadAcademica();
        $modalidad_model = new Modalidad();
        $state_oportunidad_model = new EstadoOportunidad();
        $unidad_acad_data = $uni_aca_model->consultarUnidadAcademicas();
        $modalidad_data = $modalidad_model->consultarModalidad(0);
        $modcanal = new Oportunidad();
        $tipo_oportunidad_data = TipoOportunidadVenta::find()->select("tove_id AS id, tove_nombre AS name")->where(["tove_estado_logico" => "1", "tove_estado" => "1"])->asArray()->all();
        $state_oportunidad_data = $state_oportunidad_model->consultarEstadOportunidad();
        $academic_study_data = $modcanal->consultarCarreraModalidad(1, 1);
        $knowledge_channel_data = $modcanal->consultarConocimientoCanal(1);
        $empresa_mod = new Empresa();
        $empresa = $empresa_mod->getAllEmpresa();

        return $this->render('view', [
            'personalData' => $contactManage,
            'arr_linea_servicio' => ArrayHelper::map($unidad_acad_data, "id", "name"),
            'arr_modalidad' => ArrayHelper::map($modalidad_data, "id", "name"),
            'arr_tipo_oportunidad' => ArrayHelper::map($tipo_oportunidad_data, "id", "name"),
            'arr_state_oportunidad' => ArrayHelper::map($state_oportunidad_data, "id", "name"),
            'arr_academic_study' => ArrayHelper::map($academic_study_data, "id", "name"),
            "arr_knowledge_channel" => ArrayHelper::map($knowledge_channel_data, "id", "name"),
            "tipo_dni" => array("CED" => Yii::t("formulario", "DNI Document"), "PASS" => Yii::t("formulario", "Passport")),
            'arr_empresa' => ArrayHelper::map($empresa, "Ids", "Nombre"),
            'arr_oportunidad' => $respOportunidad,
            "arr_modulo_estudio" => ArrayHelper::map($arr_carrerra1, "id", "name"),
            "opo_id" => $opor_id,
            "pges_id" => $pges_id,
            "tipocarrera" => $resptipocarrera,
        ]);
    }

    public function actionEdit()
    {
        $opor_id = base64_decode($_GET["codigo"]);
        $pges_id = base64_decode($_GET["pgesid"]);
        //$per_id = @Yii::$app->session->get("PB_perid");
        $persges_mod = new PersonaGestion();
        $uni_aca_model = new UnidadAcademica();
        $modalidad_model = new Modalidad();
        $modTipoOportunidad = new TipoOportunidadVenta();
        $state_oportunidad_model = new EstadoOportunidad();
        $modoportunidad = new Oportunidad();
        $empresa_mod = new Empresa();
        $modestudio = new ModuloEstudio();
        $contactManage = $persges_mod->consultarPersonaGestion($pges_id);
        $respOportunidad = $modoportunidad->consultarOportunidadById($opor_id);
        $unidad_acad_data = $uni_aca_model->consultarUnidadAcademicas();
        $modalidad_data = $modalidad_model->consultarModalidad(0);
        $tipo_oportunidad_data = $modTipoOportunidad->consultarOporxUnidad(1);
        $state_oportunidad_data = $state_oportunidad_model->consultarEstadOportunidad();
        $academic_study_data = $modoportunidad->consultarCarreraModalidad(1, 1);
        $knowledge_channel_data = $modoportunidad->consultarConocimientoCanal(1);
        $arr_carrerra2 = $modoportunidad->consultarTipoCarrera();
        $arr_subcarrera = $modoportunidad->consultarSubCarrera($respOportunidad["tcar_id"]);
        $arr_moduloEstudio = $modestudio->consultarEstudioEmpresa($respOportunidad["empresa"]); // tomar id de impresa
        $respRolPerAutentica = $modoportunidad->consultarAgenteAutenticado($per_id);
        $empresa = $empresa_mod->getAllEmpresa();
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if (isset($data["getmodalidad"])) {
                $modalidad = $modalidad_model->consultarModalidad($data["ninter_id"]);
                $message = array("modalidad" => $modalidad);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
            if (isset($data["getoportunidad"])) {
                $oportunidad = $modTipoOportunidad->consultarOporxUnidad($data["unidada"]);
                $message = array("oportunidad" => $oportunidad);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
            if (isset($data["getsubcarrera"])) {
                $subcarrera = $modoportunidad->consultarSubCarrera($data["car_id"]);
                $message = array("subcarrera" => $subcarrera);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
            if (isset($data["getcarrera"])) {
                if ($data["unidada"] < 3) {
                    $carrera = $modoportunidad->consultarCarreraModalidad($data["unidada"], $data["moda_id"]);
                } else {
                    $carrera = $modestudio->consultarCursoModalidad($data["unidada"], $data["moda_id"]);
                }
                $message = array("carrera" => $carrera);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
        }

        //if (($respOportunidad["per_id"] == $per_id) || ($respRolPerAutentica["rol"] == 'SUP')) {        
        return $this->render('edit', [
            'personalData' => $contactManage,
            'dataOportunidad' => $respOportunidad,
            'arr_linea_servicio' => ArrayHelper::map($unidad_acad_data, "id", "name"),
            'arr_modalidad' => ArrayHelper::map($modalidad_data, "id", "name"),
            'arr_tipo_oportunidad' => ArrayHelper::map($tipo_oportunidad_data, "id", "name"),
            'arr_state_oportunidad' => ArrayHelper::map($state_oportunidad_data, "id", "name"),
            'arr_academic_study' => ArrayHelper::map($academic_study_data, "id", "name"),
            "arr_knowledge_channel" => ArrayHelper::map($knowledge_channel_data, "id", "name"),
            "tipo_dni" => array("CED" => Yii::t("formulario", "DNI Document"), "PASS" => Yii::t("formulario", "Passport")),
            "arr_carrerra2" => ArrayHelper::map($arr_carrerra2, "id", "name"),
            "arr_subcarrerra" => ArrayHelper::map($arr_subcarrera, "id", "name"),
            'arr_empresa' => ArrayHelper::map($empresa, "Ids", "Nombre"),
            'arr_moduloEstudio' => ArrayHelper::map($arr_moduloEstudio, "Ids", "Nombre"),
            'opo_id' => $opor_id,
            'pges_id' => $pges_id,
                        //'per_id' => $per_id,
        ]);
    }

    public function actionNewoportunidad()
    {
        $per_id = @Yii::$app->session->get("PB_perid");
        $pges_id = base64_decode($_GET["pgid"]);
        $persges_mod = new PersonaGestion();
        $contactManage = $persges_mod->consultarPersonaGestion($pges_id);
        $uni_aca_model = new UnidadAcademica();
        $modalidad_model = new Modalidad();
        $modTipoOportunidad = new TipoOportunidadVenta();
        $state_oportunidad_model = new EstadoOportunidad();
        //$academic_study = new EstudioAcademico();
        $unidad_acad_data = $uni_aca_model->consultarUnidadAcademicas();
        $modalidad_data = $modalidad_model->consultarModalidad(0);
        $modcanal = new Oportunidad();
        $tipo_oportunidad_data = $modTipoOportunidad->consultarOporxUnidad(1);
        $state_oportunidad_data = $state_oportunidad_model->consultarEstadOportunidad();
        $academic_study_data = $modcanal->consultarCarreraModalidad(1, 1);
        $knowledge_channel_data = $modcanal->consultarConocimientoCanal(1);
        $empresa_mod = new Empresa();
        $empresa = $empresa_mod->getAllEmpresa();
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if (isset($data["getmodalidad"])) {
                $modalidad = $modalidad_model->consultarModalidad($data["nint_id"]);
                $message = array("modalidad" => $modalidad);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
            if (isset($data["getoportunidad"])) {
                $oportunidad = $modTipoOportunidad->consultarOporxUnidad($data["unidada"]);
                $message = array("oportunidad" => $oportunidad);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
            if (isset($data["getsubcarrera"])) {
                $subcarrera = $modcanal->consultarSubCarrera($data["car_id"]);
                $message = array("subcarrera" => $subcarrera);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);

            }
            if (isset($data["getcarrera"])) {
                $carrera = $modcanal->consultarCarreraModalidad($data["unidada"], $data["moda_id"]);
                $message = array("carrera" => $carrera);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
            }
        }
        $arr_carrerra2 = $modcanal->consultarTipoCarrera();
        $arr_subcarrera = $modcanal->consultarSubCarrera(1);
        return $this->render('new', [
            'personalData' => $contactManage,
            'arr_linea_servicio' => ArrayHelper::map($unidad_acad_data, "id", "name"),
            'arr_modalidad' => ArrayHelper::map($modalidad_data, "id", "name"),
            'arr_tipo_oportunidad' => ArrayHelper::map($tipo_oportunidad_data, "id", "name"),
            'arr_state_oportunidad' => ArrayHelper::map($state_oportunidad_data, "id", "name"),
            'arr_academic_study' => ArrayHelper::map($academic_study_data, "id", "name"),
            "arr_knowledge_channel" => ArrayHelper::map($knowledge_channel_data, "id", "name"),
            "tipo_dni" => array("CED" => Yii::t("formulario", "DNI Document"), "PASS" => Yii::t("formulario", "Passport")),
            "arr_carrerra2" => ArrayHelper::map($arr_carrerra2, "id", "name"),
            "arr_subcarrerra" => ArrayHelper::map($arr_subcarrera, "id", "name"),
            'arr_empresa' => ArrayHelper::map($empresa, "Ids", "Nombre"),
        ]);
    }

    public function actionSave()
    {
        $per_id = @Yii::$app->session->get("PB_perid"); //ESTO DESCOMENTAR AL FINAL
        //$per_id = 5;
        $mod_gestion = new Oportunidad();
        //$scli_id = 2;
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $pges_id = base64_decode($data["id_pgest"]);
            $empresa = $data["empresa"];
            $modulo_estudio = null;
            $unidad_academica = $data["id_unidad_academica"];
            $modalidad = $data["id_modalidad"];
            $tipo_oportunidad = $data["id_tipo_oportunidad"];
            $estado_oportunidad = $data["id_estado_oportunidad"];
            $estudio_academico = $data["id_estudio_academico"];
            $canal_conocimiento = $data["canal_conocimiento"];
            $sub_carrera = ($data["sub_carrera"] != 0) ? $data["sub_carrera"] : null;
            $usuario = @Yii::$app->user->identity->usu_id;
            $con = \Yii::$app->db_crm;
            $agente = $mod_gestion->consultarAgenteAutenticado($per_id); //QUITAR 1 AGENTE ADMIN
            //$emp_id, $mest_id, $eaca_id, $uaca_id, $mod_id, $eopo_id 
            //$nombreoportunidad = $mod_gestion->consultarNombreOportunidad($empresa, $modulo_estudio, $estudio_academico, $unidad_academica, $modalidad, $estado_oportunidad);
            $nombreoportunidad = $mod_gestion->consultarNombreOportunidad($empresa, $modulo_estudio, $estudio_academico, $unidad_academica, $modalidad, $estado_oportunidad);

            $transaction = $con->beginTransaction();
            try {
                $gcrm_codigo = $mod_gestion->consultarUltimoCodcrm();
                //$per_gest = $mod_pergestion->consultarPersonaGestion($pges_id);
                $codportunidad = 1 + $gcrm_codigo;
                $fecha_registro = date(Yii::$app->params["dateTimeByDefault"]);
                if ($agente > 0) {
                    //if ($nombreoportunidad["eopo_nombre"] == '' || $nombreoportunidad["eopo_nombre"] == 'Ganada' || $nombreoportunidad["eopo_nombre"] == 'Perdida') {
                    if ($nombreoportunidad["Ids"] == '' || $nombreoportunidad["Ids"] == '4' || $nombreoportunidad["Ids"] == '5') {
                        $res_gestion = $mod_gestion->insertarOportunidad($codportunidad, $empresa, $pges_id, $modulo_estudio, $estudio_academico, $unidad_academica, $modalidad, $tipo_oportunidad, $sub_carrera, $canal_conocimiento, $estado_oportunidad, $fecha_registro, $agente, $usuario);
                        if ($res_gestion) {
                            $opo_id = $res_gestion;
                            $padm_id = $agente;
                            $eopo_id = $estado_oportunidad; // En curso por defecto
                            $bact_fecha_registro = $fecha_registro;
                            $bact_fecha_proxima_atencion = $fecha_registro;

                            $bact_descripcion = (!$nombreoportunidad["Ids"]) ? 'Inicio de Operaciones' : '';
                            $res_actividad = $mod_gestion->insertarActividad($opo_id, $usuario, $padm_id, $eopo_id, $bact_fecha_registro, $bact_descripcion, $bact_fecha_proxima_atencion);
                            if ($res_actividad) {
                                $transaction->commit();
                                $message = array(
                                    "wtmessage" => Yii::t("notificaciones", "La infomación ha sido grabada. "),
                                    "title" => Yii::t('jslang', 'Success'),
                                );
                                return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                            } else {
                                $transaction->rollback();
                                $message = array(
                                    "wtmessage" => Yii::t("notificaciones", "Error al grabar"),
                                    "title" => Yii::t('jslang', 'Bad Request'),
                                );
                                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                            }

                        } else {
                            $transaction->rollback();
                            $message = array(
                                "wtmessage" => Yii::t("notificaciones", "Error al grabar"),
                                "title" => Yii::t('jslang', 'Bad Request'),
                            );
                            return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                        }
                    } else {
                        $transaction->rollback();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "Error al grabar, Existe una oportunidad con estos datos."),
                            "title" => Yii::t('jslang', 'Bad Request'),
                        );
                        return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                    }
                } else {
                    $transaction->rollback();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Error al grabar. Usuario no cuenta con permisos"),
                        "title" => Yii::t('jslang', 'Bad Request'),
                    );
                    return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => Yii::t("notificaciones", "Error al grabar." . $mensaje),
                    "title" => Yii::t('jslang', 'Bad Request'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
            }
            return;
        }
    }

    public function actionUpdate()
    {
        //$per_id = @Yii::$app->session->get("PB_perid");
        $mod_oportunidad = new Oportunidad();
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();

            $opo_id = base64_decode($data["opo_id"]);
            $pges_id = base64_decode($data["pgid"]);
            $empresa = $data["empresa"];
            $mest_id = null;
            $eaca_id = null;
            $unidad_academica = $data["uaca_id"];
            $modalidad = $data["modalidad"];
            $tipo_oportunidad = $data["tipoOport"];
            $estado_oportunidad = $data["estado"];
            $carrera_estudio = $data["carreraestudio"];
            if ($unidad_academica < 3) {
                $eaca_id = $carrera_estudio;
            } else {
                $mest_id = $carrera_estudio;
            }
            $canal_conocimiento = $data["canal"];
            $sub_carrera = $data["subcarrera"];
            $usuario = @Yii::$app->user->identity->usu_id;

            $con = \Yii::$app->db_crm;
            $transaction = $con->beginTransaction();
            try {
                $nombreoportunidad = $mod_oportunidad->consultarNombreOportunidad($empresa, $mest_id, $eaca_id, $unidad_academica, $modalidad, $estado_oportunidad);
                //$mensaje = 'opo:' . $opo_id . ' mest_id:' . $mest_id . ' eaca_id:' . $eaca_id . ' unidad:' . $unidad_academica . ' modalidad:' . $modalidad . ' tipoOpor:' . $tipo_oportunidad . ' subCarr:' . $sub_carrera . ' Canal:' . $canal_conocimiento . ' estado:' . $estado_oportunidad . ' usuario:' . $usuario;
                if ($nombreoportunidad["eopo_nombre"] == '' || $nombreoportunidad["eopo_nombre"] == 'Ganada' || $nombreoportunidad["eopo_nombre"] == 'Perdida') {
                    $respuesta = $mod_oportunidad->modificarOportunixId($empresa, $opo_id, $mest_id, $eaca_id, $unidad_academica, $modalidad, $tipo_oportunidad, $sub_carrera, $canal_conocimiento, null, null, null, $usuario, null);
                    if ($respuesta) {
                        $transaction->commit();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "La información ha sido grabada. "),
                            "title" => Yii::t('jslang', 'Success'),
                        );
                        return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                    } else {
                        $transaction->rollback();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "Error al grabar." . $mensaje),
                            "title" => Yii::t('jslang', 'Bad Request'),
                        );
                        return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                    }
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => Yii::t("notificaciones", "Error al grabar." . $mensaje),
                    "title" => Yii::t('jslang', 'Bad Request'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
            }
            return;
        }
    }
}