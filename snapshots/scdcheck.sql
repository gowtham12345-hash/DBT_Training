% snapshot customer_snapshot %}
 
{{
config(
 
strategy='check',
 
unique_key='CUSTOMER_ID',
 
check_cols=['CITY','EMAIL']
 
)
 
}}
 
SELECT *
 
FROM {{ source('raw','employee') }}
 
{% endsnapshot %}