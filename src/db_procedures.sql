use taquilla;
drop procedure if exists ver_eventos;
drop procedure if exists buscar_evento;
drop procedure if exists ver_gradas;
drop procedure if exists ver_localidades;
drop procedure if exists crear_cliente;
drop procedure if exists consultar_cliente;
drop procedure if exists prerreservar_localidad;
drop procedure if exists reservar_localidad;
drop procedure if exists ver_localidades_prerreservadas;
drop procedure if exists ver_localidades_reservadas;
drop procedure if exists anular_reserva;

delimiter //

create procedure ver_eventos (in limite int, in pagina int)
begin
    DECLARE off int default 0;
    set off=pagina*limite;
    select a.nombre, a.descripcion, a.tipo, b.nombre, c.inicio,c.estado from espectaculo a
        left join evento c on a.id_espectaculo=c.id_espectaculo
        left join recinto b on b.id_recinto=c.id_recinto
        limit limite offset off;
end //

create procedure buscar_evento (in nombre varchar(40))
begin
    set nombre=concat('%',nombre,'%');
    select c.id_evento 'id', a.nombre, a.descripcion, a.tipo, b.nombre, c.inicio, c.estado from espectaculo a
        left join evento c on a.id_espectaculo=c.id_espectaculo
        left join recinto b on b.id_recinto=c.id_recinto
        where a.nombre like nombre;
end //

create procedure ver_gradas (in id_evento int)
begin
    declare c int default 0;
    select count(*) from evento e where e.id_evento = id_evento into c;
    if c > 0 then
        select e.id_grada 'id', e.nombre 'nombre', a.nombre, b.nombre, c.inicio, c.estado
            from espectaculo a
            left join grada e on a.id_espectaculo=e.id_espectaculo
            left join recinto b on b.id_recinto=e.id_recinto
            left join evento c on c.id_evento=e.id_evento
            where id_evento=e.id_evento;
    else
        select 'Evento inexistente' as 'error';
    end if;
end //

create procedure ver_localidades (
    in id_grada int,
    in tipo varchar(15),
    out precio_out numeric(6, 2)
)
begin
    declare c int default 0;
    select count(*) from grada g where g.id_grada = id_grada into c;
    if c > 0 then
        select count(*) from precio p
            where p.id_grada = id_grada and p.tipo_usuario = tipo into c;
        if c > 0 then
            select p.precio from precio p
                where p.id_grada = id_grada and p.tipo_usuario = tipo into c;
            set precio_out = c;
            select l.id_localidad, g.nombre 'grada', r.nombre 'recinto'
                from localidad_grada lg
                left join localidad l on lg.id_localidad = l.id_localidad
                left join grada g on lg.id_grada = g.id_grada
                left join recinto r on g.id_recinto = r.id_recinto
                where g.id_grada = id_grada;
        else
            set precio_out = null;
            select 'Usuario no disponible para esa grada' as 'error';
        end if;
    else
        set precio_out = null;
        select 'Grada inexistente' as 'error';
    end if;
end //

create procedure crear_cliente (
    in dni int,
    in nombre varchar(40),
    in apellido1 varchar(40),
    in apellido2 varchar(40),
    in direccion varchar(300),
    in cp int,
    in telefono int,
    in email varchar(60),
    in tarjeta varchar(20),
    in cad_mes int,
    in cad_anho int,
    in cv int
)
begin
    declare c int default 0;
    select count(*) from cliente cli where cli.dni = dni into c;
    if c > 0 then
        select 'Usuario ya existente' as 'error';
    else
        insert into cliente (
            dni,nombre,apellido1,apellido2,direccion,cp,telefono,email,tarjeta,cad_mes,cad_anho,cv
        ) values (
            dni,nombre,apellido1,apellido2,direccion,cp,telefono,email,tarjeta,cad_mes,cad_anho,cv
        );
        select null as 'error';
    end if;
end //

create procedure consultar_cliente (in dni int)
begin
    declare c int default 0;
    select count(*) from cliente cli where cli.dni = dni into c;
    if c > 0 then
        select dni,nombre,apellido1,apellido2,direccion,cp,telefono,email
            from cliente
            where cliente.dni=dni;
    else
        select 'Usuario inexistente' as 'error';
    end if;
end //

create procedure prerreservar_localidad (
    in id_grada int,
    in id_localidad int,
    in dni int
)
begin

end //

create procedure reservar_localidad (
    in id_localidad int,
    in id_grada int,
    in dni int
)
begin

end //

create procedure ver_localidades_prerreservadas (in dni int)
begin

end //

create procedure ver_localidades_reservadas (in dni int)
begin

end //

create procedure anular_reserva (
    in id_localidad int,
    in id_grada int,
    in dni int
)
begin

end //

delimiter ;
