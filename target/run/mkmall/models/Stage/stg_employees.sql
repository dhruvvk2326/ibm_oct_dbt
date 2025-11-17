
  
    

create or replace transient table analytics.dbt_dhruv.stg_employees
    
    
    
    as (with source as (
    select * from mkmotors_dev.staging.stg_employees
),

change as (
select
    mkmotors_dev.staging.SEQCUST.NEXTVAL,
    employee_id,
    employee_first_name,
    employee_last_name,
    employee_gender,
    employee_fixedline,
    employee_age,
    position_type,
    dealership_id,
    region,
    employee_address,
    employee_city,
    employee_state,
    employee_zip_code,
    employee_mobile,
    employee_email,
    
    -- Single call to the combined macro
    
    
    -- Full Name Logic (previously full_name macro)
    employee_first_name || ' ' || employee_last_name as employee_name,
    
    -- Gender Label Logic (previously gender_label macro)
    case upper(employee_gender)
        when 'F' then 'Female'
        when 'M' then 'Male'
        else 'Other'
    end as gender_label,
    
    -- Formatted Phone Logic (previously formatted_phone macro)
    '(' || substring(employee_fixedline,1,3) || ') ' ||
    substring(employee_fixedline,4,3) || '-' ||
    substring(employee_fixedline,7,4) as formatted_phone,
    
    -- Age Group Logic (previously age_group macro)
    case
        when employee_age < 30 then 'Youngest'
        when employee_age between 30 and 60 then 'Middle'
        else 'Senior'
    end as age_group
    


    
from source
)
select * from change
    )
;


  