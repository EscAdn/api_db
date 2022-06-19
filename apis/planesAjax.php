<?php
$data=null;
$_POST=json_decode(file_get_contents("php://input"), true);

if(isset($_POST['option'])){

    $data = $_POST['option'];

    require_once "../planes/planesCRUD.php";
    $planesClass= new planesCRUD();

    if(isset($_POST['option']) && $_POST['option'] == 1){
        $data = $planesClass->listaPlan();
    }

    if(isset($_POST['option']) && $_POST['option'] == 2){
        $data = $planesClass->createUpdatePlan();
    }

} else{
    $data = "No se envio un nodo de API";
}

print json_encode($data, JSON_UNESCAPED_UNICODE);