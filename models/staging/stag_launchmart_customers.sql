{{config(materialized='table')}}

with source as (
    select customer_id,
    email,
    full_Name,
    join_date
from {{ source('LAUNCHMART', 'CUSTOMERS')}}
)

select *
from source