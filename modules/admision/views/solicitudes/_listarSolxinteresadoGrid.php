<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

use yii\helpers\Html;
use yii\helpers\Url;
use app\widgets\PbGridView\PbGridView;
use app\modules\admision\Module as admision;
use app\modules\academico\Module as academico;
academico::registerTranslations();

?>
<?=

PbGridView::widget([
    //'dataProvider' => new yii\data\ArrayDataProvider(array()),
    'id' => 'TbG_PERSONAS',
    'showExport' => true,
    'fnExportEXCEL' => "exportExcel",
    //'fnExportPDF' => "exportPdf",
    'dataProvider' => $model,
    'columns' =>
    [
        [
            'attribute' => 'Solicitud #',
            'header' => admision::t("Solicitudes", "Request #"),
            'value' => 'num_solicitud',
        ],
        [
            'attribute' => 'Fecha Solicitud ',
            'header' => admision::t("Solicitudes", "Application date"),
            'value' => 'fecha_solicitud',
        ],
        [
            'attribute' => 'Nivel Interes',
            'header' => academico::t("Academico", "Academic unit"),
            'value' => 'nint_nombre',
        ],
        [
            'attribute' => 'Metodo Ingreso',
            'header' => admision::t("Solicitudes", "Income Method"),
            'value' => 'metodo_ingreso',
        ],
        [
            'attribute' => 'Carrera',
            'header' => academico::t("Academico", "Career/Program"),
            'value' => 'carrera',
        ],
        [
            'attribute' => 'Estado',
            'header' => Yii::t("formulario", "Status"),
            'value' => 'estado',
        ],
        [
            'class' => 'yii\grid\ActionColumn',
            'header' => Yii::t("formulario", "Actions"),
            'template' => '{payments} {upload}', //
            'buttons' => [
                'payments' => function ($url, $model) {
                    return Html::a('<span class="glyphicon glyphicon-usd"></span>', Url::to(['/financiero/pagos/listarpagosolicitud', 'id_sol' => base64_encode($model['sins_id'])/*, 'ids' => $_GET['perid']*/]), ["data-toggle" => "tooltip", "title" => "Pago de Solicitud", "data-pjax" => 0]);
                },
                'upload' => function ($url, $model) {
                    if ($model['numDocumentos'] == 0)  {  
                        return Html::a('<span class="glyphicon glyphicon-folder-open"></span>', Url::to(['/admision/solicitudes/subirdocumentos', 'id_sol' => base64_encode($model['sins_id'])]), ["data-toggle" => "tooltip", "title" => "Subir Documentos Aspirante", "data-pjax" => 0]);
                    } else {
                        return '<span class="glyphicon glyphicon-folder-open"></span>';
                    }
                }
            ],
        ],
    ],
])
?>