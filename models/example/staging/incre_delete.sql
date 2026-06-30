
{{
config(
    materialized='incremental',
    unique_key='ORDER_ID',
    incremental_strategy='delete+insert'
)
}}
SELECT *
FROM {{ source('raw','ORDER_DELINS_TAB') }}