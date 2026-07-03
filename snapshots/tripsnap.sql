{% snapshot TRIP_snapshot %}
 
{{
config(
 
target_schema='SNAPSHOTS',
 
unique_key='TRIP_ID',
 
strategy='timestamp',
 
updated_at='LAST_UPDATED'
 
)
 
}}
 
SELECT *
 
FROM {{ source('raw','TRIPS') }}
 
{% endsnapshot %}