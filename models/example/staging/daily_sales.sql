{{ config(materialized='table')}}

select 
      current_date() as RUN_DATE,
      SUM(TOTAL_AMOUNT) AS TOTAL_SALES
FROM {{ source('raw','ORDERS')}}