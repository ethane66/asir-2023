1. Modifica la tabla EMPLEADOS para aumentar el sueldo en 500 euros a todos los empleados cuyo
departamento no está en MADRID. ¿Es posible? Si has contestado que no, explica por qué.



2. Modifica en la tabla EMPLEADOS el nº de departamento del empleado 7900 para que sea el de
VENTAS. ¿Es posible? Si has contestado que no, explica por qué.



3. Elimina de la tabla departamentos aquellos que no tienen ningún empleado. ¿Es posible? Si has
contestado que no, explica por qué.



4. Elimina a todos los empleados cuyo departamento no está en MADRID. ¿Es posible? Si has
contestado que no, explica por qué.



5. Borra la tabla VENDEDORES de la base de datos curso, si existe.
6. Crea una tabla llamada VENDEDORES, utilizando obligatoriamente la siguiente instrucción SQL:



CREATE TABLE VENDEDORES(
EMP_NO INT(4) PRIMARY KEY,
APELLIDO VARCHAR(8),
OFICIO VARCHAR(10),
DIRECTOR INT(4),
FECHA_ALTA DATE,
SALARIO FLOAT(6,2),
COMISION FLOAT(6,2),
DEP_NO INT (2),
CONSTRAINT FK_VENDEDORES_DIRECTOR
 FOREIGN KEY (DIRECTOR)
 REFERENCES EMPLEADOS(EMP_NO),
CONSTRAINT FK_VENDEDORES_DEPARTAMENTOS
 FOREIGN KEY (DEP_NO)
 REFERENCES DEPARTAMENTOS(DEP_NO)
);



7. Muestra los datos de la tabla VENDEDORES. ¿Tiene algún dato la tabla? Si has contestado que no,
explica por qué.



8. Muestra la estructura de la tabla VENDEDORES.



9. Muestra la estructura de la tabla VENDEDORES de otra forma diferente a la del ejercicio 8.



10. Inserta en la tabla VENDEDORES los datos que se encuentran en la tabla EMPLEADOS, de todos
aquellos empleados cuyo oficio es VENDEDOR.


