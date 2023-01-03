select customer_id, order_year, sum(items) as total_items, sum(total_cost) as total_sale
from {{ref('silver_orders')}}
group by customer_id, order_year
