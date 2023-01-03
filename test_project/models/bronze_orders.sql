{% for order_id in range(1, 201)%}
SELECT {{ order_id }} AS order_id, 
  make_timestamp(2022, cast (rand()*12+1 as int), cast (rand()*28+1 as int), 
                 cast (rand()*24 as int), cast (rand()*60 as int), cast (rand()*60 as int)) AS order_date_time,
  cast(rand()*5 as int) as items,
  rand()*100 as total_cost,
  cast(rand()*10 as int) as customer_id
{% if not loop.last %}
UNION ALL 
{% endif %}

{% endfor %}
