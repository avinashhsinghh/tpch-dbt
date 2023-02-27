with source as (
    select * from {{source('snowflake_sample_data', 'region')}}
),

region as (
    select * from source
)

select * from region