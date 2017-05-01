
use taquilla;

drop trigger if exists trigger_reserva;
drop trigger if exists trigger_anulacion;

delimiter //

create trigger trigger_reserva  after insert on reserva for each row
begin
    declare s varchar(15);
    select tipo from reserva where id_localidad=NEW.id_localidad into s;
    if s='prerreserva' then
        update localidad_grada
        set estado = 'prerreservado' where id_localidad = NEW.id_localidad;
    else
        update localidad_grada
        set estado = 'reservado' where id_localidad=NEW.id_localidad;
    end if;
end //

create trigger trigger_anulacion before delete on reserva for each row
begin
    update localidad_grada
    set estado = 'libre' where id_localidad = OLD.id_localidad;
end //

delimiter ;
