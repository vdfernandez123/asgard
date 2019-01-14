<?php

use yii\helpers\Html;
use kartik\date\DatePicker;
use app\modules\marketing\Module;
?>
<form class="form-horizontal" enctype="multipart/form-data" > 
    <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12 ">     
        <div class="col-md-7 col-sm-7 col-xs-7 col-lg-7">
            <div class="form-group">
                <h4><span id="lbl_general"><?= Module::t("marketing", "Programtion") ?></span></h4> 
            </div>
        </div>     
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="form-group">
                    <label for="cmb_lista" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label keyupmce"><?= Module::t("marketing", "List") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?= Html::dropDownList("cmb_lista", 0, $arr_lista, ["class" => "form-control", "id" => "cmb_lista"]) ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="form-group">
                    <label for="cmb_template" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label keyupmce"><?= Module::t("marketing", "Template") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?= Html::dropDownList("cmb_template", 0, $arr_template, ["class" => "form-control", "id" => "cmb_template"]) ?>
                    </div>
                </div>
            </div>
        </div> 
        <div class="col-md-7 col-sm-7 col-xs-7 col-lg-7">
            <div class="form-group">
                <h4><span id="lbl_general"><?= Module::t("marketing", "Days Schedule") ?></span></h4> 
            </div>
        </div> 
        <div class="col-md-12"> 
            <!-- AQUI EMPIEZA FOR-->  
            <table class="table table-bordered">
                <thead>
                    <tr align="center" style="font-weight: bold;"> 
                        <td><?= Yii::t("formulario", "Monday") ?></td>
                        <td><?= Yii::t("formulario", "Tuesday") ?></td>
                        <td><?= Yii::t("formulario", "Wednesday") ?></td>
                        <td><?= Yii::t("formulario", "Thursday") ?></td>
                        <td><?= Yii::t("formulario", "Friday") ?></td>
                        <td><?= Yii::t("formulario", "Saturday") ?></td>
                        <td><?= Yii::t("formulario", "Sunday") ?></td>
                    </tr>
                </thead>
                <?php for ($i = 1; $i < 2; $i++) { ?>
                    <tr align="center">                           
                        <?php
                        for ($j = 1; $j < 8; $j++) {
                            ?>                                    
                            <td><input type="checkbox" class="check_dias" name="<?php echo 'check_dia_' . $j; ?>"  id="<?php echo 'check_dia_' . $j; ?>" value="<?php echo $j; ?>"> </td> 
                            <?php
                        }
                        ?>  
                    </tr>                      
                <?php } ?>
            </table> 
            <!-- AQUI TERMINA FOR-->
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">          
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="txt_fecha_inicio" class="col-sm-5 col-md-5 col-xs-5 col-lg-5  control-label"><?= Yii::t("formulario", "Start date") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <?=
                        DatePicker::widget([
                            'name' => 'txt_fecha_inicio',
                            'value' => '',
                            'type' => DatePicker::TYPE_INPUT,
                            'options' => ["class" => "form-control PBvalidation keyupmce", "id" => "txt_fecha_inicio", "data-type" => "", "data-keydown" => "true", "placeholder" => Yii::t("formulario", "Start date")],
                            'pluginOptions' => [
                                'autoclose' => true,
                                'format' => Yii::$app->params["dateByDatePicker"],
                            ]
                        ]);
                        ?>
                    </div>               
                </div>                    
            </div>     
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="txt_fecha_fin" class="col-sm-5 col-md-5 col-xs-5 col-lg-5  control-label"><?= Yii::t("formulario", "End date") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7 ">
                        <?=
                        DatePicker::widget([
                            'name' => 'txt_fecha_fin',
                            'value' => '',
                            //'disabled' => $habilita,
                            'type' => DatePicker::TYPE_INPUT,
                            'options' => ["class" => "form-control PBvalidation keyupmce", "id" => "txt_fecha_fin", "data-type" => "fecha_fin", "data-keydown" => "true", "placeholder" => Yii::t("formulario", "End date")],
                            'pluginOptions' => [
                                'autoclose' => true,
                                'format' => Yii::$app->params["dateByDatePicker"],
                            ]
                        ]);
                        ?>
                    </div>                    
                </div>                    
            </div>                 
        </div>  
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="form-group">
                    <label for="txthoraenvio" class="col-sm-5 col-md-5 col-xs-5 col-lg-5 control-label keyupmce"><?= Module::t("marketing", "Shipping Time") ?></label>
                    <div class="col-sm-7 col-md-7 col-xs-7 col-lg-7">
                        <input type="text" class="form-control PBvalidation keyupmce" value="" id="txthoraenvio" data-type="tiempo" data-keydown="true" placeholder="<?= Yii::t('formulario', 'HH:MM') ?>">
                    </div>
                </div>
            </div>         
        </div>        
    </div>
    <div class="row"> 
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9"></div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
            <a id="sendProgramacion" href="javascript:" class="btn btn-primary btn-block"> <?= Yii::t("formulario", "Register") ?> </a>
        </div>
    </div>
</form>
