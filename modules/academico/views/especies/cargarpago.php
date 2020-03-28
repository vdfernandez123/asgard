<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use app\components\CFileInputAjax;
use app\modules\academico\Module as Especies;

Especies::registerTranslations();
?>

<form class="form-horizontal" enctype="multipart/form-data" id="formsolicitud"> 
    <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12">
        <div class="col-sm-10 col-md-10 col-xs-10 col-lg-10"></div>
        <div class="col-sm-2 col-md-2 col-xs-2 col-lg-2">
            <a id="btn_savepago" href="javascript:" class="btn btn-primary btn-block"> <?= Yii::t("formulario", "Save") ?></a>
        </div>
    </div>

    <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12">
        <h3><span id="lbl_solicitud"><?= Especies::t("Especies", "Subir Pago de Solicitud") ?></span></h3>
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-7 col-sm-7 col-xs-7 col-lg-7">
            <div class="form-group">
                <h4><span id="lbl_general"><?= Especies::t("Especies", "Datos del Estudiante") ?></span></h4> 
            </div>
        </div>
        <div class='col-md-12 col-sm-12 col-xs-12 col-lg-12'>
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="txt_nombres" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label" id="lbl_nombre1"><?= Yii::t("formulario", "Names") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <input type="text" class="form-control keyupmce" value="<?php echo $arr_persona['per_pri_nombre'] . " " . $arr_persona['per_seg_nombre'] . " " . $arr_persona['per_pri_apellido'] . " " . $arr_persona['per_seg_apellido'] ?>" id="txt_nombres" disabled data-type="alfa" placeholder="<?= Yii::t("formulario", "First Name") ?>">
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="txt_cedula" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label" id="lbl_nombre1">Cédula</label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <input type="text" class="form-control keyupmce" value="<?php echo $arr_persona['per_cedula'] ?>" id="txt_cedula" data-type="alfa" disabled placeholder="<?= Yii::t("formulario", "DNI Document") ?>">
                    </div>
                </div>
            </div>

        </div>

    </div>



    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-7 col-sm-7 col-xs-7 col-lg-7">
            <div class="form-group">
                <h4><span id="lbl_general"><?= Especies::t("Especies", "Datos de Solicitud") ?></span></h4> 
            </div>
        </div>
        <div class='col-md-12 col-sm-12 col-xs-12 col-lg-12'>

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="form-group">
                    <label for="cmb_ninteres" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label"><?= Especies::t("Academico", "Academic unit") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?= Html::dropDownList("cmb_ninteres", 0, array_merge([Yii::t("formulario", "Select")], $arr_unidad), ["class" => "form-control", "id" => "cmb_ninteres"]) ?>
                    </div>
                </div>  
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" id="divModalidad">
                <div class="form-group">
                    <label for="cmb_modalidad" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label"><?= Especies::t("Academico", "Modality") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?= Html::dropDownList("cmb_modalidad", 0, array_merge([Yii::t("formulario", "Select")], $arr_modalidad), ["class" => "form-control", "id" => "cmb_modalidad"]) ?>
                    </div>
                </div>
            </div>





            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="form-group">
                    <label for="txt_dsol_total" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label" id="lbl_dsol_total"><?= Especies::t("Pagos", "Total") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <input type="text" class="form-control keyupmce" value="0" id="txt_dsol_total" data-type="alfa" align="rigth" disabled="true" placeholder="<?= Especies::t("Pagos", "Total") ?>">
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="lbl_fpago" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label" id="lbl_fpago"><?= Yii::t("formulario", "Forma Pago") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?=
                        Html::dropDownList(
                                "cmb_fpago", 0, ArrayHelper::map(app\modules\academico\models\Especies::getFormaPago(), 'Ids', 'Nombre'),
                                //array_merge([Yii::t("formulario", "Select")],ArrayHelper::map(app\modules\academico\models\Especies::getFormaPago(), 'Ids', 'Nombre')), 
                                ["class" => "form-control", "id" => "cmb_fpago"]
                        )
                        ?>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="form-group">
                    <label for="lbl_doc_adj_pago" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label keyupmce"><?= Yii::t("formulario", "Attach document") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?= Html::hiddenInput('txth_doc_adj_pago', '', ['id' => 'txth_doc_adj_pago']); ?>
                        <?php // Html::hiddenInput('txth_doc_adj_leads2', '', ['id' => 'txth_doc_adj_leads2']); ?>
                        <?php
                        echo CFileInputAjax::widget([
                            'id' => 'txt_doc_adj_pago',
                            'name' => 'txt_doc_adj_pago',
                            'pluginLoading' => false,
                            'showMessage' => false,
                            'pluginOptions' => [
                                'showPreview' => false,
                                'showCaption' => true,
                                'showRemove' => true,
                                'showUpload' => false,
                                'showCancel' => false,
                                'browseClass' => 'btn btn-primary btn-block',
                                'browseIcon' => '<i class="fa fa-folder-open"></i> ',
                                'browseLabel' => "Subir Archivo",
                                'uploadUrl' => Url::to(['/academico/especies/cargarpago']),
                                'maxFileSize' => Yii::$app->params["MaxFileSize"],
                                'uploadExtraData' => 'javascript:function (previewId,index) {
                                        return {"upload_file": true, "name_file": "DOC-' . @Yii::$app->session->get("PB_iduser") . '-' . time() . '"};
                                    }',
                            ],
                            'pluginEvents' => [
                                "filebatchselected" => "function (event) {
                                    $('#txth_doc_adj_pago').val('DOC-" . @Yii::$app->session->get("PB_iduser") . '-' . time() . "');
                                    $('#txth_doc_adj_leads').val($('#txt_doc_adj_leads').val());
                                    $('#txt_doc_adj_pago').fileinput('upload');
                                }",
                                "fileuploaderror" => "function (event, data, msg) {
                                    $(this).parent().parent().children().first().addClass('hide');
                                    $('#txth_doc_adj_pago').val('');        
                                }",
                                "filebatchuploadcomplete" => "function (event, files, extra) { 
                                    $(this).parent().parent().children().first().addClass('hide');
                                }",
                                "filebatchuploadsuccess" => "function (event, data, previewId, index) {
                                    var form = data.form, files = data.files, extra = data.extra,
                                    response = data.response, reader = data.reader;
                                    $(this).parent().parent().children().first().addClass('hide');
                                    var acciones = [{id: 'reloadpage', class: 'btn btn-primary', value: objLang.Accept, callback: 'reloadPage'}];       
                                }",
                                "fileuploaded" => "function (event, data, previewId, index) {
                                    $(this).parent().parent().children().first().addClass('hide');
                                    var acciones = [{id: 'reloadpage', class: 'btn btn-primary', value: objLang.Accept, callback: 'reloadPage'}];                           
                                }",
                            ],
                        ]); 
                        ?>
                    </div>     
                </div>  

            </div>


        </div>

    </div>

    <div id="div_detalle" class="col-md-12 col-sm-12 col-xs-12 col-lg-12"></div>
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"></div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="form-group">
                <label for="txt_total" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label" id="txt_total"><?= Especies::t("Pagos", "Total a Pagar") ?></label>
                <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
