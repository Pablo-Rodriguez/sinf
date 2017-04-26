
use taquilla;

drop trigger if exists trigger_reserva;
drop trigger if exists trigger_anulacion;

delimiter //

create trigger trigger_reserva  after insert on reserva for each row
begin

end //

create trigger trigger_anulacion before delete on reserva for each row
begin

end //

delimiter ;
