<?php
include("conexion.php");
$ced=$_POST["cedula"];
$nom=$_POST["nombre"];
$email=$_POST["email"];
$pass=$_POST["password"];
$fechan=$_POST["fecha_nacimiento"];

$query="UPDATE usuario SET nombre='$nom', password='$pass', email='$email', fecha_nacimiento='$fechan' WHERE idusuario='$ced'";
$cons=mysqli_query($conexion,$query);

if($cons){
    echo "se han guardado las actualizaciones";
}else{
    echo "tienes un error en la consulta";
}


?>