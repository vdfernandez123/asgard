<div>
    <table style="width:100mm" class="marcoDiv">
        <tbody>
            <tr>
                <td>
                    <span class="titleRazon"><?php echo strtoupper(Yii::$app->session->get('RazonSocial', FALSE)) ?></span>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="titleLabel"><?php echo Yii::t('DOCUMENTOS', 'Dir matrix') ?></span>
                    <span><?php echo strtoupper(Yii::$app->session->get('DireccionMatriz', FALSE)) ?></span>
                </td>
                
            </tr>
<!--            <tr>
                <td>
                    <span class="titleLabel"><?php echo Yii::t('DOCUMENTOS', 'Dir branch') ?></span>
                    <span><?php echo strtoupper(Yii::$app->session->get('DireccionSucursal', FALSE)) ?></span>
                </td>
                
            </tr>
            <tr>
                <td>
                    <span class="titleLabel"><?php echo Yii::t('DOCUMENTOS', 'Special contributor') ?>:</span>
                    <span><?php echo (Yii::$app->session->get('ContribuyenteEspecial', FALSE)!='')? strtoupper(Yii::$app->session->get('ContribuyenteEspecial', FALSE)):' NO' ?></span>
                </td>               
            </tr>-->
            <tr>
                <td>
                    <span class="titleLabel"><?php echo Yii::t('DOCUMENTOS', 'ACCOUNTING REQUIRED TO CARRY') ?></span>
                    <span><?php echo strtoupper(Yii::$app->session->get('ObligadoContabilidad', FALSE)) ?></span>
                </td>
                
            </tr>
            
        </tbody>
        
    </table>
</div>