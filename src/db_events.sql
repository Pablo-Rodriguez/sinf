
use taquilla;

set global event_scheduler = on;

delimiter //

create event fin_prerreserva
    on schedule every 5 second
    do begin
        delete from reserva where reserva.tipo = 'prerreserva' and
            timestampdiff(second, reserva.fecha, now()) > 10;
    end //

delimiter ;
