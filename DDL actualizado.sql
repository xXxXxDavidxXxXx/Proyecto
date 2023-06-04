CREATE TABLE DAVE_USUARIO(
    codigo NUMBER(32) PRIMARY KEY,
    email VARCHAR2(100) NOT NULL,
    nombre VARCHAR2(30) NOT NULL, 
    contrasenya VARCHAR2(100) NOT NULL, 
    fechaNacimiento DATE NOT NULL, 
    ultimaConexion DATE, 
    img VARCHAR2(100), 
    tipo VARCHAR2(13) CHECK (tipo = 'Cliente' OR tipo = 'Administrador')
);
INSERT INTO DAVE_USUARIO(codigo,email,nombre,contrasenya, fechaNacimiento,ultimaConexion,img,tipo) VALUES(1,'soymuyfalsoylosabes@gmail.com','El Xocas','12345manzana',TO_DATE('12/04/2004','DD/MM/YYYY'),'','','Administrador');

CREATE TABLE DAVE_DIRECCION(
    calle VARCHAR2(50) NOT NULL,
    codigo NUMBER(32) PRIMARY KEY,
    nPuerta VARCHAR2(50) NOT NULL,
    provincia VARCHAR2(50) NOT NULL,
    tipoVivienda VARCHAR2(50) NOT NULL,
    codigoPostal NUMBER(32) NOT NULL,
    ciudad VARCHAR2(50) NOT NULL,
    codigoUsuario NUMBER(32) NOT NULL,
    CONSTRAINT fk_direccion_cliente FOREIGN KEY(codigo) REFERENCES DAVE_USUARIO
);

CREATE TABLE DAVE_PEDIDO(
    codigo NUMBER(32) PRIMARY KEY,
    codigoUsuario NUMBER(32) NOT NULL,
    codigoDireccion NUMBER(32) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT fk_pedido_usuario FOREIGN KEY(codigoUsuario) REFERENCES DAVE_USUARIO,
    CONSTRAINT fk_pedido_direccion FOREIGN KEY(codigoDireccion) REFERENCES DAVE_DIRECCION
);

CREATE TABLE DAVE_PRODUCTO(
    fechaCreacion DATE NOT NULL,
    precio NUMBER(32) NOT NULL,
    codigo NUMBER(32) PRIMARY KEY,
    ultimaModificacion DATE,
    unidades NUMBER(32) NOT NULL,
    descripcion VARCHAR2(100) NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    cantidadDisponible NUMBER(32) NOT NULL,
    stockMinimo NUMBER(32) NOT NULL,
    rutaFoto VARCHAR2(100),
    categoria VARCHAR2(50) NOT NULL,
    CONSTRAINT chk_categoria CHECK (categoria IN ('Planta', 'Zombie'))
);

CREATE TABLE DAVE_PRODUCTOS_PEDIDO(
    codigoProducto NUMBER(32),
    codigoPedido NUMBER(32),
    cantidadProductos NUMBER(32),
    CONSTRAINT pk_productos_pedido PRIMARY KEY(codigoProducto, codigoPedido),
    CONSTRAINT fk_productos_pedido FOREIGN KEY(codigoPedido) REFERENCES DAVE_PEDIDO,
    CONSTRAINT fk_pedido_productos FOREIGN KEY(codigoProducto) REFERENCES DAVE_PRODUCTO
);

ALTER TABLE DAVE_USUARIO ADD(CONSTRAINT fecha_usuarios_nacimiento CHECK (fechaNacimiento > TO_DATE('01/01/1950', 'DD/MM/YYYY')));

/*
DROP TABLE DAVE_PRODUCTOS_PEDIDO;
DROP TABLE DAVE_PRODUCTO;
DROP TABLE DAVE_PEDIDO;
DROP TABLE DAVE_DIRECCION;
DROP TABLE DAVE_USUARIO;
*/