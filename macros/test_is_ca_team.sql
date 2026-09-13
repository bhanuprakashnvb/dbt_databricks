{% test is_ca_team(model, column_name) %}

with validation as (

    select
        {{ column_name }} as california_state

    from {{ model }}

),

validation_errors as (

    select
        california_state

    from validation
    -- if this is true, then even_field is actually odd!
    -- where (even_field % 2) = 1
    where california_state not in ('CA','MA','PA')

)

select *
from validation_errors

{% endtest %}