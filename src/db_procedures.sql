use taquilla;
drop procedure if exists ver_eventos;
drop procedure if exists buscar_evento;
drop procedure if exists ver_gradas;
drop procedure if exists ver_localidades;
drop procedure if exists crear_cliente;
drop procedure if exists consultar_usuario;
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
    select a.nombre, a.descripcion, a.tipo, b.nombre, c.inicio,c.estado from espectaculo a
        join recinto b join evento c on a.id_espectaculo=c.id_espectaculo and b.id_recinto=c.id_recinto
        WHERE a.nombre like nombre;
end //

create procedure ver_gradas (in id_evento int)
begin
    declare c int default 0;
    select count(*) from evento e where e.id_evento = id_evento into c;
    if c > 0 then
        select a.nombre, b.nombre, c.inicio, c.estado, e.nombre from espectaculo a
            left join grada e on a.id_espectaculo=e.id_espectaculo
            left join recinto b on b.id_recinto=e.id_recinto
            left join evento c on c.id_evento=e.id_evento
            where id_evento=e.id_evento;
    else
        select 'Evento inexistente' as 'Error';
    end if;
end //

create procedure ver_localidades (
    in id_grada int,
    in tipo varchar(15),
    out precio numeric(6, 2)
)
begin

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
    in tarjeta int,
    in cad_mes int,
    in cad_anho int,
    in cv int
)
begin
    insert into cliente(dni,nombre,apellido1,apellido2,direccion,cp,telefono,email,tarjeta,cad_mes,cad_anho,cv)
        values(dni,nombre,apellido1,apellido2,direccion,cp,telefono,email,tarjeta,cad_mes,cad_anho,cv);
end //

create procedure consultar_usuario (in dni int)
begin
    select dni,nombre,apellido1,apellido2,direccion,cp,telefono,email
        from cliente
        where cliente.dni=dni;
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
