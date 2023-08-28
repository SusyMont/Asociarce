<?php
    include('../Asociarte/conexion.php');
    $idusuario=$_POST["idusuario"];
    $idventa=$_POST["idventa"];
    $tipo_comprobante=$_POST["tipo_comprobante"];
    $num_comprobante=$_POST["num_comprobante"];
    $fecha=$_POST["fecha"];
    $total=$_POST["total"];

    $query="INSERT into venta(idusuario,idventa,tipo_comprobante,num_comprobante,fecha,total) values($idusuario,$idventa,'$tipo_comprobante',$num_comprobante,'$fecha',$total)";

    if ($cons = mysqli_query($conexion,$query)) {
        header("location: frmventas.php");
    }else {
        echo 'error';
    }

    echo "El registro de la venta ha sido guardado con exito.";

?>