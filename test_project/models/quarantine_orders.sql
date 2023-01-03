select *
from {{ref('bronze_orders')}}
where items = 0 -- save incorrect items
