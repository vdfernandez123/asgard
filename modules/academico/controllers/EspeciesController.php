<?php

namespace app\modules\academico\controllers;

use Yii;
use app\models\Utilities;
use app\models\ExportFile;
use app\models\Persona;
use yii\helpers\Url;
use yii\base\Exception;
use yii\helpers\ArrayHelper;
use app\modules\financiero\models\FormaPago;
use app\modules\academico\models\Modalidad;
use app\modules\academico\models\UnidadAcademica;
use app\modules\academico\Module as academico;
use app\modules\academico\models\Especies;
use app\models\Empresa;

Academico::registerTranslations();

class EspeciesController extends \app\components\CController {

    /**
     * Function controller to /especies/index
     * @author Byron Villacreses <developer@gmail.com>
     * @param
     * @return
     */
    public $pdf_cla_acceso = "";

    private function estadoPagos() {
        return [
            '0' => Yii::t("formulario", "Todos"),
            '1' => Yii::t("formulario", "Pendiente"),
            '2' => Yii::t("formulario", "No Aprobado"),
            '3' => Yii::t("formulario", "Aprobado"),
        ];
    }

    public function actionRevisarpago() {
        $per_id = @Yii::$app->session->get("PB_perid");
        $especiesADO = new Especies();
        $mod_fpago = new FormaPago();
        $est_id = $especiesADO->recuperarIdsEstudiente($per_id);
        $arr_forma_pago = $especiesADO->getFormaPago();
        $data = Yii::$app->request->get();
        if ($data['PBgetFilter']) {
            $arrSearch["f_ini"] = $data['f_ini'];
            $arrSearch["f_fin"] = $data['f_fin'];
            $arrSearch["f_estado"] = $data['f_estado'];
            $arrSearch["f_pago"] = $data['f_pago'];
            //$arrSearch["search"] = $data['search'];
            $resp_pago = $especiesADO->getSolicitudesAlumnos($est_id, $arrSearch, false);
            return $this->renderPartial('_revisar-grid', [
                        "model" => $resp_pago,
            ]);
        } else {
            
        }

        $personaData = $especiesADO->consultaDatosEstudiante($per_id);
        $model = $especiesADO->getSolicitudesAlumnos($est_id, null, false);

        return $this->render('revisarpago', [
                    'model' => $model,
                    'personalData' => $personaData,
                    'arrEstados' => $this->estadoPagos(),
                    'arr_forma_pago' => ArrayHelper::map(array_merge([["Ids" => "0", "Nombre" => "Todos"]], $arr_forma_pago), "Ids", "Nombre"),
        ]);
    }

    public function actionSolicitudalumno() {
        $per_id = @Yii::$app->session->get("PB_perid");
        $especiesADO = new Especies();
        $mod_fpago = new FormaPago();
        $est_id = $especiesADO->recuperarIdsEstudiente($per_id);
        $arr_forma_pago = $especiesADO->getFormaPago();
        $data = Yii::$app->request->get();
        if ($data['PBgetFilter']) {
            $arrSearch["f_ini"] = $data['f_ini'];
            $arrSearch["f_fin"] = $data['f_fin'];
            $arrSearch["f_estado"] = $data['f_estado'];
            $arrSearch["f_pago"] = $data['f_pago'];
            //$arrSearch["search"] = $data['search'];
            $resp_pago = $especiesADO->getSolicitudesAlumnos($est_id, $arrSearch, false);
            return $this->renderPartial('_solicitudalumnoGrid', [
                        "model" => $resp_pago,
            ]);
        } else {
            //$resp_pago = $especiesADO->getSolicitudesAlumnos(null, $resp_gruporol["grol_id"]);
        }

        $personaData = $especiesADO->consultaDatosEstudiante($per_id);
        $model = $especiesADO->getSolicitudesAlumnos($est_id, null, false);

        return $this->render('solicitudalumno', [
                    'model' => $model,
                    'personalData' => $personaData,
                    'arrEstados' => $this->estadoPagos(),
                    //'arr_forma_pago' => ArrayHelper::map($arr_forma_pago, "id", "value"),
                    'arr_forma_pago' => ArrayHelper::map(array_merge([["Ids" => "0", "Nombre" => "Todos"]], $arr_forma_pago), "Ids", "Nombre"),
        ]);
    }

