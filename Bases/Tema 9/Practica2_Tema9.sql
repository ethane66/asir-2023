1. Modifica la tabla EMPLEADOS para aumentar el sueldo en 500 euros a todos los empleados cuyo
departamento no está en MADRID. ¿Es posible? Si has contestado que no, explica por qué.

update empleados
set salario = salario + 500
where dep_no in (select dep_no from departamentos where localidad not like 'madrid');

2. Modifica en la tabla EMPLEADOS el nº de departamento del empleado 7900 para que sea el de
VENTAS. ¿Es posible? Si has contestado que no, explica por qué.

update empleados
set dep_no = (select dep_no from departamentos where dnombre like 'ventas') 
where emp_no = 7900;

3. Elimina de la tabla departamentos aquellos que no tienen ningún empleado. ¿Es posible? Si has
contestado que no, explica por qué.

delete from departamentos
where dep_no not in (select distinct dep_no from empleados);

4. Elimina a todos los empleados cuyo departamento no está en MADRID. ¿Es posible? Si has
contestado que no, explica por qué.

delete from empleados 
where dep_no != (select dep_no from departamentos where localidad = "madrid");
No se puede

5. Borra la tabla VENDEDORES de la base de datos curso, si existe.

drop table if exists vendedores;

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

No tiene ningun dato porque no se han añadido instrucciones de INSERT en el ejercicio anterior


8. Muestra la estructura de la tabla VENDEDORES.

desc vendedores;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| EMP_NO     | int         | NO   | PRI | NULL    |       |
| APELLIDO   | varchar(8)  | YES  |     | NULL    |       |
| OFICIO     | varchar(10) | YES  |     | NULL    |       |
| DIRECTOR   | int         | YES  | MUL | NULL    |       |
| FECHA_ALTA | date        | YES  |     | NULL    |       |
| SALARIO    | float(6,2)  | YES  |     | NULL    |       |
| COMISION   | float(6,2)  | YES  |     | NULL    |       |
| DEP_NO     | int         | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+

9. Muestra la estructura de la tabla VENDEDORES de otra forma diferente a la del ejercicio 8.

create table vendedores;

10. Inserta en la tabla VENDEDORES los datos que se encuentran en la tabla EMPLEADOS, de todos
aquellos empleados cuyo oficio es VENDEDOR.

insert into vendedores 
select 
emp_no, 
apellido, 
oficio, 
director, 
fecha_alta, 
salario, 
comision, 
dep_no 
from empleados where oficio = "VENDEDOR";
