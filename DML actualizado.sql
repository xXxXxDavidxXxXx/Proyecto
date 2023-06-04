INSERT INTO DAVE_USUARIO(codigo,email,nombre,contrasenya, fechaNacimiento,ultimaConexion,img,tipo) VALUES(1,'soymuyfalsoylosabes@gmail.com','El Xocas','12345manzana',TO_DATE('12/04/2004','DD/MM/YYYY'),'','','Administrador');

INSERT INTO DAVE_DIRECCION(calle,codigo,nPuerta,provincia,tipoVivienda,codigopostal,ciudad,codigousuario) VALUES('Dolores Delano Fuetes',1,'15 A','Almería','Bungalow',04720,'Roquetas de Mar',1);

INSERT INTO DAVE_DIRECCION(calle,codigo,nPuerta,provincia,tipoVivienda,codigopostal,ciudad,codigousuario) VALUES('Mato Las Cañas',2,'2 B','Matalascañas','Piso',05896,'Cañada Real',2);

INSERT INTO DAVE_DIRECCION(calle,codigo,nPuerta,provincia,tipoVivienda,codigopostal,ciudad,codigousuario) VALUES('Vino',3,'14','La Rioja','Piso',02100,'La Rioja',3);

INSERT INTO DAVE_PEDIDO(codigo,codigoUsuario,codigoDireccion,fecha) VALUES(1,1,1,TO_DATE('02/04/2023', 'DD/MM/YYYY'));

INSERT INTO DAVE_PRODUCTO(fechaCreacion,precio,codigo,ultimaModificacion,unidades,descripcion,nombre,cantidadDisponible,stockMinimo,rutaFoto,categoria) VALUES(TO_DATE('02/02/2023', 'DD/MM/YYYY'),20,1,'',15,'Es una de las plantas que utilizas para defenderte de los zombies en el mítico juego de PvZ','Lanzaguisantes',10,5,'../IMAGENES/lanzaguisantes-removebg-preview.png','Planta');

INSERT INTO DAVE_PRODUCTO(fechaCreacion,precio,codigo,ultimaModificacion,unidades,descripcion,nombre,cantidadDisponible,stockMinimo,rutaFoto,categoria) VALUES(TO_DATE('02/02/2023', 'DD/MM/YYYY'),20,2,'',15,'Es una de las plantas que utilizas para defenderte de los zombies en el mítico juego de PvZ','Girasol',10,5,'../IMAGENES/girasol-removebg-preview.png','Planta');

INSERT INTO DAVE_PRODUCTO(fechaCreacion,precio,codigo,ultimaModificacion,unidades,descripcion,nombre,cantidadDisponible,stockMinimo,rutaFoto,categoria) VALUES(TO_DATE('02/02/2023', 'DD/MM/YYYY'),20,3,'',15,'Es una de las plantas que utilizas para defenderte de los zombies en el mítico juego de PvZ','Repetidora',10,5,'../IMAGENES/repetidora-removebg-preview.png','Planta');

INSERT INTO DAVE_PRODUCTO(fechaCreacion,precio,codigo,ultimaModificacion,unidades,descripcion,nombre,cantidadDisponible,stockMinimo,rutaFoto,categoria) VALUES(TO_DATE('02/02/2023', 'DD/MM/YYYY'),20,4,'',15,'Es uno de los enemigos del mitico juego de PvZ que te atacarán hasta la saciedad','Zombie',10,5,'../IMAGENES/zombie-removebg-preview.png','Zombie');

INSERT INTO DAVE_PRODUCTO(fechaCreacion,precio,codigo,ultimaModificacion,unidades,descripcion,nombre,cantidadDisponible,stockMinimo,rutaFoto,categoria) VALUES(TO_DATE('02/02/2023', 'DD/MM/YYYY'),20,5,'',15,'Es uno de los enemigos del mitico juego de PvZ que te atacarán hasta la saciedad','Zombie periódico',10,5,'../IMAGENES/zombiPeriodico.png','Zombie');

INSERT INTO DAVE_PRODUCTOS_PEDIDO VALUES(1,1,5);

INSERT INTO DAVE_USUARIO(codigo,email,nombre,contrasenya, fechaNacimiento,ultimaConexion,img,tipo) VALUES(3,'larioja@gmail.com','Riojano','vino',TO_DATE('25/05/2007','DD/MM/YYYY'),'','IMAGENES/vino.jpeg','Cliente');
COMMIT;