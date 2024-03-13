4. Borra de la tabla socios_4 a socio_no = 1003. Si no es posible explica por qué.
    No se puede por la clave ajena
5. Modifica de la tabla socios_4 a socio_no = 1002 por socio_no = 1222. Si no es posible explica por qué.
    No se puede por la clave ajena
6. Modifica de la tabla socios_4 el codigo postal por 28444 de los socios que viven en "C.REAL" y su primer
apellido es "LOPEZ". Si no es posible explica por qué.

7. Puedes deshacer los cambios efectuados en los pasos 5 y 6. Contesta "si" ó "no".

• Si has contestado que "si" indica que es lo que debes hacer.
Si, quitar el autocommit.
• Si has contestado que "no" explica por qué.

8. Desactiva el AUTO COMMIT.
    set autocommit = 0;
9. Borra de la tabla socios_4 a todos los socios que entraron antes del 01-02-2000. Si no es posible explica por
qué.
    DELETE FROM socios_4 WHERE fecha_alta < '2000-02-01';

10. Modifica de la tabla socios_4 la dirección y el código postal del socio_no = '1003' por "C.LORCA 44" y
"28999". Si no es posible explica por qué.

UPDATE socios_4
SET direccion = 'C.LORCA 44', codigo_postal = 28999
WHERE socio_no = 1003;


11. Puedes deshacer los cambios efectuados en los pasos 9 y 10. Contesta "si" ó "no".

• Si has contestado que "si" indica que es lo que debes hacer.
    si
• Si has contestado que "no" explica por qué.

12. Modifica de la tabla socios_4 a socio_no = 1003 por socio_no = 1333. Si no es posible explica por qué.
No se puede por la FK

13. Contesta:

• ¿El AUTO COMMIT está activado o desactivado?

    desactivado

• ¿Qué comando debes ejecutar para confirma los cambios realizados haciéndolos permanentes?
commit;
14. Puedes deshacer los cambios efectuados en el paso 12. Contesta "si" ó "no".

• Si has contestado que "si" indica que es lo que debes hacer.
 si porque autocommit esta quitado
• Si has contestado que "no" explica por qué.

15. Cambia el nombre el campo "direccion" por "direccion_socio" de la tabla socios_4.
No se puede
16. Puedes deshacer los cambios efectuados en el paso 15. Contesta "si" ó "no".
• Si has contestado que "si" indica que es lo que debes hacer.
• Si has contestado que "no" explica por qué.
Por la version de SQL

