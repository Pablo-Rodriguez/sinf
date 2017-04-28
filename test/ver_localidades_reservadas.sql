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

-- Correcto pero no hay localidades
call ver_localidades_reservadas(39394823);
-- Todo bien
call reservar_localidad(11, 1, 39394823);
call ver_localidades_reservadas(39394823);
-- No existe el usuario
call ver_localidades_reservadas(11111111);
