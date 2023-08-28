insert into articulo (idarticulo,codigo,nombre,stock,descripcion,imagen)
values (12345,34567,'manilla',26,'manilla tipo pandora','no hay'), (67895,765434,'vino',5,'vino blanco marca gato negro','no hay'), (56785,54678,'anillo',1,'anillo personalizado con el nombre del cliente','no hay'), (78905,54679,'granizado de cafe',68,'delicioso granizado de cafe de la casa de las avejas','no hay'), (54325,18765,'aretes',10,'par de aretes en acero inoxidable','no hay');

insert into categoria (idcategoria,nombre,descripcion,articulo_idarticulo)
values (23455,'joyeria','en este apartado puedes encontrar todo lo relacionado con joyeria',12345), (65486,'bebidas alcoholicas','en este apartado puedes encontrar los mejores licores',67895),(87596,'joyeria','en este apartado puedes encontrar todo lo relacionado con joyeria',56785),(76566,'bebidas','en este apartado encontraras todas las bebidas que te ofrecemos en los toldos',78905),(8776,'joyeria','en este apartado podras encontrar todos los productos relacionados con joyeria',54325);

select * from articulo;
select * from categoria;
select * from usuario;
select * from venta;
select * from detalle_venta;
select * from articulo_has_venta;

select codigo from articulo;
select articulo_idarticulo from articulo_has_venta;
select nombre from categoria;
select cantidad from detalle_venta;
select idusuario from usuario;
select idventa from venta;

select codigo,nombre from articulo;
select articulo_idarticulo,venta_idventa from articulo_has_venta;
select nombre,idcategoria from categoria;
select cantidad,precio from detalle_venta;
select idusuario,nombre from usuario;
select idventa,fecha from venta;

select codigo,nombre,descripcion from articulo;
select articulo_idarticulo,venta_idventa,nombre_articulo from articulo_has_venta;
select nombre,descripcion,idcategoria from categoria;
select cantidad,precio,iddetalle_venta from detalle_venta;
select idusuario,nombre,telefono from usuario;
select idventa,fecha,total from venta;

UPDATE articulo
SET stock='34'
WHERE idarticulo = 12345;
update articulo set nombre='cerveza corona' where idarticulo=67895;

delete from articulo where idarticulo=12345;
delete from articulo where idarticulo=56785;
delete from categoria where idcategoria=65486;
delete from categoria where idcategoria=76566;





