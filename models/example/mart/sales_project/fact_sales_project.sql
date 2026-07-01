SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    o.ORDER_DATE,
    od.PAYMENT_MODE,
    o.TOTAL_AMOUNT
FROM {{ source('raw', 'ORDERS') }} o
LEFT JOIN {{ source('raw', 'orders_details') }} od
    ON o.ORDER_ID = od.ORDER_ID
WHERE o.ORDER_STATUS <> 'CANCELLED'