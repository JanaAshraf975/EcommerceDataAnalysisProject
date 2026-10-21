select
    i.order_id,
    i.order_item_id,
    o.customer_id,
    i.product_id,
    i.seller_id,
    to_number(to_char(o.order_purchase_timestamp, 'YYYYMMDD')) as order_date_key,
    o.order_status,
    o.order_purchase_timestamp,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    o.delivery_days,
    o.is_late,
    r.review_score,
    r.has_comment,
    i.price,
    i.freight_value,
    i.total_item_value
from {{ ref('stg_order_items') }} i
join {{ ref('stg_orders') }} o
    on i.order_id = o.order_id
left join {{ ref('stg_order_reviews') }} r
    on i.order_id = r.order_id
