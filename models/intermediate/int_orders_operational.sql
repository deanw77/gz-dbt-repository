SELECT
    orders_id,
    MAX(date_date) AS date_date,
    ROUND(SUM((margin + shipping_fee) - (logcost + ship_cost)), 2) AS operational_margin,
    SUM(quantity) AS quantity
FROM
    {{ ref('int_orders_margin') }} AS orders
JOIN
    {{ ref('stg_raw__ship') }} AS ship 
USING(orders_id)
GROUP BY orders_id