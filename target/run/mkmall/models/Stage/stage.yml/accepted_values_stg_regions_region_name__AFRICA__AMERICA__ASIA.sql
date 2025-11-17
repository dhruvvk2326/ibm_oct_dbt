
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from analytics.dbt_dhruv_error.accepted_values_stg_regions_region_name__AFRICA__AMERICA__ASIA
    
      
    ) dbt_internal_test