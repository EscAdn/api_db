<?php
    $data=null;
    $_POST=json_decode(file_get_contents("php://input"), true);

    if(isset($_POST['option'])){

        $data = $_POST['option'];
        
        require_once "../clientes/clientesCRUD.php";
        $clientesClass= new clientesCRUD();
        
        if(isset($_POST['option']) && $_POST['option'] == 1){
            $data = $clientesClass->listaClientes();
        }


        if(isset($_POST['option']) && $_POST['option'] == 2){
            $data = $clientesClass->createUpdateCliente();
        }

        if(isset($_POST['option']) && $_POST['option'] == 3){
            $data = $clientesClass->listaOrderClientes();
        }

    } else{
        $data = "No se envio un nodo de API";
    }
        
        print json_encode($data, JSON_UNESCAPED_UNICODE);