with base_customer as (
    select * from {{ref('base_tpch_db__customer')}}
),

transformed as (

  select 

    c_custkey as customer_key,
    c_name as customer_name,
    c_nationkey as nation_key,
    c_phone as customer_phone,
    c_acctbal as customer_acct_balance

  from base_customer

)

select * from transformed
