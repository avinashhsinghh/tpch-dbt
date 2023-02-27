with source as (
    select * from {{source('snowflake_sample_data', 'customer')}}
),

customers as (
    select * from source
)

select * from customers