use taquilla
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

insert into recinto(nombre) values ('Estadio de Balaídos');
insert into recinto(nombre) values ('Estadio Santiago Bernabéu');
insert into recinto(nombre) values ('Estadio de San Mamés');
insert into recinto(nombre) values('Estadio Olímpico');
insert into recinto(nombre) values('Carpa del Circo del Sol');
insert into recinto(nombre) values('Cine Callao');
insert into recinto(nombre) values('Cines Gran Vía');
insert into recinto(nombre) values('Teatro A Fundación');
insert into recinto(nombre) values('Burriana');

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
