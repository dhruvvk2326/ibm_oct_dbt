with nation as (
select  n_regionkey as region_id,
        n_nationkey as nation_id,
       n_name as nation_name,
       n_comment as comment,
       {{ jodo('n_name', 'n_comment') }} as jodo_col

from {{ source('src', 'nations') }}
)

select * from nation