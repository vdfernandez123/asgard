<style>
    .modCab{
        color: #000000;        
        line-height: 16px;
    }
    .panelUserInfo{
        /*margin: 10px 0px 18px;*/
        margin: 5px 0px 0px;
    }    
    .tcoll_cen {
        width: 50%;
        float: left;
        font-size: 10px;
        text-align: left;
    }
    .tcolr_cen {
        width: 50%;
        float: left;
        font-size: 10px;
        text-align: left;
    }
    .tcoll_cen2 {
        width: 40%;
        float: left;
        font-size: 10px;
        text-align: left;
    }
    .tcolr_cen2 {
        width: 60%;
        float: left;
        font-size: 10px;
        text-align: left;
    }
    .tcoll_ad {
        width: 30%;
        float: left;
        font-size: 10px;
        text-align: left;
    }
    .tcolr_ad {
        width: 70%;
        float: left;
        font-size: 10px;
        text-align: left;
    }
    .divDetalles{
        float: left;
        width: 100%;
        position: absolute;      
        left: 0;
        margin-top: 10px;
    }
    .divDetalleAd{
        float: left;
        width: 65%;
        position: absolute;      
        left: 0;
    }
    .divDetalleTot{  
        width: 35%;
        position: absolute;      
        right: 0;
    }
    .div_modInfoAd{
        float: left;
        width: 70%;
    }
    .div_modInfoVal{
        float: left;
        width: 100%;       
    }
    .div_modInfoDet{
        float: left;
        width: 60%;
    }
    .div_modInfoDet2{
        float: left;
        width: 75%;
    }
    .div_modInfoDet1{
        float: left;
        width: 40%;
    }    
    .bordeDivDet{ 
        border: 1px solid #000000;       
        -moz-border-radius: 7px;
        -webkit-border-radius: 7px;
        padding: 10px;
    }    
    .valorAlign{ 
        text-align: right !important;
    }
    .divDetaVacio{
        height: 100px;
    }
