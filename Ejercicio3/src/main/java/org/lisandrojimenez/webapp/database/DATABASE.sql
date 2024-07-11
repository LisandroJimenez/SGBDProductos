

create database if not exists SGBDProductos;

use SGBDProductos;

create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar(40) not null,
    marcaProducto varchar(40),
    descripcionProducto text,
    precioProducto decimal(10,2),
    primary key PK_productoId(productoId)
);

select *from productos;

insert into Productos(nombreProducto, marcaProducto, descripcionProducto, precioProducto) values
('Jamon','Toledo', 'Jamon de pavo', '500'),
('Sal','Suli','Sal xd', '400'),
('Papas Pringles','Pringles','sabor original','22.05'),
('Yogurt', 'Lala','Yogurt griego natural','9.20');