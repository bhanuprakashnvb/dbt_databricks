{{ config( query_tag = 'dbt_tag_teams') }}

select 'Lakers' as team
union all
select 'Warriors' as team
union all
select 'Celtics' as team
union all
select 'Sixers' as team