</style>
<div class="panelUserInfo">
    <div class="bordeDivDet">
        <div class="div_modInfoDet modCab">
            <div>
                <div class="tcoll_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "Business Name / Names and Lastnames") ?>:</div>
                <div class="tcolr_cen"><?php echo $arr_docelec['nombre2'] . " " . $arr_docelec['nombre'] ?></div>
            </div>
            <div>
                <div class="tcoll_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "Date Issue") ?>:</div>
                <div class="tcolr_cen"><?php echo $arr_docelec['fec_emision']; ?></div>
            </div>
        </div>
        <div class="div_modInfoDet1 modCab">
            <div>
                <div class="tcoll_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "DNI") ?>:</div>
                <div class="tcolr_cen">
                    <?php
                    if ($arr_docelec['dni1']) {
                        $arr_docelec_dni = $arr_docelec['dni1'];
                    } elseif ($arr_docelec['dni2']) {
                        $arr_docelec_dni = $arr_docelec['dni2'];
                    } elseif ($arr_docelec['dni3']) {
                        $arr_docelec_dni = $arr_docelec['dni3'];
                    }
                    ?>
                    <?php echo $arr_docelec_dni; ?>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <hr/>
        <div class="div_modInfoDet modCab">
            <div>
                <div class="tcoll_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "Document to modify") ?>:</div>
                <div class="tcolr_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "INVOICE") . "   " . $numDocModificado; ?></div>
            </div>
            <div>
                <div class="tcoll_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "Date Issue") ?>:</div>
                <div class="tcolr_cen"><?php echo $fechaEmisionDocSustento; ?></div>
            </div>
            <div>
                <div class="tcoll_cen"><?php echo app\modules\fe_edoc\Module::t("fe", "Reason Modification") ?>:</div>
                <div class="tcolr_cen"><?php echo $motivo; ?></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <br/>
    <div class="div_modInfoVal">
        <table>    
            <tr>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Code Principal'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Code Auxiliar'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Amount'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Description'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Additional Detail'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Additional Detail'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Additional Detail'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Unit Price'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Descount'); ?></td>
                <td class="thcol"><?php echo app\modules\fe_edoc\Module::t("fe", 'Total Price'); ?></td>
            </tr>
            <?php
            $total_descuento = 0;
            foreach ($arr_detalles as $arr_detalle) {
                $codPrincipal = isset($arr_detalle["codigoInterno"]) ? trim($arr_detalle["codigoInterno"]) : "";
                $codAuxiliar = isset($arr_detalle["codAuxiliar"]) ? trim($arr_detalle["codAuxiliar"]) : "";
                $cantidad = isset($arr_detalle["cantidad"]) ? trim($arr_detalle["cantidad"]) : "";
                $descripcion = isset($arr_detalle["descripcion"]) ? trim($arr_detalle["descripcion"]) : "";
                $precioUnitario = isset($arr_detalle["precioUnitario"]) ? trim($arr_detalle["precioUnitario"]) : "";
                $descuento = isset($arr_detalle["descuento"]) ? trim($arr_detalle["descuento"]) : "";
                $precioTotal = isset($arr_detalle["precioTotalSinImpuesto"]) ? trim($arr_detalle["precioTotalSinImpuesto"]) : "";
                $detaAdicional = array();
                if (isset($arr_detalle["detallesAdicionales"])) {
                    $arr_detalles_adi = $arr_detalle["detallesAdicionales"]["detAdicional"];
                    if (array_key_exists('0', $arr_detalles_adi)) {
                        $arr_detalles_adi = $arr_detalle["detallesAdicionales"]["detAdicional"];
                    } else {
                        $arr_detalles_adi = $arr_detalle["detallesAdicionales"];
                    }
                    foreach ($arr_detalles_adi as $arr_detallesadi) {
                        $detalle_nombre = trim($arr_detallesadi["@nombre"]);
                        $detalle_valor = trim($arr_detallesadi["@valor"]);
                        if ($detalle_nombre != "") {
                            if ($detalle_valor != "") {
                                $detaAdicional[] = $detalle_nombre . ": " . $detalle_valor;
                            } else {
                                $detaAdicional[] = $detalle_nombre;
                            }
                        } elseif ($detalle_valor != "") {
                            $detaAdicional[] = $detalle_valor;
                        } else {
                            $detaAdicional[] = "";
                        }
                    }
                }
                $total_descuento = $total_descuento + $descuento;
                echo "<tr>";
                echo "<td style = 'text-align: center;'>" . $codPrincipal . "</td>";
                echo "<td style = 'text-align: center;'>" . $codAuxiliar . "</td>";
                echo "<td style = 'text-align: right;'>" . $cantidad . "</td>";
                echo "<td style = 'text-align: left;'>" . $descripcion . "</td>";
                echo "<td style = 'text-align: left;'>" . $detaAdicional[0] . "</td>";
                echo "<td style = 'text-align: left;'>" . $detaAdicional[1] . "</td>";
                echo "<td style = 'text-align: left;'>" . $detaAdicional[2] . "</td>";
                echo "<td style = 'text-align: right;'>" . $precioUnitario . "</td>"; //En Nota de Credito el orden es 1ero Descuento 2do Precio unitario
                echo "<td style = 'text-align: right;'>" . $descuento . "</td>";
                echo "<td style = 'text-align: right;'>" . $precioTotal . "</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </div>
    <div class="divDetalles">
        <div class="divDetalleAd ">
            <div class="bordeDivDet modCab div_modInfoAd <?php if (!isset($arr_infoAdicional)) { ?>divDetaVacio<?php 
                                                                                                            } ?>">
                <div>
                    <div class="tcoll bold" style="width: 90%; alignment-adjust: center"><?php echo app\modules\fe_edoc\Module::t("fe", "Additional Information") ?></div>
                </div>
                <?php
                if (isset($arr_infoAdicional)) {
                    $arr_detalles_adi = $arr_infoAdicional["campoAdicional"];
                    if (array_key_exists('0', $arr_detalles_adi)) {
                        $arr_detalles_adi = $arr_infoAdicional["campoAdicional"];
                    } else {
                        $arr_detalles_adi = $arr_infoAdicional;
                    }
                    foreach ($arr_detalles_adi as $arr_detallesadi) {
                        $detalle_nombre = trim($arr_detallesadi["@nombre"]);
                        $detalle_valor = trim($arr_detallesadi["$"]);
                        if ($detalle_nombre != "" && $detalle_valor != "") {
                            $nombre_adicional = GALGOMEDIA::cambiarFormatoCapitalizar($detalle_nombre, true);
                            ?>
                            <div>
                                <div class="tcoll_ad"><?php echo $nombre_adicional ?>:</div>
                                <div class="tcolr_ad"><?php echo $detalle_valor; ?></div>
                            </div> 
                            <?php

                        }
                    }
                }
                ?>
                <div class="clear"></div>
            </div>
        </div>
        <?php
        $iva = "0.00";
        $ice = "0.00";
        $irbpnr = "0.00";
        $subtotal_12 = "0.00";
        $subtotal_0 = "0.00";
        $subtotal_no_objeto = "0.00";
        $subtotal_exento = "0.00";
        foreach ($arr_infoNotaCredito as $arr_info) {
            $codigo = trim($arr_info["codigo"]);
            $codigoPorcentaje = trim($arr_info["codigoPorcentaje"]);
            $baseImponible = trim($arr_info["baseImponible"]);
            $valor = trim($arr_info["valor"]);
            if ($codigo == "2" && $codigoPorcentaje == "0") {
                $iva = $valor;
                $subtotal_0 = $baseImponible;
            }
            if ($codigo == "2" && $codigoPorcentaje == "2") {
                $iva = $valor;
                $subtotal_12 = $baseImponible;
            }
            if ($codigo == "2" && $codigoPorcentaje == "6") {
                $iva = $valor;
                $subtotal_no_objeto = $baseImponible;
            }
            if ($codigo == "2" && $codigoPorcentaje == "7") {
                $iva = $valor;
                $subtotal_exento = $baseImponible;
            }
            if ($codigo == "3") {
                $ice = $valor;
            }
            if ($codigo == "5") {
                $irbpnr = $valor;
            }
        }
        ?>
        <div class="divDetalleTot">
            <table>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'SUBTOTAL 12%'); ?></td>
                    <td align="right"><?php echo $subtotal_12 ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'SUBTOTAL 0%'); ?></td>
                    <td align="right"><?php echo $subtotal_0 ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'SUBTOTAL not liable to IVA'); ?></td>
                    <td align="right"><?php echo $subtotal_no_objeto ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'SUBTOTAL TAX FREE'); ?></td>
                    <td align="right"><?php echo $totalSinImpuestos ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'SUBTOTAL exempt IVA'); ?></td>
                    <td align="right"><?php echo $subtotal_exento ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'TOTAL Descount'); ?></td>
                    <td align="right"><?php echo $total_descuento ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'ICE'); ?></td>
                    <td align="right"><?php echo $ice ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'IVA  12%'); ?></td>
                    <td align="right"><?php echo $iva; ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'IRBPNR'); ?></td>
                    <td align="right"><?php echo $irbpnr; ?></td>
                </tr>
                <tr>
                    <td><?php echo app\modules\fe_edoc\Module::t("fe", 'TOTAL VALUE'); ?></td>
                    <td style="text-align: right"><?php echo $valorModificacion ?></td>
                </tr>
            </table>
        </div>    
    </div>
</div>