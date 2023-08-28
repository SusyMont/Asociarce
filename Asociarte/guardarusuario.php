<?php
include("conexion.php");
$idusuario =!empty($_GET['cedula']) ? $_GET['cedula'] : null;
$email=!empty($_GET['email']) ? $_GET['email'] : null;
$nombre=!empty($_GET['nombre']) ? $_GET['nombre'] : null;
$telefono=!empty($_GET['telefono']) ? $_GET['telefono'] : null;
$direccion=!empty($_GET['direccion']) ? $_GET['direccion'] : null;
$fecha_nacimiento=!empty($_GET['fecha_n']) ? $_GET['fecha_n'] : null;
$password=!empty($_GET['password']) ? $_GET['password'] : null;
if($idusuario && $email && $nombre && $telefono && $direccion && $fecha_nacimiento && $password){

    mysqli_query($conexion,"insert into usuario(idusuario,nombre,telefono,direccion,email,fecha_nacimiento,password) values($idusuario,'$nombre','$telefono','$direccion','$email','$fecha_nacimiento','$password')") or die ("problemas al insertar".mysqli_error($conexion));
echo "se guardo el usuario";


    /*$sql="INSERT INTO usuario(idusuario,nombre,telefono,direccion,email,fecha_nacimiento,password) VALUES('$idusuario','$nombre','$telefono','$direccion','$email','$fecha_nacimiento','$password')";
    mysqli_query($sql);
    if ($user=1) {
        header("location:index.php");
    }*/
}



?>