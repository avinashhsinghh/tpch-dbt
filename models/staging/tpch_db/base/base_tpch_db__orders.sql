with source as (
    select * from {{source('snowflake_sample_data', 'orders')}}
),

orders as (
    select * from source
)

select * from orders