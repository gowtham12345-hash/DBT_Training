SELECT DISTINCT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    STATUS
FROM {{ ref('stg_customer') }}