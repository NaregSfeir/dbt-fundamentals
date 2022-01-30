with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{source('jaffle_shop','shop_customers')}}--`app-radar-333220.dbt_nsfeir.shop_customers` 

)

select * from customers