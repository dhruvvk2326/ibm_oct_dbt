
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  with orders as(
    select * from analytics.dbt_dhruv.stg_orders
)

select order_id from orders where total_price <= 900
  
  
      
    ) dbt_internal_test