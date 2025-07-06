select 
    od.id 'Order Detail ID',
    order_id 'Order ID',
    product_id 'Product ID',
    quantity 'Quontity',
    (select 
            o.customer_id
        from
            orders o
        where
            od.order_id = o.id) 'Customer ID'
from
    order_details od