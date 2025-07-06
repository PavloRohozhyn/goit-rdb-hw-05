drop function if exists func;
delimiter //
create function func( a float, b float)
returns float
no sql
deterministic
begin
	declare c float;
    if b != 0 then
		set c=a/b;        
	else
		set c = null;
    end if;    
return c;
end //
delimiter ;
select order_id 'Order ID', quantity 'Quantity', func(quantity, 10) 'Quantity By Func'
from order_details;