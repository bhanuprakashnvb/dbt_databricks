with source_data_location as(
    select current_date_val as DATE_TODAY, current_catalog_val as DB_CATALOG, current_schema_val as SCHEMA , 
    current_user_val as YOUR_USERNAME, 
    CONVERT_TIMEZONE('UTC', 'America/Chicago', current_timestamp_val)   as Look_here_for_time_in_CST
     from {{ source ('dbt_target_databricks_db', 'dbt_data_location')}}
),

final as ( 
    select * from source_data_location
)

select * from final 

-- with source_data_location as(
--     select current_date() as DATE_TODAY, current_catalog() as DB_CATALOG, current_schema() as SCHEMA , 
--     current_user () as YOUR_USERNAME, CONVERT_TIMEZONE('UTC', 'America/Chicago', current_timestamp())  as Look_here_for_time_in_CST
--     from {{ref('dbt_data_location')}}
-- )

-- select * from source_data_location