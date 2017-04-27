
source base.sql;

set @s = 0;

-- La grada existe, el usuario tambien
call ver_localidades(11, 'adulto', @s);
select @s;

-- La grada no existe
call ver_localidades(100, 'adulto', @s);
select @s;

-- La grada existe pero no contempla ese tipo de usuario.
call ver_localidades(11, 'bebe', @s);
select @s;
