$(document).ready(function () {
    $('#cmb_pais').change(function () {
        var link = $('#txth_base').val() + "/admision/contactos/edit";
        var arrParams = new Object();
        arrParams.pai_id = $(this).val();
        arrParams.getprovincias = true;
        arrParams.getarea = true;
        requestHttpAjax(link, arrParams, function (response) {
            if (response.status == "OK") {
                data = response.message;
                setComboData(data.provincias, "cmb_prov");
                var arrParams = new Object();
                if (data.provincias.length > 0) {
                    arrParams.prov_id = data.provincias[0].id;
                    arrParams.getcantones = true;
                    requestHttpAjax(link, arrParams, function (response) {
                        if (response.status == "OK") {
                            data = response.message;
                            setComboData(data.cantones, "cmb_ciu");
                        }
                    }, true);
                }

            }
        }, true);
        // actualizar codigo pais
        $("#lbl_codeCountry").text($("#cmb_pais option:selected").attr("data-code"));
    });
    
    $('#cmb_prov').change(function () {
        var link = $('#txth_base').val() + "/admision/contactos/edit";
        var arrParams = new Object();
        arrParams.prov_id = $(this).val();
        arrParams.getcantones = true;
        requestHttpAjax(link, arrParams, function (response) {
            if (response.status == "OK") {
                data = response.message;
                setComboData(data.cantones, "cmb_ciu");
            }
        }, true);
    });
    
    function camposnulos(campo) {
        if ($(campo).val() == "")
        {
            $(campo).removeClass("PBvalidation");
        } else
        {
            $(campo).addClass("PBvalidation");
        }
    }
    $('#btn_buscarContacto').click(function () {
        actualizarGridContacto();
    });
    
    
    //*********** FUNCIONES QUE SE DEBEN REMOVER CUANDO ESTEN HABILITADOS LOS MENUS **********
    $('#btn_editcliente').click(function () {
        var codigo = $('#txth_pcon_id').val();
        var tper_id = $('#txth_tper_id').val();
        window.location.href = $('#txth_base').val() + "/admision/contactos/edit?codigo=" + codigo + "&tper_id=" + tper_id;
    });
    
    $('#btn_crearoportunidad').click(function () {
        var pgid = $('#txth_pgid').val();
        window.location.href = $('#txth_base').val() + "/admision/oportunidades/newoportunidad?pgid=" + pgid;
    });

    $('#btn_updatecliente').click(function () {
        var link = $('#txth_base').val() + "/admision/contactos/update";
        var arrParams = new Object();
        camposnulos('#txt_celular');
        camposnulos('#txt_celular2');
        camposnulos('#txt_telefono_con');
        camposnulos('#txt_correo');
        camposnulos('#txt_telefono_empresa');
        camposnulos('#txt_direccion');
        camposnulos('#txt_cargo');
        arrParams.agenteauten = $('#txth_idag').val();
        arrParams.personauten = $('#txth_idpa').val();
        arrParams.txt_nombre1 = $('#txt_nombre1').val();
        arrParams.txt_nombre2 = $('#txt_nombre2').val();
        arrParams.txt_apellido1 = $('#txt_apellido1').val();
        arrParams.txt_apellido2 = $('#txt_apellido2').val();
        arrParams.pges_id = $('#txth_pges_id').val();
        arrParams.pais = $('#cmb_pais').val();
        arrParams.cmb_tipo_dni = $('#cmb_tipo_dni').val();
        arrParams.cedula = $('#txt_cedula').val();
        arrParams.provincia = $('#cmb_prov').val();
        arrParams.ciudad = $('#cmb_ciu').val();
        arrParams.celular = $('#txt_celular').val();
        arrParams.celular2 = $('#txt_celular2').val();
        arrParams.telefono = $('#txt_telefono_con').val();
        arrParams.correo = $('#txt_correo').val();
        arrParams.medio = $('#cmb_medio').val();
        arrParams.empresa = $('#txt_nombre_empresa').val();
        arrParams.telefono_empresa = $('#txt_telefono_empresa').val();
        arrParams.direccion = $('#txt_direccion').val();
        arrParams.cargo = $('#txt_cargo').val();
        arrParams.contacto_empresa = $('#txt_nombre_contacto').val();
        arrParams.numero_contacto = $('#txt_numero_contacto').val();
        arrParams.tipo_persona = $('#txth_tper_id').val();
        arrParams.perges_contacto = $('#txth_pgco_id').val();
        arrParams.txt_nombre1contacto = $('#txt_nombrebene1').val();
        arrParams.txt_nombre2contacto = $('#txt_nombrebene2').val();
        arrParams.txt_apellido1contacto = $('#txt_apellidobene1').val();
        arrParams.txt_apellido2contacto = $('#txt_apellidobene2').val();
        arrParams.txt_celularcontacto = $('#txt_celularbene').val();
        arrParams.txt_correocontacto = $('#txt_correobeni').val();
        arrParams.txt_telefonocontacto = $('#txt_telefono_conbeni').val();
        arrParams.txt_paiscontacto = $('#cmb_pais_contacto').val();

        if ($('input[name=signup-ecu]:checked').val() == 1) {
            arrParams.nacecuador = 1;
        } else {
            arrParams.nacecuador = 0;
        }
        if (!validateForm()) {
            requestHttpAjax(link, arrParams, function (response) {
                showAlert(response.status, response.label, response.message);
                setTimeout(function () {
                    window.location.href = $('#txth_base').val() + "/admision/contactos/index";
                }, 3000);
            }, true);
        }
    });

    $('#btn_grabarCliente').click(function () {
        var link = $('#txth_base').val() + "/admision/contactos/save";
        var arrParams = new Object();
        // funcion que permite verificar si viene vacío, remover la validación.
        camposnulos('#txt_celular');
        camposnulos('#txt_celular2');
        camposnulos('#txt_telefono_con');
        camposnulos('#txt_correo');
        camposnulos('#txt_telefono_empresa');
        camposnulos('#txt_direccion');
        camposnulos('#txt_cargo');
        arrParams.agenteauten = $('#txth_idagent').val();
        arrParams.personauten = $('#txth_idperage').val();
        // Datos Generales
        arrParams.txt_nombre1 = $('#txt_nombre1').val();
        arrParams.txt_nombre2 = $('#txt_nombre2').val();
        arrParams.txt_apellido1 = $('#txt_apellido1').val();
        arrParams.txt_apellido2 = $('#txt_apellido2').val();
        arrParams.pais = $('#cmb_pais').val();
        arrParams.provincia = $('#cmb_prov').val();
        arrParams.ciudad = $('#cmb_ciu').val();
        arrParams.celular = $('#txt_celular').val();
        arrParams.celular2 = $('#txt_celular2').val();
        arrParams.telefono = $('#txt_telefono_con').val();
        arrParams.correo = $('#txt_correo').val();
        arrParams.medio = $('#cmb_medio').val();
        arrParams.empresa = $('#txt_nombre_empresa').val();
        arrParams.telefono_empresa = $('#txt_telefono_empresa').val();
        arrParams.direccion = $('#txt_direccion').val();
        arrParams.cargo = $('#txt_cargo').val();
        arrParams.contacto_empresa = $('#txt_nombre_contacto').val();
        arrParams.numero_contacto = $('#txt_numero_contacto').val();
        arrParams.paisContacto = $('#cmb_pais_contacto').val();

        if ($('input[name=opt_tipo_persona_n]:checked').val() == 1) {
            arrParams.tipo_persona = 1;
            camposnulos('#txt_nombre_empresa');
            camposnulos('#txt_numero_contacto');
            camposnulos('#txt_nombre_contacto');
        } else {
            arrParams.tipo_persona = 2;
            camposnulos('#txt_nombre1');
            camposnulos('#txt_apellido1');
        }

        // Datos Beneficiario      
        camposnulos('#txt_celularbene');
        camposnulos('#txt_celularbeni2');
        camposnulos('#txt_telefono_conbeni');
        camposnulos('#txt_correobeni');

        if ($('input:radio[name=rdo_beneficio]:checked').val()) {
            arrParams.beneficiario = 1;
            arrParams.contacto = $('input:radio[name=rdo_beneficio]:checked').val();
            arrParams.txt_nombrebeni1 = $('#txt_nombre1').val();
            arrParams.txt_nombrebeni2 = $('#txt_nombre2').val();
            arrParams.txt_apellidobeni1 = $('#txt_apellido1').val();
            arrParams.txt_apellidobeni2 = $('#txt_apellido2').val();
            arrParams.celularbeni = $('#txt_celular').val();
            arrParams.celular2beni = $('#txt_celular2').val();
            arrParams.telefonobeni = $('#txt_telefono_con').val();
            arrParams.correobeni = $('#txt_correo').val();
        } else {
            arrParams.beneficiario = 2;
            arrParams.contacto = $('input:radio[name=rdo_beneficio_no]:checked').val();
            arrParams.txt_nombrebeni1 = $('#txt_nombrebene1').val();
            arrParams.txt_nombrebeni2 = $('#txt_nombrebene2').val();
            arrParams.txt_apellidobeni1 = $('#txt_apellidobene1').val();
            arrParams.txt_apellidobeni2 = $('#txt_apellidobene2').val();
            arrParams.celularbeni = $('#txt_celularbene').val();
            arrParams.celular2beni = $('#txt_celularbeni2').val();
            arrParams.telefonobeni = $('#txt_telefono_conbeni').val();
            arrParams.correobeni = $('#txt_correobeni').val();
        }
        if (arrParams.beneficiario == 1) {
            $('#txt_nombrebene1').removeClass("PBvalidation");
            $('#txt_apellidobene1').removeClass("PBvalidation");
            $('#txt_celularbene').removeClass("PBvalidation");
            $('#txt_telefono_conbeni').removeClass("PBvalidation");
            $('#txt_correobeni').removeClass("PBvalidation");

            if (arrParams.celularbeni == '' && arrParams.telefonobeni == '' && arrParams.correobeni == '') {
                $('#txt_celular').addClass("PBvalidation");
                $('#txt_telefono_con').addClass("PBvalidation");
                $('#txt_correo').addClass("PBvalidation");
            }

        } else {
            $('#txt_nombrebene1').addClass("PBvalidation");
            $('#txt_apellidobene1').addClass("PBvalidation");

            if (arrParams.celularbeni == '' && arrParams.telefonobeni == '' && arrParams.correobeni == '') {
                $('#txt_celularbene').addClass("PBvalidation");
                $('#txt_telefono_conbeni').addClass("PBvalidation");
                $('#txt_correobeni').addClass("PBvalidation");
            } else {
                $('#txt_celularbene').removeClass("PBvalidation");
                $('#txt_telefono_conbeni').removeClass("PBvalidation");
                $('#txt_correobeni').removeClass("PBvalidation");
            }
        }
        if (arrParams.agenteauten == 1 || arrParams.agenteauten == 2 || arrParams.personauten == 1) {
            arrParams.agente = $('#cmb_agente').val();
        } else {
            arrParams.agente = $('#cmb_agenteau').val();
        }
        if ($('input[name=signup-ecu]:checked').val() == 1) {
            arrParams.nacecuador = 1;
        } else {
            arrParams.nacecuador = 0;
        }
        if (!validateForm()) {
            requestHttpAjax(link, arrParams, function (response) {
                showAlert(response.status, response.label, response.message);
                setTimeout(function () {
                    window.location.href = $('#txth_base').val() + "/admision/contactos/index";
                }, 3000);
            }, true);
        }
    });
    
});

