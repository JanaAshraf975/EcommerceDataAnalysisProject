with bounds as (
    select
        min(order_purchase_timestamp)::date as d0,
        max(order_purchase_timestamp)::date as d1
    from {{ ref('stg_orders') }}
),

dates as (
    select
        dateadd(day, row_number() over (order by seq4()) - 1, b.d0) as d,
        b.d1
    from bounds b, table(generator(rowcount => 2000))
)

select
    to_number(to_char(d, 'YYYYMMDD')) as date_key,
    d                                  as full_date,
    year(d)                            as year,
    quarter(d)                         as quarter,
    month(d)                           as month,
    monthname(d)                       as month_name,
    weekiso(d)                         as week_of_year,
    dayofweekiso(d)                    as day_of_week,
    dayname(d)                         as day_name,
    dayofweekiso(d) >= 6               as is_weekend
from dates
where d <= d1
