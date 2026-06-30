{% snapshot master_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        strategy='timestamp',
        unique_key='CUSTOMER_ID',
        updated_at='LAST_UPDATED'
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY,
    STATE,
    LAST_UPDATED
FROM {{ source('raw', 'customer_master') }}

{% endsnapshot %}


Modify Snapshot
strategy='check',
 
check_cols=
 
[
'CITY',
 
'EMAIL',
 
'ANNUAL_INCOME',
 
'MARITAL_STATUS'
 
]