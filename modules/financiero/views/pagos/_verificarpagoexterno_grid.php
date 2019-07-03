<?php

use yii\helpers\Html;
use yii\helpers\Url;
use app\widgets\PbGridView\PbGridView;
use app\modules\financiero\Module as financiero;
use app\modules\admision\Module as admision;
use app\modules\academico\Module as academico;
use app\modules\admision\Module;

admision::registerTranslations();

?>
<div>
    <?=
    PbGridView::widget([
        'id' => 'TbG_VERFICAR_PAGOS_EXTERNOS',
        'showExport' => true,
        'fnExportEXCEL' => "exportExcelvpex",
        'fnExportPDF' => "exportPdfvpex",
        'dataProvider' => $model,     
        'columns' =>
        [   
            [
                'attribute' => 'referencia',
                'header' => Yii::t("formulario", "Reference"),
                'value' => 'referencia',
            ],
            [
                'attribute' => 'estudiante',
                'header' => Yii::t("formulario", "Student"),
                'value' => 'estudiante',
            ],
            [
                'attribute' => 'cedula_factura',
                'header' => Yii::t("formulario", "Cedula a Facturar"),
                'value' => 'cedula_factura',
            ],
            [
                'attribute' => 'persona_factura',
                'header' => Yii::t("formulario", "Persona a Facturar"),
                'value' => 'persona_factura',
            ],
            [
                'attribute' => 'fecha_pago',
                'header' => Yii::t("formulario", "Date"),
                'value' => 'fecha_pago',
            ],           
            [
                'attribute' => 'total_pago',
                'header' => Yii::t("formulario", "Total value"),
                'value' => 'total_pago',
            ],
            [
                'attribute' => 'Estado',
                'header' => financiero::t("Pagos", "Boton Payment status"),
                'format' => 'html',
                'value' => function ($model) {
                    if ($model["estado"] == 1)
                        return '<small class="label label-success">Pagado</small>';
                    else
                        return '<small class="label label-danger">Pendiente</small>';
                },
            ],   
            [
                'class' => 'yii\grid\ActionColumn',
                'header' => Yii::t("formulario", "Actions"),         
                'template' => '{details} {request} {actualizar_pago}',           
                'buttons' => [
                    'actualizar_pago' => function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-refresh"></span>', "#", ["onclick" => "actualizar_pago(" . $model['doc_id'] . ");", "data-toggle" => "tooltip", "title" => "Generar Solicitud", "data-pjax" => 0]);
                    },                   
                    'details' => function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-th-list"></span>', Url::to(['pagos/detallepagoexterno', 'doc_id' => $model['id'], 'popup' => 'true']), ["data-toggle" => "tooltip", "title" => "Detalle Pago", "data-pjax" => 0, "class" => "pbpopup"]);
                    },                   
                    'request' => function ($url, $model) {  
                        return Html::a('<span class="glyphicon glyphicon-bookmark"></span>', "#", ["onclick" => "generarSolicitud(" . $model['doc_id'] . ");", "data-toggle" => "tooltip", "title" => "Generar Solicitud", "data-pjax" => 0]);
                    },                   
                ],
            ],
        ],
    ])
    ?>
</div>