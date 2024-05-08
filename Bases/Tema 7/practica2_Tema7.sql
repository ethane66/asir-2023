1. Obtener todos los empleados que tienen el mismo oficio que GARRIDO

select emp_no as 'Numero empleado', apellido,oficio from empleados
where oficio in (select oficio from empleados where apellido like 'garrido');

2. Obtener información de los empleados que ganan más que cualquier empleado del
departamento 30.

select emp_no as 'Numero empleado', apellido,oficio,salario from empleados
where salario > (select max(salario) from empleados where dep_no = 30);

3. Mostrar aquellos empleados que no trabajen ni en Madrid ni en Barcelona.

select emp_no as 'Numero empleado',apellido,dep_no from empleados
where dep_no not in (select dep_no from departamentos where localidad = 'MADRID' or localidad='BARCELONA');

-- Manera de carmen --
select emp_no as 'Numero empleado',apellido,dep_no from empleados
where dep_no in (select dep_no from departamentos where localidad not in ('madrid','barcelona'));

4. Obtener el nombre del departamento donde trabaja GARRIDO.

select dnombre from departamentos
where dep_no like (select dep_no from empleados where apellido like 'garrido');

5. Obtener todos los empleados que tienen un salario inferior al salario medio.

select emp_no as 'Numero  empleado',apellido,salario from empleados
where salario < (select avg(salario) from empleados);

6. Mostrar todos los empleados que tienen un salario inferior al salario medio, ordenados
alfabéticamente por el apellido.

select emp_no as 'Numero  empleado',apellido,salario from empleados
where salario < (select avg(salario) from empleados)
order by apellido;

7. Mostrar todos los empleados que tienen un salario inferior al salario medio, ordenados
ascendentemente por el salario.

select emp_no as 'Numero  empleado',apellido,salario from empleados
where salario < (select avg(salario) from empleados)
order by salario;

8. Mostrar todos los empleados que tienen un salario inferior al salario medio, ordenados
descendentemente por el salario.

select emp_no as 'Numero  empleado',apellido,salario from empleados
where salario < (select avg(salario) from empleados)
order by salario
desc;