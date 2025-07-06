select 
    `id` 'Order Detail ID',
    `order_id` 'Order ID',
    `product_id` 'Product ID',
    `quantity` 'Quantity'
from
    order_details
where
    order_id in (select 
            id
        from
            orders
        where
            shipper_id = 3);
            
            
            
            