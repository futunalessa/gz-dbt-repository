SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    CAST(purchSE_PRICE AS FLOAT64), 
    ROUND(s.quantity*CAST(p.purchSE_PRICE AS FLOAT64),2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*CAST(p.purchSE_PRICE AS FLOAT64),2) AS margin
FROM {{ref("stg_gz_raw_data__raw_gz_sales")}} s
LEFT JOIN {{ref("stg_gz_raw_data__raw_gz_product")}} p 
 on s.pdt_id=p.products_id