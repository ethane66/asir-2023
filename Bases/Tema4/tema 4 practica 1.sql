insert into clientes_2 (
    ID_CLIENTE,
        NOM_CLI,
        DIRECCION,
        LOCALIDAD,
        TELEFONO
)
values (
    'CLI_0001','Roberto','C/ROSAS 4', 'Torrejon','91780567'
);

insert into clientes_2 (
    ID_CLIENTE,
        NOM_CLI,
        DIRECCION,
        LOCALIDAD,
        TELEFONO
)
values (
    'CLI_0002','rosario','C/claveles 5', 'Coslada','916778090'
);

insert into clientes_2 (
    ID_CLIENTE,
        NOM_CLI,
        DIRECCION,
        LOCALIDAD,
        TELEFONO
)
values (
    'CLI_0003','Cosme','C/Iglesia 6', 'Getafe','910009566'
);

insert into pedidos_2 (
        ID_PEDIDO ,
        ID_CLIENTE,
        FECHA,
        IMPORTE
)

values (
    'PED_1000','CLI_0002','12/02/13','1650'
);

insert into pedidos_2 (
        ID_PEDIDO ,
        ID_CLIENTE,
        FECHA,
        IMPORTE
)

values (
    'PED_1001','CLI_0001','13/02/12','4570'
);

insert into pedidos_2 (
        ID_PEDIDO ,
        ID_CLIENTE,
        FECHA,
        IMPORTE
)

values (
    'PED_1003','CLI_0003','17/02/13','560'
);

insert into platos_2 (
    ID_PLATO,
        DESC_PLATO ,
        INGREDIENTES ,
        PRECIO 
)

values (
    'PLA_0001','Ensalada','Lechuga,tomates,pepinos','5.5'
);

insert into platos_2 (
    ID_PLATO,
        DESC_PLATO ,
        INGREDIENTES ,
        PRECIO 
)

values (
    'PLA_0002','Tortilla','Huevos','4.3'
);

insert into platos_2 (
    ID_PLATO,
        DESC_PLATO ,
        INGREDIENTES ,
        PRECIO 
)

values (
    'PLA_0003','Ternera','Ternera,verduras','15'
);

insert into detalle_pedido2 (
    ID_PEDIDO,ID_PLATO,NUM_PLATOS
)
values (
    'PED_1000','PLA_0003','4'
);

insert into detalle_pedido2 (
    ID_PEDIDO,ID_PLATO,NUM_PLATOS
)
values (
    'PED_1001','PLA_0001','2'
);

insert into detalle_pedido2 (
    ID_PEDIDO,ID_PLATO,NUM_PLATOS
)
values (
    'PED_1001','PLA_0002','6'
);
