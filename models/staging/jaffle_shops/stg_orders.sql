with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffle_shop','shop_orders')}} --`app-radar-333220.dbt_nsfeir.shop_orders`

)

select * from orders