    public function actionNew() {
        $per_idsession = @Yii::$app->session->get("PB_perid");
        //$est_id = 1;
        //$persona_model = new Persona();
        $especiesADO = new Especies();
        $mod_unidad = new UnidadAcademica();
        $mod_modalidad = new Modalidad();

        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if (isset($data["getespecie"])) {
                $especies = $especiesADO::getTramiteEspecie($data['tra_id']);
                $message = [
                    "especies" => $especies,
                ];
                echo Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
                return;
            }
            if (isset($data["getDataespecie"])) {
                $especies = $especiesADO->getDataEspecie($data["esp_id"]);
                $message = array("especies" => $especies);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
            }
        }
        $personaData = $especiesADO->consultaDatosEstudiante($per_idsession);
        $arr_unidadac = $mod_unidad->consultarUnidadAcademicas();
        $arr_modalidad = $mod_modalidad->consultarModalidad($arr_unidadac[0]["id"], 1);
        $arr_tramite = $especiesADO->getTramite();
        $arr_especies = $especiesADO->getTramiteEspecie($arr_tramite[0]["Ids"]);
        //Utilities::putMessageLogFile('sadf'.$arr_unidadac[0]["id"]);
        return $this->render('new', [
                    'arr_persona' => $personaData,
                    'arr_tramite' => ArrayHelper::map($arr_tramite, "id", "name"),
                    'arr_especies' => ArrayHelper::map($arr_especies, "id", "name"),
                    'arr_unidad' => ArrayHelper::map($arr_unidadac, "id", "name"),
                    'arr_modalidad' => ArrayHelper::map($arr_modalidad, "id", "name"),
                        /* "arr_metodos" => ArrayHelper::map($arr_metodos, "id", "name"),
                          "arr_persona" => $dataPersona,
                          "arr_carrera" => ArrayHelper::map($arr_carrera, "id", "name"),

                          "arr_descuento" => ArrayHelper::map($arr_descuento, "id", "name"),
                          "arr_item" => ArrayHelper::map(array_merge(["id" => "0", "name" => "Seleccionar"], $resp_item), "id", "name"), //ArrayHelper::map($resp_item, "id", "name"),
                          "int_id" => $inte_id,
                          "per_id" => $per_id,
                          "arr_empresa" => ArrayHelper::map($empresa, "id", "value"),
                          "arr_convenio_empresa" => ArrayHelper::map($arr_convempresa, "id", "name"), */
        ]);
    }

    //PEDIDOS REALIZADOS
    public function actionSave() {
        $per_id = @Yii::$app->session->get("PB_perid");
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            $especiesADO = new Especies();
            $dts_Cab = isset($data['DTS_CAB']) ? $data['DTS_CAB'] : array();
            $dts_Det = isset($data['DTS_DET']) ? $data['DTS_DET'] : array();
            $accion = isset($data['ACCION']) ? $data['ACCION'] : "";

            if ($accion == "Create") {
                $resul = $especiesADO->insertarLista($dts_Cab, $dts_Det);

                //VSValidador::putMessageLogFile($arroout);
                /* if ($arroout["status"]=="OK"){
                  //Recupera infor de CabTemp  para enviar info al supervisor de tienda
                  $CabPed=$res->sendMailPedidosTemp($arroout["data"]);

                  } */
            } else {
                //Opcion para actualizar
                //$PedId = isset($_POST['PED_ID']) ? $_POST['PED_ID'] : 0;
                //$arroout = $model->actualizarLista($PedId,$tieId,$total,$dts_Lista);
            }
            //Utilities::putMessageLogFile($resul);
            if ($resul['status']) {
                $message = ["info" => Yii::t('exception', 'La infomación ha sido grabada. ')];
                echo Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message, $resul);
            } else {
                $message = ["info" => Yii::t('exception', 'Error al grabar.')];
                echo Utilities::ajaxResponse('NO_OK', 'alert', Yii::t('jslang', 'Error'), 'false', $message);
            }
            return;
        }
    }

    public function actionCargarpago() {
        $per_id = @Yii::$app->session->get("PB_perid");
        $ids = isset($_GET['ids']) ? base64_decode($_GET['ids']) : NULL;
        //Utilities::putMessageLogFile($ids);
        $especiesADO = new Especies();
        $est_id = $especiesADO->recuperarIdsEstudiente($per_id);
        $mod_unidad = new UnidadAcademica();
        $mod_modalidad = new Modalidad();
        $mod_persona = new Persona();
        $data_persona = $mod_persona->consultaPersonaId($per_id);
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            if ($data["upload_file"]) {
                if (empty($_FILES)) {
                    return json_encode(['error' => Yii::t("notificaciones", "Error to process File {file}. Try again.", ['{file}' => basename($files['name'])])]);
                }
                //Recibe Parámetros
                $files = $_FILES[key($_FILES)];
                $arrIm = explode(".", basename($files['name']));
                $typeFile = strtolower($arrIm[count($arrIm) - 1]);
                //Utilities::putMessageLogFile($data["name_file"]);
                //if ($typeFile == 'xlsx' || $typeFile == 'csv' || $typeFile == 'xls') {
                if ($typeFile == 'jpg' || $typeFile == 'png' || $typeFile == 'pdf') {
                    $dirFileEnd = Yii::$app->params["documentFolder"] . "especies/" . $data["name_file"] . "." . $typeFile;
                    $status = Utilities::moveUploadFile($files['tmp_name'], $dirFileEnd);
                    if ($status) {
                        return true;
                    } else {
                        return json_encode(['error' => Yii::t("notificaciones", "Error to process File {file}. Try again.", ['{file}' => basename($files['name'])])]);
                    }
                }
            }
            if ($data["procesar_file"]) {
                $carga_archivo = $especiesADO->CargarArchivo($data["archivo"], $data["csol_id"]);
                $data_especie = $especiesADO->consultaSolicitudexrubro($data["csol_id"]);
                if ($carga_archivo['status']) {
                    // enviar correo estudiante
                    $correo = $data_persona["per_correo"];
                    $user = $data_persona["per_pri_nombre"] . " " . $data_persona["per_pri_apellido"];
                    $tituloMensaje = 'Adquisición de Especie Valorada en Línea';
                    $asunto = 'Adquisición de Especie Valorada en Línea';
                    $body = Utilities::getMailMessage("cargapagoalumno", array(
                                "[[user]]" => $user,
                                "[[tipo_especie]]" => $data_especie["especies"]), Yii::$app->language, Yii::$app->basePath . "/modules/academico");
                    Utilities::sendEmail(
                            $tituloMensaje, Yii::$app->params["adminEmail"], [$correo => $user], $asunto, $body);
                    // enviar correo colecturia
                    //$user = $data_persona["per_pri_nombre"] . " ". $data_persona["per_pri_apellido"];
                    //$tituloMensaje = 'Adquisición de Especie Valorada en Línea'; 
                    //$asunto = 'Adquisición de Especie Valorada en Línea'; 
                    $bodies = Utilities::getMailMessage("cargapagocolecturia", array(
                                "[[user]]" => $user,
                                "[[tipo_especie]]" => $data_especie["especies"]), Yii::$app->language, Yii::$app->basePath . "/modules/academico");
                    Utilities::sendEmail(
                            $tituloMensaje, Yii::$app->params["adminEmail"], [Yii::$app->params["colecturia"] => "Colecturia"], $asunto, $bodies);

                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Archivo procesado correctamente." . $carga_archivo['data']),
                        "title" => Yii::t('jslang', 'Success'),
                    );
                    return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Success"), false, $message);
                } else {
                    $message = array(
                        "wtmessage" => Yii::t("notificaciones", "Error al procesar el archivo. " . $carga_archivo['message']),
                        "title" => Yii::t('jslang', 'Error'),
                    );
                    return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Error"), true, $message);
                }
                return;
            }
        }


        $personaData = $especiesADO->consultaDatosEstudiante($per_id);
        $arr_unidadac = $mod_unidad->consultarUnidadAcademicas();
        $arr_modalidad = $mod_modalidad->consultarModalidad($arr_unidadac[0]["id"], 1);
        $model = $especiesADO->getSolicitudesAlumnos($est_id, null, false);
        return $this->render('cargarpago', [
                    'model' => $model,
                    'arr_persona' => $personaData,
                    'cab_solicitud' => $especiesADO->consultarCabSolicitud($ids),
                    'det_solicitud' => json_encode($especiesADO->consultarDetSolicitud($ids)),
                    'arr_unidad' => ArrayHelper::map($arr_unidadac, "id", "name"),
                    'arr_modalidad' => ArrayHelper::map($arr_modalidad, "id", "name"),
                    'arrEstados' => $this->estadoPagos(),
        ]);
    }

    public function actionAutorizarpago() {
        $ids = isset($_GET['ids']) ? base64_decode($_GET['ids']) : NULL;
        //Utilities::putMessageLogFile($ids);
        $est_id = base64_decode($_GET['est_id']);
        $especiesADO = new Especies();
        //$est_id = $especiesADO->recuperarIdsEstudiente($per_id);
        $mod_unidad = new UnidadAcademica();
        $mod_modalidad = new Modalidad();

        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();
            //$especiesADO = new Especies();
            $csol_id = isset($data['csol_id']) ? $data['csol_id'] : 0;
            $estado = isset($data['estado']) ? $data['estado'] : 0;
            $accion = isset($data['accion']) ? $data['accion'] : "";
            $estud_id = $data['est_id'];
            if ($accion == "AutorizaPago") {
                $resul = $especiesADO->autorizarSolicitud($csol_id, $estado);
            } else {
                //Opcion para actualizar
                //$PedId = isset($_POST['PED_ID']) ? $_POST['PED_ID'] : 0;
                //$arroout = $model->actualizarLista($PedId,$tieId,$total,$dts_Lista);
            }
            Utilities::putMessageLogFile($resul);
            if ($resul['status']) {
                $especiesADO = new Especies();
                $persona = $especiesADO->consultaPeridxestid($estud_id);
                $data_persona = $especiesADO->consultaDatosEstudiante($persona["per_id"]); //aqui enviar per_id
                $correo = $data_persona["per_correo"];
                $user = $data_persona["per_pri_nombre"] . " " . $data_persona["per_pri_apellido"];
                $tituloMensaje = 'Adquisición de Especie Valorada en Línea';
                $asunto = 'Adquisición de Especie Valorada en Línea';
                if ($data['estado'] == '3') { //si aprueba un correo.
                    $body = Utilities::getMailMessage("aprobarpagoalumno", array(
                                "[[user]]" => $user,
                                "[[link]]" => "https://asgard.uteg.edu.ec/asgard/"), Yii::$app->language, Yii::$app->basePath . "/modules/academico");
                    Utilities::sendEmail(
                            $tituloMensaje, Yii::$app->params["adminEmail"], [$correo => $user], $asunto, $body);
                } else if ($data['estado'] == '2') {
                    $bodies = Utilities::getMailMessage("reprobarpagoalumno", array(
                                "[[user]]" => $user,
                                "[[link]]" => "https://asgard.uteg.edu.ec/asgard/",
                                "[[motivo]]" => $motivo), Yii::$app->language, Yii::$app->basePath . "/modules/academico");
                    Utilities::sendEmail(
                            $tituloMensaje, Yii::$app->params["adminEmail"], [$correo => $user], $asunto, $bodies);
                }


                //si reprueba otro correo
                $message = array(
                    "wtmessage" => Yii::t("notificaciones", "La infomación ha sido grabada."),
                    "title" => Yii::t('jslang', 'Success'),
                );
                return Utilities::ajaxResponse('OK', 'alert', Yii::t("jslang", "Sucess"), false, $message);
            } else {
                $message = array(
                    "wtmessage" => Yii::t("notificaciones", "Error al grabar. " . $carga_archivo['message']),
                    "title" => Yii::t('jslang', 'Error'),
                );

                return Utilities::ajaxResponse('NO_OK', 'alert', Yii::t("jslang", "Error"), true, $message);
            }
            return;
        }
        $per_id = $especiesADO->consultaPeridxestid($est_id);
        $personaData = $especiesADO->consultaDatosEstudiante($per_id["per_id"]); //aqui enviar per_id
        $arr_unidadac = $mod_unidad->consultarUnidadAcademicas();
        $arr_modalidad = $mod_modalidad->consultarModalidad($arr_unidadac[0]["id"], 1);
        $cabSol = $especiesADO->consultarCabSolicitud($ids);
        $model = $especiesADO->getSolicitudesAlumnos($est_id, null, false);
        $img_pago = $cabSol[0]["csol_ruta_archivo_pago"];
        return $this->render('autorizarpago', [
                    'model' => $model,
                    'img_pago' => $img_pago,
                    'arr_persona' => $personaData,
                    'cab_solicitud' => $cabSol,
                    'det_solicitud' => json_encode($especiesADO->consultarDetSolicitud($ids)),
                    'arr_unidad' => ArrayHelper::map($arr_unidadac, "id", "name"),
                    'arr_modalidad' => ArrayHelper::map($arr_modalidad, "id", "name"),
                    'arrEstados' => $this->estadoPagos(),
        ]);
    }

    public function actionEspeciesgeneradas() {
        $per_id = @Yii::$app->session->get("PB_perid");
        $especiesADO = new Especies();
        //$est_id = $especiesADO->recuperarIdsEstudiente($per_id);
        $data = Yii::$app->request->get();
        if ($data['PBgetFilter']) {
            $arrSearch["f_ini"] = $data['f_ini'];
            $arrSearch["f_fin"] = $data['f_fin'];
            $arrSearch["f_estado"] = $data['f_estado'];
            $arrSearch["f_pago"] = $data['f_pago'];
            //$arrSearch["search"] = $data['search'];
            $resp_pago = $especiesADO->getSolicitudesGeneradas($est_id, $arrSearch, false);
            return $this->renderPartial('_especies-grid', [
                        "model" => $resp_pago,
            ]);
        } else {
            
        }

        $personaData = $especiesADO->consultaDatosEstudiante($per_id);
        $model = $especiesADO->getSolicitudesGeneradas($est_id, null, false);

        return $this->render('especiesgeneradas', [
                    'model' => $model,
                    //'personalData' => $personaData,
                    'arrEstados' => $this->estadoPagos(),
        ]);
    }

    public function actionGenerarespeciespdf($ids) {//ok
        try {
            $ids = isset($_GET['ids']) ? base64_decode($_GET['ids']) : NULL;
            $rep = new ExportFile();
            //$this->layout = false;
            $this->layout = '@modules/academico/views/tpl_especies/main';
            //$this->view->title = "Invoices";
            $especiesADO = new Especies();
            $cabFact = $especiesADO->consultarEspecieGenerada($ids);
            $objEsp = $especiesADO->getDataEspecie($cabFact['esp_id']);
            $codigo = $objEsp[0]['codigo'] . '-' . $cabFact['egen_numero_solicitud'];
            $cabFact['Carrera'] = "Sistemas"; //consultar Carrera del estudiante
            //setlocale(LC_TIME,"es_ES");//strftime("%A, %d de %B de %Y", date("d-m-Y"));
            setlocale(LC_TIME, 'es_CO.UTF-8');

            $cabFact['FechaDia'] = strftime("%A %d de %B %G", strtotime(date("d-m-Y"))); //date("j F de Y");      
            $this->pdf_cla_acceso = $codigo;
            $rep->orientation = "P"; // tipo de orientacion L => Horizontal, P => Vertical   
            $rep->createReportPdf(
                    $this->render('@modules/academico/views/tpl_especies/especie', [
                        'cabFact' => $cabFact,
                    ])
            );
            $rep->mpdf->Output('ESPECIE_' . $codigo . ".pdf", ExportFile::OUTPUT_TO_DOWNLOAD);
            //exit;
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function actionGenerarcertificado($ids) {//ok
        try {
            $ids = isset($_GET['ids']) ? base64_decode($_GET['ids']) : NULL;
            $rep = new ExportFile();
            //$this->layout = false;
            $this->layout = '@modules/academico/views/tpl_especies/main';
            //$this->view->title = "Invoices";
            $especiesADO = new Especies();
            $cabFact = $especiesADO->consultarEspecieGenerada($ids);
            $objEsp = $especiesADO->getDataEspecie($cabFact['esp_id']);
            $codigo = $objEsp[0]['codigo'] . '-' . $cabFact['egen_numero_solicitud'] . '-' . $cabFact['per_cedula'];
            setlocale(LC_TIME, 'es_CO.UTF-8');
            $cabFact['FechaDia'] = strftime("%A %d de %B %G", strtotime(date("d-m-Y"))); //date("j F de Y");      
            $this->pdf_cla_acceso = $codigo;
            $rep->orientation = "P"; // tipo de orientacion L => Horizontal, P => Vertical   
            $rep->createReportPdf(
                    $this->render('@modules/academico/views/tpl_especies/solicitud', [
                        'cabFact' => $cabFact,
                    ])
            );
            $rep->mpdf->Output('CERTIFICADO_' . $codigo . ".doc", ExportFile::OUTPUT_TO_DOWNLOAD);
            //exit;
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

}
