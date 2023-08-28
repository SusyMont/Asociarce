<?php
include('../Asociarte/conexion.php');
$id=$_POST['id'];
$password=$_POST['password'];
$query= "SELECT * FROM usuario WHERE idusuario='$id' and password='$password'";
$data= mysqli_query($conexion,$query) or die ("problemas en el select" . mysqli_error($conexion));

if (mysqli_num_rows($data) > 0) {
    $row= mysqli_fetch_row($data);
    $id=$row[0];
    $password=$row[6];
    session_start();
    $_SESSION['idusuario']=$id;
    $_SESSION['password']=$password;
    header("location:frmventas.php");
} else {
    header("location:login.html");
}
?>