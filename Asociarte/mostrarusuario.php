<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
</head>
<body>
<div class="container py-4">
<form action="" method="POST">
<div class="row align-items-center" style="background-color: #48da66;">
<div class="col-sm-4">
<h2>Buscar un usuario</h2>
</div>
<div class="col-sm-4">
<input class="form-control" autofocus type="text" name="Textobuscar">
</div>
<div class="col-sm-3">
<button class="btn btn-primary btn-sm-10" type="submit" name="Buscar">Buscar</button>
</div>
</div>
</form>
</div>
<?php
include('conexion.php');
$result=mysqli_query($conexion,"select * from usuario;") or die ("problemas
    en el select".mysqli_error($conexion));

    echo "<table>";
    echo "<tr>";
    echo "<td>cedula</td><td>nombre</td><td>fecha_nacimiento</td><td>email</td><td>password</td><td>direccion</td><td>telefono</td>";
    echo "</tr>";
    while ($reg=mysqli_fetch_array($result)){
        echo "<tr>";
        echo "<td>".$reg['idusuario']."</td>";
        echo "<td>".$reg['nombre']."</td>";
        echo "<td>".$reg['fecha_nacimiento']."</td>";
        echo "<td>".$reg['email']."</td>";
        echo "<td>".$reg['password']."</td>";
        echo "<td>".$reg['direccion']."</td>";
        echo "<td>".$reg['telefono']."</td>";
        echo "<td><a href='confirmaeliminarusuario.php?ced=$reg[idusuario]'>eliminar</td>";
        echo "<td><a href='modificar.php?doc=$reg[idusuario]'>modificar</td>";
        echo "</tr>";

    }
    if (isset($_POST['Buscar'])&& isset($_POST['TextoBuscar'])){
        include 'controladores/cdonexion.php';
        $buscar=$_POST['TextoBuscar'];
        $buscar= "%$buscar%";
         $query="SELECT * FROM usuario
         WHERE Documento LIKE '$buscar' or Nombre LIKE '$buscar' or Telefono LIKE '$buscar' or Direccion LIKE '$buscar' or Email LIKE '$buscar'";
         // $query= "SELECT j.*,c.* ···
         $consulta=mysqli_query($conn,$query);
         if(mysqli_num_rows($consulta)>=1){
             while($fila=mysqli_fetch_array($consulta)){
                 
             }
         }
    }

    echo "</table>";
    ?>
</body>
</html>
