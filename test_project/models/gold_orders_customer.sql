with aggregate as (
  select customer_id, order_year, sum(items) as total_items, sum(total_cost) as total_sale
  from {{ref('silver_orders')}}
  group by customer_id, order_year
)
select a.customer_id, customer_name, order_year, total_items, total_sale
from aggregate as a join {{ref('customer_details')}} as b on a.customer_id = b.customer_id
order by a.customer_id
