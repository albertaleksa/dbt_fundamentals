with fct_orders as (
    select * from {{ ref("fct_orders") }}
)
select
    order_id,
    sum(amount) as total_amount
from
    fct_orders
group by
    order_id
having
    total_amount < 0