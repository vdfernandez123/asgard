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

//print_r($model);
?>
<?= Html::hiddenInput('txth_ids', '', ['id' => 'txth_ids']); ?>
<div class="col-md-12">
    <h3><span id="lbl_Personeria"><?= Yii::t("solicitud_ins", "Applications pending") ?></span></h3>
</div>
<div>
    <form class="form-horizontal">
        <?=
        $this->render('_form_Buscarsolpendiente', [
            'arrEjecutivo' => $arrEjecutivo,
            'grupo' => $grupo,    
                ]);            
        ?>
    </form>
</div>
<div>
    <?=
    $this->render('_listarsolpendiente_grid', [
        'model' => $model,        
        'url' => $url]);
    ?>
</div>


