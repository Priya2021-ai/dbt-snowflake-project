SELECT
    STARTTIME AS trip_date,
    START_STATION_ID AS start_station_id,
    END_STATION_ID,
    USERTYPE AS member_type,
    TRIPDURATION AS trip_duration_seconds
FROM {{ ref('stg_bike') }}
WHERE STARTTIME IS NOT NULL