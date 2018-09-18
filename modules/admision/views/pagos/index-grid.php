<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\Url;
use app\widgets\PbGridView\PbGridView;
use yii\data\ArrayDataProvider;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use yii\jui\AutoComplete;
use yii\web\JsExpression;
?>

<div>
    <?=
    PbGridView::widget([
        'id' => 'TbG_Solicitudes',
        //'showExport' => true,
        //'fnExportEXCEL' => "exportExcel",
        //'fnExportPDF' => "exportPdf",
        'dataProvider' => $model,
        'columns' =>
        [
            [
                'attribute' => 'solicitud',
                'header' => Yii::t("formulario", "Request #"),
                'value' => 'solicitud',
            ],
            [
                'attribute' => 'fecha',
                'header' => Yii::t("solicitud_ins", "Application date"),
                'value' => 'sins_fecha_solicitud',
            ],
            [
                'attribute' => 'dni',
                'header' => Yii::t("formulario", "DNI 1"),
                'value' => 'identificacion',
            ],
            [
                'attribute' => 'Nombres',
                'header' => Yii::t("formulario", "First Names"),
                'value' => 'nombres',
            ],
            [
                'attribute' => 'Apellidos',
                'header' => Yii::t("formulario", "Last Names"),
                'value' => 'apellidos',
            ],
            [
                'attribute' => 'NivelInteres',
                'header' => Yii::t("solicitud_ins", "Level Interest"),
                'value' => 'nivel',
            ],
            [
                'attribute' => 'MetodoIngreso',
                'header' => Yii::t("solicitud_ins", "Income Method"),
                'value' => 'metodo',
            ],
            [
                'attribute' => 'estado',
                'header' => Yii::t("formulario", "Status"),
                'value' => 'estado_desc_pago',
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'header' => Yii::t("formulario", "Actions"),
                'template' => '{view} {upload}', 
                'buttons' => [
                    'view' => function ($url, $model) {
                        if ($model['estado'] != 'P') {
                            return Html::a('<span class="glyphicon glyphicon-thumbs-up"></span>', Url::to(['registrarpago/validarpagocarga', 'ido' => $model['orden']]), ["data-toggle" => "tooltip", "title" => "Ver Pagos", "data-pjax" => 0]);
                        }
                    },
                    'upload' => function ($url, $model) {
                        if ($model['rol'] == 1) {
                            return Html::a('<span class="glyphicon glyphicon-download-alt"></span>', Url::to(['registrarpago/cargardocpagos', 'ids' => base64_encode($model['orden']), 'estado' => base64_encode($model['estado_desc_pago']), 'vista' => 'adm']), ["data-toggle" => "tooltip", "title" => "Subir Documento", "data-pjax" => 0]);
                        }
                    },
                ],
            ],
        ],
    ])
    ?>
</div>