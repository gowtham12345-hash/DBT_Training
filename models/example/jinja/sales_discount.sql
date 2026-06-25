{{ config(materialized='view') }}
 
{% set discount = 10 %}
 
SELECT
    TRANSACTION_ID,
    AMOUNT,
    AMOUNT - (AMOUNT * {{ discount }}/100) AS FINAL_AMOUNT
FROM SALES_TRANSACTIONS