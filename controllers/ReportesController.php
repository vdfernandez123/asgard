<?php

namespace app\controllers;

use Yii;
use app\components\CController;
use app\models\Grupo;
use app\models\Rol;
use app\models\Accion;
use app\models\Modulo;
use app\models\ObjetoModulo;
use app\models\Aplicacion;
use yii\helpers\ArrayHelper;
use yii\base\Exception;
use app\models\Utilities;
use app\models\Reporte;
use app\models\ExportFile;
use app\modules\academico\Module as academico;
academico::registerTranslations();
class ReportesController extends CController {

    public function actionIndex() {        
        return $this->render('index');
    }
    
    public function actionExpexcelreport(){
        $objDat= new Reporte();
        //$data["estado"]= $_GET["estado"];
        $data["op"]= $_GET["op"];
        $data["f_ini"]= $_GET["f_ini"];
        $data["f_fin"]= $_GET["f_fin"];
        $data["search_dni"]= $_GET["searchdni"];
        //$data["valor"]= $_GET["valor"];
        switch ($data["op"]) {
            case '1'://GRADO
                $arrData=$objDat->consultarActividadporOportunidad($data);
                $arrHeader = array("N° Oport","Fecha","Empresa","Nombres","Apellidos","Unidad Academica","Estado","Observacion");
                $nombarch = "ActividadesOportunidad-" . date("YmdHis").".xls";
                break;
            case '2'://POSGRADO
                $arrData=$objDat->consultarOportunidadProximaAten($data);
                $arrHeader = array("N° Oport","Fecha Atencion","F.Prox.At","Empresa","Cedula","Nombres","Apellidos","Unidad Academica",
                                    "Estado","Observacion","Agente");
                $nombarch = "EstadoOportunidad-" . date("YmdHis").".xls";
                break;
            case '3'://Aspirantes
                $arrData=$objDat->consultarAspirantesPendientes($data);
                $arrHeader = 
                        array(
                            "DNI",
                            "Fecha Solicitud",
                            "Num. Solicitud",
                            "Nombres",                        
                            "Apellidos",
                            "Empresa",
                            "Unidad Academica",
                            "Carrera",
                            "Modalidad",
                            "Agente",
                            "Estado Solicitud",
                            "Estado Documentos",
                            "Estado Pago"
                        );                
                $nombarch = "Aspirantes-" . date("YmdHis").".xls";
                break;
        }
        ini_set('memory_limit', '256M');
        $content_type = Utilities::mimeContentType("xls");        
        header("Content-Type: $content_type");
        header("Content-Disposition: attachment;filename=" . $nombarch);
        header('Cache-Control: max-age=0');               
        $nameReport = yii::t("formulario", "Application Reports");
        $colPosition = array("C", "D", "E", "F", "G", "H", "I", "J", "K", "L","M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");
        Utilities::generarReporteXLS($nombarch, $nameReport, $arrHeader, $arrData, $colPosition);
        exit;
    }
}
