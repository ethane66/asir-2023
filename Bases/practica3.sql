/*1.Consultar apellidos,salario y comision donde los empleados que su comision es NULL */
    select apellido,salario,comision from empleados where comision is NULL;
2. Crea una consulta para mostrar apellido, oficio y salario de los empleados que tienen un
sueldo entre 1500 y 3000 euros.

    select apellido,oficio, salario from empleados  where salario between 1500 and 3000;

3. Visualiza el código, apellido y oficio de los empleados cuyo apellido empieza por ‘G’.

    select emp_no,apellido,oficio from empleados where apellido like 'G%';

4. Obtener todos los datos de los pedidos que en los que las unidades pedidas son 2, 4 o 6.

    select * from pedidos where unidades in (2,4,6);

5. Obtener los apellidos de los empleados que tengan una ‘R’ en la segunda posición.

    

6. Muestra la descripción y el precio de los productos cuyo precio actual no este entre 300 y
500 euros.



7. Consultar los productos cuya cantidad en stock no sea ni 15 ni 25.



8. Consultar apellidos, salario y comisión de los empleados cuya comisión es de 0 euros.



9. Consultar apellidos, salario y comisión de los empleados que tienen comisión (si su
comisión es 0, no debe mostrarse).



10. Obtener la descripción de los productos que empiezan por ‘A’ y tengan una ‘T’ en su
interior.



11. Obtener los apellidos de los empleados con tres caracteres y terminen por ‘L’.



12. Obtener los nombres de los productos que contengan en su interior la siguiente cadena de
caracteres ‘MOD’.



13. Consultar apellidos y oficio de los empleados que son directores.



14. Consultar los pedidos que se han realizado entre el 3 de Noviembre de 1999 y el 5 de
Octubre de 1999.



15. Visualizar apellido, oficio, fecha de alta y salario de los empleados que entraron en la
empresa en el año 1981.



16. Visualizar apellido, oficio, fecha de alta y salario de los empleados que no se dieron de alta
en Mayo de 1981.



17. Desconectarse o salir del servidor de MySQL.


