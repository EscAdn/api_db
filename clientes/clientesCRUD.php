<?php
	require_once "../core/main.php";

    class clientesCRUD extends mainModel{

        public function listaClientes(){
            $sql=mainModel::conectar()->prepare("SELECT `id`, `nombre`, `direccion`, `telefono`, `fecha_registro` FROM `cliente`");
            $sql->execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
        }

        public function listaOrderClientes(){
            $sql=mainModel::conectar()->prepare("SELECT `id`, `nombre`, `direccion`, `telefono`, `fecha_registro` FROM `cliente` ORDER BY `nombre` ASC");
            $sql->execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
        }

        public function createUpdateCliente(){
            $id = $_POST['id'];
            $nombre = $_POST['nombre'];
            $telefono = $_POST['telefono'];
            $direccion = $_POST['direccion'];
            $fecha = $_POST['fecha'];
            $updated = date('Y-m-d');

            //CREAR CLIENTE
            if($id == 0){
                $sql = mainModel::conectar()->prepare("INSERT INTO `cliente`(`nombre`, `direccion`, `telefono`, `fecha_registro`, `updated_at`) VALUES (:nombre, :direccion, :telefono, :fecha, :updated_at)");
                $sql->bindParam(':nombre', $nombre);
                $sql->bindParam(':telefono', $telefono);
                $sql->bindParam(':direccion', $direccion);
                $sql->bindParam(':fecha', $fecha);
                $sql->bindParam(":updated_at", $updated);
            }else{
            // MODIFICAR CLIENTE
                $sql = mainModel::conectar()->prepare("UPDATE `cliente` SET `nombre`=:nombre,`direccion`=:direccion,`telefono`=:telefono, `fecha_registro`=:fecha, `updated_at`=:updated_at WHERE `id`=:id");
                $sql->bindParam(':nombre', $nombre);
                $sql->bindParam(':telefono', $telefono);
                $sql->bindParam(':direccion', $direccion);
                $sql->bindParam(':fecha', $fecha);
                $sql->bindParam(":updated_at", $updated);
                $sql->bindParam(':id', $id);
            }
            $sql->execute();

            if($sql->rowCount() >= 1){
                return "Ok";
            }else{
                return "Error";
            }
        }
        
    }