select
    c.customer_id,
    c.customer_unique_id,
    c.city,
    c.state,
    c.zip_code_prefix,
    g.lat,
    g.lng
from {{ ref('stg_customers') }} c
left join {{ ref('stg_geolocation') }} g
    on c.zip_code_prefix = g.zip_code_prefix
