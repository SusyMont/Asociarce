<?php
include("conexion.php");
$idarticulo=$_POST["idarticulo"];
$nombre=$_POST["nombre"];
$stock=$_POST["stock"];
$descripcion=$_POST["descripcion"];
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
mysqli_query($conexion,"insert into articulo(idarticulo,nombre,stock,descripcion,imagen) values($idusuario,'$nombre',$stock,'$descripcion',$nombre_img)") or die ("problemas al insertar".mysqli_error($conexion));
echo "se guardo el usuario";


?>