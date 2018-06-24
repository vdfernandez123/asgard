<?php
use yii\helpers\Html;
?>

<?= Html::hiddenInput('txth_ids', '', ['id' => 'txth_ids']); ?>
<div class="col-md-12">
    <h3><span id="lbl_Personeria"><?= Yii::t("interesado", "Interesado") ?></span></h3>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">  
    <form class="form-horizontal">
        <?=
        $this->render('_formBuscarInteresa', [    
            'arrEstados' => $arrEstados]);
        ?>
    </form>
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">  
    <?=
        $this->render('_listarinteresaGrid', [
            'model' => $model,
            'url' => $url]);
    ?>
</div>

