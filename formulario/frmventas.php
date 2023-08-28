<?php
include('../Asociarte/conexion.php');
$query="SELECT * FROM usuario";
$consulta=mysqli_query($conexion,$query);
?>

<link rel="stylesheet" href="hola2.css">
<h6 class="mb-0 pb-3"><span> </span>
<div class="login-box">
    <h2>Registro Ventas</h2>
    <form action="guardar_venta.php" method="post" enctype="multipart/from-data">
      <div class="user-box">
        <select name="idusuario">
        <option selected>Seleccione un emprendedor</option>
          <?php
            while($emprendedor=mysqli_fetch_array($consulta)){
              echo '
                <option value="'.$emprendedor[0].'">'.$emprendedor[1].' - '.$emprendedor[0].'</option>
              ';
            }
          ?>
        </select>
      </div>
      <div class="user-box">
        <input type="text" name="idventa" required="">
        <label>id de la venta</label>
      </div>
      <div class="user-box">
        <input type="text" name="tipo_comprobante" required="">
        <label>tipo de comprobante</label>
      </div>
      <div class="user-box">
        <input type="text" name="num_comprobante" required="">
        <label>numero del comprobante</label>
      </div>
      <div class="user-box">
        <input type="date" name="fecha" required="">
        <label>fecha</label>
      </div>
      <div class="user-box">
        <input type="text" name="total" required="">
        <label>total</label>
      </div>
      <input type="submit" value="Guardar" class="boton">
    </form>
  </div>