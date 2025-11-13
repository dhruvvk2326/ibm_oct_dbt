
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select region_id
from analytics.dbt_dhruv.stg_regions
where region_id is null



  
  
      
    ) dbt_internal_test