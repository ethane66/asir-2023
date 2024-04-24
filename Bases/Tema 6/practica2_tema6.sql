1. Obtener para cada número de cliente el número de pedidos que tiene.

    select 
        cliente_no as 'cliente', 
        count(pedido_no) as 'Nº de pedidos' 
    from pedidos 
    group by cliente_no;

2. Recuperar el total de unidades por producto que hay entre todos los pedidos, indicando el
número de producto y la suma de sus unidades.

    select 
        producto_no as 'Nº de producto', 
        sum(unidades) as 'Total unidades' 
    from pedidos 
    group by producto_no;

3. Hallar para cada oficio el número de empleados que lo desempeñan.

    select 
        oficio, 
        count(emp_no) as 'NºEmpleados' 
    from empleados 
    group by oficio;

4. Obtener para cada departamento cuantos vendedores tiene y cuál es su salario medio sin
 incluir comisión.

    select 
        dep_no as 'Departamento',
        count(*) as 'Nº de vendedores',
        avg(salario) as 'Salario medio'
    from empleados
    where oficio = 'vendedor'
    group by dep_no;

 5. Seleccionar los datos del departamento con menor salario medio.

    select 
        dep_no as 'Nº Dewpartamento',
        avg(salario) as 'salario medio'
    from empleados
    group by dep_no
    order by 2
    limit 1;

6. Seleccionar los datos del departamento con mayor número de empleados.

    select 
        dep_no as 'Departamento',
        count(emp_no) as 'Nºempleados'
    from empleados
    group by dep_no
    order by 2 desc 
    limit 1;


7. Seleccionar los oficios que tengan dos o más empleados.

select 
    oficio,
    count(*) as 'Nº Empleados'
from empleados
group by oficio
    having count(*)>=2;