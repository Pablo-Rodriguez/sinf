
use taquilla;

drop trigger if exists trigger_reserva;
drop trigger if exists trigger_anulacion;

delimiter //

create trigger trigger_reserva  after insert on reserva for each row
begin
    declare s varchar(15);
    declare c int default 0;
    declare x int default 0;
    select id_evento from grada where id_grada=NEW.id_grada into c;
    select count(l.id_localidad) from localidad_grada l left join grada g on g.id_grada=l.id_grada where g.id_evento=c and estado ='libre' into x;
    select tipo from reserva where id_localidad=NEW.id_localidad into s;
    if s='prerreserva' then
        update localidad_grada
        set estado = 'prerreservado' where id_localidad = NEW.id_localidad;
    else
        update localidad_grada
        set estado = 'reservado' where id_localidad=NEW.id_localidad;
    end if;
    if x=1 then
    update evento
            set estado = 'cerrado' where id_evento = c;
    end if;
end //

create trigger trigger_anulacion before delete on reserva for each row
begin
declare c int default 0;
select id_evento from grada where id_grada=OLD.id_grada into c;
update localidad_grada
    set estado = 'libre' where id_localidad = OLD.id_localidad;
update evento
        set estado = 'abierto' where id_evento = c;
end//

delimiter ;
