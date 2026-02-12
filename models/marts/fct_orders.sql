{{ config(materialized='table') }}

select
    o.order_id,
    o.order_date,
    o.amount,
    o.customer_id,
    c.customer_email as customer_email
from {{ ref('stg_orders') }} o
left join {{ ref('dim_customers') }} c
    on o.customer_id = c.customer_id
