<?php
	require_once "../core/main.php";
    // require_once "../modelos/administradorModelo.php";

    class userCRUD extends mainModel{

        public function accesar(){
            $user=$_POST['usuario'];
            $clave=mainModel::encryptar($_POST['clave']);

            $sql=mainModel::conectar()->prepare("SELECT * FROM `usuarios` WHERE `name_user`= '$user' AND `password_user`= '$clave'");
            $sql-> execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
        }

        public function lista_user(){
            $sql=mainModel::conectar()->prepare("SELECT * FROM `usuarios`");
            $sql-> execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
        }
        
        public function agregar_user(){
            $nombre= strtolower($_POST['nombre']);
            $genero= $_POST['genero'];
            $user= strtolower($_POST['user']);
            $pass1= strtolower($_POST['clave']);
            $tipo= strtolower($_POST['tipo']);

            $sql=mainModel::conectar()->prepare("INSERT INTO `usuario`(`user`, `password`, `nombre`, `genero`, `tipo`, `estado`) VALUES (:usu, :pass, :nom, :gen, :tip, 'ALTA')");
            $sql->bindParam(":usu", $datos['User']);
            $sql->bindParam(":pass", $datos['Password']);
            $sql->bindParam(":nom", $datos['Nombre']);
            $sql->bindParam(":gen", $datos['Genero']);
            $sql->bindParam(":tip", $datos['Tipo']);

            $sql->execute();
            return $sql;
        }

        public function eliminar_user(){
			$id = $_POST['id'];
			
			$sql=mainModel::conectar()->prepare("DELETE FROM `usuario` WHERE id=:id");
            $sql->bindParam(":id", $id);
            $sql->execute();
            return $sql;
		}

		public function editar_user(){
            
            $id=$_POST['id'];
            $user= strtolower($_POST['user']);
            $nombre= strtolower($_POST['nombre']);
            $genero= $_POST['genero'];
            $tipo= $_POST['tipo'];

            $sql=mainModel::conectar()->prepare("UPDATE `usuario` SET `user`=:usuario,`nombre`=:nom,`genero`=:gen,`tipo`=:tip WHERE id= :id");
            $sql-> bindParam(":id", $datos ['Id']);
            $sql-> bindParam(":usuario", $datos ['User']);
            $sql-> bindParam(":nom", $datos ['Nombre']);
            $sql-> bindParam(":gen", $datos ['Genero']);
            $sql-> bindParam(":tip", $datos ['Tipo']);
            $sql-> execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
		}

        public function editar_pass_controlador(){
            $id=$_POST['id'];
            $pas1=mainModel::encryptar($_POST['p1']);

            $sql=mainModel::ejecutar_consulta_simple("UPDATE `usuario` SET `password`='$pas1' WHERE `id`=$id");

            if($sql->rowCount()>=1){
                return "Ok";
            }else{
                return $sql;
            }
        }
    }