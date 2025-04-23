SELECT 
    date_trunc(date_date, MONTH) AS datemonth,
    ROUND(SUM(ads_margin), 2) AS ads_margin,
    ROUND(SUM(average_basket), 2) AS average_basket,
    ROUND(SUM(operational_margin), 2) AS operational_margin,
    ROUND(SUM(ads_cost), 2) AS ads_cost,
    ROUND(SUM(impression), 0) AS impression,
    ROUND(SUM(click), 0) AS click,
    ROUND(SUM(quantity), 0) AS quantity,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(purchase_cost), 2) AS purchase_cost,
    ROUND(SUM(margin), 2) AS margin,
    ROUND(SUM(shipping_fee), 2) AS shipping_fee,
    ROUND(SUM(log_cost), 2) AS log_cost,
    ROUND(SUM(ship_cost), 2) AS ship_cost
FROM 
    {{ ref('finance_campaigns_day') }}
GROUP BY date_trunc(date_date, MONTH)