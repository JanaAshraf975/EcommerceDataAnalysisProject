select
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    is_delivery_date_missing,
    delivery_days,
    estimated_days,
    is_late
from {{ source('olist_raw', 'orders') }}
