
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

call crear_cliente(
    22222222,
    'Test',
    'Perez',
    'Perez',
    'Gran via 72',
    36205,
    111111111,
    'testperez@gmail.com',
    '2222121133334444',
    4,
    2020,
    245
);

-- Todo bien
call reservar_localidad(11, 1, 39394823);
-- Localidad no disponible (ahora mismo no da error porque falta el trigger)
call reservar_localidad(11, 1, 39394823);
-- Localidad inexistente
call reservar_localidad(11, 30, 39394823);
-- Localidad existe pero no en esa grada
call reservar_localidad(11, 3, 39394823);
-- Grada inexistente
call reservar_localidad(100, 1, 39394823);
-- Prerreserva y luego reserva (primero por usuario distinto y luego por legintimo)
call prerreservar_localidad(11, 2, 39394823);
call reservar_localidad(11, 2, 22222222);
call reservar_localidad(11, 2, 39394823);
-- Usuario inexistente
call anular_reserva(11, 2, 39394823);
call reservar_localidad(11, 2, 111111111);
-- Evento cerrado o finalizado
update evento set estado = 'cerrado' where id_evento = 3;
call reservar_localidad(11, 2, 39394823);