function actualizarGridContacto() {
    var search = $('#txt_buscarDataPersona').val();
    var estado = $('#cmb_estadocontacto option:selected').val();
    var fase = $('#cmb_fasecontacto option:selected').val();
    //Buscar almenos una clase con el nombre para ejecutar
    if (!$(".blockUI").length) {
        showLoadingPopup();
        $('#Pbcontacto').PbGridView('applyFilterData', {'search': search, 'estado': estado, 'fase': fase});
        setTimeout(hideLoadingPopup, 2000);
    }
}

function edit(){
    var codigo = $('#txth_pcon_id').val();
    var tper_id = $('#txth_tper_id').val();
    window.location.href = $('#txth_base').val() + "/admision/contactos/edit?codigo=" + codigo + "&tper_id=" + tper_id;
}

function newOportunidad(){
    var pgid = $('#txth_pgid').val();
    window.location.href = $('#txth_base').val() + "/admision/oportunidades/newoportunidad?pgid=" + pgid;
}

function save(){
    var link = $('#txth_base').val() + "/admision/contactos/save";
    var arrParams = new Object();
    // funcion que permite verificar si viene vacío, remover la validación.
    camposnulos('#txt_celular');
    camposnulos('#txt_celular2');
    camposnulos('#txt_telefono_con');
    camposnulos('#txt_correo');
    camposnulos('#txt_telefono_empresa');
    camposnulos('#txt_direccion');
    camposnulos('#txt_cargo');
    arrParams.agenteauten = $('#txth_idagent').val();
    arrParams.personauten = $('#txth_idperage').val();
    // Datos Generales
    arrParams.txt_nombre1 = $('#txt_nombre1').val();
    arrParams.txt_nombre2 = $('#txt_nombre2').val();
    arrParams.txt_apellido1 = $('#txt_apellido1').val();
    arrParams.txt_apellido2 = $('#txt_apellido2').val();
    arrParams.pais = $('#cmb_pais').val();
    arrParams.provincia = $('#cmb_prov').val();
    arrParams.ciudad = $('#cmb_ciu').val();
    arrParams.celular = $('#txt_celular').val();
    arrParams.celular2 = $('#txt_celular2').val();
    arrParams.telefono = $('#txt_telefono_con').val();
    arrParams.correo = $('#txt_correo').val();
    arrParams.medio = $('#cmb_medio').val();
    arrParams.empresa = $('#txt_nombre_empresa').val();
    arrParams.telefono_empresa = $('#txt_telefono_empresa').val();
    arrParams.direccion = $('#txt_direccion').val();
    arrParams.cargo = $('#txt_cargo').val();
    arrParams.contacto_empresa = $('#txt_nombre_contacto').val();
    arrParams.numero_contacto = $('#txt_numero_contacto').val();
    arrParams.paisContacto = $('#cmb_pais_contacto').val();

    if ($('input[name=opt_tipo_persona_n]:checked').val() == 1) {
        arrParams.tipo_persona = 1;
        camposnulos('#txt_nombre_empresa');
        camposnulos('#txt_numero_contacto');
        camposnulos('#txt_nombre_contacto');
    } else {
        arrParams.tipo_persona = 2;
        camposnulos('#txt_nombre1');
        camposnulos('#txt_apellido1');
    }

    // Datos Beneficiario      
    camposnulos('#txt_celularbene');
    camposnulos('#txt_celularbeni2');
    camposnulos('#txt_telefono_conbeni');
    camposnulos('#txt_correobeni');

    if ($('input:radio[name=rdo_beneficio]:checked').val()) {
        arrParams.beneficiario = 1;
        arrParams.contacto = $('input:radio[name=rdo_beneficio]:checked').val();
        arrParams.txt_nombrebeni1 = $('#txt_nombre1').val();
        arrParams.txt_nombrebeni2 = $('#txt_nombre2').val();
        arrParams.txt_apellidobeni1 = $('#txt_apellido1').val();
        arrParams.txt_apellidobeni2 = $('#txt_apellido2').val();
        arrParams.celularbeni = $('#txt_celular').val();
        arrParams.celular2beni = $('#txt_celular2').val();
        arrParams.telefonobeni = $('#txt_telefono_con').val();
        arrParams.correobeni = $('#txt_correo').val();
    } else {
        arrParams.beneficiario = 2;
        arrParams.contacto = $('input:radio[name=rdo_beneficio_no]:checked').val();
        arrParams.txt_nombrebeni1 = $('#txt_nombrebene1').val();
        arrParams.txt_nombrebeni2 = $('#txt_nombrebene2').val();
        arrParams.txt_apellidobeni1 = $('#txt_apellidobene1').val();
        arrParams.txt_apellidobeni2 = $('#txt_apellidobene2').val();
        arrParams.celularbeni = $('#txt_celularbene').val();
        arrParams.celular2beni = $('#txt_celularbeni2').val();
        arrParams.telefonobeni = $('#txt_telefono_conbeni').val();
        arrParams.correobeni = $('#txt_correobeni').val();
    }
    if (arrParams.beneficiario == 1) {
        $('#txt_nombrebene1').removeClass("PBvalidation");
        $('#txt_apellidobene1').removeClass("PBvalidation");
        $('#txt_celularbene').removeClass("PBvalidation");
        $('#txt_telefono_conbeni').removeClass("PBvalidation");
        $('#txt_correobeni').removeClass("PBvalidation");

        if (arrParams.celularbeni == '' && arrParams.telefonobeni == '' && arrParams.correobeni == '') {
            $('#txt_celular').addClass("PBvalidation");
            $('#txt_telefono_con').addClass("PBvalidation");
            $('#txt_correo').addClass("PBvalidation");
        }

    } else {
        $('#txt_nombrebene1').addClass("PBvalidation");
        $('#txt_apellidobene1').addClass("PBvalidation");

        if (arrParams.celularbeni == '' && arrParams.telefonobeni == '' && arrParams.correobeni == '') {
            $('#txt_celularbene').addClass("PBvalidation");
            $('#txt_telefono_conbeni').addClass("PBvalidation");
            $('#txt_correobeni').addClass("PBvalidation");
        } else {
            $('#txt_celularbene').removeClass("PBvalidation");
            $('#txt_telefono_conbeni').removeClass("PBvalidation");
            $('#txt_correobeni').removeClass("PBvalidation");
        }
    }
    if (arrParams.agenteauten == 1 || arrParams.agenteauten == 2 || arrParams.personauten == 1) {
        arrParams.agente = $('#cmb_agente').val();
    } else {
        arrParams.agente = $('#cmb_agenteau').val();
    }
    if ($('input[name=signup-ecu]:checked').val() == 1) {
        arrParams.nacecuador = 1;
    } else {
        arrParams.nacecuador = 0;
    }
    if (!validateForm()) {
        requestHttpAjax(link, arrParams, function (response) {
            showAlert(response.status, response.label, response.message);
            setTimeout(function () {
                window.location.href = $('#txth_base').val() + "/admision/contactos/index";
            }, 3000);
        }, true);
    }
}

