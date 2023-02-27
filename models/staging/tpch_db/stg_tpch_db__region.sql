with 

source as (

  select * from {{ ref('base_tpch_db__region') }}

),

transformed as (

  select 
    r_regionkey as region_key,
    r_name as region_name
    


  from source

)

select * from transformed