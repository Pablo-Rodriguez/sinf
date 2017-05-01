
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

-- Todo bien
call prerreservar_localidad(11, 1, 39394823);
-- Localidad no disponible (ahora mismo no da error porque falta el trigger)
call prerreservar_localidad(11, 1, 39394823);
-- Localidad inexistente
call prerreservar_localidad(11, 30, 39394823);
-- Localidad existe pero no en esa grada
call prerreservar_localidad(11, 3, 39394823);
-- Grada inexistente
call prerreservar_localidad(100, 1, 39394823);
-- Cliente inexistente
call prerreservar_localidad(11, 2, 111111111);
-- Evento cerrado o finalizado
update evento set estado = 'cerrado' where id_evento = 3;
call prerreservar_localidad(11, 2, 39394823);
