select 
revenue,  
product_id,
orders_id,
quantity, 
date_date,
purchase_price,
round(quantity * purchase_price,2) as purchase_cost 
round(revenue-(quantity*purchase_cost),2) as margin
from {{ref("stg_gz_raw_data_sales")}}
join {{ref("stg_gz_raw_data_product")}}
using(product_id)