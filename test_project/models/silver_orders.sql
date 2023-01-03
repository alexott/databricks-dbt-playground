select *, 
  date(order_date_time) as order_date,
  year(order_date_time) as order_year, 
  month(order_date_time) as order_month,
  day(order_date_time) as order_day_of_month 
from {{ref('bronze_orders')}}
where items > 0 -- filter out incorrect items
