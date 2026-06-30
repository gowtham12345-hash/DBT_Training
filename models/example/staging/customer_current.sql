SELECT *
 
FROM {{ ref('customer_snapshot') }}
 
WHERE DBT_VALID_TO IS NULL;