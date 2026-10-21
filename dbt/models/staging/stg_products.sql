select
    product_id,
    product_category_name         as category_pt,
    product_category_name_english as category_en,
    product_name_length,
    product_description_length,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
from {{ source('olist_raw', 'products') }}
