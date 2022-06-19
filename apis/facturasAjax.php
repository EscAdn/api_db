<?php
    $data=null;
    $_POST=json_decode(file_get_contents("php://input"), true);

    if(isset($_POST['option'])){

        $data = $_POST['option'];
        
        require_once "../facturas/facturasCRUD.php";
        $facturasClass= new facturasCRUD();

        if(isset($_POST['option']) && $_POST['option'] == 0){
            $data = $facturasClass->facturasAEmitir();
        }
        
        if(isset($_POST['option']) && $_POST['option'] == 1){
            $data = $facturasClass->facturasPendientes();
        }


        if(isset($_POST['option']) && $_POST['option'] == 2){
            $data = $facturasClass->createUpdateCliente();
        }

        if(isset($_POST['option']) && $_POST['option'] == 3){
            $data = $facturasClass->listaOrderfacturas();
        }

    } else{
        $data = "No se envio un nodo de API";
    }
        
        print json_encode($data, JSON_UNESCAPED_UNICODE);