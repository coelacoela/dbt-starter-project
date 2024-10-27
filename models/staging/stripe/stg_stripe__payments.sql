select
    id as payment_id,
    orderid as payment_orderid,
    paymentmethod,
    status,
    amount,
    created

from {{ source('stripe', 'payment') }}
