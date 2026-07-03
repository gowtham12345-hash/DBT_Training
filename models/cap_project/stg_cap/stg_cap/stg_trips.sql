SELECT
    TRIP_ID,
    TRIP_NAME
FROM {{ source('raw', 'TRIPS') }}