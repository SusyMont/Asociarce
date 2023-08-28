<?php
include("conexion.php");
$idadministrador=$_POST["idadministrador"];
$nombres=$_POST["nombres"];
$fecha=$_POST["fecha"];
$email=$_POST["email"];
$telefono=$_POST["telefono"];
$password=$_POST["password"];
$nombre_img=$_FILES['imagen']['name'];
$tipo_img=$_FILES['imagen']['type'];
$tam_img=$_FILES['imagen']['size'];

if ($tam_img<=1000000)
{
	if($tipo_img=="image/jpg" ||$tipo_img=="image/jpeg" || $tipo_img=="image/png" || $tipo_img=="image/gif")
	{
		$carpeta=$_SERVER['DOCUMENT_ROOT'].'/proyecto grados/imagenes/';
		move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombre_img);
	

{ 


//guardemos a la tabla
mysqli_query($conexion,"insert into administradores(idadministrador,nombres,fecha,email,telefono,password,imagen) values($idadministrador,'$nombre','$fecha','$email','$telefono','$password','$nombre_img')") or die ("problemas al insertar".mysqli_error($conexion));
echo "se guardo el usuario";


?>