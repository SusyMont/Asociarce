INSERT INTO articulo(idarticulo,codigo,nombre,stock,descripcion,imagen)
VALUES(0093,"12345","Anillo mariposa",98,"plata 195","buena calidad");

SELECT * FROM articulo;

INSERT INTO categoria(idcategoria,nombre,descripcion,articulo_idarticulo)
VALUES(270006,"Accesorios","joyeria de calidad",0093);

SELECT * FROM categoria;






