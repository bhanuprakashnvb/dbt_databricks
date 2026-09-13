{% macro insert_audits(action_name) -%}

insert into dbt_target_db.databricks_models.audit_log(action_type)

values ('{{action_name}}');

{%- endmacro%}