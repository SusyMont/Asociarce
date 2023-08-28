<?php
include('conexion.php');
include('navbar.php');
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

    echo "</table>";
    ?>