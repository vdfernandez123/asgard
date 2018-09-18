<?php

use yii\helpers\Html;
use yii\helpers\Url;

?>
<?= Html::hiddenInput('txth_sins_id', $sins_id, ['id' => 'txth_sins_id']); ?>
<?= Html::hiddenInput('txth_per_id', $per_id, ['id' => 'txth_per_id']); ?>

<form class="form-horizontal" enctype="multipart/form-data" id="formsolicitud">
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <h3><span id="lbl_solicitud"><?= Yii::t("solicitud_ins", "See Request") ?></span></h3>
    </div>        
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_numsolicitud" class="col-sm-4 col-md-4 col-xs-4 col-lg-4 control-label" id="lbl_solicitud"><?= Yii::t("solicitud_ins", "Request #") ?></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control" value="<?= $numSolicitud ?>" id="txt_numsolicitud" disabled="true">                 
                </div>
            </div>
        </div>
    </div>   
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_nombres" class="col-sm-4 control-label" id="lbl_nombres"><?= Yii::t("formulario", "Names") ?></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control" value="<?= $nombres ?>" id="txt_nombres" disabled="true">                 
                </div>
            </div>
        </div>   
    
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_apellidos" class="col-sm-4 control-label" id="lbl_apellidos"><?= Yii::t("formulario", "Last Names") ?></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control" value="<?= $apellidos ?>" id="txt_apellidos" disabled="true">                 
                </div>
            </div>
        </div> 
    </div> 
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_nivelint" class="col-sm-4 control-label" id="lbl_unidad"><?= Yii::t("formulario", "Academic unit") ?></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control" value="<?= $nivelint ?>" id="txt_nivelint" disabled="true">                 
                </div>
            </div>
        </div> 
    
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <div class="form-group">
                <label for="txt_carrera" class="col-sm-4 control-label" id="lbl_carrera"><?= Yii::t("academico", "Career") . "/" . Yii::t("formulario", "Program") ?></label> 
                <div class="col-sm-8 ">
                    <input type="text" class="form-control" value="<?= $carrera ?>" id="txt_carrera" disabled="true">                 
                </div>
            </div>
        </div>    
    </div> 
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <h4><b><span id="lbl_Personeria"><?= Yii::t("formulario", "Attached Files") ?></span></b></h4>    
    </div>
    
    <div class="col-md-6 doc_titulo cinteres">
        <div class="form-group">
            <label for="txth_doc_titulo" class="col-sm-4 control-label keyupmce"><?= Yii::t("formulario", "Title") ?></label>
            <div class="col-sm-7 ">  
                <?php                
                echo "<a href='" . Url::to(['/site/getimage', 'route' => "$arch1"]) . "' download='" . $arch1 . "' ><span class='glyphicon glyphicon-download-alt'></span>Descargar Imagen</a>"                
                ?>
            </div>
        </div>
    </div>
   
    <div class="col-md-6  doc_dni cinteres">
        <div class="form-group">
            <label for="txth_doc_dni" class="col-sm-4  control-label keyupmce"><?= Yii::t("formulario", "DNI") ?></label>
            <div class="col-sm-7 ">                
                <?php
                echo "<a href='" . Url::to(['/site/getimage', 'route' => "$arch2"]) . "' download='" . $arch2 . "' ><span class='glyphicon glyphicon-download-alt'></span>Descargar Imagen</a>"
                ?>
            </div>
        </div>
    </div>        
    
    <div class="col-md-6  doc_foto cinteres">
        <div class="form-group">
            <label for="txth_doc_foto" class="col-sm-4  control-label keyupmce"><?= Yii::t("formulario", "Photo") ?></label>
            <div class="col-sm-7 ">                
                <?php
                echo "<a href='" . Url::to(['/site/getimage', 'route' => "$arch4"]) . "' download='" . $arch4 . "' ><span class='glyphicon glyphicon-download-alt'></span>Descargar Imagen</a>"
                ?>
            </div>
        </div>
    </div>        
    
    <?php if ($txth_extranjero == "1") { ?>
        <div class="col-md-6  doc_certvota cinteres">
            <div class="form-group">
                <label for="txth_doc_certvota" class="col-sm-4 control-label keyupmce"><?= Yii::t("formulario", "Voting Certificate") ?></label>
                <div class="col-sm-7 ">                
                    <?php
                    echo "<a href='" . Url::to(['/site/getimage', 'route' => "$arch3"]) . "' download='" . $arch3 . "' ><span class='glyphicon glyphicon-download-alt'></span>Descargar Imagen</a>"
                    ?>
                </div>
            </div>
        </div>
    <?php } ?>
    
    <?php if (!empty($arch5)) { ?>
        <div class="col-md-6  doc_beca cinteres">
            <div class="form-group">
                <label for="txth_doc_beca" class="col-sm-4 control-label keyupmce"><?= Yii::t("formulario", "Scholarship document") ?></label>
                <div class="col-sm-7 ">                
                    <?php
                    echo "<a href='" . Url::to(['/site/getimage', 'route' => "$arch5"]) . "' download='" . $arch5 . "' ><span class='glyphicon glyphicon-download-alt'></span>Descargar Imagen</a>"
                    ?>
                </div>
            </div>
        </div>
    <?php } ?>
    <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6  doc_foto cinteres">
        <div class="form-group">
            <label for="txth_doc_pago" class="col-sm-4 control-label keyupmce"><?= Yii::t("formulario", "Payment") ?></label>
            <div class="col-sm-7 ">                
                <?php                    
                    echo "<a href='" . Url::to(['/site/getimage', 'route' => "/uploads/documento/" . $per_id . "/" . $img_pago]) . "' download='" . $img_pago . "' ><span class='glyphicon glyphicon-download-alt'></span>Descargar Pago</a>"
                ?>
            </div>
        </div>
    </div> 
    
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
        <h4><span id="lbl_solicitud"><?= Yii::t("solicitud_ins", "Result Review") ?></span></h4>
    </div> 
        
    <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
        <div class="form-group">
            <label for="cmb_revision" class="col-sm-4 col-md-4 col-xs-4 col-lg-4 control-label keyupmce"><?= Yii::t("formulario", "Result") ?></label>
            <div class="col-sm-4 col-md-4 col-xs-4 col-lg-4">    
                <?php if (empty($fec_prenoapro)) { ?> 
                    <?= Html::dropDownList("cmb_revision", 0, $revision, ["class" => "form-control PBvalidation", "id" => "cmb_revision"]) ?> 
                <?php } else {?>                
                    <input type="text" value= "No Aprobado" readonly="readonly" class="form-control" id="txt_resultado" data-type="alfa" data-keydown="true" >  
                <?php } ?>                
            </div>
        </div>
    </div>
    
    <?php if (empty($fec_prenoapro)) { ?> 
        <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12" id="Divnoaprobado" style="display: none;">
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="chk_titulo" class="col-sm-10 col-md-10 col-xs-10 col-lg-10 control-label"><?= Yii::t("solicitud_ins", "Does not meet acceptance conditions in title") ?></label>
                    <div class="col-sm-1 ">                     
                        <input type="checkbox" class="" id="chk_titulo"  data-type="alfa" data-keydown="true" placeholder="<?= Yii::t("solicitud_ins", "Does not meet acceptance conditions in title") ?>">                      
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <div class="form-group">
                    <label for="chk_documento" class="col-sm-10 col-md-10 col-xs-10 col-lg-10 control-label"><?= Yii::t("solicitud_ins", "Does not meet acceptance conditions on identity document") ?></label>
                    <div class="col-sm-1 ">                     
                        <input type="checkbox" class="" id="chk_documento" data-type="alfa" data-keydown="true" placeholder="<?= Yii::t("solicitud_ins", "Does not meet acceptance conditions on identity document") ?>">  
                    </div>
                </div>
            </div>
                        
            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6" id="Divcondtitulo" style="visibility: hidden;" >
                <div class="form-group">               
                    <?php for ($i=0; $i<count($arr_condtitulo); $i++) { 
                        $chk_contitulo = "chk_contitulo".$i;?>  
                        <p for="<?= $chk_contitulo ?>" class="col-sm-10 col-md-10 col-xs-10 col-lg-10 control-label"><?php echo $arr_condtitulo[$i]['name'] ?></p>
                        <div class="col-sm-1 ">    
                            <?= Html::hiddenInput('txth_cond_titulo'.$i, $arr_condtitulo[$i]['id'], ['id' => 'txth_cond_titulo'.$i]); ?>
                            <input type="checkbox" class="" id="<?= $chk_contitulo ?>" data-type="alfa" data-keydown="true" placeholder="<?= $arr_condtitulo[$i]['name'] ?>">  
                        </div>
                    <?php } ?>   
                </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6" id="Divconddni"  style="visibility: hidden;" >
                <div class="form-group">            
                    <?php for ($j=0; $j<count($arr_conddni); $j++) {                 
                        $chk_conddni = "chk_conddni".$j;?>  
                        <p for="<?= $chk_conddni ?>" class="col-sm-10  col-md-10 col-xs-10 col-lg-10 control-label"><?php echo $arr_conddni[$j]['name'] ?></p>
                        <div class="col-sm-1 ">    
                            <?= Html::hiddenInput('txth_cond_dni'.$j, $arr_conddni[$j]['id'], ['id' => 'txth_cond_dni'.$j]); ?>
                            <input type="checkbox" class="" id="<?= $chk_conddni ?>" data-type="alfa" data-keydown="true" placeholder="<?= $arr_conddni[$j]['name'] ?>">  
                        </div>
                    <?php } ?>      
                </div>
            </div>            
        </div>        
        <?php } else { $obs_condicion="";?>        
        <?php for ($r=0; $r<count($resp_rechazo); $r++) {
                if ($obs_condicion <>  $resp_rechazo[$r]['observacion']) {
                    $obs_condicion = $resp_rechazo[$r]['observacion'];                    
                     if ($r==0) {
                        $obs_correo = $obs_correo."<b>&nbsp;&nbsp;&nbsp;".$obs_condicion.":</b><br/>"."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No ".$resp_rechazo[$r]['condicion']."&nbsp;&nbsp;&nbsp;";
                    } else { 
                        $obs_correo = $obs_correo."</br><b>&nbsp;&nbsp;&nbsp;".$obs_condicion.":</b><br/>"."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No ".$resp_rechazo[$r]['condicion']."&nbsp;&nbsp;&nbsp;";
                    }
                }  else {
                    $obs_correo = $obs_correo."<br/>"."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No ".$resp_rechazo[$r]['condicion']."&nbsp;&nbsp;&nbsp;";
                }                                                                               
        }       
    ?> 
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
            <label for="" class="col-sm-4 col-md-4 col-xs-4 col-lg-4 control-label keyupmce"><?= Yii::t("solicitud_ins", "Observaciones:") ?></label>            
        </div> 
        
    <?php $leyenda = '<div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 ">     
          <div style = "width: 530px;" class="alert alert-info"><span style="font-weight:"> </span> '            
                . $obs_correo .
          '</div>
          </div>';     
        echo $leyenda; ?>                   
     <?php } ?>    
    
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12"> 
        <div class="form-group">
            <label for="" class="col-sm-10  control-label keyupmce"></label>
            <div class="col-md-2 col-sm-2 col-xs-4 col-lg-2">     
                <?php if (empty($fec_prenoapro)) { ?> 
                    <a id="btn_Preaprobarsolicitud" href="javascript:" class="btn btn-primary btn-block"> <?= Yii::t("formulario", "Send") ?></a>
                <?php } ?>  
            </div>                                                                                  
        </div>    
    </div>         
</form>
