1. Obtener la masa salarial mensual de todos los empleados.
    
    select 
        avg(salario) 
    from empleados;

2. Obtener los salarios máximo, mínimo y la diferencia existente entre ambos.

SELECT 
    MAX(salario) AS 'salario máximo',
    MIN(salario) AS 'salario mínimo',
    MAX(salario) - MIN(salario) AS 'diferencia salarial'
FROM empleados;

3. Obtener la fecha de alta más reciente.

    select 
        max(fecha_alta)
    from empleados;

4. Obtener la fecha de alta más antigua.

    select 
        min(fecha_alta)
    from empleados;

5. Calcular el salario medio de los empleados.

    select 
        avg(salario)
    from empleados;

    6. Obtener los salarios medios por departamento.

    select
        dep_no, avg(salario)
    from empleados  
    group by dep_no;

7. Obtener cuántos empleados hay en cada oficio.

    select oficio, count(*) as 'NºEmpleados'
    from empleados
    group by oficio;

8. Recuperar para cada departamento el salario mínimo y máximo que se cobra en él.

    select 
        dep_no as 'departamento', 
        max(salario) as 'Salario mas alto', 
        min(salario) as 'Salario mas bajo' 
    from empleados 
    group by dep_no;