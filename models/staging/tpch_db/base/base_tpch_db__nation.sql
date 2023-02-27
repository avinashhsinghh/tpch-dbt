with source as (
    select * from {{source('snowflake_sample_data', 'nation')}}
),

nation as (
    select * from source
)

select * from nation