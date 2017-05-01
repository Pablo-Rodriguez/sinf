
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

call prerreservar_localidad(11, 1, 39394823);
call reservar_localidad(11, 2, 39394823);
call ver_localidades_prerreservadas(39394823);
call ver_localidades_reservadas(39394823);

-- Ahora esperar 15 segundos y ejecutar -> select * from reserva;
