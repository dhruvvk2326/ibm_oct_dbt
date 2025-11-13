
  
    

create or replace transient table analytics.dhruv.stg_region
    
    
    
    as (with region as (
select 
        r_regionkey as region_id,
       r_name as region_name,
       r_comment as comment 

from sourcedb.mk_mall.regions
)

select * from region
    )
;


  