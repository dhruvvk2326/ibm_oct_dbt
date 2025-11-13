with nation_info as (

select 
n.nation_id,
n.nation_name,
n.region_id,
r.region_name,
n.comment as nation_comment,
r.comment as region_comment
from analytics.dbt_dhruv.stg_nations n
join analytics.dbt_dhruv.stg_regions r
    on n.region_id = r.region_id
)

select * from nation_info