1. Seleccionar los oficios que tengan dos o más empleados, cuyo salario supere los 1400 euros.

select 
    oficio,
    count(*) as 'Nº Empleados'
from empleados 
    where salario > 1400
group by oficio
     having count(*)>=2;

2. Hallar los números de aquellos vendedores que atiendan a más de 2 clientes.

select
    vendedor_no as 'Nº Vendor',
    count(*) as 'numero clientes'
from clientes
group by vendedor_no
having count(*) >2;    

3.Obtener el número de cliente y las unidades pedidas por cada cliente, de aquellos clientes
 cuyos pedidos sumen 10 o más unidades.

select 
    cliente_no as 'Nº Cliente',
    sum(unidades) as 'Unidades pedidos'
from pedidos
group by cliente_no
having sum(unidades) >= 10;



4.Hallar para cada número de vendedor, la media de los límites de crédito de sus respectivos
 clientes, para aquellos vendedores que tengan más de 2 clientes.

select
    vendedor_no as 'Nº Vendor',
    avg(limite_credito) as 'Media limite credito',
    count(*) as 'numero clientes'
from clientes
group by vendedor_no
having count(*) >2;     

5.Obtener las fechas de pedido del pedido más antiguo y el más reciente de cada producto,
 mostrando también el número de producto correspondiente.

select
    producto_no as 'Nº de producto',
    min(fecha_pedido) as 'Fecha mas atinigua',
    max(fecha_pedido) as 'fecha mas reciente'
from pedidos
group by producto_no;

6. Recuperar la suma de los salarios de los empleados de cada departamento.

select
    dep_no as 'Nº de departamento',
    sum(salario) as 'Suma salarial mensual'
from empleados
group by dep_no;

