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

end //

create procedure buscar_evento (in nombre varchar(40))
begin

end //

create procedure ver_gradas (in id_evento int)
begin

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

end //

create procedure consultar_usuario (in dni int)
begin

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
