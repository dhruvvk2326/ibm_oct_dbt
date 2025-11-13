with nation as (
select  n_regionkey as region_id,
        n_nationkey as nation_id,
       n_name as nation_name,
       n_comment as comment 

from {{ source('src', 'v_nations') }}
)

select * from nation