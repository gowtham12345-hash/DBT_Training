{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select *
from {{ source('raw', 'employee_details') }}