select
    orders.order_id,
    orders.customer_id,
    payments.amount

from {{ ref("stg_jaffle_shop__orders") }} orders

join {{ ref("stg_stripe__payments") }} payments
    using(order_id)
    