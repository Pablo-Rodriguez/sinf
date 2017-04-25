
create database if not exists taquilla;
use taquilla;
create table if not exists espectaculo (
    id_espectaculo int not null auto_increment,
    nombre varchar(40) not null,
    descripcion varchar(500),
    tipo varchar(40),
    primary key (id_espectaculo)
);

create table if not exists participante (
    id_participante int not null auto_increment,
    nombre varchar(40) not null,
    primary key (id_participante)
);

create table if not exists recinto (
    id_recinto int not null auto_increment,
    nombre varchar(40) not null,
    primary key (id_recinto)
);

create table if not exists localidad (
    id_localidad int not null auto_increment,
    primary key (id_localidad)
);

create table if not exists grada (
    id_grada int not null auto_increment,
    id_espectaculo int not null,
    id_recinto int not null,
    id_evento int not null,
    id_participante int not null,
    nombre varchar(40) not null,
    max_localidad int not null default 5,
    primary key (id_grada, id_evento, id_recinto, id_espectaculo,id_participante),
    foreign key (id_espectaculo) references espectaculo(id_espectaculo),
    foreign key (id_participante) references participante(id_participante),
    foreign key (id_recinto) references recinto(id_recinto)
);

create table if not exists evento (
    id_evento int not null auto_increment,
    id_espectaculo int not null,
    id_recinto int not null,
    inicio Date not null,
    estado varchar(15),
    primary key (id_evento, id_espectaculo, id_recinto),
    foreign key (id_espectaculo) references espectaculo(id_espectaculo),
    foreign key (id_recinto) references recinto(id_recinto)
);

create table if not exists participante_espectaculo (
    id_espectaculo int not null,
    id_participante int not null,
    foreign key (id_espectaculo) references espectaculo(id_espectaculo),
    foreign key (id_participante) references participante(id_participante)
);

create table if not exists usuario (
    tipo varchar(15) not null,
    primary key (tipo)
);

create table if not exists cliente (
    dni int not null,
    nombre varchar(40) not null,
    apellido1 varchar(40) not null,
    apellido2 varchar(40) not null,
    direccion varchar(300) not null,
    cp int not null,
    telefono int,
    email varchar(60) not null,
    tarjeta int,
    cad_mes int,
    cad_anho int,
    cv int,
    primary key (dni)
);

create table if not exists localidad_recinto (
    id_localidad int not null,
    id_recinto int not null,
    foreign key (id_localidad) references localidad(id_localidad),
    foreign key (id_recinto) references recinto(id_recinto)
);

create table if not exists localidad_grada (
    id_localidad int not null,
    id_grada int not null,
    estado varchar(20) not null default "libre",
    foreign key (id_localidad) references localidad(id_localidad),
    foreign key (id_grada) references grada(id_grada)
);

create table if not exists precio (
    id_grada int not null,
    id_localidad int not null,
    id_evento int not null,
    id_espectaculo int not null,
    id_recinto int not null,
    tipo_usuario varchar(15) not null,
    precio numeric(6,2) not null,
    foreign key (id_espectaculo) references espectaculo(id_espectaculo),
    foreign key (id_recinto) references recinto(id_recinto),
    foreign key (id_evento) references evento(id_evento),
    foreign key (id_grada) references grada(id_grada),
    foreign key (id_localidad) references localidad(id_localidad),
    foreign key (tipo_usuario) references usuario(tipo)
);

create table if not exists reserva (
    id_cliente int not null,
    id_localidad int not null,
    id_grada int not null,
    tipo varchar(20) not null,
    foreign key (id_grada) references grada(id_grada),
    foreign key (id_localidad) references localidad(id_localidad),
    foreign key (id_cliente) references cliente(dni)
);
