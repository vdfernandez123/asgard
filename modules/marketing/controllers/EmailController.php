<?php

namespace app\modules\marketing\controllers;

use Yii;
/*use app\models\Utilities;
use app\models\ExportFile;
use app\models\Persona;
use yii\helpers\Url;
use yii\base\Exception;
use yii\helpers\ArrayHelper;
use app\modules\admision\models\SolicitudInscripcion;
use app\modules\admision\models\MetodoIngreso;
use app\modules\academico\models\EstudioAcademico;
use app\modules\academico\models\Modalidad;
use app\modules\admision\models\Oportunidad;
use app\modules\academico\models\ModuloEstudio;
use app\modules\admision\models\ItemMetodoUnidad;
use app\modules\financiero\models\DetalleDescuentoItem;
use app\modules\academico\models\UnidadAcademica;
use app\modules\admision\models\SolicitudinsDocumento;
use app\modules\financiero\models\OrdenPago;
use app\modules\admision\models\Interesado;
use app\modules\admision\models\DocumentoAdjuntar;
use app\modules\admision\Module as admision;
use app\modules\academico\Module as academico;
use app\modules\financiero\Module as financiero;
use app\modules\financiero\models\Secuencias;
use app\models\Empresa;

academico::registerTranslations();
financiero::registerTranslations();
*/
class EmailController extends \app\components\CController {

    public function actionIndex() {
        //return $this->render('index', []);
        return ;
    }

    /*public function actionProgramacion() {
        $per_id = @Yii::$app->session->get("PB_perid");
        if (Yii::$app->request->isAjax) {
            $data = Yii::$app->request->post();            
            if (isset($data["gettemplate"])) {
                //$template = $modlista->consultarListaTemplate($data["lista"]);
                $message = array("template" => $template);
                return Utilities::ajaxResponse('OK', 'alert', Yii::t('jslang', 'Success'), 'false', $message);
            }
        }
        return $this->render('programacion', [
        ]);
    }
    */
}
