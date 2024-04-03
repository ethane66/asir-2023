/* CREAR BASE DE DATOS */

CREATE DATABASE TEMA4_PRACTICA2;


/*CREAR TABLAS SOCIOS*/

CREATE TABLE SOCIOS_4(
    SOCIO_NO INT(4) PRIMARY KEY,
    APELLIDOS VARCHAR(14) UNIQUE,
    TELEFONO CHAR(9) NOT NULL,
    FECHA_ALTA DATE DEFAULT '2000-01-01',
    DIRECCION VARCHAR(20),
    CODIGO_POSTAL INT(5) 
);

CREATE TABLE prestamos_4(
    num_prestamo INT(4) PRIMARY KEY AUTO_INCREMENT,
    SOCIO_NO INT(4),
    CONSTRAINT FK_SOCIO_NO_4
    FOREIGN KEY PRESTAMOS_4(SOCIO_NO)
    REFERENCES SOCIOS_4(SOCIO_NO)
);

/* METER DATO EN TABLA */


INSERT INTO SOCIOS_4
(SOCIO_NO, APELLIDOS, TELEFONO, FECHA_ALTA, DIRECCION, CODIGO_POSTAL)
VALUES(1000, 'LOPEZ SANTOS', '9165643267', '2005-01-08','C.REAL 5', 28400); 


INSERT INTO SOCIOS_4
(SOCIO_NO, APELLIDOS, TELEFONO, FECHA_ALTA, DIRECCION, CODIGO_POSTAL)
VALUES(1001, 'PEREZ CERRO', '918451256', '2005-01-12','C.MAYOR 31', 28400); 


INSERT INTO SOCIOS_4
(SOCIO_NO, APELLIDOS, TELEFONO, FECHA_ALTA, DIRECCION, CODIGO_POSTAL)
VALUES(1002, 'LOPEZ PEREZ', '916543267', '2005-01-18','C.REAL 5', 28400); 


INSERT INTO SOCIOS_4
(SOCIO_NO, APELLIDOS, TELEFONO, FECHA_ALTA, DIRECCION, CODIGO_POSTAL)
VALUES(1003, 'ROMA LEIVA', '', '2005-01-21','C.PANADEROS 9', 28431); 


INSERT INTO SOCIOS_4
(SOCIO_NO, APELLIDOS, TELEFONO, FECHA_ALTA, DIRECCION, CODIGO_POSTAL)
VALUES(1004, 'GOMEZ DURUELO', '918654329', '2005-01-31','C.REAL 15', 28400); 

INSERT INTO SOCIOS_4
(SOCIO_NO, APELLIDOS, TELEFONO, FECHA_ALTA, DIRECCION, CODIGO_POSTAL)
VALUES(1005, 'PEÑA MAYOR', '91851526', '2000-01-01','C.LARGA 31', 28431); 

/* METER DATO EN TABLA */

INSERT INTO PRESTAMOS_4
(num_prestamo, SOCIO_NO)
VALUES ( 1, 1001);

INSERT INTO PRESTAMOS_4
(num_prestamo, SOCIO_NO)
VALUES ( 2, 1002);

INSERT INTO PRESTAMOS_4
(num_prestamo, SOCIO_NO)
VALUES ( 3, 1003);



4. Borra de la tabla socios_4 a socio_no = 1003. Si no es posible explica por qué.
    No se puede por la clave ajena
5. Modifica de la tabla socios_4 a socio_no = 1002 por socio_no = 1222. Si no es posible explica por qué.
    No se puede por la clave ajena
6. Modifica de la tabla socios_4 el codigo postal por 28444 de los socios que viven en "C.REAL" y su primer
apellido es "LOPEZ". Si no es posible explica por qué.

7. Puedes deshacer los cambios efectuados en los pasos 5 y 6. Contesta "si" ó "no".

• Si has contestado que "si" indica que es lo que debes hacer.
Si, quitar el autocommit.
• Si has contestado que "no" explica por qué.

8. Desactiva el AUTO COMMIT.
    set autocommit = 0;
9. Borra de la tabla socios_4 a todos los socios que entraron antes del 01-02-2000. Si no es posible explica por
qué.
    DELETE FROM socios_4 WHERE fecha_alta < '2000-02-01';

10. Modifica de la tabla socios_4 la dirección y el código postal del socio_no = '1003' por "C.LORCA 44" y
"28999". Si no es posible explica por qué.

UPDATE socios_4
SET direccion = 'C.LORCA 44', codigo_postal = 28999
WHERE socio_no = 1003;


11. Puedes deshacer los cambios efectuados en los pasos 9 y 10. Contesta "si" ó "no".

• Si has contestado que "si" indica que es lo que debes hacer.
    si
• Si has contestado que "no" explica por qué.

12. Modifica de la tabla socios_4 a socio_no = 1003 por socio_no = 1333. Si no es posible explica por qué.
No se puede por la FK

13. Contesta:

• ¿El AUTO COMMIT está activado o desactivado?

    desactivado

• ¿Qué comando debes ejecutar para confirma los cambios realizados haciéndolos permanentes?
commit;
14. Puedes deshacer los cambios efectuados en el paso 12. Contesta "si" ó "no".

• Si has contestado que "si" indica que es lo que debes hacer.
 si porque autocommit esta quitado
• Si has contestado que "no" explica por qué.

15. Cambia el nombre el campo "direccion" por "direccion_socio" de la tabla socios_4.
No se puede
16. Puedes deshacer los cambios efectuados en el paso 15. Contesta "si" ó "no".
• Si has contestado que "si" indica que es lo que debes hacer.
• Si has contestado que "no" explica por qué.
Por la version de SQL

