<?php
	require_once "../core/main.php";

    class planesCRUD extends mainModel{

        public function listaPlan(){
            $sql=mainModel::conectar()->prepare("SELECT `id`, `nombre`, `carga`, `descarga`, `mensualidad`, `instalacion`, `fecha_registro` FROM `planes`");
            $sql->execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
        }

        public function createUpdatePlan(){
            $id = $_POST['id'];
            $nombre = $_POST['nombre'];
            $carga = $_POST['carga'];
            $descarga = $_POST['descarga'];
            $mensualidad = $_POST['mensualidad'];
            $instalacion = $_POST['instalacion'];
            $fecha = date('Y-m-d');

            //CREAR CLIENTE
            if($id == 0){
                $sql = mainModel::conectar()->prepare("INSERT INTO `planes`(`nombre`, `carga`, `descarga`, `mensualidad`, `instalacion`, `fecha_registro`) VALUES (:nombre, :carga, :descarga, :mensualidad, :instalacion, :fecha)");
                $sql->bindParam(':nombre', $nombre);
                $sql->bindParam(':carga', $carga);
                $sql->bindParam(':descarga', $descarga);
                $sql->bindParam(':mensualidad', $mensualidad);
                $sql->bindParam(':instalacion', $instalacion);
                $sql->bindParam(':fecha', $fecha);
            }else{
            // MODIFICAR CLIENTE
                $sql = mainModel::conectar()->prepare("UPDATE `planes` SET `nombre`=:nombre, `carga`= :carga, `descarga`= :descarga, `mensualidad`= :mensualidad,`instalacion`=:instalacion, `updated_at`=:fecha WHERE `id`=:id");
                $sql->bindParam(':nombre', $nombre);
                $sql->bindParam(':carga', $carga);
                $sql->bindParam(':descarga', $descarga);
                $sql->bindParam(':mensualidad', $mensualidad);
                $sql->bindParam(':instalacion', $instalacion);
                $sql->bindParam(':fecha', $fecha);
                $sql->bindParam(':id', $id);
            }
            $sql->execute();
            if($sql->rowCount() >= 1){
                return 'Ok';
            }else{
                return 'Error';
            }
        }
        
    }