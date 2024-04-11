1. Obtener todos los empleados de la tabla empleados con todos sus datos.

    select * from empleados;

2. Obtener los números de empleados, los apellidos y el número de departamento de todos los
empleados de la tabla empleados.

    select emp_no,apellido,dep_no from empleados;

3. Obtener los departamentos diferentes que hay en la tabla empleados.

    select dep_no from empleados;

4. Obtener los diferentes oficios que hay en cada departamento de la tabla empleados.

    select oficio from empleados;

5. Obtener el salario total anual (14 pagas) de los empleados de la empresa mostrando el
mensaje Salario total.

    select salario*14 from empleados;

6. Seleccionar aquellos empleados cuyo apellido empiece por 'M' y tengan un salario entre
1000 y 2000 euros.

    select * from empleados where apellido like 'M%' and salario between 1000 and 2000;

7. Seleccionar aquellos empleados cuyo apellido incluya una ‘A’ en el segundo carácter.

    select * from empleados where apellido like '_A%';

8. Seleccionar los empleados existentes en los departamentos 10 y 30.

    select * from empleados where dep_no in (10,30);

9. Seleccionar los empleados que tienen de oficio ANALISTA. -------------

    select * from  empleados where oficio like 'ANALISTA';

10. Obtener relación alfabética de todos los empleados con todos sus datos

    select * from empleados order by apellido;

11. Obtener clasificación alfabética de empleados por departamentos.

    select * from empleados order by dep_no,apellido;

12. Obtener los datos de los empleados clasificados por oficios y en orden descendente de
salarios.

    select * from empleados order by oficio,salario desc;
    
    select * from empleados order by 3 asc, 6 desc desc;

    -- el numero de la columna de la tabla--

13. Obtener los apellidos de los empleados junto con su salario anual (salario + comision en 14
pagas) ordenado de mayor a menor por este salario total. ---------

    select apellido,(salario+IFNULL(comision,0))*14 as 'salario anual' from empleados order by 2 desc;

14. Obtener los datos de los 5 empleados con menos salario.

    select * from empleados order by salario limit 5;

    select * from empleados order by salario limit 0,
    5;
15. Obtener clasificación alfabética de empleados según su apellido y mostrar desde el 5º hasta
el 7º de la lista.

    select * from empleados order by apellido 4,3