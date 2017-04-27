
source base.sql;

-- Gradas de un evento existente
call ver_gradas(3);
-- Gradas de un evento inexistente => error.
call ver_gradas(100);
