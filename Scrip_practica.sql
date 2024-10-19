create schema if not exists jenriquez;
set schema 'jenriquez';

-- EMPIEZO A LA CREACIÓN DE TABALAS 
create table if not exists socio (
	id_socio serial primary key,
	nombre varchar(30) not null,
	apellido varchar(30) not null,
	fecha_nacimiento date not null,
	telefono smallint not null,
	dni varchar(9) not null
);

create table if not exists correspondencia (
	id_correspondencia serial primary key,
	codigo_postal int ,
	calle varchar(30),
	piso varchar(10),
	numero smallint,
	id_socio int
);

create table if not exists peliculas (
	id_pelicula serial primary key ,
	titulo_pelicula varchar(30) not null,
	sinopsis varchar(200) not null,
	id_genero int
);

create table if not exists director (
	id_director serial primary key,
	nombre_director varchar(50) not null
);

create table if not exists copia (
	id_copia serial primary key ,
	estado_pelicula varchar(20) not null,
	id_pelicula int
);

create table if not exists genero (
	id_genero serial primary key ,
	nombre_genero varchar(30) not null
);

create table if not exists prestamo (
	id_prestamo serial primary key ,
	fecha_alquiler date not null,
	fecha_devolucion date,
	activo_alquiler boolean not null,
	id_socio int,
	id_copia int
);

create table if not exists carnet (
	id_carnet serial primary key,
	numero_carnet varchar(20) not null,
	fecha_emision date not null,
	fecha_caduca date not null,
	id_socio int
);