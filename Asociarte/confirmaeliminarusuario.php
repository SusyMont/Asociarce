<?php
include('conexion.php');
$ced=$_GET["ced"];
 mysqli_query($conexion, "DELETE from usuario where idusuario=$ced") or die ("problemas en el select".mysqli_error($conexion));
 header("location: mostrar.php");
 ?>