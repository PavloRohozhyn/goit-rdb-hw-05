select 
    set1.order_id, AVG(set1.quantity)
from
    (select 
        order_id, quantity
    from
        order_details
    where
        quantity > 10) set1
group by set1.order_id