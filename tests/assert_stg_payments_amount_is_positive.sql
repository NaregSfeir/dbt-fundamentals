with 
payments as
(
select * from {{ref('stg_payments')}}

)

select  order_id,
        sum(amount) as totalamount
from payments
group by order_id
having totalamount<0