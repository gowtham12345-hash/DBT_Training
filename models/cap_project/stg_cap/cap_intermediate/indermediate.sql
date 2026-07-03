select
    t.trip_id,
    t.trip_name,
    e.event_id,
    e.event_name,
    e.location
from {{ ref('stg_trips') }} t
inner join {{ ref('stg_trip_events') }} e
    on t.trip_id = e.event_id