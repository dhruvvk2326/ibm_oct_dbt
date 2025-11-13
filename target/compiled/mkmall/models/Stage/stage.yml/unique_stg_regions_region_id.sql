
    
    

select
    region_id as unique_field,
    count(*) as n_records

from analytics.dbt_dhruv.stg_regions
where region_id is not null
group by region_id
having count(*) > 1


