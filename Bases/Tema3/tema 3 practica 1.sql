1: Crea la base de datos llamada tema3_practica1

  create database tema3_practica1;

Tabla clientes_2:

    create table clientes_2 (
        ID_CLIENTE varchar(10) primary key,
        NOM_CLI varchar(30),
        DIRECCION varchar(30),
        LOCALIDAD varchar(30),
        TELEFONO int(9) NOT NULL UNIQUE
    );


Tabla pedidos_2:

    create table pedidos_2 (
        ID_PEDIDO varchar(10) primary key,
        ID_CLIENTE varchar(10),
        FECHA date,
        IMPORTE float(10,2),
        constraint pedidos_2_clientes_2
        foreign key pedidos_2 (ID_CLIENTE)
        references clientes_2 (ID_CLIENTE)
    );

Tabla platos_2:

    create table platos_2 (
        ID_PLATO varchar(10) primary key,
        DESC_PLATO varchar(100),
        INGREDIENTES varchar(100),
        PRECIO float(10,2) NOT NULL
    );

Tabla detalle_pedido2:

    create table detalle_pedido2 (
        ID_PEDIDO varchar(10),
        ID_PLATO varchar(10),
        NUM_PLATOS int(2) NOT NULL default 1,
        /*Definiar clave primaria compuesta */
        constraint PK_DETALLE_PEDIDO_2_PEDIDOS_2
        primary key (ID_PEDIDO,ID_PLATO),
        /*Defonir un campo clave ajena */
        constraint FK_DETALLE_PEDIDO_2_PEDIDOS_2
        foreign key detalle_pedido2 (ID_PEDIDO)
        references pedidos_2 (ID_PEDIDO),
        /*Definir un campo clave ajena */
        constraint fk_detalle_pedidos_2_platos_2
        foreign key detalle_pedido2 (ID_PLATO)
        references platos_2 (ID_PLATO)
    );


