
  
    

create or replace transient table analytics.dbt_dhruv.stg_nations
    
    
    
    as (with nation as (
select  n_regionkey as region_id,
        n_nationkey as nation_id,
       n_name as nation_name,
       n_comment as comment 

from sourcedb.mk_mall.v_nations
)

select * from nation
    )
;


  