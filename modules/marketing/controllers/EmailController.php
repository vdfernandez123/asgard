<?php

namespace app\modules\marketing\controllers;

use Yii;
use app\models\Utilities;
use yii\helpers\ArrayHelper;
use app\models\Empresa;
use app\modules\admision\models\Oportunidad;
use app\modules\academico\models\ModuloEstudio;
use app\modules\marketing\models\Lista;
use app\modules\academico\Module as academico;
use app\modules\financiero\Module as financiero;
use app\modules\marketing\Module as marketing;
use app\modules\admision\Module as crm;
use app\modules\marketing\models\Suscriptor;
use app\webservices\WsMailChimp;
use app\models\ExportFile;
use \app\models\Persona;
use \app\modules\admision\models\PersonaGestion;
use \app\modules\academico\models\EstudioAcademicoAreaConocimiento;

academico::registerTranslations();
financiero::registerTranslations();
crm::registerTranslations();

class EmailController extends \app\components\CController {

    public function actionIndex() {
        $mod_lista = new Lista();
        $data = Yii::$app->request->get();
        if ($data['PBgetFilter']) {
            $arrSearch["lista"] = $data['lista'];
            \app\models\Utilities::putMessageLogFile('si hay filtro');
            $resp_lista = $mod_lista->consultarLista($arrSearch);
        } else {
            $resp_lista = $mod_lista->consultarLista();
        }
        return $this->render('index', [
                    'model' => $resp_lista]);
    }
    public function actionCargarmailchimp() {
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $lis_id = base64_decode($data['lis_id']);
            $su_mod=new Suscriptor();
            $lsus_id=$su_mod->consultarSuscrito_rxlista($lis_id);
            //Aqui se va a sucribir a cada suscriptor en al lista de mailchimp.            
        }
    }
    public function actionAsignar() {
        $mod_lista = new Lista();
        $arrSearch = array();
        $lis_id = base64_decode($_GET['lis_id']);
        $per_id = @Yii::$app->session->get("PB_perid");
        $mod_sb = new Suscriptor();
        $lista_model = $mod_lista->consultarListaXID($lis_id);
        $noescritos = $mod_sb->consultarNumnoescritos($lis_id);
        $susbs_lista = $mod_sb->consultarSuscriptoresxLista($arrSearch, $lis_id);
        $fecha_crea = date(Yii::$app->params["dateTimeByDefault"]);
        $su_id = 0;
        $error = 0;
        $mensaje = "";
        $estado_cambio = 1;
        \app\models\Utilities::putMessageLogFile("Llego a la accion asignar");
        $data = Yii::$app->request->get();
        if (isset($data["PBgetFilter"])) {
            $arrSearch["estado"] = $data['estado'];
            if ($data["estado"] == '1') {
                $susbs_lista = $mod_sb->consultarSuscriptoresxLista($arrSearch, $lis_id, 1);
                return $this->render('asignar_grid', [
                            "model" => $susbs_lista,
                ]);
            } elseif ($data["estado"] == '2') {
                $susbs_lista = $mod_sb->consultarSuscriptoresxLista($arrSearch, $lis_id, 0);
                return $this->render('asignar_grid', [
                            "model" => $susbs_lista,
                ]);
            }
        }
        if (Yii::$app->request->isAjax) {
            $con = \Yii::$app->db_mailing;
            $data = Yii::$app->request->post();
            $lista_model = $mod_lista->consultarListaXID($data["list_id"]);
            if ($data["accion"] == 'sc') {
                $ps_id = $data["psus_id"];
                $per_tipo = $data["per_tipo"];
                $list_id = $data["list_id"];
                $data_source = array();
                $per_id = null;
                $pge_id = null;
                if ($per_tipo == 1) {
                    $per_id = $ps_id;
                }if ($per_tipo == 2) {
                    $pge_id = $ps_id;
                }
                $esus = $mod_sb->consultarSuscriptoxPerylis($per_id, $list_id);
                if ($esus["inscantes"] > 0) {
                    $su_id = $mod_sb->updateSuscripto($per_id, $list_id, $estado_cambio);
                    if ($su_id > 0) {
                        $mensaje = "El contacto ha sido asignado a la lista satisfactoriamente";
                        $error = 0;
                    } else {
                        $mensaje = "Error: El suscritor no fue guardado.";
                        $error++;
                    }
                } else {
                    $keys = ['per_id', 'pges_id', 'sus_estado', 'sus_estado_logico'];
                    $parametros = [$per_id, $pge_id, 1, 1];
                    $su_id = $mod_sb->insertarSuscritor($con, $parametros, $keys, 'suscriptor');
                    if ($su_id > 0) {
                        $key = ['lis_id', 'sus_id', 'lsus_estado', 'lsus_fecha_creacion', 'lsus_estado_logico'];
                        $parametro = [$list_id, $su_id, 1, $fecha_crea, 1];
                        $lsu_id = $mod_sb->insertarListaSuscritor($con, $parametro, $key, 'lista_suscriptor');
                        if ($lsu_id > 0) {
                            $mensaje = "El contacto ha sido asignado a la lista satisfactoriamente";
                        } else {
                            $mensaje = "Error: El suscritor no fue guardado.";
                            $error++;
                        }
                    } else {
                        $mensaje = "Error: El suscritor no fue guardado.";
                        $error++;
                    }
                }
                //Aqui se va a consultar los estudios referenciados
                $mod_eaca_acon = new EstudioAcademicoAreaConocimiento();
                $est_rel = $mod_eaca_acon->consultarEstudiosRelacionadoXEstudioId($lista_model['eaca_id']);
                if ($error == 0) {
                    $message = array(
                        "wtmessage" => Yii::t("formulario", $mensaje),
                        "title" => Yii::t('jslang', 'Success'),
                        "listas" => $est_rel,
                        "sus_id" => $su_id,
                    );
                } else {
                    $message = array(
                        "wtmessage" => Yii::t("formulario", $mensaje),
                        "title" => Yii::t('jslang', 'Success'),
                    );
                }
                return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
            } else if (trim($data["accion"]) == 'lis_rel') {
                $list_id = $data["list_id"];
                $list_ids = array();
                if (isset($data['list_ids'])) {
                    $list_ids = explode(",", $data['list_ids']);
                }
                \app\models\Utilities::putMessageLogFile("listas relacoinadas:");
                ;
                \app\models\Utilities::putMessageLogFile($list_ids);
                $sus_id = $data['sus_id'];
                $i = 0;
                if (count($list_ids) > 0) {
                    while ($i < count($list_ids)) {
                        if (!empty($list_ids[$i])) {
                            $key = ['lis_id', 'sus_id', 'lsus_estado', 'lsus_fecha_creacion', 'lsus_estado_logico'];
                            $parametro = [$list_ids[$i], $sus_id, 1, $fecha_crea, 1];
                            $lsu_id = $mod_sb->insertarListaSuscritor($con, $parametro, $key, 'lista_suscriptor');
                            if ($lsu_id > 0) {
                                $mensaje = $mensaje . " El suscritor fue guardado en la lista " . $list_ids[$i]['lis_nombre'] . "<br/>";
                            } else {
                                $mensaje = $mensaje . " El suscritor no fue guardado en la lista " . $list_ids[$i]['lis_nombre'] . "<br/>";
                            }
                        }
                        $i = $i + 1;
                    }
                } else {
                    $mensaje = $mensaje . " No hay listas para dicho suscrito <br/>";
                }

                $message = array(
                    "wtmessage" => Yii::t("formulario", $mensaje),
                    "title" => Yii::t('jslang', 'Success'),
                    "rederict" => Yii::$app->response->redirect(['/marketing/email/asignar?lis_id=' . $list_id]),
                );
                return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
            }
        }
        return $this->render('asignar', [
                    'arr_lista' => $lista_model,
                    'arr_estado' => array("Seleccionar", "Subscrito", "No Subscrito"),
                    'model' => $susbs_lista,
                    'noescritos' => $noescritos['noescritos'], //
        ]);
    }

    public function actionProgramacion() {
        $mod_lista = new Lista();
        $muestra = 0;
        $lista = base64_decode($_GET["lisid"]);
        $plantilla = $mod_lista->consultarListaTemplate($lista);
        $ingreso = $mod_lista->consultarIngresoProgramacion($lista, $plantilla['id']);
        $lista_model = $mod_lista->consultarListaXID($lista);
        $webs_mailchimp = new WsMailChimp();
        $arr_templates = $webs_mailchimp->getAllTemplates();
        if (empty($ingreso)) {
            $muestra = 1;
            return $this->render('programacion', [
                        "muestra" => $muestra,
                        "arr_ingreso" => $ingreso,
                        'arr_lista' => $lista_model,
                        'arr_templates' => ArrayHelper::map($arr_templates["templates"], "id", "name")
            ]);
        } else {
            return $this->render('viewprograma', [
                        "muestra" => $muestra,
                        "arr_ingreso" => $ingreso,
                        'arr_lista' => $lista_model,
                        'arr_templates' => ArrayHelper::map($arr_templates["templates"], "id", "name")
            ]);
        }
    }

    public function actionDelete() {
        $mod_lista = new Lista();
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $lis_id = $data["lis_id"];
            $con = \Yii::$app->db_mailing;
            $transaction = $con->beginTransaction();
            try {
                //consultar la lista.                  
                $resp_consulta = $mod_lista->consultarListaXID($lis_id);
                $webs_mailchimp = new WsMailChimp();
                $conMailch = $webs_mailchimp->deleteList($resp_consulta["lis_codigo"]);
                if ($resp_consulta["num_suscr"] > 0) {
                    $resp_listsuscriptor = $mod_lista->inactivaListaSuscriptor($lis_id);
                    if ($resp_listsuscriptor) {
                        $resp_lista = $mod_lista->inactivaLista($lis_id);
                        if ($resp_lista) {
                            $exito = '1';
                        }
                    }
                } else {
                    $resp_lista = $mod_lista->inactivaLista($lis_id);
                    if ($resp_lista) {
                        $exito = '1';
                    }
                }
                if ($exito) {
                    //Eliminar en mailchimp                                        
                    $transaction->commit();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Se ha eliminado la lista exitosamente."),
                        "title" => Yii::t('jslang', 'Success'),
                    );
                    return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                } else {
                    $transaction->rollback();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Error al eliminar. " . $mensaje),
                        "title" => Yii::t('jslang', 'Success'),
                    );
                    return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => Yii::t("notificaciones", "Error al eliminar. " . $mensaje),
                    "title" => Yii::t('jslang', 'Success'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
            }
        }
    }

    public function actionGuardarprogramacion() {
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $lista = base64_decode($data["lista"]);
            $plantilla = $data["pla_id"];
            $fecinicio = $data["fecha_inicio"];
            $fecfin = $data["fecha_fin"];
            $horenvio = $data["hora_envio"];
            $fecha_registro = date(Yii::$app->params["dateTimeByDefault"]);
            $usuario = @Yii::$app->user->identity->usu_id;
            $con = \Yii::$app->db_mailing;
            $transaction = $con->beginTransaction();

            try {
                $mod_lista = new Lista();
                //$plantilla = $mod_lista->consultarListaTemplate($lista);
                //$ingreso = $mod_lista->consultarIngresoProgramacion($lista, $plantilla['id']);
                $ingreso = $mod_lista->consultarIngresoProgramacion($lista, $plantilla);
                if (empty($ingreso)) {
                    //$resp_programacion = $mod_lista->insertarProgramacion($lista, $plantilla['id'], $fecinicio, $fecfin, $horenvio, $usuario, $fecha_registro);
                    $resp_programacion = $mod_lista->insertarProgramacion($lista, $plantilla, $fecinicio, $fecfin, $horenvio, $usuario, $fecha_registro);
                    if ($resp_programacion) {
                        for ($i = 1; $i < 8; $i++) {
                            $dia = $data["check_dia_" . $i];
                            if ($dia > 0) {
                                $resp_dia = $mod_lista->insertarDiaProgra($resp_programacion, $dia, $fecha_registro);
                            }
                        }
                        $exito = 1;
                    }
                    if ($exito) {
                        $transaction->commit();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "La infomación ha sido grabada. "),
                            "title" => Yii::t('jslang', 'Success'),
                        );
                        echo Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                    } else {
                        $transaction->rollback();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "Error al grabar." . $mensaje),
                            "title" => Yii::t('jslang', 'Error'),
                        );
                        echo Utilities::ajaxResponse('NO_OK', 'Error', Yii::t("jslang", "Error"), false, $message);
                    }
                } else {
                    $transaction->rollback();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Ya se encuentra una programación ingresada para esta lista."),
                        "title" => Yii::t('jslang', 'Error'),
                    );
                    echo Utilities::ajaxResponse('NO_OK', 'Error', Yii::t("jslang", "Error"), false, $message);
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => $ex->getMessage(), Yii::t("notificaciones", "Error al grabar."),
                    "title" => Yii::t('jslang', 'Error'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Error"), true, $message);
            }
        }
    }

    public function actionNew() {
        $empresa_mod = new Empresa();
        $oportunidad_mod = new Oportunidad();
        $estudio_mod = new ModuloEstudio();
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if (isset($data["getcarrera"])) {
                if ($data["emp_id"] == 1) {
                    $arreglo_carrerra = $oportunidad_mod->consultarCarreras();
                } else {
                    $arreglo_carrerra = $estudio_mod->consultarEstudioEmpresa($data["emp_id"]); // tomar id de impresa        
                }
                $message = array("carrera" => $arreglo_carrerra);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
            }
            if (isset($data["getempresa"])) {
                $resp_empresa = $empresa_mod->consultarEmpresaXid($data["emp_id"]);
                $message = array($resp_empresa);
                echo Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
                return;
            }
            if (isset($data["getcorreo"])) {
                $resp_correo = $empresa_mod->consultarCorreoXempresa($data["emp_id"]);
                $message = array("correo" => $resp_correo);
                echo Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
                return;
            }
        }
        $arreglo_empresa = $empresa_mod->getAllEmpresa();
        $arreglo_carrerra = $oportunidad_mod->consultarCarreras();
        $arreglo_correo = $empresa_mod->consultarCorreoXempresa(1);
        return $this->render('new', [
                    "arr_empresa" => ArrayHelper::map(array_merge([["id" => "0", "value" => Yii::t("formulario", "Select")]], $arreglo_empresa), "id", "value"),
                    "arr_carrera" => ArrayHelper::map(array_merge([["id" => "0", "name" => Yii::t("formulario", "Select")]], $arreglo_carrerra), "id", "name"),
                    "arr_correo" => ArrayHelper::map(array_merge([["id" => "0", "name" => Yii::t("formulario", "Select")]], $arreglo_correo), "id", "name"),
        ]);
    }

    public function actionGuardarlista() {
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $emp_id = $data["emp_id"];
            $nombre_lista = ucwords(mb_strtolower($data["nombre_lista"]));
            $nombre_empresa = ucwords(mb_strtolower($data["nombre_empresa"]));
            $nombre_contacto = ucwords(mb_strtolower($data["txt_nombre_contacto"]));
            $correo_contacto = strtolower($data["txt_correo_contacto"]);
            $ecor_id = $data["correo_id"];
            $asunto = ucwords(mb_strtolower($data["txt_asunto"]));
            $pais = ucwords(mb_strtolower($data["pais_texto"]));
            $ciudad = ucwords(mb_strtolower($data["ciudad_texto"]));
            $provincia = ucwords(mb_strtolower($data["provincia_texto"]));
            $direccion1 = ucwords(mb_strtolower($data["direccion1"]));
            $direccion2 = ucwords(mb_strtolower($data["direccion2"]));
            $telefono = $data["telefono"];
            $codigo_postal = ucwords(mb_strtolower($data["codigo_postal"]));
            $eaca_id = null;
            $mest_id = null;
            $opcion = $data["opcion"];
            $list_id = base64_decode($data["list_id"]);
            if ($emp_id != 1) {
                $mest_id = $data["carrera_id"];
            } else {
                $eaca_id = $data["carrera_id"];
            }

            $con = \Yii::$app->db_mailing;
            $transaction = $con->beginTransaction();
            try {
                $contacto = array(
                    "company" => $nombre_empresa,
                    "address1" => $direccion1,
                    "address2" => $direccion2,
                    "city" => $ciudad,
                    "state" => $provincia,
                    "zip" => $codigo_postal,
                    "country" => $pais,
                    "phone" => $telefono,
                );
                $lista = new Lista();
                $resp_consulta = $lista->consultarListaXnombre($nombre_lista);
                if (($resp_consulta["existe"] != 'S') or ( $resp_consulta["lis_id"] == $list_id)) {
                    //Grabar en mailchimp    
                    $webs_mailchimp = new WsMailChimp();
                    if ($opcion == 'N') { // Ingreso
                        $conLista = $webs_mailchimp->newList($nombre_lista, $nombre_contacto, $correo_contacto, $asunto, $contacto, "es");
                        if ($conLista) {
                            //Grabar en asgard                    
                            $resp_lista = $lista->insertarLista($conLista["id"], $eaca_id, $mest_id, $emp_id, $nombre_lista, $ecor_id, $nombre_contacto, $pais, $provincia, $ciudad, $direccion1, $direccion2, $telefono, $codigo_postal, $asunto);
                            if ($resp_lista) {
                                $exito = 1;
                            }
                        }
                    } else {  //Modificación     
                        \app\models\Utilities::putMessageLogFile('antes de editar mailchimp');
                        \app\models\Utilities::putMessageLogFile('codigo:' . $resp_consulta["lis_codigo"]);
                        \app\models\Utilities::putMessageLogFile('lista:' . $nombre_lista);
                        \app\models\Utilities::putMessageLogFile('contacto:' . $contacto);
                        \app\models\Utilities::putMessageLogFile('nombre contacto:' . $nombre_contacto);
                        \app\models\Utilities::putMessageLogFile('correo contacto:' . $correo_contacto);
                        \app\models\Utilities::putMessageLogFile('asunto:' . $asunto);
                        $conLista = $webs_mailchimp->editList($resp_consulta["lis_codigo"], $nombre_lista, $contacto, "permiso", $nombre_contacto, $correo_contacto, $asunto, "es", true);
                        if ($conLista) {
                            \app\models\Utilities::putMessageLogFile('conLista:' . $conLista);
                            //Grabar en asgard                    
                            $resp_lista = $lista->modificarLista($list_id, $eaca_id, $mest_id, $emp_id, $nombre_lista, $ecor_id, $nombre_contacto, $pais, $provincia, $ciudad, $direccion1, $direccion2, $telefono, $codigo_postal, $asunto);
                            if ($resp_lista) {
                                $exito = 1;
                            }
                        }
                    }
                } else {
                    $mensaje = 'Ya se encuentra creada una lista con el mismo nombre.';
                }
                if ($exito) {
                    $transaction->commit();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "La infomación ha sido grabada. "),
                        "title" => Yii::t('jslang', 'Success'),
                    );
                    echo Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                } else {
                    $transaction->rollback();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Error al grabar. " . $mensaje),
                        "title" => Yii::t('jslang', 'Success'),
                    );
                    echo Utilities::ajaxResponse('NO_OK', 'Error', Yii::t("jslang", "Error"), false, $message);
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => $ex->getMessage(), Yii::t("notificaciones", "Error al grabar. " . $mensaje),
                    "title" => Yii::t('jslang', 'Error'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Error"), true, $message);
            }
        }
    }

    public function actionUpdateprogramacion() {
        $mod_lista = new Lista();
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $lista = base64_decode($data["lista"]);
            $fecinicio = $data["fecha_inicio"];
            $fecfin = $data["fecha_fin"];
            $horenvio = $data["hora_envio"];
            $template = $data["pla_id"];
            $fecha_modifica = date(Yii::$app->params["dateTimeByDefault"]);
            $usuario = @Yii::$app->user->identity->usu_id;
            $con = \Yii::$app->db_mailing;
            $transaction = $con->beginTransaction();
            try {
                $plantilla = $mod_lista->consultarListaTemplate($lista);
                $programa = $mod_lista->consultarIngresoProgramacion($lista, $plantilla['id']);
                $respuesta = $mod_lista->modificarProgramacionxId($programa['pro_id'], $lista, $template, $fecinicio, $fecfin, $horenvio, $usuario, $fecha_modifica);
                if ($respuesta) {
                    $resp_dia = $mod_lista->modificarDiaProgramacion($programa['pro_id'], $fecha_modifica);
                    if ($resp_dia) {
                        for ($i = 1; $i < 8; $i++) {
                            $dia = $data["check_dia_" . $i];
                            if ($dia > 0) {
                                $resp_dia = $mod_lista->insertarDiaProgra($programa['pro_id'], $dia, $fecha_modifica);
                            }
                        }
                        $transaction->commit();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "La información ha sido modificada. "),
                            "title" => Yii::t('jslang', 'Success'),
                        );
                        return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                    } else {
                        $transaction->rollback();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "Error al eliminar." . $mensaje),
                            "title" => Yii::t('jslang', 'Bad Request'),
                        );
                        return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                    }
                } else {
                    $transaction->rollback();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Error al modificar." . $mensaje),
                        "title" => Yii::t('jslang', 'Bad Request'),
                    );
                    return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => Yii::t("notificaciones", "Error al modificar." . $mensaje),
                    "title" => Yii::t('jslang', 'Bad Request'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Bad Request"), false, $message);
            }
            return;
        }
    }

    public function actionEditprogramacion() {
        $mod_lista = new Lista();
        $lista = base64_decode($_GET["lisid"]);
        $plantilla = $mod_lista->consultarListaTemplate($lista);
        $ingreso = $mod_lista->consultarIngresoProgramacion($lista, $plantilla['id']);
        $lista_model = $mod_lista->consultarListaXID($lista);
        $webs_mailchimp = new WsMailChimp();
        $arr_templates = $webs_mailchimp->getAllTemplates();
        return $this->render('editprograma', [
                    'muestra' => $muestra,
                    'arr_ingreso' => $ingreso,
                    'arr_lista' => $lista_model,
                    'arr_templates' => ArrayHelper::map($arr_templates["templates"], "id", "name")
        ]);
    }

    public function actionEdit() {
        $empresa_mod = new Empresa();
        $oportunidad_mod = new Oportunidad();
        $estudio_mod = new ModuloEstudio();
        $lista = new Lista();
        $list_id = base64_decode($_GET["lis_id"]);

        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if (isset($data["getcarrera"])) {
                if ($data["emp_id"] == 1) {
                    $arreglo_carrerra = $oportunidad_mod->consultarCarreras();
                } else {
                    $arreglo_carrerra = $estudio_mod->consultarEstudioEmpresa($data["emp_id"]); // tomar id de impresa        
                }
                $message = array("carrera" => $arreglo_carrerra);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
            }
            if (isset($data["getempresa"])) {
                $resp_empresa = $empresa_mod->consultarEmpresaXid($data["emp_id"]);
                $message = array($resp_empresa);
                echo Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
                return;
            }
            if (isset($data["getcorreo"])) {
                $resp_correo = $empresa_mod->consultarCorreoXempresa($data["emp_id"]);
                $message = array("correo" => $resp_correo);
                echo Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
                return;
            }
        }
        $resp_consulta = $lista->consultarListaXID($list_id);
        if ($resp_consulta["emp_id"] == 1) {
            $arreglo_carrerra = $oportunidad_mod->consultarCarreras();
        } else {
            $arreglo_carrerra = $estudio_mod->consultarEstudioEmpresa($resp_consulta["emp_id"]);
        }
        $arreglo_empresa = $empresa_mod->getAllEmpresa();
        $arreglo_correo = $empresa_mod->consultarCorreoXempresa($resp_consulta["emp_id"]);

        return $this->render('edit', [
                    "arr_empresa" => ArrayHelper::map(array_merge([["id" => "0", "value" => Yii::t("formulario", "Select")]], $arreglo_empresa), "id", "value"),
                    "arr_carrera" => ArrayHelper::map(array_merge([["id" => "0", "name" => Yii::t("formulario", "Select")]], $arreglo_carrerra), "id", "name"),
                    "arr_correo" => ArrayHelper::map(array_merge([["id" => "0", "name" => Yii::t("formulario", "Select")]], $arreglo_correo), "id", "name"),
                    "respuesta" => $resp_consulta,
                    "list_id" => $list_id,
        ]);
    }

    public function actionDeletesuscriptor() {
        $mod_lista = new Lista();
        $lis_id = base64_decode($_GET['lis_id']);
        $arrData = array();
        $mod_sb = new Suscriptor();
        $mod_persona = new Persona();
        $mod_perge = new PersonaGestion();
        $lista_model = $mod_lista->consultarListaXID($lis_id);
        $susbs_lista = $mod_sb->consultarSuscriptoresxLista($arrData, $lis_id);
        $fecha_crea = date(Yii::$app->params["dateTimeByDefault"]);
        $su_id = 0;
        $error = 0;
        $mensaje = "";
        $estado_cambio = 0;
        $data = Yii::$app->request->get();
        if (isset($data["PBgetFilter"])) {
            if (isset($data["estado"]) == 1) {
                $susbs_lista = $mod_sb->consultarSuscriptoresxLista($arrData, $lis_id, 1);
            } elseif (isset($data["estado"]) == 2) {
                $susbs_lista = $mod_sb->consultarSuscriptoresxLista($arrData, $lis_id, 0);
            }
        }
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if ($data["accion"] = 'sc') {
                $per_id = $data["per_id"];
                $lista_id = $data["list_id"];
                $esus = $mod_sb->updateSuscripto($per_id, $lista_id, $estado_cambio);
                if ($esus > 0) {
                    if ($esus > 0) {
                        $mensaje = "El contacto ya no esta suscripto a la lista";
                    } else {
                        $mensaje = "Error: El suscritor no fue eliminado.";
                        $error++;
                    }
                } else {
                    $mensaje = "Error: El suscritor no fue eliminado.";
                    $error++;
                }
            }
            if ($error == 0) {
                $message = array(
                    "wtmessage" => Yii::t("formulario", $mensaje),
                    "title" => Yii::t('jslang', 'Success'),
                    //"materias" => array("software", "telecomunicaciones", "marketing"),
                    "rederict" => Yii::$app->response->redirect(['/marketing/email/asignar?lis_id=' . base64_encode($lista_id)]),
                );
            } else {
                $message = array(
                    "wtmessage" => Yii::t("formulario", $mensaje),
                    "title" => Yii::t('jslang', 'Success'),
                    "rederict" => Yii::$app->response->redirect(['/marketing/email/asignar?lis_id=' . base64_encode($lista_id)]),
                );
            }
            return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
        }
        return $this->render('asignar', [
                    'arr_lista' => $lista_model,
                    'arr_estado' => array("Seleccionar", "Subscrito", "No Subscrito"),
                    'model' => $susbs_lista,
        ]);
    }

    public function actionExpexcel() {
        ini_set('memory_limit', '256M');
        $content_type = Utilities::mimeContentType("xls");
        $nombarch = "Report-" . date("YmdHis") . ".xls";
        header("Content-Type: $content_type");
        header("Content-Disposition: attachment;filename=" . $nombarch);
        header('Cache-Control: max-age=0');
        $colPosition = array("C", "D", "E", "F", "G", "H", "I");

        $arrHeader = array(
            crm::t("crm", "Contact"),
            academico::t("Academico", "Career/Program"),
            marketing::t("marketing", "Email"),
            marketing::t("marketing", "Estado"),
        );
        $data = Yii::$app->request->get();
        $arrSearch["estado"] = $data["estado"];
        $lis_id = base64_decode($data["lista"]);

        $modsuscriptor = new Suscriptor();
        $arrData = array();
        if ($arrSearch["estado"] == 0) {
            $arrData = $modsuscriptor->consultarSuscriptoexcel($arrSearch, $lis_id, '', 0);
        } else {
            if ($arrSearch["estado"] == 1) {
                $arrData = $modsuscriptor->consultarSuscriptoexcel($arrSearch, $lis_id, 1, 0);
            } elseif ($arrSearch["estado"] == 2) {
                $arrData = $modsuscriptor->consultarSuscriptoexcel($arrSearch, $lis_id, 0, 0);
            }
        }

        $nameReport = marketing::t("marketing", "List Subscriber Allocation");
        Utilities::generarReporteXLS($nombarch, $nameReport, $arrHeader, $arrData, $colPosition);
        exit;
    }

    public function actionExppdf() {
        $report = new ExportFile();
        $this->view->title = marketing::t("marketing", "List Subscriber Allocation"); // Titulo del reporte

        $modsuscriptor = new Suscriptor();
        $data = Yii::$app->request->get();
        $arr_body = array();

        $arrSearch["estado"] = $data["estado"];
        $lis_id = base64_decode($data["lista"]);

        $arr_head = array(
            crm::t("crm", "Contact"),
            academico::t("Academico", "Career/Program"),
            marketing::t("marketing", "Email"),
            marketing::t("marketing", "Estado"),
        );
        if ($arrSearch["estado"] == 0) {
            $arr_body = $modsuscriptor->consultarSuscriptoexcel(array(), $lis_id, '', 0);
        } else {
            if ($arrSearch["estado"] == 1) {
                $arr_body = $modsuscriptor->consultarSuscriptoexcel($arrSearch, $lis_id, 1, 0);
            } elseif ($arrSearch["estado"] == 2) {
                $arr_body = $modsuscriptor->consultarSuscriptoexcel($arrSearch, $lis_id, 0, 0);
            }
        }

        $report->orientation = "L"; // tipo de orientacion L => Horizontal, P => Vertical
        $report->createReportPdf(
                $this->render('exportpdf', [
                    'arr_head' => $arr_head,
                    'arr_body' => $arr_body
                ])
        );
        $report->mpdf->Output('Reporte_' . date("Ymdhis") . ".pdf", ExportFile::OUTPUT_TO_DOWNLOAD);
        return;
    }

    public function actionSuscribirtodos() {
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $lis_id = base64_decode($data["lis_id"]);
            //\app\models\Utilities::putMessageLogFile('xxYY...  ' . $lis_id);
            $fecha_registro = "'" . date(Yii::$app->params["dateTimeByDefault"]) . "'";
            $usuario = @Yii::$app->user->identity->usu_id;
            $con = \Yii::$app->db_mailing;
            $transaction = $con->beginTransaction();
            $estado = '1';
            $estado_logico = '1';
            $arrSearch["estado"] = 2;
            try {
                $mod_sb = new Suscriptor();
                $no_suscitos = $mod_sb->consultarSuscriptoexcel($arrSearch, $lis_id, 0, 1);
                if (count($no_suscitos) > 0) {
                    for ($i = 0; $i < count($no_suscitos); $i++) {
                        $asuscribir .= 'INSERT INTO db_mailing.suscriptor (per_id, sus_estado, sus_estado_logico)';
                        $asuscribir .= 'VALUES(' . $no_suscitos[$i]["per_id"] . ', ' . $estado . ', ' . $estado_logico . '); ';
                        $sus_id .= $no_suscitos[$i]["per_id"] . ',';
                    }
                    $insertartodos = $mod_sb->insertarListaTodos($asuscribir);
                    //\app\models\Utilities::putMessageLogFile('rert..  ' . substr($sus_id, 0, -1));

                    if ($insertartodos) {
                        $idinsertados = $mod_sb->consultarSuscritosbtn(substr($sus_id, 0, -1));
                        // para crear nuevamente el script a insertar con los sus_id
                        if (count($idinsertados) > 0) {
                            for ($i = 0; $i < count($idinsertados); $i++) {
                                $asuscribirli .= 'INSERT INTO db_mailing.lista_suscriptor (lis_id, sus_id, lsus_estado, lsus_fecha_creacion, lsus_estado_logico)';
                                $asuscribirli .= 'VALUES(' . $lis_id . ', ' . $idinsertados[$i]["sus_id"] . ', ' . $estado . ', ' . $fecha_registro . ', ' . $estado_logico . '); ';
                            }
                        }
                        $insertadalista = $mod_sb->insertarListaSuscritorTodos($asuscribirli);
                        \app\models\Utilities::putMessageLogFile('ccc..  ' . $asuscribirli);
                        if ($insertadalista) {
                            $exito = 1;
                        }
                    }
                    if ($exito) {
                        $transaction->commit();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "La infomación ha sido grabada. "),
                            "title" => Yii::t('jslang', 'Success'),
                        );
                        echo Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
                    } else {
                        $transaction->rollback();
                        $message = array(
                            "wtmessage" => Yii::t("notificaciones", "Error al grabar." . $mensaje),
                            "title" => Yii::t('jslang', 'Error'),
                        );
                        echo Utilities::ajaxResponse('NO_OK', 'Error', Yii::t("jslang", "Error"), false, $message);
                    }
                } else {
                    \app\models\Utilities::putMessageLogFile('nooo data.  ' . $lis_id);
                    $transaction->rollback();
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "No hay elementos a suscribir en la lista."),
                        "title" => Yii::t('jslang', 'Error'),
                    );
                    echo Utilities::ajaxResponse('NO_OK', 'Error', Yii::t("jslang", "Error"), false, $message);
                }
            } catch (Exception $ex) {
                $transaction->rollback();
                $message = array(
                    "wtmessage" => $ex->getMessage(), Yii::t("notificaciones", "Error al grabar."),
                    "title" => Yii::t('jslang', 'Error'),
                );
                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Error"), true, $message);
            }
        }
    }

}
