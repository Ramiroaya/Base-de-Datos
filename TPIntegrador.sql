-- creacion de base de datos "integrador".

create database if not exists `integrador`;

-- poniendo en uso la base de datos "integrador".

use `integrador`;

-- 1 creacion de tablas:

-- creacion tabla Productos.

create table if not exists `productos`(
	`id_producto` integer not null,
    `nombre` varchar(45) not null,
    `precio` float not null,
    `stock` integer  not null,
    constraint pk_productos primary key (`id_producto`)
    );
    
-- creacion tabla Clientes

create table if not exists `clientes`(
	`id_cliente` integer not null,
    `nombre` varchar(45) not null,
    `correo` varchar(45) not null,
    `direccion` varchar(45) not null,
    constraint pk_clientes primary key (`id_cliente`)
    );
    
-- creacion tabla Compras

create table if not exists `compras`(
	`id_compras` int not null,
    `cantidad` int not null,
    `fecha` date not null,
    constraint pk_compras primary key (`id_compras`)
    );
 
-- sumando los campos cliente_id y producto_id.
 
 alter table compras add cliente_id int not null;
 alter table compras add producto_id int not null;
 
 -- definiendo el campo cliente_ id como clave foranea.
 
alter table compras add constraint fk_compras_clientes
	foreign key (`cliente_id`)
    references clientes(id_cliente);
    
-- definiendo el campo producto_id como clave foranea.

alter table compras add constraint fk_compras_productos
	foreign key (`producto_id`)
	references productos(id_producto);
 
 -- 2: Insercion de datos en tablas:

    -- Generando inserts para la tabla "Productos"
INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (1, 'Camiseta', 19.99, 50);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (2, 'Pantalón', 39.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (3, 'Zapatos', 59.99, 20);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (4, 'Blusa', 29.99, 40);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (5, 'Falda', 34.99, 25);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (6, 'Sombrero', 14.99, 15);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (7, 'Bufanda', 9.99, 35);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (8, 'Pulsera', 7.99, 60);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (9, 'Reloj', 99.99, 10);

INSERT INTO Productos (id_producto, nombre, precio, stock)
VALUES (10, 'Bolso', 49.99, 20);

-- Generando inserts para la tabla "Clientes"
INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (1, 'Juan Pérez', 'juan.perez@example.com', 'Calle Principal 123');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (2, 'María Rodríguez', 'maria.rodriguez@example.com', 'Avenida Central 456');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (3, 'Carlos Gómez', 'carlos.gomez@example.com', 'Plaza Mayor 789');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (4, 'Ana Torres', 'ana.torres@example.com', 'Calle Secundaria 321');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (5, 'Luis García', 'luis.garcia@example.com', 'Avenida Principal 654');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (6, 'Laura Martínez', 'laura.martinez@example.com', 'Calle Secundaria 987');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (7, 'Roberto Sánchez', 'roberto.sanchez@example.com', 'Avenida Central 753');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (8, 'Carmen López', 'carmen.lopez@example.com', 'Plaza Mayor 246');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (9, 'Daniel Fernández', 'daniel.fernandez@example.com', 'Calle Principal 159');

INSERT INTO Clientes (id_cliente, nombre, correo, direccion)
VALUES (10, 'Sofía Ramírez', 'sofia.ramirez@example.com', 'Avenida Central 357');

-- Generando inserts para la tabla "Compras"
INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (1, 1, 1, 2, '2023-06-01');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (2, 1, 3, 1, '2023-06-02');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (3, 2, 2, 3, '2023-06-03');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (4, 3, 4, 2, '2023-06-04');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (5, 4, 5, 1, '2023-06-05');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (6, 5, 1, 2, '2023-06-06');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (7, 6, 3, 1, '2023-06-07');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (8, 7, 2, 3, '2023-06-08');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (9, 8, 4, 2, '2023-06-09');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha)
VALUES (10, 9, 5, 1, '2023-06-10');

