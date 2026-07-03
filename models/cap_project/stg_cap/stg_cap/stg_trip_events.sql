SELECT
   EVENT_ID,
   EVENT_NAME,
   LOCATION
FROM {{ source('raw', 'TRIP_EVENTS') }}