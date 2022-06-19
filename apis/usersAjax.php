<?php
    $data=null;
    $_POST=json_decode(file_get_contents("php://input"), true);

    if(isset($_POST['option'])){

        $data = $_POST['option'];
        require_once "../users/usersCRUD.php";
        $userClass= new userCRUD();

        if(isset($_POST['option']) && $_POST['option'] == 0){
            $data = $userClass->accesar();
        }

        if (isset($_POST['option'])&& $_POST['option']== 1){
           $data= $userClass->lista_user();
        }

        if (isset($_POST['option'])&& $_POST['option']== 3){
            echo $userClass->agregar_user();
        }

        if (isset($_POST['option'])&& $_POST['option']== 2){
            echo $userClass->eliminar_user();
        }

        if (isset($_POST['option'])&& $_POST['option']== 4){
            echo $userClass->editar_user();
        }

        if (isset($_POST['option'])&& $_POST['option']== 6){
            $data = $userClass->editar_pass_controlador();
        }

    } else{
        $data = "No se envio un nodo de API";
    }
        
        print json_encode($data, JSON_UNESCAPED_UNICODE);