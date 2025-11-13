
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nation_id
from analytics.dbt_dhruv.stg_nations
where nation_id is null



  
  
      
    ) dbt_internal_test