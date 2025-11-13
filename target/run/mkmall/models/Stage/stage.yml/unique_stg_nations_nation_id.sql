
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    nation_id as unique_field,
    count(*) as n_records

from analytics.dbt_dhruv.stg_nations
where nation_id is not null
group by nation_id
having count(*) > 1



  
  
      
    ) dbt_internal_test