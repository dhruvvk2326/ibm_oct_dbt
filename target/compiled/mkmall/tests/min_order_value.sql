with orders as(
    select * from analytics.dbt_dhruv.stg_orders
)

select order_id from orders where total_price <= 900