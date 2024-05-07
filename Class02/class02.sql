create table Hotel(
	id int not null primary key identity,
	nombre varchar(20) not null,
	direccion varchar(35) not null,
	telefono varchar(9) constraint DF_HotelTelefono default 'pendiente'
);

create table habitacion(
	id int not null primary key identity,
	numero int,
	precio decimal(5,2) constraint CK_Habitacion check (precio > 0),
	id_hotel int not null foreign key references Hotel(id)
);

alter table habitacion drop constraint FK_habitacioid_ho_412EB0B6;
alter table habitacion drop column id_hotel;
alter table habitacion add id_Hotel int;
alter table habitacion add constraint FK_HabitacionH foreign key (id_Hotel) references Hotel(id) on delete cascade; /on delete cascade --> permite que al modificar un dato en una tabla estos se actualizen en las tablas que dependan de dicho valor/

/*
---TAREA---
	AGREGAR:
	-10 REPOSITORIOS DE HABITACION
	-11 REPOSITORIOS DE HOTEL

	consultar todos los hoteles
	consultar todas las habitaciones
	consultar todas las habitaciones con precio menor a $10
*/