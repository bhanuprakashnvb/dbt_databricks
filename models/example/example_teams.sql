{{ config( query_tag = 'dbt_tag_teams') }}

with teams as( 
select 'Lakers' as team
union all
select 'Warriors' as team
union all
select 'Celtics' as team
union all
select 'Sixers' as team
)

select * , '{{ invocation_id }}' as invocation_id from teams