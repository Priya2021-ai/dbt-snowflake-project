WITH trips AS (

    SELECT
        RIDE_ID,
        RIDEABLE_TYPE,
        DATE(TO_TIMESTAMP(STARTED_AT)) AS trip_date,
        START_STATIO_ID AS start_station_id,
        END_STATION_ID,
        MEMBER_CSUAL AS member_type,

        TIMESTAMPDIFF(
            SECOND,
            TO_TIMESTAMP(STARTED_AT),
            TO_TIMESTAMP(ENDED_AT)
        ) AS trip_duration_seconds

    FROM {{ source('demo', 'bike') }}

    WHERE RIDE_ID != 'ride_id'

    LIMIT 10

)

SELECT *
FROM trips