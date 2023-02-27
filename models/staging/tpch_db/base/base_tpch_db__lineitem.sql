with source as (
    select * from {{source('snowflake_sample_data', 'lineitem')}}
),

lineitem as (
    select * from source
)

select * from lineitem