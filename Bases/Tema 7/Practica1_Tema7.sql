1.Listar los nombres de los departamentos que tengan algún empleado con fecha de alta
anterior a 1982.

select 
    dep_no,
    apellido,
    salario
from empleados
where dep_no in (select distinct dep_no
                    from empleados
                    where fecha_alta < '1982-01-01');

2.Visualizar los nombres de los departamentos que tengan empleados trabajando en ellos.

select 
    dnombre
from departamentos
where dep_no in(select dep_no from empleados where dep_no is not null);

3.Visualizar el nombre de aquellos departamentos en los que al menos exista un empleado con
comisión no nula.

   select 
    dnombre
from departamentos
where dep_no in(select dep_no from empleados where comision is not null);

4. Visualizar nº y nombre de aquellos departamentos que no tienen empleados.

select
    dep_no,dnombre
from departamentos
where dep_no not in(select dep_no from empleados where dep_no is not null);

5. Listar las localidades donde existan departamentos con empleados cuya comisión supere el
10% del salario.

select
    dep_no,
    localidad
from departamentos
where dep_no in(select dep_no from empleados where comision > (0.10*salario));


6. Listar, en orden alfabético por apellidos, aquellos empleados que trabajan en el
departamento de VENTAS.

select 
    apellido,
    oficio
from empleados where dep_no in(select dep_no from departamentos where dep_no = 30)
order by apellido;

select 
    apellido,
    oficio
from empleados where dep_no in(select dep_no from departamentos where dnombre like 'ventas')
order by apellido;