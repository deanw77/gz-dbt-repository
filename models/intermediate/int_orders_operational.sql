SELECT
    orders_id,
    MAX(date_date) AS date_date,
    ROUND(SUM((margin + shipping_fee) - (logcost + ship_cost)), 2) AS operational_margin,
    SUM(quantity) AS quantity,
    SUM(revenue) AS revenue,
    SUM(purchase_cost) AS purchase_cost,
    SUM(margin) AS margin,
    SUM(shipping_fee) AS shipping_fee,
    SUM(logcost) AS log_cost,
    SUM(ship_cost) AS ship_cost
FROM
    {{ ref('int_orders_margin') }} AS orders
JOIN
    {{ ref('stg_raw__ship') }} AS ship 
USING(orders_id)
GROUP BY orders_id