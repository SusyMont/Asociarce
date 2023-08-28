<?php
include 'conexion.php';
include 'navbar.php';
$ced=$_GET['doc'];

$cons="SELECT * FROM usuario WHERE idusuario=$ced";
$query=mysqli_query($conexion,$cons);
$fila=mysqli_fetch_array($query);

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="inscrip.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <title>Registro</title>
</head>

<body>
    <form action="guardarusuario.php" method="post" enctype="multipart/form-data"></form>
        <div class="container-form sign-up">
            <div class="welcome-back">
                <div class="message">
                    <h2>Bienvenido a los tolditos</h2>
                </div>
            </div>
            <form class="formulario" action="controladoractusuario.php" method="post" enctype="multipart/form-data">
                <h2 class="create-account">Crear una cuenta</h2>
                <div class="iconos">
                    <div class="border-icon">
                        <i class='bx bxl-instagram'></i>
                    </div>
                    <div class="border-icon">
                        <i class='bx bxl-linkedin' ></i>
                    </div>
                    <div class="border-icon">
                        <i class='bx bxl-facebook-circle' ></i>
                    </div>
                </div>
                <p class="cuenta-gratis">Crear una cuenta gratis</p>
                <input type="text" value="<?php echo $fila[1] ?>" placeholder="nombre" name="nombre">
                <input type="email" value="<?php echo $fila[2] ?>" placeholder="email" name="email">
                <input type="password" value="<?php echo $fila[4] ?>" placeholder="password" name="password">
                <input type="date" value="<?php echo $fila[3] ?>" placeholder="fecha_nacimiento" name="fecha_nacimiento">
                <input type="text" value="<?php echo $fila[0] ?>" placeholder="cedula" name="cedula">
                <input type="submit" value="actualizar">
            </form>
        </div>
</body>
</html>