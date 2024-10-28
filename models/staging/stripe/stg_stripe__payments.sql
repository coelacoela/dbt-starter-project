select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as status,
    amount / 100 as amount,  -- in dollars and cents
    created as created_at

from {{ source("stripe", "payment") }}
