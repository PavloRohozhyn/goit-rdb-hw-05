with tmp as (select order_id, quantity from order_details where quantity > 10)
select tmp.order_id 'Order ID', avg(tmp.quantity) 'Quantity'
from tmp
group by tmp.order_id