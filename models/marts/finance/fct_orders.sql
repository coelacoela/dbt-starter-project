with orders as (

    select * from {{ ref('stg_jaffle_shop__orders') }}

),

payments as (

    select * from {{ ref('stg_stripe__payments') }}

),

final as (

    select
        orders.order_id as order_id,
        orders.customer_id as customer_id,
        payments.amount as amount
    from payments
    inner join orders 
    on orders.order_id = payments.order_id

)

select * from final
