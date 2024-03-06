create database tema4_practica3;

--Crear tabla socios
create table socios (
    socio_no int(4) primary key,
    apellidos varchar(14) UNIQUE,
    telefono int(9) not NULL,
    fecha_alta date default '2000-01-01',
    direccion varchar (20),
    codigo_postal int(5)
);

--crear tabla prestamos
CREATE TABLE prestamos (
  num_prestamos INT(4) PRIMARY KEY,
  socio_no INT(4),
  FOREIGN KEY (socio_no) REFERENCES socios(socio_no)
);
--insertar datos en socios
INSERT INTO socios
(socio_no,apellidos,telefono,fecha_alta,direccion,codigo_postal)
VALUES (1000,'LOPEZ SANTOS','916543267','2005-01-08','C.REAL 5',28400);

INSERT INTO socios
(socio_no,apellidos,telefono,fecha_alta,direccion,codigo_postal)
VALUES (1001,'PEREZ CERRO','918451256','2005-01-12','C.MAYOR 31',28400);

INSERT INTO socios
(socio_no,apellidos,telefono,fecha_alta,direccion,codigo_postal)
VALUES (1002,'LOPEZ PEREZ','916543267','2005-01-18','C.REAL 5',28400);

INSERT INTO socios
(socio_no,apellidos,telefono,fecha_alta,direccion,codigo_postal)
VALUES (1003,'ROMA LEIVA','','2005-01-21','C.PANADEROS 9',28431);

INSERT INTO socios
(socio_no,apellidos,telefono,fecha_alta,direccion,codigo_postal)
VALUES (1004,'GOMEZ DURUELO','918654329','2005-01-31','C.REAL 15',28400);

INSERT INTO socios
(socio_no,apellidos,telefono,fecha_alta,direccion,codigo_postal)
VALUES (1005,'PEÑA MAYOR','918515256','2000-01-01','C.LARGA 31',28431);

--insertar en prestamos
insert into prestamos (num_prestamos,socio_no)
VALUES (1,1001);

insert into prestamos (num_prestamos,socio_no)
VALUES (2,1002);

--Ejercicio 4 consultas
    select socio_no,telefono from socios where direccion like '%PANADEROS%';
+----------+----------+
| socio_no | telefono |
+----------+----------+
|     1003 |        0 |
+----------+----------+

--Ejercicio 6 insertar 
insert into prestamos (num_prestamos,socio_no)
VALUES (4,1002);

Si ha sido posible porque el num_prestamos es la PK no el socio_no

--Ejercicio 12 modificar estructura
alter table socios drop column codigo_postal;
