with customers as (

    select * from {{ ref('stg_tpch_db__customer') }}
),
nations as (

    select * from {{ ref('stg_tpch_db__nations') }}    
),

regions as (

    select * from {{ ref('stg_tpch_db__region') }}

),
final as (
    select 
        customers.customer_key,
        customers.customer_name,
        customers.customer_phone,
        customers.customer_acct_balance,
        nations.nation_key,
        regions.region_key,
        regions.region_name,
        nations.nation_name


    from
        customers
        inner join nations
            on customers.nation_key = nations.nation_key
        inner join regions
            on nations.region_key = regions.region_key
)
select 
    *
from
    final
order by
    customer_key