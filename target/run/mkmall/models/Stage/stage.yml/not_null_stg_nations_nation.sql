
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nation
from analytics.dbt_dhruv.stg_nations
where nation is null



  
  
      
    ) dbt_internal_test