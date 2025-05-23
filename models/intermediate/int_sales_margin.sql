SELECT
    date_date,
    orders_id,
    sales.products_id,
    quantity,
    (purchase_price * quantity) AS purchase_cost,
    revenue,
    ROUND(revenue - (purchase_price * quantity), 2) AS margin
FROM 
   {{ ref('stg_raw__sales') }} AS sales
JOIN
    {{ ref('stg_raw__product') }} AS product
ON sales.products_id = product.products_id
