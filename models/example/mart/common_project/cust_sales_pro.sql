SELECT
    fs.ORDER_ID,
    fs.CUSTOMER_ID,
    fs.ORDER_DATE,
    fs.PAYMENT_MODE,
    fs.TOTAL_AMOUNT,
    cf.TOTAL_ORDERS,
    cf.TOTAL_REVENUE
FROM {{ ref('fact_sales_project') }} fs
JOIN {{ ref('fact_customer_pro') }} cf
    ON fs.CUSTOMER_ID = cf.CUSTOMER_ID
ORDER BY fs.CUSTOMER_ID, fs.ORDER_DATE;