function update(){
    var link = $('#txth_base').val() + "/admision/contactos/update";
    var arrParams = new Object();
    camposnulos('#txt_celular');
    camposnulos('#txt_celular2');
    camposnulos('#txt_telefono_con');
    camposnulos('#txt_correo');
    camposnulos('#txt_telefono_empresa');
    camposnulos('#txt_direccion');
    camposnulos('#txt_cargo');
    arrParams.agenteauten = $('#txth_idag').val();
    arrParams.personauten = $('#txth_idpa').val();
    arrParams.txt_nombre1 = $('#txt_nombre1').val();
    arrParams.txt_nombre2 = $('#txt_nombre2').val();
    arrParams.txt_apellido1 = $('#txt_apellido1').val();
    arrParams.txt_apellido2 = $('#txt_apellido2').val();
    arrParams.pges_id = $('#txth_pges_id').val();
    arrParams.pais = $('#cmb_pais').val();
    arrParams.cmb_tipo_dni = $('#cmb_tipo_dni').val();
    arrParams.cedula = $('#txt_cedula').val();
    arrParams.provincia = $('#cmb_prov').val();
    arrParams.ciudad = $('#cmb_ciu').val();
    arrParams.celular = $('#txt_celular').val();
    arrParams.celular2 = $('#txt_celular2').val();
    arrParams.telefono = $('#txt_telefono_con').val();
    arrParams.correo = $('#txt_correo').val();
    arrParams.medio = $('#cmb_medio').val();
    arrParams.empresa = $('#txt_nombre_empresa').val();
    arrParams.telefono_empresa = $('#txt_telefono_empresa').val();
    arrParams.direccion = $('#txt_direccion').val();
    arrParams.cargo = $('#txt_cargo').val();
    arrParams.contacto_empresa = $('#txt_nombre_contacto').val();
    arrParams.numero_contacto = $('#txt_numero_contacto').val();
    arrParams.tipo_persona = $('#txth_tper_id').val();
    arrParams.perges_contacto = $('#txth_pgco_id').val();
    arrParams.txt_nombre1contacto = $('#txt_nombrebene1').val();
    arrParams.txt_nombre2contacto = $('#txt_nombrebene2').val();
    arrParams.txt_apellido1contacto = $('#txt_apellidobene1').val();
    arrParams.txt_apellido2contacto = $('#txt_apellidobene2').val();
    arrParams.txt_celularcontacto = $('#txt_celularbene').val();
    arrParams.txt_correocontacto = $('#txt_correobeni').val();
    arrParams.txt_telefonocontacto = $('#txt_telefono_conbeni').val();
    arrParams.txt_paiscontacto = $('#cmb_pais_contacto').val();

    if ($('input[name=signup-ecu]:checked').val() == 1) {
        arrParams.nacecuador = 1;
    } else {
        arrParams.nacecuador = 0;
    }
    if (!validateForm()) {
        requestHttpAjax(link, arrParams, function (response) {
            showAlert(response.status, response.label, response.message);
            setTimeout(function () {
                window.location.href = $('#txth_base').val() + "/admision/contactos/index";
            }, 3000);
        }, true);
    }
}