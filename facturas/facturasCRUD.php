<?php
	require_once "../core/main.php";

    class facturasCRUD extends mainModel{

        public function facturasAEmitir(){
            $dia = $_POST['dia'];
            $sql=mainModel::conectar()->prepare("SELECT c.`id`, `tipo`, c.id_cliente, cl.nombre, cl.telefono, cl.direccion, p.nombre as plan, p.mensualidad, c.`ip`, c.`mac`, c.`serie`, c.`corte` FROM `contratos` c, `cliente` cl, `planes` p WHERE cl.id=c.id_cliente AND c.id_plan=p.id AND c.corte=$dia");
            $sql->execute();
            return $sql->fetchAll(PDO::FETCH_ASSOC);
        }

        public function facturasPendientes(){
            // $sql=mainModel::conectar()->prepare("SELECT * FROM `factura` WHERE `desde` = $_POST['dia']");
            // $sql->execute();
            // return $sql->fetchAll(PDO::FETCH_ASSOC);
        }

        // public function createUpdateContratos(){
        //     $id = $_POST['id'];
        //     $idClient = $_POST['idClient'];
        //     $tipo = $_POST['tipo'];
        //     $ip = $_POST['ip'] == null ? '' : $_POST['ip'];
        //     $mac = $_POST['mac'] == null ? '' : $_POST['mac'];
        //     $serie = $_POST['serie'] == null ? '' : $_POST['serie'];
        //     $idPlan = $_POST['idPlan'];
        //     $corte = $_POST['corte'];
        //     $fecha = $_POST['fecha'];
        //     $updated=date('Y-m-d');
        //     $sql=null;
        //     // CREAR CLIENTE
        //     if($id == 0){
        //         $sql = mainModel::conectar()->prepare("INSERT INTO `contratos`(`tipo`, `id_cliente`, `id_plan`, `ip`, `mac`, `serie`, `corte`, `create_at`, `updated_at`) VALUES (:tipo, :idClient, :idPlan, :ip, :mac, :serie, :corte, :fecha, :updated_at)");
        //         $sql->bindParam(':tipo', $tipo);
        //         $sql->bindParam(':idClient', $idClient);
        //         $sql->bindParam(':idPlan', $idPlan);
        //         $sql->bindParam(':ip', $ip);
        //         $sql->bindParam(':mac', $mac);
        //         $sql->bindParam(':serie', $serie);
        //         $sql->bindParam(':corte', $corte);
        //         $sql->bindParam(':fecha', $fecha);
        //         $sql->bindParam(':updated_at', $updated);
        //     }else{
        //     // MODIFICAR CLIENTE
        //         $sql = mainModel::conectar()->prepare("UPDATE `contratos` SET `tipo`=:tipo,`id_cliente`=:idClient,`id_plan`=:idPlan,`ip`=:ip,`mac`=:mac,`serie`=:serie,`corte`=:corte, `create_at`=:fecha, `updated_at`=:updated_at WHERE `id`=:id");
        //         $sql->bindParam(':id', $id);
        //         $sql->bindParam(':tipo', $tipo);
        //         $sql->bindParam(':idClient', $idClient);
        //         $sql->bindParam(':idPlan', $idPlan);
        //         $sql->bindParam(':ip', $ip);
        //         $sql->bindParam(':mac', $mac);
        //         $sql->bindParam(':serie', $serie);
        //         $sql->bindParam(':corte', $corte);
        //         $sql->bindParam(':fecha', $fecha);
        //         $sql->bindParam(':updated_at', $updated);
        //     }
        //     $sql->execute();
        //     if($sql->rowCount() >= 1){
        //         return 'Ok';
        //     }else{
        //         return 'Error';
        //     }
        // }
        
    }