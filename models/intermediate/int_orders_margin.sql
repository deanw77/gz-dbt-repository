SELECT
    orders_id,
    date_date AS date_date,
    ROUND(SUM(revenue), 2) AS revenue,
    SUM(quantity) AS quantity,
    ROUND(SUM(purchase_price), 2) AS purchase_cost,
    ROUND(SUM(margin), 2) AS margin
FROM 
   {{ ref('int_sales_margin') }} AS sales
JOIN
    {{ ref('stg_raw__product') }} AS product
ON sales.products_id = product.products_id
GROUP BY orders_id, date_date
ORDER BY date_date
