<?php

use yii\helpers\Html;
?>
<?= Html::hiddenInput('txth_ids', '', ['id' => 'txth_ids']); ?>

<div>
    <form class="form-horizontal">
        <?=
        $this->render('_formIndex', [
            'arr_periodo' => $arr_periodo, 
            'arr_tipoevaluacion' => $arr_tipoevaluacion, 
        ]);
        ?>
    </form>
</div>
<div>
    <?=
    $this->render('index-grid', [
        //'model' => $model,
    ]);
    ?>
</div>