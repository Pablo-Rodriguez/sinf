source base.sql;

call crear_cliente(
    39394823,
    'Juan',
    'Perez',
    'Perez',
    'Gran via 78',
    36205,
    666666666,
    'juanperez@gmail.com',
    '2222111133334444',
    4,
    2020,
    245
);

-- Todo bien -> se anula
call reservar_localidad(11, 1, 39394823);
call ver_localidades_reservadas(39394823);
call anular_reserva(11, 1, 39394823);
-- No existe la reserva/prerreserva
call anular_reserva(11, 1, 39394823);
-- Evento cerrado
call prerreservar_localidad(11, 1, 39394823);
call ver_localidades_prerreservadas(39394823);
update evento set estado = 'cerrado' where id_evento = 3;
call anular_reserva(11, 1, 39394823);
update evento set estado = 'abierto' where id_evento = 3;
call prerreservar_localidad(11, 1, 39394823);
call ver_localidades_prerreservadas(39394823);
update evento set estado = 'finalizado' where id_evento = 3;
call anular_reserva(11, 1, 39394823);
