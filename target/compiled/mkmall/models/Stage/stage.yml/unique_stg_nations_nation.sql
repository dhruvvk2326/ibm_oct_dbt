
    
    

select
    nation as unique_field,
    count(*) as n_records

from analytics.dbt_dhruv.stg_nations
where nation is not null
group by nation
having count(*) > 1


