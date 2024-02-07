1. Crea una consulta para mostrar la versión de MySQL.
    select version (), current_date;
2. Crea una consulta para mostrar la fecha actual.
    select current_date;
3. Escribe la sentencia para ver cuáles son las bases de datos (BBDD) existentes en el servidor.
    show databases;
4. Escribe la sentencia para ver en que BBDD te encuentras situado. Escribe el nombre de la
    show database ();

5. Selecciona la BBDD curso.
    use curso;
6. Muestra todas las tablas de la BBDD curso.
    show tables;
7. Muestra la descripción de cada una de las tablas de la BBDD curso.
    desc clientes;
8. Muestra los registros para todos los campos de la tabla empleados.
    select * from empleados;
9. Muestra los datos de la tabla departamentos.
    select * from departamentos;
10. Muestra el apellido de los empleados.
    select apellido from empleados;
11. Muestra el apellido, el oficio y el salario de los empleados.
    select apellido,oficio,salario from empleados;
12. Desconectarse o salir del servidor de MySQL.
    exit;

