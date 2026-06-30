{{
config(
    materialized='incremental',
 
    incremental_strategy='insert_overwrite',
 
    partition_by={
      'field':'ORDER_DATE',
      'data_type':'date'
    }
)
}}
 
SELECT
ORDER_DATE,
TOTAL
 
FROM {{ source('raw','SALES_SOURCE') }}