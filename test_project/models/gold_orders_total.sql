select order_date, sum(items) as total_items, sum(total_cost) as total_sale
from {{ref('silver_orders')}}
group by order_date
