/*1. Crea una consulta para mostrar los empleados que cobran menos de 1500 euros.*/
    
    select * from empleados where salario < 1500;

/*2. Consultar apellido, oficio, salario y código de departamento de los empleados que tienen un
sueldo mayor o igual que 2000 euros.*/
    
    select apellido, oficio, salario, DEP_NO from empleados where salario >= 2000;

/*3. Visualiza el código, apellido y código de departamento de los empleados que son
vendedores.*/
    
    select EMP_NO,apellido,DEP_NO from empleados where oficio = 'vendedor';

/*4. Visualizar empleados que pertenecen al departamento 30.*/
    
    select * from empleados where DEP_NO = 30;

/*5. Muestra el código, nombre y localidad del departamento 30.*/
    
    select * from departamentos where DEP_NO like 30;

/*6. Consultar código, oficio y salario de los empleados que entraron en la empresa a partir del
10 de Mayo de 1981.*/
    
    select emp_no,oficio,salario from empleados where fecha_alta >= '1981-05-10';

/*7. Mostrar código, apellido y oficio de los empleados cuyo director es 7698.*/
    
    select emp_no,apellido,oficio from empleados where director = 7698;

/*8. Muestra el apellido, oficio, fecha de alta, salario, comisión y código de departamento del
empleado 7698.*/
     
     select apellido,oficio,fecha_alta,salario,comision,DEP_NO from empleados where emp_no = 7698;

/*9. Obtener código, nombre y localidad de los clientes con los que trabaja el vendedor 7654.*/
    
    select cliente_no,nombre,localidad from clientes where vendedor_no = 7654;

/*10. Crea una consulta para visualizar el código, nombre y límite de crédito de los clientes que
son de Sevilla.*/

    select cliente_no,nombre,limite_credito from clientes where localidad = 'sevilla';

/*11. Muestra a los clientes cuyo límite de crédito es igual a 5000 euros.*/

    select * from clientes where limite_credito = 5000;

/*12. Muestra la descripción y el precio actual de los productos cuya cantidad en stock es distinta
a 25.*/

    select descripcion, precio_actual from productos where stock_disponible != 25;

/*13. Crea una consulta para mostrar el código, descripción y precio de los productos cuyo precio
es inferior o igual a 500 euros.*/

    select producto_no,descripcion,precio_actual from productos where precio_actual <= 500;

/*14. Visualiza los pedidos que se han realizado al cliente 106.*/

    select * from pedidos where cliente_no = 106;

/*15. Visualiza código de pedido, unidades y fecha de los pedidos que se han realizado con
anterioridad al 28 de de Noviembre de 1999.*/

    select pedido_no, unidades, fecha_pedido from pedidos where fecha_pedido < '1999-11-28' ;

/*16. Desconectarse o salir del servidor de MySQL*/

    quit;
