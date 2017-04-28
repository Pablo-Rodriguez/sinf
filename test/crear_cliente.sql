
source base.sql;

-- No existe asi que se crea
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

-- Ya existe asi que devuelve error
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
