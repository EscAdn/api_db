<?php
$data=null;
$_POST=json_decode(file_get_contents("php://input"), true);

if(isset($_POST['option'])){

    $data = $_POST['option'];

    require_once "../contratos/contratosCRUD.php";
    $contratosClass= new contratosCRUD();

    if(isset($_POST['option']) && $_POST['option'] == 1){
        $data = $contratosClass->listaContratos();
    }

    if(isset($_POST['option']) && $_POST['option'] == 2){
        $data = $contratosClass->createUpdateContratos();
    }

} else{
    $data = "No se envio un nodo de API";
}

print json_encode($data, JSON_UNESCAPED_UNICODE);