<!--                    <input type="text" class="form-control keyupmce" value="0" id="txt_dsol_total" data-type="alfa" align="rigth" disabled="true" placeholder="<?= Especies::t("Pagos", "Total") ?>">-->
                    <label for="lbl_total" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label" id="lbl_total">0.00</label>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <div class="box-body table-responsive no-padding">
                <table  id="TbG_Productos" class="table table-hover">
                    <thead>
                        <tr>
                            <th style="display:none; border:none;"><?= Yii::t("formulario", "Ids") ?></th>
                            <th style="display:none; border:none;"><?= Yii::t("formulario", "uaca_id") ?></th>
                            <th><?= Yii::t("formulario", "Unidad") ?></th>
                            <th style="display:none; border:none;"><?= Yii::t("formulario", "tra_id") ?></th>
                            <th><?= Yii::t("formulario", "Tramite") ?></th>
                            <th style="display:none; border:none;"><?= Yii::t("formulario", "esp_id") ?></th>
                            <th><?= Yii::t("formulario", "Especie") ?></th>
                            <th><?= Yii::t("formulario", "Cant") ?></th>
                            <th><?= Yii::t("formulario", "Valor") ?></th>
                            <th><?= Yii::t("formulario", "Total") ?></th>
                            <th><?= Yii::t("formulario", "F.Aut") ?></th>
                            <th><?= Yii::t("formulario", "F.Cad") ?></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>



</form>
<script>
    var AccionTipo = 'Create';
</script>