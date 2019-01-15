<?php

use yii\helpers\Html;
use yii\helpers\Url;
use app\modules\marketing\Module;
use app\modules\admision\Module as admision;
admision::registerTranslations();

?>

<form class="form-horizontal" enctype="multipart/form-data" id="formnewlista">
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <h3><span id="lbl_solicitud"><?= Module::t("marketing", "New List") ?></span></h3>
    </div>
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="form-group">
                <label for="cmb_empresa" class="col-sm-4 col-md-4 col-xs-4 col-lg-4 control-label"><?= Yii::t("formulario", "Company") ?> <span class="text-danger">*</span> </label>
                <div class="col-sm-8 col-md-8 col-xs-8 col-lg-8">
                    <?= Html::dropDownList("cmb_empresa", 0, $arr_empresa, ["class" => "form-control can_combo", "id" => "cmb_empresa"]) ?>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="form-group">
                <label for="txt_carrera_programa" class="col-sm-4 col-md-4 col-xs-4 col-lg-4 control-label"><?= admision::t("crm", "Career/Program/Course") ?> <span class="text-danger">*</span> </label> 
                <div class="col-sm-8 col-md-8 col-xs-8 col-lg-8">
                    <?= Html::dropDownList("cmb_carrera_programa", 0, $arr_carrera, ["class" => "form-control can_combo", "id" => "cmb_carrera_programa"]) ?>
                </div>
            </div>
        </div> 
    </div>
    
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <h4><span id="lbl_solicitud"><?= Module::t("marketing", "Datos de Lista") ?></span></h4>
    </div>
    
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_nombre_lista" class="col-sm-4 control-label" id="lbl_nombre_lista"><?= Yii::t("formulario", "Name") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_nombre_lista" data-type="alfa" placeholder="<?= Yii::t("formulario", "Name") ?>">                 
                </div>
            </div>
        </div>           
        
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_asunto" class="col-sm-4 control-label" id="lbl_asunto"><?= Module::t("marketing", "Subject") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_asunto" data-type="alfa" placeholder="<?= Module::t("marketing", "Subject") ?>">                 
                </div>
            </div>
        </div> 
    </div> 
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_nombre_contacto" class="col-sm-4 control-label" id="lbl_nombre_contacto"><?= Module::t("marketing", "Name Contact") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_nombre_contacto" data-type="alfa" placeholder="<?= Module::t("marketing", "Name Contact") ?>">                 
                </div>
            </div>
        </div> 
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_correo_contacto" class="col-sm-4 control-label" id="lbl_correo_contacto"><?= Module::t("marketing", "Contact Email") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_correo_contacto" data-type="email" placeholder="<?= Module::t("marketing", "Contact Email") ?>">                 
                </div>
            </div>
        </div>           
    </div>    

    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_pais" class="col-sm-4 control-label" id="lbl_pais"><?= Module::t("marketing", "País") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <?= Html::dropDownList("cmb_pais", 0, $arr_pais, ["class" => "form-control can_combo", "id" => "cmb_pais"]) ?>
                </div>
            </div>
        </div> 
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_provincia" class="col-sm-4 control-label" id="lbl_provincia"><?= Module::t("marketing", "Provincia") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <?= Html::dropDownList("cmb_provincia", 0, $arr_provincia, ["class" => "form-control can_combo", "id" => "cmb_provincia"]) ?>
                </div>
            </div>
        </div>           
    </div>    
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_ciudad" class="col-sm-4 control-label" id="lbl_ciudad"><?= Module::t("marketing", "Ciudad") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <?= Html::dropDownList("cmb_ciudad", 0, $arr_ciudad, ["class" => "form-control can_combo", "id" => "cmb_ciudad"]) ?>
                </div>
            </div>
        </div> 
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_direccion1" class="col-sm-4 control-label" id="lbl_direccion1"><?= Module::t("marketing", "Dirección1") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_direccion1" data-type="alfanumerico" placeholder="<?= Module::t("marketing", "Dirección1") ?>">                 
                </div>
            </div>
        </div>           
    </div> 
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_direccion2" class="col-sm-4 control-label" id="lbl_direccion2"><?= Module::t("marketing", "Dirección2") ?></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control" value="" id="txt_direccion2" data-type="alfanumerico" placeholder="<?= Module::t("marketing", "Dirección2") ?>">                 
                </div>
            </div>
        </div> 
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_telefono" class="col-sm-4 control-label" id="lbl_telefono"><?= Module::t("marketing", "Teléfono") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_telefono" data-type="telefono_sin" placeholder="<?= Module::t("marketing", "Teléfono") ?>">                 
                </div>
            </div>
        </div>           
    </div>    
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_codigo_postal" class="col-sm-4 control-label" id="lbl_codigo_postal"><?= Module::t("marketing", "Código Postal") ?><span class="text-danger">*</span></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control PBvalidation keyupmce" value="" id="txt_codigo_postal" data-type="alfanumerico" placeholder="<?= Module::t("marketing", "Código Postal") ?>">                 
                </div>
            </div>
        </div>                 
    </div>     
    
    <div class="row"> 
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9"></div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
            <a id="sendNewList" href="javascript:" class="btn btn-primary btn-block"> <?= Yii::t("formulario", "Send") ?> </a>
        </div>
    </div>
</form>
