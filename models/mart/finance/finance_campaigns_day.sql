select
    date_date,
    ROUND((operational_margin - ads_cost), 2) AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    impression,
    click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost
from
    {{ ref('int_campaigns_day') }}
JOIN
    {{ ref('finance_days') }}
USING(date_date)
ORDER BY date_date DESC