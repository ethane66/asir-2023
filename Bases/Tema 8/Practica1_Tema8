1. Mostrar los siguientes datos relativos a empleados: apellido, salario, nombre del
departamento y localidad del departamento donde trabaja.

SELECT 
e.apellido "APELLIDO",
e.salario "SALARIO",
d.dnombre "DEPARTAMENTO",
d.localidad "LOCALIDAD"
FROM empleados e, departamentos d
WHERE e.dep_no = d.dep_no;

2. Mostrar los siguientes datos relativos a empleados: apellido, salario, nombre del
departamento y localidad del departamento donde trabaja, de todos los empleados que tienen un
salario superior a 2000 euros.

SELECT 
e.apellido "APELLIDO",
e.salario "SALARIO",
d.dnombre "DEPARTAMENTO",
d.localidad "LOCALIDAD"
FROM empleados e, departamentos d
WHERE e.dep_no = d.dep_no and salario > 2000;

3. Mostrar los siguientes datos relativos a empleados: apellido, salario, nombre del
departamento y localidad del departamento donde trabaja, de todos los empleados que tienen
un salario superior a 2000 euros. Ordenados alfabéticamente por el apellido.

SELECT 
e.apellido "APELLIDO",
e.salario "SALARIO",
d.dnombre "DEPARTAMENTO",
d.localidad "LOCALIDAD"
FROM empleados e, departamentos d
WHERE e.dep_no = d.dep_no and salario > 2000
order by e.apellido;

4. Mostrar los siguientes datos relativos a empleados: apellido, salario, nombre del
departamento y localidad del departamento donde trabaja, de todos los empleados que tienen
un salario superior a 2000 euros y el segundo carácter de su apellido es una ‘A’.

SELECT 
e.apellido "APELLIDO",
e.salario "SALARIO",
d.dnombre "DEPARTAMENTO",
d.localidad "LOCALIDAD"
FROM empleados e, departamentos d
WHERE e.dep_no = d.dep_no and salario > 2000 and apellido like '_A%';


5. Mostrar los siguientes datos relativos a los clientes: número de cliente, nombre de cliente,
límite de crédito, número de vendedor, apellido del vendedor y oficio del vendedor.

select
c.cliente_no,
c.nombre,
c.limite_credito,
c.vendedor_no,
e.apellido,
e.oficio
from clientes c, empleados e
where c.vendedor_no = e.emp_no;

6. Mostrar los siguientes datos relativos a los clientes: número de cliente, nombre de cliente,
límite de crédito, número de vendedor, apellido del vendedor, oficio del vendedor, nombre de
departamento del vendedor y localidad de trabajo del vendedor

select
c.cliente_no,
c.nombre,
c.limite_credito,
c.vendedor_no,
e.apellido,
e.oficio,
d.dnombre,
d.localidad
from clientes c, empleados e, departamentos d
where c.vendedor_no = e.emp_no and e.dep_no = d.dep_no;

select clientes.cliente_no, clientes.nombre, clientes.limite_credito, clientes.vendedor_no, empleados.apellido, empleados.oficio, departamentos.dnombre, departamentos.localidad from empleados, clientes, departamentos where empleados.emp_no = clientes.vendedor_no and empleados.dep_no = departamentos.dep_no
order by limite_credito;