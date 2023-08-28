<?php
include('conexion.php');
$result=mysqli_query($conexion,"select * from usuario;") or die ("problemas
    en el select".mysqli_error($conexion));

    echo "<table>";
    echo "<tr>";
    echo "<td>cedula</td><td>nombre</td><td>fecha_nacimiento</td><td>email</td><td>password</td>";
    echo "</tr>";
    while ($reg=mysqli_fetch_array($result)){
        echo "<tr>";
        echo "<td>".$reg['cedula']."</td>";
        echo "<td>".$reg['nombre']."</td>";
        echo "<td>".$reg['fecha_nacimiento']."</td>";
        echo "<td>".$reg['email']."</td>";
        echo "<td>".$reg['password']."</td>";
        echo "<td><a href='eliminar.php?ced=$reg[cedula]'>eliminar</td>";
        echo "<td><a href='modificar.php?doc=$reg[cedula]'>modificar</td>";
        echo "</tr>";

    }

    echo "</table>";
    ?>