-- Insertando en tabla productos.

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (11, 'Camiseta', 15.99, 50);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (12, 'Pantalón', 29.99, 40);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (13, 'Zapatos', 49.99, 20);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (14, 'Chaqueta', 39.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (15, 'Sombrero', 9.99, 100);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (16, 'Bufanda', 14.99, 80);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (17, 'Calcetines', 4.99, 150);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (18, 'Bolso', 24.99, 25);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (19, 'Gafas de sol', 19.99, 50);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (20, 'Reloj', 79.99, 10);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (21, 'Vestido', 39.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (22, 'Traje', 99.99, 15);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (23, 'Blusa', 29.99, 35);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (24, 'Corbata', 14.99, 60);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (25, 'Falda', 34.99, 20);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (26, 'Bañador', 24.99, 45);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (27, 'Gorra', 9.99, 75);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (28, 'Pulsera', 7.99, 200);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (29, 'Cinturón', 12.99, 100);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (30, 'Billetera', 19.99, 80);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (31, 'Botas', 59.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (32, 'Chaleco', 34.99, 25);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (33, 'Jersey', 39.99, 40);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (34, 'Sudadera', 29.99, 50);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (35, 'Anillo', 16.99, 150);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (36, 'Collar', 22.99, 100);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (37, 'Pendientes', 11.99, 200);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (38, 'Pantalones cortos', 19.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (39, 'Sandalia', 29.99, 40);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (40, 'Bolso de mano', 39.99, 20);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (41, 'Traje de baño', 34.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (42, 'Chaqueta de cuero', 89.99, 15);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (43, 'Gorro de lana', 12.99, 50);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (44, 'Mochila', 29.99, 25);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (45, 'Polo', 24.99, 40);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (46, 'Gafas de lectura', 9.99, 100);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (47, 'Guantes', 14.99, 80);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (48, 'Bolsa de deporte', 19.99, 30);

INSERT INTO Productos (id_producto, nombre, precio, stock) 
VALUES (49, 'Camisa', 34.99, 35);

INSERT INTO Productos (id_producto, nombre, precio, stock)
 VALUES (50, 'Zapatillas', 49.99, 20);



-- Insertan en tabla Clientes. "Me gustaria saber si es indiferente la sintaxis de insertar en tablas o hay una forma de buenas practicas".

INSERT INTO Clientes (id_cliente, nombre, correo, direccion) VALUES
(11, 'Juan Pérez', 'juan.perez@example.com', 'Calle Principal 123'),
(12, 'María García', 'maria.garcia@example.com', 'Avenida Central 456'),
(13, 'Carlos Rodríguez', 'carlos.rodriguez@example.com', 'Calle Secundaria 789'),
(14, 'Laura López', 'laura.lopez@example.com', 'Avenida Norte 321'),
(15, 'Pedro Martínez', 'pedro.martinez@example.com', 'Calle Sur 654'),
(16, 'Ana Fernández', 'ana.fernandez@example.com', 'Avenida Este 987'),
(17, 'Luis Torres', 'luis.torres@example.com', 'Calle Oeste 654'),
(18, 'Sofía Ramírez', 'sofia.ramirez@example.com', 'Avenida Principal 123'),
(19, 'Daniel Herrera', 'daniel.herrera@example.com', 'Calle Central 456'),
(20, 'Elena Castro', 'elena.castro@example.com', 'Avenida Secundaria 789'),
(21, 'Miguel Vargas', 'miguel.vargas@example.com', 'Calle Norte 321'),
(22, 'Isabella Morales', 'isabella.morales@example.com', 'Avenida Sur 654'),
(23, 'Gustavo Silva', 'gustavo.silva@example.com', 'Calle Este 987'),
(24, 'Valentina Ríos', 'valentina.rios@example.com', 'Avenida Oeste 654'),
(25, 'Andrés Gómez', 'andres.gomez@example.com', 'Calle Principal 123'),
(26, 'Carolina Delgado', 'carolina.delgado@example.com', 'Avenida Central 456'),
(27, 'Martín Navarro', 'martin.navarro@example.com', 'Calle Secundaria 789'),
(28, 'Paula Benítez', 'paula.benitez@example.com', 'Avenida Norte 321'),
(29, 'Javier Rojas', 'javier.rojas@example.com', 'Calle Sur 654'),
(30, 'Fernanda Castro', 'fernanda.castro@example.com', 'Avenida Este 987'),
(31, 'Diego Soto', 'diego.soto@example.com', 'Calle Oeste 654'),
(32, 'Camila Cordero', 'camila.cordero@example.com', 'Avenida Principal 123'),
(33, 'Sebastián Paredes', 'sebastian.paredes@example.com', 'Calle Central 456'),
(34, 'Valeria Muñoz', 'valeria.munoz@example.com', 'Avenida Secundaria 789'),
(35, 'Alejandro Castro', 'alejandro.castro@example.com', 'Calle Norte 321'),
(36, 'Gabriela Ríos', 'gabriela.rios@example.com', 'Avenida Sur 654'),
(37, 'Felipe González', 'felipe.gonzalez@example.com', 'Calle Este 987'),
(38, 'Renata Morales', 'renata.morales@example.com', 'Avenida Oeste 654'),
(39, 'Hugo Guzmán', 'hugo.guzman@example.com', 'Calle Principal 123'),
(40, 'Abril Flores', 'abril.flores@example.com', 'Avenida Central 456'),
(41, 'Maximiliano Herrera', 'maximiliano.herrera@example.com', 'Calle Secundaria 789'),
(42, 'Josefa Peña', 'josefa.pena@example.com', 'Avenida Norte 321'),
(43, 'Emilio Ríos', 'emilio.rios@example.com', 'Calle Sur 654'),
(44, 'Antonella Silva', 'antonella.silva@example.com', 'Avenida Este 987'),
(45, 'Juanita Torres', 'juanita.torres@example.com', 'Calle Oeste 654'),
(46, 'Leonardo Sánchez', 'leonardo.sanchez@example.com', 'Avenida Principal 123'),
(47, 'Amanda Valenzuela', 'amanda.valenzuela@example.com', 'Calle Central 456'),
(48, 'Matías Ríos', 'matias.rios@example.com', 'Avenida Secundaria 789'),
(49, 'Constanza Castro', 'constanza.castro@example.com', 'Calle Norte 321'),
(50, 'Feliciano Rojas', 'feliciano.rojas@example.com', 'Avenida Sur 654');

-- Insertando en tabla Compras.

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(11, 10, 9, 3, '2023-06-26');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(12, 11, 10, 2, '2023-06-25');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(13, 12, 11, 1, '2023-06-24');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(14, 13, 12, 4, '2023-06-23');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(15, 14, 13, 2, '2023-06-22');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(16, 15, 14, 3, '2023-06-21');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(17, 16, 15, 1, '2023-06-20');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(18, 17, 16, 2, '2023-06-19');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(19, 18, 17, 4, '2023-06-18');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(20, 19, 18, 1, '2023-06-17');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(21, 20, 19, 3, '2023-06-16');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(22, 21, 20, 2, '2023-06-15');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(23, 22, 21, 4, '2023-06-14');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(24, 23, 22, 1, '2023-06-13');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(25, 24, 23, 3, '2023-06-12');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(26, 25, 24, 2, '2023-06-11');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(27, 26, 25, 4, '2023-06-10');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(28, 27, 26, 1, '2023-06-09');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(29, 28, 27, 3, '2023-06-08');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(30, 29, 28, 2, '2023-06-07');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(31, 30, 29, 4, '2023-06-06');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(32, 31, 30, 1, '2023-06-05');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(33, 32, 31, 3, '2023-06-04');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(34, 33, 32, 2, '2023-06-03');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(35, 34, 33, 4, '2023-06-02');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(36, 35, 34, 1, '2023-06-01');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(37, 36, 35, 3, '2023-05-31');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(38, 37, 36, 2, '2023-05-30');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(39, 38, 37, 4, '2023-05-29');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(40, 39, 38, 1, '2023-05-28');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(41, 40, 39, 3, '2023-05-27');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(42, 41, 40, 2, '2023-05-26');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(43, 42, 41, 4, '2023-05-25');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(44, 43, 42, 1, '2023-05-24');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(45, 44, 43, 3, '2023-05-23');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(46, 45, 44, 2, '2023-05-22');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(47, 46, 45, 4, '2023-05-21');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(48, 47, 46, 1, '2023-05-20');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(49, 48, 47, 3, '2023-05-19');

INSERT INTO Compras (id_compras, cliente_id, producto_id, cantidad, fecha) VALUES
(50, 49, 58, 2, '2023-05-18');


-- 3. Modificaion de Tablas:

-- 3.1 Agrega una columna "descuento" a la tabla "Productos" utilizando ALTER TABLE.

alter table productos add descuento int not null;

-- 3.2 Modifica el tipo de datos de la columna "precio" en la tabla "Productos" utilizando ALTER COLUMN.

alter table productos modify precio decimal not null;
alter table productos modify precio float not null;

-- 4 Consultas:

 -- 4.1 Realiza una consulta utilizando SELECT JOIN para obtener la información de los productos comprados por cada cliente.
	
select c.nombre as nombre_cliente, p.nombre as nombre_producto
from clientes c
inner join compras co on c.id_cliente = co.cliente_id
inner join productos p on co.producto_id = p.id_producto;

-- 4.2 Crea una VIEW que muestre los productos con descuento.

create view producto_con_descuento as
	select *, case when stock > 20 then precio * 0.9 
		else precio 
        end as precio_con_descuento
	from productos;

select * from producto_con_descuento;

-- 4.3 Crea un INDEX en la columna "nombre" de la tabla "Productos" para mejorar la velocidad de las consultas.

create index idx_productos_nombre on productos (nombre); 


-- 5 Procedimientos almacenados:

-- 5.1 Crea un STORE PROCEDURE que calcule el total de ventas para un cliente dado.
	
DELIMITER //
create procedure total_ventas_cliente( in cliente_id int, out total double)
begin
	select sum(p.precio * c.cantidad) into total
    from compras c inner join productos p on c.producto_id = p.id_producto where c.cliente_id = cliente_id;
end //
DELIMITER ;

-- 5.2 Utiliza el STORE PROCEDURE para obtener el total de ventas de un cliente específico.

call total_ventas_cliente(30, @total);
select @total;

-- 6. Funciones:

-- 6.1 Crea una función que calcule el promedio de precios de los productos.

DELIMITER //	
create function promedio_precio_producto () returns double 
begin
	declare promedio double;
	select avg(precio) into promedio from productos ;
	return promedio;
end //
DELIMITER ;
  

-- 6.2 Utiliza la función para obtener el promedio de precios de todos los productos.

select promedio_precio_producto();


-- 7. Transacciones:

-- 7.1 Crea una transacción que inserte un nuevo cliente y una nueva orden de compra al mismo tiempo.

	start transaction;

		insert into clientes (id_cliente, nombre, correo, direccion)
        values (51, "Domingo cavallo", "cavallo@hotmail.com", "moreno 1234");
        
        insert into compras (id_compras, cliente_id, producto_id, cantidad, fecha)
        values (51, 20, 12, "2023-05-10") ;


-- 7.2 Asegúrate de que la transacción se ejecute correctamente y se haga un rollback en caso de error.

DELIMITER //
create procedure insertar_datos()
begin
    declare insert_error boolean default false;
    declare continue handler for sqlexception
    begin
        set insert_error = true;
        rollback;
    end;
	start transaction;
			insert into clientes (id_cliente, nombre, correo, direccion)
			values (54, "Gabriel Rolon", "rolon2020@gmail.com", "arroyo 722");
			insert into compras (id_compras, cliente_id, producto_id, cantidad, fecha)
			values (52, 41, 12, 20, "2023-05-10") ;
			if insert_error then
				select'ERROR: ACCION NO VALIDA';
			else
				commit;
                select'TRANSACCION COMPLETADA CORRECTAMENTE';
			end if;
        
end //
DELIMITER ;		

call insertar_datos();	


-- 8. Triggers:

-- 8.1 Crea un TRIGGER que actualice el stock de un producto después de realizar una orden de compra.

create trigger actualiza_stock after insert on compras 
	for each row update productos set stock = stock - new.cantidad
        where id_producto = new.producto_id;

-- 8.2 Verifica que el TRIGGER se dispare correctamente y actualice el stock de manera adecuada.

insert into compras (id_compras, cliente_id, producto_id, cantidad, fecha)
values (51, 22, 1, 20,'2023-07-07');

select * from productos;
