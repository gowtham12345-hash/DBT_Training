SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    TOTAL_AMOUNT,
    ORDER_STATUS,
    PAYMENT_MODE
FROM {{ source('raw', 'orders_details') }}
WHERE ORDER_STATUS <> 'CANCELLED'