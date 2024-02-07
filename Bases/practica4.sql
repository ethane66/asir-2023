1. Consultar apellido, salario y nº de departamento de los empleados cuyo salario es menor de
2000 euros en los departamentos 10 o 30.

    select apellido,salario,dep_no from empleados where salario < 2000 and dep_no in (10,30);

2. Consultar apellido, oficio, salario y comisión de los empleados cuyo oficio es
‘VENDEDOR’, ‘ANALISTA’ o ‘EMPLEADO’ y su comisión es NULL.

    SELECT apellido, oficio, salario, comision FROM empleados WHERE oficio IN ('VENDEDOR', 'ANALISTA', 'EMPLEADO') AND comision IS NULL;


3. Visualiza el apellido, oficio, jefe y fecha de alta de los empleados que tienen un jefe
asignado y su fecha de alta es del 15 de Noviembre del 1981 al 25 de Mayo de 1982.

    select apellido,oficio,director,fecha_alta from empleados where director not null and fecha_alta between '1981-11-15' and '1981-05-25';

4. Visualiza el apellido, oficio, jefe, fecha de alta y nº de departamento de los empleados que
no tienen un jefe asignado y su fecha de alta es en 1981 o son del departamento 20.

    select apellido,oficio,director,fecha_alta, dep_no from empleados where director is null and fecha_alta between '1981-01-01' and '1981-12-31' or dep_no = 20;

5. Visualiza el apellido, código de departamento y jefe de los empleados que su apellido
contenga una 'o' o sean del departamento 30 y su jefe sea el 7698.

    select apellido, dep_no, director from empleados where apellido like '%o%' or dep_no = 30 and director = 7698;

6. Visualiza el apellido y código de departamento de los empleados que su apellido termine en
'ez' y no sean del departamento 30. Etiqueta o nombra las columnas como "Empleado" y
"Código departamento" respectivamente.

    select apellido, dep_no from empleados where apellido like '%ez' and dep_no not like 20;

7. Visualiza descripción, precio actual, precio rebajado un 5% y stock disponible de los
productos cuya cantidad en stock es menor que 25 o su precio actual es superior a 500 euros.



8. Visualiza apellido, fecha de alta, salario, comisión y precio total de los empleados que no
pertenecen al departamento 10 o entraron en la empresa después del verano de 1981. El
precio total es salario+comisión, consideramos que la comisión de los empleados cuyo valor
es NULL es 0.



