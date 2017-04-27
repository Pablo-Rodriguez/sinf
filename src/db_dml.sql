use taquilla
-- Espectaculos
insert into espectaculo(nombre,descripcion,tipo) values('Circo Del Sol:Varekai','Espectáculo formado por los mejores gimnastas del mundo.','Circo');
insert into espectaculo(nombre,descripcion,tipo) values('Concierto Guns n Roses','Único concierto del mítico grupo estadounidense en España este 2017.','Concierto');
insert into espectaculo(nombre,descripcion,tipo) values('Celta de Vigo - Manchester United','Partido correspondiente a las semifinales de la UEL','Partido');
insert into espectaculo(nombre,descripcion,tipo) values('Celta de Vigo - Real Madrid','Partido aplazado de La Liga dónde se puede decidir el título de liga','Partido');
insert into espectaculo(nombre,descripcion,tipo) values('Real Madrid - FC Barcelona','El clásico más importante de los últimos 5 años','Partido');
insert into espectaculo(nombre,descripcion,tipo) values('Arenal Sound','Mayor festival del verano 2017','Festival');
insert into espectaculo(nombre,tipo) values('Concierto Coldplay','Concierto');
insert into espectaculo(nombre,tipo) values('El Rey León','Musical');
insert into espectaculo(nombre,descripcion,tipo) values('Goyo Jiménez','Monólogo del famoso humorista','Monólogo');
insert into espectaculo(nombre,descripcion,tipo) values('Fast and Furious 8','Última entrega de la saga.','Película');

-- Participantes
insert into participante(nombre) values ('Celta de Vigo');
insert into participante(nombre) values('Real Madrid');
insert into participante(nombre) values('Manchester United');
insert into participante(nombre) values('FC Barcelona');
insert into participante(nombre) values ('Circo Del Sol');
insert into participante(nombre) values ('El Rey León');
insert into participante(nombre) values ('Coldplay');
insert into participante(nombre) values ('Goyo Jiménez');
insert into participante(nombre) values ('Guns n Roses');
insert into participante(nombre) values ('Fast and Furious');
insert into participante(nombre) values ('Martin Garrix');
insert into participante(nombre) values('Kase O');
insert into participante(nombre) values ('Bastille');
insert into participante(nombre) values ('Leiva');

-- Recintos
insert into recinto(nombre) values ('Estadio de Balaídos');
insert into recinto(nombre) values ('Estadio Santiago Bernabéu');
insert into recinto(nombre) values ('Estadio de San Mamés');
insert into recinto(nombre) values('Estadio Olímpico Montjuic');
insert into recinto(nombre) values('Carpa del Circo del Sol');
insert into recinto(nombre) values('Cine Callao');
insert into recinto(nombre) values('Cines Gran Vía');
insert into recinto(nombre) values('Teatro A Fundación');
insert into recinto(nombre) values('Burriana');

-- Eventos
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (1,5,STR_TO_DATE('5-05-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (2,3,STR_TO_DATE('6-06-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (3,1,STR_TO_DATE('4-05-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (4,1,STR_TO_DATE('15-05-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (5,2,STR_TO_DATE('4-08-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (6,9,STR_TO_DATE('2-07-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (7,4,STR_TO_DATE('22-12-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (8,8,STR_TO_DATE('4-01-2018', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (9,6,STR_TO_DATE('31-08-2017', '%d-%m-%Y'),'abierto');
insert into evento(id_espectaculo,id_recinto,inicio,estado) values (10,7,STR_TO_DATE('3-05-2017', '%d-%m-%Y'),'abierto');

-- Gradas
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(1,5,1,'Sector 100');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(1,5,1,'Sector 101');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(1,5,1,'Sector 102');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(1,5,1,'Sector 200');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(1,5,1,'Sector 201');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(1,5,1,'Sector 202');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(2,3,2,'Lateral Este');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(2,3,2,'Lateral Oeste');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(2,3,2,'Fondo Norte');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(2,3,2,'Fondo Sur');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Río Alto');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Río Bajo');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Marcador');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Gol');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Tribuna Alta');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Tribuna Baja');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(3,1,3,'Fondo');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Río Alto');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Río Bajo');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Marcador');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Gol');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Tribuna Alta');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Tribuna Baja');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(4,1,4,'Fondo');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(5,2,5,'Lateral Este');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(5,2,5,'Lateral Oeste');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(5,2,5,'Fondo Norte');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(5,2,5,'Fondo Sur');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(6,9,6,'Escenario Principal');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(6,9,6,'Escenario Principal');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(6,9,6,'Escenario Mahou');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(6,9,6,'Escenario Mahou');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(7,4,7,'Lateral Este');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(7,4,7,'Lateral Oeste');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(7,4,7,'Fondo Norte');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(7,4,7,'Fondo Sur');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(8,8,8,'Platea Alta');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(8,8,8,'Platea Baja');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(8,8,8,'Palcos');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(9,6,9,'Platea Alta');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(9,8,8,'Platea Baja');
insert into grada(id_espectaculo,id_recinto,id_evento,nombre) values(10,7,10,'General');

-- Localidades
insert into localidad(id_recinto) values
    (1),
    (1),
    (1),
    (1),
    (1),
    (1);

-- Localidad-grada
insert into localidad_grada(id_localidad, id_grada) values
    (1, 11),
    (2, 11),
    (3, 12),
    (4, 12),
    (5, 13),
    (6, 13);

-- Usuarios
insert into usuario(tipo) values ('jubilado'), ('infantil'), ('adulto'), ('parado'), ('bebe');

-- Precio
insert into precio(id_grada, tipo_usuario, precio) values
    (11, 'adulto', 30),
    (11, 'infantil', 15),
    (11, 'parado', 15),
    (11, 'jubilado', 15),
    (12, 'adulto', 40),
    (13, 'adulto', 40);
