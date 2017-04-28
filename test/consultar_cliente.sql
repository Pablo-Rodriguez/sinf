
source base.sql;

-- Creamos un cliente por si no existia
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

-- Consulta de un cliente existente
call consultar_cliente(39394823);
-- Consulta de un cliente inexistente
call consultar_cliente(39393939);
