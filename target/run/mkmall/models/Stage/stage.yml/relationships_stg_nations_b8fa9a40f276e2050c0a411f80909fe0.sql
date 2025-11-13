
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select region_id as from_field
    from analytics.dbt_dhruv.stg_nations
    where region_id is not null
),

parent as (
    select region_id as to_field
    from analytics.dbt_dhruv.stg_regions
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test