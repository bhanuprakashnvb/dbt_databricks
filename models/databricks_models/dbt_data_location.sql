{{ config(materialized= 'view') }}

select 
    1 as id, 
    current_date() as current_date_val,
    current_catalog() as current_catalog_val, 
    current_schema() as current_schema_val, 
    current_user() as current_user_val, 
    current_timestamp() as current_timestamp_val