with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount/100 as amount,
        created as created_at

    from {{source('jaffle_shop','stripe_payments')}} --`app-radar-333220.dbt_nsfeir.stripe_payments`

)

select * from payments