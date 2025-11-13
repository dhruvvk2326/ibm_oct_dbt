with nation as (
select  n_regionkey as region_id,
        n_nationkey as nation_key,
       n_name as name,
       n_comment as comment 

from sourcedb.mk_mall.nations
)

select * from nation