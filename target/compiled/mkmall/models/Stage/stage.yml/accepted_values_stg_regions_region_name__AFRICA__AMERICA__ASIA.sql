
    
    

with all_values as (

    select
        region_name as value_field,
        count(*) as n_records

    from analytics.dbt_dhruv.stg_regions
    group by region_name

)

select *
from all_values
where value_field not in (
    'AFRICA','AMERICA','ASIA'
)


