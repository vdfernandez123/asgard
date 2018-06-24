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
<?= Html::hiddenInput('txth_ids', '', ['id' => 'txth_ids']); ?>
<div class="col-md-12">
    <h3><span id="lbl_Personeria"><?= Yii::t("formulario", "List Payment") ?></span></h3>
</div>
<div>
    <form class="form-horizontal">
        <?=
        $this->render('_formBuscarPagsolAdm', [
            //'arrCarreras' => $arrCarreras,
            'arrEstados' => $arrEstados
            ]);
        ?>
    </form>
</div>
<div>
    <?=
    $this->render('_listarPagsoladmGrid', [
        'model' => $model,
        'url' => $url]);
    ?>
</div>