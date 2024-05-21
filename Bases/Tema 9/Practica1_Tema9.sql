1. Borra la tabla VENDEDORES de la base de datos curso, si existe.

drop table if exists vendedores;

2. Crea una tabla llamada VENDEDORES que guarde infomación de los empleados cuyo oficio es
vendedor. La tabla VENDEDORES debe incluir los siguientes campos de la tabla EMPLEADOS:
EMP_NO, APELLIDO, DIRECTOR, SALARIO, COMISION y DEP_NO.

create table vendedores 
select emp_no, 
apellido, 
director, 
salario, 
comision, 
dep_no from empleados 
where oficio = "vendedor"; 

3. Muestra los datos de la tabla VENDEDORES.

mysql> select * from vendedores;
+--------+----------+----------+---------+----------+--------+
| emp_no | apellido | director | salario | comision | dep_no |
+--------+----------+----------+---------+----------+--------+
|   7499 | ALONSO   |     7698 | 1400.00 |   400.00 |     30 |
|   7654 | MARTIN   |     7698 | 1500.00 |  1600.00 |     30 |
|   7844 | CALVO    |     7698 | 1800.00 |     0.00 |     30 |
+--------+----------+----------+---------+----------+--------+


4. Muestra la estructura de la tabla VENDEDORES.

desc vendedores;
+----------+------------+------+-----+---------+-------+
| Field    | Type       | Null | Key | Default | Extra |
+----------+------------+------+-----+---------+-------+
| emp_no   | int        | NO   |     | NULL    |       |
| apellido | varchar(8) | YES  |     | NULL    |       |
| director | int        | YES  |     | NULL    |       |
| salario  | float(6,2) | YES  |     | NULL    |       |
| comision | float(6,2) | YES  |     | NULL    |       |
| dep_no   | int        | YES  |     | NULL    |       |
+----------+------------+------+-----+---------+-------+

5. Muestra la estructura de la tabla VENDEDORES de otra forma diferente a la del ejercicio 4.

show create table vendedores;

6. ¿Tiene la tabla VENDEDORES definida la restricción de clave primaria? Si has contestado
que no, escribe la sentencia necesaria para asignar como clave primaria de la tabla
VENDEDORES el campo EMP_NO.

alter table vendedores
modify emp_no int(4) primary key;

7. ¿Tiene la tabla VENDEDORES definida alguna restricción de clave ajena? Si has
contestado que no, escribe la sentencia necesaria, para asignar como clave ajena de la tabla
VENDEDORES el campo DEP_NO que referencia al campo DEP_NO de la tabla
DEPARTAMENTOS.

alter table vendedores 
add constraint fk_vendedores_departamentos 
foreign key vendedores(dep_no) 
references departamentos(dep_no);

8. ¿Debe tener la tabla VENDEDORES definida otra restricción de clave ajena? Si has
contestado que si, escribe la sentencia necesaria para definir esta nueva clave ajena en la
tabla VENDEDORES.

alter table vendedores 
add constraint fk_vendedor_director 
foreign key vendedores(director) 
references empleados(director);

9. Mostrar EMP_NO, APELLIDO ySALARIO de la tabla VENDEDORES, de todos aquellos
vendedores que ganan más de 1400 euros. Ordenado descendentemente por SALARIO.

select
    emp_no,apellido,salario
from vendedores
where salario > 1400
order by salario desc;

10. Mostrar EMP_NO, APELLIDO y DEP_NO de la tabla VENDEDORES y DNOMBRE y
LOCALIDAD de la tabla DEPARTAMENTOS, de todos los vendedores. Ordenado ascendentemente
por DEP_NO.

select
    v.emp_no,
    v.apellido,
    v.dep_no,
    d.dnombre,
    d.localidad
from vendedores v, departamentos d 
where v.dep_no = d.dep_no
order by v.dep_no asc;

11. Mostrar EMP_NO, APELLIDO , DIRECTOR y apellido del DIRECTOR de la tabla
VENDEDORES. Ordenado alfabéticamente por APELLIDO del vendedor (no el de su director).

select 
    v.emp_no, 
    v.apellido, 
    v.director, 
    (select e.apellido from empleados e where v.director = e.emp_no) as director_apellido 
    from vendedores v order by v.apellido;

12. Cuál o cuáles de estas opciones es correcta si deseamos crear una nueva tabla sólo con los números y nombres de los departamentos a partir de la tabla ya creada con los mismos. Si alguna de las opciones es incorrecta explica por qué.
/* Opción a */
CREATE TABLE TABLA1
 SELECT dep_no, dnombre
 FROM departamentos;
/* Opción b */
CREATE TABLE TABLA2
 SELECT dep_no "departamento", dnombre "nombre"
 FROM departamentos;

Son iguales solo que en la segunda los alias cambian los titulos de las columnas
mysql> desc tabla1;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| dep_no  | int(2)      | NO   |     | 0       |       |
| dnombre | varchar(14) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc tabla2;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| departamento | int(2)      | NO   |     | 0       |       |
| nombre       | varchar(14) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

13. ¿Cuál es el resultado de la ejecución de esta sentecia SELECT * FROM TABLA1; ?
mysql> select * from tabla1;
+--------+---------------+
| dep_no | dnombre       |
+--------+---------------+
|     10 | CONTABILIDAD  |
|     20 | INVESTIGACION |
|     30 | VENTAS        |
|     40 | PRODUCCION    |
+--------+---------------+
4 rows in set (0.00 sec)

14. ¿Cuál es el resultado de la ejecución de esta sentecia SELECT * FROM TABLA2; ?
mysql> select * from tabla2;
+--------------+---------------+
| departamento | nombre        |
+--------------+---------------+
|           10 | CONTABILIDAD  |
|           20 | INVESTIGACION |
|           30 | VENTAS        |
|           40 | PRODUCCION    |
+--------------+---------------+
4 rows in set (0.00 sec)