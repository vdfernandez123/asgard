<?php
use app\widgets\PbVPOS\PbVPOS;
\app\models\Utilities::putMessageLogFile('op en btnpago:'.$ordenPago);
echo PbVPOS::widget([
    "id" => "VPOS",
    "referenceID" => $referenceID,
    "ordenPago" => $ordenPago,
    "descripcionItem" => $descripcionItem,
    "titleBox" => $titleBox,
    "nombre_cliente" => $nombre_cliente,
    "apellido_cliente" => $apellido_cliente,
    "email_cliente" => $email_cliente,
    "total" => $total,
    "isCheckout" => (is_null($requestID)?false:true),
    "requestID" => (is_null($requestID)?"":$requestID),
    "type" => "form",
]);
?>