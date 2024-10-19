create schema if not exists jenriquezvideo;
set schema 'jenriquezvideo';

-- EMPIEZO A LA CREACIÓN DE TABLAS 
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
	id_socio integer
);

create table if not exists director (
	id_director serial primary key,
	nombre_director varchar(50) not null
);

create table if not exists peliculas (
	id_pelicula serial primary key ,
	titulo_pelicula varchar(30) not null,
	sinopsis varchar(200) not null,
	id_genero integer
);

create table if not exists director (
	id_director serial primary key,
	nombre_director varchar(50) not null
);

create table if not exists copia (
	id_copia serial primary key ,
	estado_pelicula varchar(20) not null,
	id_pelicula integer
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
	id_socio integer,
	id_copia integer
);

create table if not exists carnet (
	id_carnet serial primary key,
	numero_carnet varchar(20) not null,
	fecha_emision date not null,
	fecha_caduca date not null,
	id_socio integer
);

--alter table correspondencia add constraint socio_correspondencia_fk foreign key (id_socio) references socio(id_socio) on delete cascade;
--alter table peliculas  add constraint genero_peliculas_fk foreign key (id_genero) references genero(id_genero) on delete cascade;
--alter table peliculas add column id_director integer;
--alter table peliculas  add constraint director_peliculas_fk foreign key (id_director) references director(id_director) on delete cascade;
--alter table copia  add constraint peliculas_copia_fk foreign key (id_pelicula) references peliculas(id_pelicula) on delete cascade;
--alter table prestamo add constraint socio_prestamo_fk foreign key (id_socio) references socio(id_socio) on delete cascade;
--alter table prestamo  add constraint copia_prestamo_fk foreign key (id_copia) references copia(id_copia) on delete cascade;
--alter table carnet add constraint socio_carnet_fk foreign key (id_socio) references socio(id_socio) on delete cascade;

