select 
orders_id,
date_date,
revenue,
quantity,
round((cast(purchase_price as float64) * quantity) * quantity,2) As purchase_Cost,
round(revenue - (cast(purchase_price as float64) * quantity),2) AS margin
from {{ref("int_sales_margin")}}