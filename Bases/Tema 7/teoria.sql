/* Esta consulta muestra los empleados cuyo salario supera supera la media
La primera parte de la consulta saca la iformacion de los empleados y en 
el where se hace la subconsulta que saca la media de los salarios */
select 
    dep_no,
    apellido,
    salario
from empleados
where salario > (select 
                    avg(salario) 
                from empleados);

/* Subconsulta que devuelve mas de un valor */
select 
    dep_no,
    apellido,
    salario
from empleados
where dep_no in (select distinct dep_no
                    from empleados
                    where fecha_alta < '1982-01-01');