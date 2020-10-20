<?php

use yii\helpers\Html;
use app\modules\academico\Module as academico;
?>
<div>
    <form class="form-horizontal">
        <?=
        $this->render('index-search', [                
            'arr_periodo' => $mod_periodo,      
            'arrEstados' => $arrEstados,
            ]);
        ?>
    </form>
</div>
<div>
    <?=
    $this->render('index-grid', [
        'model' => $model,
        ]);
    ?>
</div>